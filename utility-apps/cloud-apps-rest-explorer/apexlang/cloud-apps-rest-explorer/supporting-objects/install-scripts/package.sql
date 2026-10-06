create or replace package eba_util_farest_explorer as  
    procedure ingest_json_describe(  
        p_application_id in number,  
        p_module_static_id in varchar2  
    );  
    procedure ingest_json_for_data_sources;  
    procedure refresh_catalog; 
end eba_util_farest_explorer; 
/
create or replace package body eba_util_farest_explorer as 
    c_native_adfbc constant varchar2(12) := 'NATIVE_ADFBC'; 
    c_web_src_type constant varchar2(15)  := 'WEB SOURCE TYPE'; 
    -- 
    function replace_url_params( 
        p_url            in varchar2, 
        p_module_id      in number, 
        p_application_id in number) 
        return              varchar2 
    is 
        l_ret varchar2(32767) := p_url; 
    begin 
        for p in (select name, value 
                    from apex_appl_web_src_parameters 
                   where module_id = p_module_id 
                     and application_id = p_application_id) loop 
            l_ret := replace(l_ret, ':' || p.name, p.value); 
            l_ret := replace(l_ret, '{' || p.name|| '}', p.value); 
        end loop; 
        return l_ret; 
    end; 
    -- 
    function sandbox_header_value( 
        p_app_id in number) 
        return      varchar2 
    is 
        l_ret apex_appl_plugin_settings.attribute_01%type; 
    begin 
        select attribute_01 
          into l_ret 
          from apex_appl_plugin_settings 
         where application_id = p_app_id 
           and plugin_code = c_native_adfbc 
           and plugin_type = c_web_src_type; 
        return case when l_ret is not null then apex_string.format('sandbox="%s"',l_ret) end; 
    exception 
        when no_data_found then 
            return null; 
    end sandbox_header_value; 
    procedure ensure_app_proxy( 
        p_app_id number) 
    is 
    begin 
        apex_debug.info('### ensure_app_proxy'); 
        select proxy_server, 
               no_proxy_domains 
          into apex_application.g_proxy_server, 
               apex_application.g_no_proxy_domains 
         from apex_applications 
        where application_id = p_app_id; 
        apex_debug.info('### Set proxy = (%s), no_proxy = (%s)',apex_application.g_proxy_server,apex_application.g_no_proxy_domains);     
    exception 
        when no_data_found then 
            null; 
    end ensure_app_proxy; 
     
    ------------------------------------------------------------ 
    -- Download, parse, and locally store key information 
    -- about the FA REST data source used by the web source 
    -- module whose (app_id,module_id) is passed in  
    ------------------------------------------------------------ 
    procedure ingest_json_describe(  
        p_application_id   in number,  
        p_module_static_id in varchar2 
    )  
    is  
        l_describe_json               clob;  
        l_fa_rest_endpoint_id         number;  
  
        ------------------------------------------------------------ 
        -- Return the ADF REST describe JSON for a web source module 
        ------------------------------------------------------------ 
        function describe_json  
        return clob  
        is 
            c_sandbox_header_value constant varchar2(4000) := sandbox_header_value(p_application_id); 
        begin  
            ensure_app_proxy(p_application_id); 
            for l_web_source_module in (select wsm.url_endpoint,   
                                               wsm.credential_static_id, 
                                               wsm.module_id 
                                          from apex_appl_web_src_modules wsm  
                                          where wsm.web_source_type_code = c_native_adfbc 
                                          and wsm.application_id = p_application_id  
                                          and wsm.module_static_id = p_module_static_id) loop  
            apex_web_service.set_request_headers(  
                p_name_01  => 'REST-Framework-Version',  
                p_value_01 => '6', 
                p_name_02  => case when c_sandbox_header_value is not null then 'Metadata-Context' end, 
                p_value_02 => c_sandbox_header_value ); 
                return apex_web_service.make_rest_request(  
                            p_url                  => replace_url_params( 
                                                        p_url            => l_web_source_module.url_endpoint, 
                                                        p_module_id      => l_web_source_module.module_id, 
                                                        p_application_id => p_application_id)||'/describe',  
                            p_http_method          => 'GET', 
                            p_credential_static_id => l_web_source_module.credential_static_id);  
            end loop;  
        end describe_json;  
    begin 
        l_describe_json := describe_json;  
        delete from eba_util_farest_endpoints   
         where application_id = p_application_id  
           and module_static_id = p_module_static_id;  
        insert into eba_util_farest_endpoints(  
            module_static_id,  
            application_id  
        )  
        values (  
            p_module_static_id,  
            p_application_id  
        )  
        returning id into l_fa_rest_endpoint_id;  
        insert into eba_util_farest_endpoint_attrs(  
            endpoint_id,  
            attr_name,  
            attr_type,  
            attr_len,  
            attr_title,  
            attr_description,  
            attr_lov,  
            lov_href,  
            attr_control_type,  
            attr_is_queryable,  
            attr_is_required,  
            attr_has_def_expr,  
            attr_allow_changes,  
            attr_is_primary_key,  
            attr_is_custom,  
            allowed_operators,  
            position      
        )  
        select  l_fa_rest_endpoint_id,  
                a.attr_name,  
                a.attr_type,  
                a.attr_len,  
                a.attr_title,  
                a.attr_description, 
                a.attr_lov,  
                replace(replace(REGEXP_REPLACE(c.lov_href,'\{(\w+)\}',':\1',1,0,'i'),':443/','/'),':80/','/') lov_href, 
                a.attr_control_type,  
                case a.attr_queryable    when 'true' then 'Y' else 'N' end            attr_is_queryable,  
                case a.attr_required     when 'true' then 'Y' else 'N' end            attr_is_required,  
                case a.attr_has_def_expr when 'true' then 'Y' else 'N' end            attr_has_def_expr,  
                case a.attr_allow_changes  
                    when 'never'    then 'ReadOnly'  
                    when 'inCreate' then 'CreateOnly'  
                    when 'always'   then 'Always'  
                end                                                                   attr_allow_changes,  
                case when b.attr_name is not null then 'Y' else 'N' end               attr_is_primary_key,  
                case   
                    when upper(a.attr_name) like '%\_C' escape '\'   
                    then 'Y'   
                    else 'N' end attr_is_custom,  
                (select listagg(y.operator,', ')  
                   from json_table(a.attr_operators,'$[*]'   
                            columns (  
                                operator path '$'  
                            )  
                        ) y) as supported_operators,  
                a.position  
            from json_table( l_describe_json,  
                    '$.Resources.*.attributes[*]'  
                    columns (  
                        position                          for ordinality,  
                        attr_name          varchar2(4000) path '$.name',  
                        attr_title         varchar2(4000) path '$.title',  
                        attr_control_type  varchar2(4000) path '$.controlType',  
                        attr_description   varchar2(4000) path '$.annotations.description',  
                        attr_lov           varchar2(4000) path '$.lov.childRefForCreate',  
                        attr_type          varchar2(4000) path '$.type',  
                        attr_len           varchar2(4000) path '$.precision',  
                        attr_queryable     varchar2(4000) path '$.queryable',  
                        attr_required      varchar2(4000) path '$.mandatory',  
                        attr_allow_changes varchar2(4000) path '$.allowChanges',  
                        attr_operators     varchar2(4000) path '$.operators',  
                        attr_has_def_expr  varchar2(4000) path '$.hasDefaultValueExpression')) a,  
                json_table(l_describe_json,  
                    '$.Resources.*.collection.finders[*]?(@.name=="PrimaryKey").attributes[*]'  
                    columns (  
                        attr_name varchar2(4000) path '$.name')) b,  
                (  
                    select  
                        a.lov_name,  
                        a.lov_href  
                    from  
                        json_table( l_describe_json,  
                            '$.Resources.*.item.links[*]?(@.rel=="lov")'  
                            columns (  
                                lov_name varchar2(4000) path '$.name',  
                                lov_href varchar2(4000) path '$.href')) a  
                ) c  
            where a.attr_name = b.attr_name (+)  
              and a.attr_lov  = c.lov_name  (+);  
    insert into eba_util_farest_endpoint_chobj(  
        endpoint_id,  
        obj_name,  
        cardinality,  
        obj_href  
    )  
     select l_fa_rest_endpoint_id,  
            x.name,  
            x.cardinality,  
            replace(replace(REGEXP_REPLACE(x.href,'\{(\w+)\}',':\1',1,0,'i'),':443/','/'),':80/','/') href  
       from json_table(l_describe_json,'$.Resources.*.item.links[*]?(@.rel=="child")'  
       columns (  
            href varchar2(4000) path '$.href',  
            name varchar2(4000) path '$.name',  
            cardinality varchar2(100) path '$.cardinality.value'  
       )) x;  
    end ingest_json_describe;  
    ------------------------------------------------------------ 
    -- Download, parse, and locally store key information 
    -- about the FA REST data sources used by all the apps in 
    -- the workspace that haven't yet been downloaded 
    ------------------------------------------------------------ 
    procedure ingest_json_for_data_sources  
    is 
        l_total_services_to_describe  number; 
        l_cur_service_being_described number := 0;      
    begin 
        select count(*)  
        into l_total_services_to_describe 
        from ( 
            select application_id, module_static_id  
                                            from apex_appl_web_src_modules  
                                           where web_source_type_code = c_native_adfbc 
                                           minus  
                                          select application_id, module_static_id  
                                            from eba_util_farest_endpoints 
        ); 
        for l_data_source in (select application_id, module_static_id  
                                from apex_appl_web_src_modules  
                               where web_source_type_code = c_native_adfbc 
                               minus  
                              select application_id, module_static_id  
                                from eba_util_farest_endpoints) loop  
            begin  
                l_cur_service_being_described := l_cur_service_being_described + 1; 
                apex_background_process.set_progress( 
                    p_totalwork => l_total_services_to_describe, 
                    p_sofar     => l_cur_service_being_described); 
                apex_background_process.set_status('Retrieving REST endpoint description for ' 
                                                    ||l_data_source.module_static_id 
                                                    ||' in app ' 
                                                    ||l_data_source.application_id);                                   
                ingest_json_describe(  
                    p_application_id   => l_data_source.application_id,  
                    p_module_static_id => l_data_source.module_static_id);  
                commit;  
            exception  
                when others then  
                    apex_debug.info('Error while describing app %s, datasource %s',  
                        l_data_source.application_id,  
                        l_data_source.module_static_id);  
                    apex_debug.info(sqlerrm);  
            end;  
        end loop;  
    end ingest_json_for_data_sources; 
    ------------------------------------------------------------ 
    -- Refresh the catalog of available top-level REST endpoints 
    -- for the distinct list of base URLs among all FA REST data 
    -- sources defined in the workspace. 
    ------------------------------------------------------------ 
    procedure refresh_catalog is 
        l_total_baseurls_to_describe  number; 
        l_cur_baseurl_being_described number := 0;      
        l_xml_of_json_describe xmltype; 
        ------------------------------------------------------------ 
        -- Return the minimal REST describe payload for the endpoint 
        -- URL passed in. 
        ------------------------------------------------------------ 
        function describe_json( 
            p_endpoint_url         in varchar2, 
            p_credential_static_id in varchar2, 
            p_application_id       in number)  
        return clob  
        is 
            c_sandbox_header_value constant varchar2(4000) := sandbox_header_value(p_application_id);  
        begin  
            apex_web_service.set_request_headers(  
                p_name_01  => 'REST-Framework-Version',  
                p_value_01 => '6', 
                p_name_02  => case when c_sandbox_header_value is not null then 'Metadata-Context' end, 
                p_value_02 => c_sandbox_header_value );  
            return apex_web_service.make_rest_request(  
                        p_url                  => p_endpoint_url||'/describe?metadataMode=minimal',  
                        p_http_method          => 'GET',  
                        p_credential_static_id => p_credential_static_id);  
        end describe_json;      
    begin 
        -- Remove existing base URLs for catalog describe 
        delete from eba_util_farest_cat_baseurl; 
        -- Populate distinct list of base URLs for catalog describe 
        insert into eba_util_farest_cat_baseurl(endpoint_url,credential_static_id,application_id) 
        select base_url_endpoint, 
               credential_static_id, 
               min(application_id) 
          from ( 
            select distinct  
                       case when instr(url_endpoint,'/'||attribute_02||'/') > 0 
                            then substr(url_endpoint, 1, instr(url_endpoint,'/'||attribute_02||'/') - 1) 
                            else case when regexp_instr(url_endpoint,'/'||apex_escape.regexp(attribute_02)||'$') > 0  
                                      then substr(url_endpoint, 1, regexp_instr(url_endpoint,'/'||apex_escape.regexp(attribute_02)||'$') - 1) 
                                      else url_endpoint 
                                 end 
                        end as base_url_endpoint,  
                       credential_static_id, 
                       application_id 
                  from apex_appl_web_src_modules 
                 where web_source_type_code = c_native_adfbc) 
          group by base_url_endpoint, credential_static_id; 
        commit; 
        select count(*)  
          into l_total_baseurls_to_describe 
          from eba_util_farest_cat_baseurl; 
        -- Describe and shred each base URL 
         for j in (select id, endpoint_url, credential_static_id, application_id 
                     from eba_util_farest_cat_baseurl) loop 
            begin 
                l_cur_baseurl_being_described := l_cur_baseurl_being_described + 1; 
                apex_background_process.set_progress( 
                    p_totalwork => l_total_baseurls_to_describe, 
                    p_sofar     => l_cur_baseurl_being_described);    
                apex_background_process.set_status('Retrieving REST endpoints at '||j.endpoint_url);  
                ensure_app_proxy(j.application_id); 
                l_xml_of_json_describe := apex_json.to_xmltype(describe_json(j.endpoint_url,j.credential_static_id,j.application_id)); 
                insert into eba_util_farest_catalog(resource_name,title,endpoint_url,baseurl_id) 
                select x.resource_name,  
                       coalesce(x.title_plural,x.title) as title,  
                       regexp_replace(x.href,'/describe$') as href, 
                       j.id as baseurl_id 
                from xmltable( '/json/Resources/*'  
                        passing l_xml_of_json_describe 
                        columns 
                           resource_name varchar2(200) path 'local-name()', 
                           href          varchar2(4000) path 'links/row[1]/href', 
                           title         varchar2(200) path 'title',        
                           title_plural  varchar2(200) path 'titlePlural'     
                     ) x 
                    order by upper(resource_name); 
                    commit; 
            exception 
                when others then null; 
            end; 
         end loop; 
    end refresh_catalog; 
end eba_util_farest_explorer;
/