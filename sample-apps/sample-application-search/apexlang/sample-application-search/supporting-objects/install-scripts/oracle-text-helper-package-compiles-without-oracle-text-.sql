-------------------------------------------------------------------------------------------------------
-- Oracle TEXT helper package
-------------------------------------------------------------------------------------------------------

create or replace package eba_demo_search_text_pkg authid current_user is
    function text_is_available return boolean;
    
    procedure products_ds_procedure(p_rid  in  rowid,p_tlob in out nocopy varchar2);
    
    procedure create_text_preferences;
    procedure drop_text_preferences;
    procedure create_text_index;
    procedure drop_text_index;
    
    procedure init_oracle_text;

    function convert_text_query( p_enduser_query in varchar2 ) return varchar2;
end eba_demo_search_text_pkg;
/

create or replace package body eba_demo_search_text_pkg is
    procedure execute_sql(
        p_sql         in varchar2, 
        p_throw_error in boolean default true
    ) is
    begin
        execute immediate p_sql;
    exception
        when others then 
            if p_throw_error then raise; end if;
    end execute_sql;
    
    procedure products_ds_procedure (p_rid  in  rowid,p_tlob in out nocopy varchar2) is
        type t_product_details is record (
            product_id   number,
            product_name varchar2(200),
            colour       varchar2(200),
            gender       varchar2(200),
            brand        varchar2(200),
            description  varchar2(2000)
        );

        l_product t_product_details;
    begin
        select p.product_id,
            p.product_name,
            j.colour,
            j.gender,
            j.brand,
            j.description
        into l_product
        from eba_demo_search_products p,
            json_table(product_details, '$'
                columns (
                    colour      varchar2(200) path '$.colour',
                    gender      varchar2(200) path '$.gender',
                    brand       varchar2(200) path '$.brand',
                    description varchar2(2000) path '$.description'
                )
            ) j
        where p.rowid = p_rid;

        select xmlforest( 
                   l_product.product_name as name, 
                   l_product.colour       as colour, 
                   l_product.gender       as gender,
                   l_product.brand        as brand, 
                   l_product.description  as description ).getstringval() 
        into p_tlob 
        from sys.dual;

    end products_ds_procedure;

    function text_is_available return boolean 
    is
        l_dummy number;
    begin
        select 1 into l_dummy 
          from sys.all_objects
         where owner       = 'CTXSYS' 
           and object_name = 'CTX_DDL' 
           and rownum      = 1;

        return true;
    exception 
        when NO_DATA_FOUND then return false;
    end text_is_available;

    procedure init_oracle_text is
    begin
        if text_is_available then
            create_text_preferences;
            create_text_index;
        end if;
    end init_oracle_text;

    procedure drop_text_index is 
    begin
        execute_sql( q'#drop index eba_demo_search_products_ctx force#' );
    end drop_text_index;

    procedure drop_text_preferences is
    begin
        execute_sql( q'#begin ctx_ddl.drop_preference( 'EBA_DEMO_SEARCH_LX_PREF'); end;#', false ); 
        execute_sql( q'#begin ctx_ddl.drop_preference( 'EBA_DEMO_SEARCH_DS_PREF'); end;#',false); 
        execute_sql( q'#begin ctx_ddl.drop_section_group( 'EBA_DEMO_SEARCH_SG_PREF'); end;#', false ); 
    end drop_text_preferences;

    procedure create_text_preferences is

    begin

        -- Datastore Preference        
        
        execute_sql(q'# 
        begin
            ctx_ddl.create_preference(
                preference_name  => 'EBA_DEMO_SEARCH_DS_PREF',
                object_name      => 'USER_DATASTORE'
            );
        
            ctx_ddl.set_attribute(
                preference_name  => 'EBA_DEMO_SEARCH_DS_PREF',
                attribute_name   => 'PROCEDURE',
                attribute_value  => 'eba_demo_search_text_pkg.products_ds_procedure'
            );

            ctx_ddl.set_attribute(
                preference_name  => 'EBA_DEMO_SEARCH_DS_PREF',
                attribute_name   => 'OUTPUT_TYPE',
                attribute_value  => 'VARCHAR2'
            );
        end;#', false
        ); 
        
        execute_sql(q'# 
        begin
            ctx_ddl.create_section_group(
                group_name       => 'EBA_DEMO_SEARCH_SG_PREF',
                group_type       => 'XML_SECTION_GROUP'
            );
        
            ctx_ddl.add_field_section(
                group_name       => 'EBA_DEMO_SEARCH_SG_PREF',
                section_name     => 'NAME',
                tag              => 'NAME',
                visible          => true
            );
        
            ctx_ddl.add_field_section(
                group_name       => 'EBA_DEMO_SEARCH_SG_PREF',
                section_name     => 'COLOUR',
                tag              => 'COLOUR',
                visible          => true
            );

            ctx_ddl.add_field_section(
                group_name       => 'EBA_DEMO_SEARCH_SG_PREF',
                section_name     => 'GENDER',
                tag              => 'GENDER',
                visible          => true
            );

            ctx_ddl.add_field_section(
                group_name       => 'EBA_DEMO_SEARCH_SG_PREF',
                section_name     => 'BRAND',
                tag              => 'BRAND',
                visible          => true
            );
        
            ctx_ddl.add_field_section(
                group_name       => 'EBA_DEMO_SEARCH_SG_PREF',
                section_name     => 'DESCRIPTION',
                tag              => 'DESCRIPTION',
                visible          => true
            );
        end;#', false
        ); 
        
        execute_sql(q'# 
        begin
            ctx_ddl.create_preference(
                preference_name  => 'EBA_DEMO_SEARCH_LX_PREF',
                object_name      => 'BASIC_LEXER'
            );
        
            ctx_ddl.set_attribute(
                preference_name  => 'EBA_DEMO_SEARCH_LX_PREF',
                attribute_name   => 'MIXED_CASE',
                attribute_value  => 'NO'
            );
        
            ctx_ddl.set_attribute(
                preference_name  => 'EBA_DEMO_SEARCH_LX_PREF',
                attribute_name   => 'BASE_LETTER',
                attribute_value  => 'YES'
            );
            ctx_ddl.set_attribute(
                preference_name  => 'EBA_DEMO_SEARCH_LX_PREF',
                attribute_name   => 'BASE_LETTER_TYPE',
                attribute_value  => 'GENERIC'
            );
        end;#', false
        ); 
    end create_text_preferences;

    procedure create_text_index is
    begin
        execute immediate 
q'#create index eba_demo_search_products_ctx on eba_demo_search_products (text_index_column)
   indextype is ctxsys.context parameters ( 'section group  EBA_DEMO_SEARCH_SG_PREF
                                             datastore      EBA_DEMO_SEARCH_DS_PREF
                                             lexer          EBA_DEMO_SEARCH_LX_PREF
                                             stoplist       ctxsys.empty_stoplist
                                             memory         100M
                                             sync           (on commit)')#';
    end create_text_index;

    function convert_text_query(p_enduser_query in varchar2) return varchar2 is
        c_xml    constant varchar2(32767) := '<query><textquery><progression>' ||
                                            '<seq> #search# </seq>' ||
                                            '<seq> ?#search# </seq>' ||
                                            '<seq> #search#% </seq>' ||
                                            '<seq> %#search#% </seq>' ||
                                            '</progression></textquery></query>';
        l_search varchar2(32767) := p_enduser_query;

        function preprocess_search_query(p_search_query in varchar2) return varchar2 is
            l_tokens      apex_t_varchar2;
            l_token       varchar2(32767);
            l_is_keyword  boolean;
            l_expression  varchar2(32767);
        
            procedure append_to_expression( p_expression in out nocopy varchar2, p_token in varchar2, p_is_last_or_first in boolean ) is
                l_is_keyword boolean;
                l_token      varchar2(32767);
            begin
                l_is_keyword := lower(p_token) in ('and', 'or');
                l_token      := regexp_replace(p_token, '[^[:alnum:]]');

                l_expression := l_expression ||
                    case 
                    when not l_is_keyword or (l_is_keyword and not p_is_last_or_first) then
                        case 
                        when l_token is not null then
                            case 
                            when l_expression is not null then ' '
                            end
                            || case 
                                when not l_is_keyword then '{'
                            end
                            || l_token
                            || case 
                                when not l_is_keyword then '}'
                            end
                        end
                    end;
            end append_to_expression;

        begin
            -- split the search query into tokens
            l_tokens := apex_string.split(p_search_query, ' ');

            -- loop over the tokens and append processed token to expression
            for i in 1 .. l_tokens.count
            loop
                pragma inline(append_to_expression, 'yes');
                append_to_expression(
                    p_expression       => l_expression,
                    p_token            => l_tokens(i),
                    p_is_last_or_first => i = l_tokens.count or i = 1
                );
            end loop;

            return l_expression;
        end preprocess_search_query;

    begin
        l_search := preprocess_search_query(l_search);
        
        return replace(c_xml, '#search#', l_search);
    end convert_text_query;

end eba_demo_search_text_pkg;
/

begin
    eba_demo_search_text_pkg.init_oracle_text;
end;
/