create or replace package eba_util_farest_explorer as  
    procedure ingest_json_describe(  
        p_application_id   in number,  
        p_module_static_id in varchar2  
    );  
    procedure ingest_json_for_data_sources;  
    procedure refresh_catalog;
    function manage_catalogs(
        p_release           in varchar2,
        p_pillar            in varchar2,
        p_operation         in varchar2)
        return                 varchar2;
    function tokenized_row_search_predicate(
        p_search_facet_value in varchar2,
        p_search_column_name in varchar2,
        p_search_facet_name  in varchar2)
    return varchar2;
    procedure ensure_available_catalogs;
end eba_util_farest_explorer;
/
create or replace package body eba_util_farest_explorer as
    c_catalog_baseurl     constant varchar2(255) := 'http://phoenix225302.dev3sub3phx.databasede3phx.oraclevcn.com:9988';
    c_catalog_filename    constant varchar2(255) := 'fa_catalog_manifest.json';
    c_native_adfbc        constant varchar2(12)  := 'NATIVE_ADFBC';
    c_web_src_type        constant varchar2(15)  := 'WEB SOURCE TYPE';
    c_manifest_collection constant varchar2(23)  := 'EBA_UTIL_FACAT_MANIFEST';
    c_manifest_url        constant varchar2(255) := c_catalog_baseurl||'/'||c_catalog_filename;
    g_server_prefixes  apex_application.num_assoc_arr;
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
        select proxy_server,
               no_proxy_domains
          into apex_application.g_proxy_server,
               apex_application.g_no_proxy_domains
         from apex_applications
        where application_id = p_app_id;
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
                                               wsm.module_id,
                                               wsm.auth_url_endpoint
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
                            p_credential_static_id => l_web_source_module.credential_static_id,
                            p_token_url            => l_web_source_module.auth_url_endpoint);
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
            p_application_id       in number,
            p_token_url            in varchar2)
        return clob
        is
            c_sandbox_header_value constant varchar2(4000) := sandbox_header_value(p_application_id);
            l_resp clob;
            l_param varchar2(100) := '?metadataMode=minimal';
        begin
            while true loop

                apex_debug.trace( '## Trying to describe with parameter %0',p0=>coalesce(l_param,'NULL'));
                apex_web_service.set_request_headers(
                    p_name_01  => 'REST-Framework-Version',
                    p_value_01 => '6',
                    p_name_02  => case when c_sandbox_header_value is not null then 'Metadata-Context' end,
                    p_value_02 => c_sandbox_header_value );
                l_resp := apex_web_service.make_rest_request(
                        p_url                  => p_endpoint_url||'/describe' || l_param,
                        p_http_method          => 'GET',
                        p_credential_static_id => p_credential_static_id,
                        p_token_url            => p_token_url );

                exit when apex_web_service.g_status_code = utl_http.http_ok or l_param is null;
                l_param := null;

            end loop;

            return l_resp;

        end describe_json;
    begin
        -- Remove existing base URLs for catalog describe
        delete from eba_util_farest_cat_baseurl;
        -- Populate distinct list of base URLs for catalog describe
        insert into eba_util_farest_cat_baseurl(endpoint_url,credential_static_id,application_id,auth_url_endpoint)
        select base_url_endpoint,
               credential_static_id,
               min(application_id),
               auth_url_endpoint
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
                       application_id,
                       auth_url_endpoint
                  from apex_appl_web_src_modules
                 where web_source_type_code = c_native_adfbc)
          group by base_url_endpoint, credential_static_id, auth_url_endpoint;
        commit;
        select count(*)
          into l_total_baseurls_to_describe
          from eba_util_farest_cat_baseurl;
        -- Describe and shred each base URL
         for j in (select id, endpoint_url, credential_static_id, application_id, auth_url_endpoint
                     from eba_util_farest_cat_baseurl) loop
            begin
                l_cur_baseurl_being_described := l_cur_baseurl_being_described + 1;
                apex_background_process.set_progress(
                    p_totalwork => l_total_baseurls_to_describe,
                    p_sofar     => l_cur_baseurl_being_described);
                apex_background_process.set_status('Retrieving REST endpoints at '||j.endpoint_url);
                ensure_app_proxy(j.application_id);
                l_xml_of_json_describe := apex_json.to_xmltype(describe_json(j.endpoint_url,j.credential_static_id,j.application_id,j.auth_url_endpoint));
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
                when others then
                apex_debug.info(apex_string.format('Exception fetching catalog from %s: %s',j.endpoint_url,sqlerrm));
            end;
         end loop;
    end refresh_catalog;

    function install_catalog_zip(
        p_release           in varchar2,
        p_pillar            in varchar2)
        return       varchar2
    is
        c_file_name constant varchar2(1000) := p_release
                                               ||'_'
                                               ||p_pillar
                                               ||'.zip';
        l_catalog_zip         blob;
        l_files               apex_zip.t_files;
        l_ret                 varchar2(255);
        l_details_json        blob;
        l_pillar_id           number;
        l_release_id          number;
        l_catalog_id          number;

        -------------------------------------------------------------------------------
        procedure get_pillar_id
        is
        begin
            select id
              into l_pillar_id
              from eba_util_facat_pillars
             where name = p_pillar;
        exception
            when no_data_found then
                insert into eba_util_facat_pillars(name)
                values (p_pillar)
                returning id into l_pillar_id;
        end get_pillar_id;
        -------------------------------------------------------------------------------
        procedure get_release_id
        is
        begin
            select id
              into l_release_id
              from eba_util_facat_releases
             where name = p_release;
        exception
            when no_data_found then
                insert into eba_util_facat_releases(name)
                values (p_release)
                returning id into l_release_id;
        end get_release_id;

        -------------------------------------------------------------------------------
        procedure install_catalog_service(
            p_details_json in blob)
        is
            l_service_id eba_util_facat_endpoints.id%type;
            cursor c is select l_catalog_id,
                               name,
                               description,
                               path,
                               server_prefix
                          from json_table(p_details_json, '$."data_profile"' columns (
                            name          varchar2(4000)  path '$."name"',
                            path          varchar2(4000)  path '$."path"',
                            server_prefix varchar2(4000)  path '$."server_prefix"',
                            description   varchar2(4000) path '$."description"'
                          ));
            l_service_info c%rowtype;
            l_server_prefix_id number;

            procedure get_server_prefix_id(
                p_server_url_prefix in varchar2)
            is
            begin
                if g_server_prefixes.exists(p_server_url_prefix) then
                    l_server_prefix_id := g_server_prefixes(p_server_url_prefix);
                else
                    begin
                        select id
                          into l_server_prefix_id
                          from eba_util_facat_server_prefixes
                         where server_url_prefix = p_server_url_prefix;
                    exception
                        when no_data_found then
                            insert into eba_util_facat_server_prefixes(server_url_prefix)
                            values (p_server_url_prefix)
                            returning id into l_server_prefix_id;
                    end;
                    -- Cache server prefix id lookup
                    g_server_prefixes(p_server_url_prefix) := l_server_prefix_id;
                end if;
            end get_server_prefix_id;
        begin
            open c;
            fetch c into l_service_info;
            close c;
            get_server_prefix_id(l_service_info.server_prefix);
            insert into eba_util_facat_endpoints(
                catalog_id,
                name,
                description,
                path,
                server_prefix_id
            )
            values (
                l_catalog_id,
                l_service_info.name,
                l_service_info.description,
                l_service_info.path,
                l_server_prefix_id
            )
            returning id into l_service_id;
            insert into eba_util_facat_endpoint_attrs(
                bo_endpoint_id,
                data_profile_column_name,
                attr_name,
                attr_type,
                attr_len,
                attr_title,
                attr_description,
                attr_is_queryable,
                attr_is_required,
                attr_allow_changes,
                position
            )
            select l_service_id,
                   col_name,
                   coalesce(remote_attr_name,selector),
                   attr_type,
                   attr_len,
                   attr_title,
                   attr_description,
                   attr_filterable,
                   case 
                        when ','||additional_info||',' like '%,Required,%'
                        then 'Y'
                        else 'N'
                   end,
                   case 
                        when ','||additional_info||',' like '%,ReadOnly,%'
                        then 'N'
                        when ','||additional_info||',' like '%,CreateOnly,%'
                        then 'On Create'
                        else 'Y'
                   end,
                   seq
              from json_table(p_details_json, '$."data_profile"."columns"[*]' columns (
                   col_name         varchar2(4000) path '$."name"',
                   selector         varchar2(4000) path '$."selector"',
                   remote_attr_name varchar2(4000) path '$."remote_attribute_name"',
                   attr_type        varchar2(4000) path '$."data_type"',
                   attr_len         number         path '$."max_length"',
                   attr_title       varchar2(4000) path '$."label"',
                   attr_description varchar2(4000) path '$."description"',
                   attr_filterable  varchar2(4000) path '$."is_filterable"',
                   seq              number         path '$."sequence"',
                   additional_info  varchar2(4000) path '$."additional_info"'
              ));
        end install_catalog_service;
    begin
        -- Clear server prefix url cache
        g_server_prefixes.delete;
        l_catalog_zip := apex_web_service.make_rest_request_b(
                            p_http_method => 'GET',
                            p_url         => rtrim(c_catalog_baseurl,'/')
                                             ||'/'
                                             ||c_file_name);
        if apex_web_service.g_status_code != 200 then
            l_ret := apex_string.format(
                                'Error downloading %s pillar catalog for %s release',
                                p_pillar,
                                p_release);
        end if;
        get_pillar_id;
        get_release_id;
        -- delete existing catalog for this (release,pillar) combination
        delete from eba_util_facat_catalogs
        where pillar_id = l_pillar_id
          and release_id = l_release_id;
        -- insert new catalog entry to prepare for installing
        -- all the services in the downloaded release/pillar catalog zip
        insert into eba_util_facat_catalogs(release_id,pillar_id)
        values (l_release_id,l_pillar_id)
        returning id into l_catalog_id;
        --
        -- Get list of files from the zip
        --
        l_files := apex_zip.get_files(l_catalog_zip);

        --
        -- Set initial background progress
        --
        apex_background_process.set_progress(p_totalwork=>l_files.count,p_sofar=>0);
        --
        -- Process the individual files inside the zip
        --
        for j in 1..l_files.count loop
            l_details_json := apex_zip.get_file_content(l_catalog_zip,l_files(j));
            apex_background_process.set_progress(p_totalwork=>l_files.count,p_sofar=>j);
            install_catalog_service(
                p_details_json => l_details_json);
        end loop;
        -- Wire up the path parentage for hiearchy
        update eba_util_facat_endpoints e
        set e.parent_bo_endpoint_id =
           (select p.id
              from eba_util_facat_endpoints p
             where p.catalog_id = e.catalog_id
               and p.server_prefix_id = e.server_prefix_id
               and p.path = case
                                regexp_count(e.path,'/\{[^}]+\}/child/[^/]+$')
                                when 1
                                then regexp_replace(e.path,'/\{[^}]+\}/child/[^/]+$')
                            end);        
        return l_ret;
    end;

    function uninstall_catalog_zip(
        p_release in varchar2,
        p_pillar  in varchar2)
        return       varchar2
    is
        l_ret varchar2(255);
    begin
        delete
        from eba_util_facat_catalogs c
        where c.release_id = (select id
                                from eba_util_facat_releases
                               where name = p_release)
          and c.pillar_id = (select id
                               from eba_util_facat_pillars
                              where name = p_pillar);
        return l_ret;
    end;
    function manage_catalogs(
        p_release           in varchar2,
        p_pillar            in varchar2,
        p_operation         in varchar2)
        return         varchar2
    is
        l_ret varchar2(255);
    begin
        apex_debug.enter('manage_catalogs',
            'p_release',p_release,
            'p_pillar',p_pillar,
            'p_operation',p_operation);
        case upper(p_operation)
            when 'INSTALL' then
                l_ret := install_catalog_zip(
                            p_release           => p_release,
                            p_pillar            => p_pillar);
            when 'UNINSTALL' then
                l_ret := uninstall_catalog_zip(
                            p_release => p_release,
                            p_pillar  => p_pillar);
            else
                l_ret := 'Unrecognized operation '||upper(p_operation);
        end case;
        return l_ret;
    end manage_catalogs;

    function tokenized_row_search_predicate(
        p_search_facet_value in varchar2,
        p_search_column_name in varchar2,
        p_search_facet_name  in varchar2)
        return                  varchar2
    is
        c_row_search_predicate constant varchar2(255) :=
            q'~upper(%s) like chr(37)||upper(trim(regexp_substr(:%s,'[^'||chr(13)||chr(10)||']+',1,%s)))||chr(37)~';
        l_predicates apex_t_varchar2;
    begin
        --
        -- Return a valid predicate so that the Function Returning SQL will be legal
        -- SQL even at design time when p_search_facet_value is null
        --
        if p_search_facet_value is null then
            return '1=1';
        else
            for j in 1..regexp_count(p_search_facet_value,'[^'||chr(13)||chr(10)||']+') loop
                -- chr(37) is the percent sign
                apex_string.push(l_predicates,
                                 apex_string.format(
                                    c_row_search_predicate,
                                    p_search_column_name,
                                    p_search_facet_name,
                                    j));
            end loop;
            return apex_string.join(l_predicates,' and ');
        end if;
    end tokenized_row_search_predicate;

    procedure ensure_available_catalogs
    is
        l_manifest_clob   clob;
        l_manifest_json   json_object_t;
        json_syntax_error exception;
        json_invalid      exception;
        pragma            exception_init(json_syntax_error,-40441);
        pragma            exception_init(json_invalid,-40834);        
    begin
        for j in (select null
                    from apex_collections
                   where collection_name = c_manifest_collection
                     and clob001 is not null
                     and sys.dbms_lob.getlength(clob001) > 0) 
        loop
            -- Manifest is already cached.
            return;
        end loop;
        apex_collection.create_or_truncate_collection(c_manifest_collection);
        l_manifest_clob := apex_web_service.make_rest_request(
                                p_http_method => 'GET',
                                p_url         => c_manifest_url);
        -- Make sure it's valid JSON before caching it                        
        l_manifest_json := json_object_t(l_manifest_clob);
        apex_collection.add_member(
            p_collection_name => c_manifest_collection,
            p_clob001         => l_manifest_clob);
    exception
        -- if some temporary issue causes the return to be invalid JSON
        -- then don't cache anything and we'll try again next time
        when json_syntax_error then
            null;
        when json_invalid THEN
            null;        
    end ensure_available_catalogs;
end eba_util_farest_explorer;
/