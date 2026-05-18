create or replace package eba_demo_ig_text_pkg authid current_user is
    function text_is_available return boolean;

    procedure create_text_preferences;
    procedure drop_text_preferences;
    procedure create_text_index;
    procedure drop_text_index;

    procedure init_oracle_text;

    function convert_text_query( p_enduser_query in varchar2 ) return varchar2;
end eba_demo_ig_text_pkg;
/

create or replace package body eba_demo_ig_text_pkg is
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
        execute_sql( q'#drop index eba_demo_ig_text_ftx force#' );
    end drop_text_index;

    procedure drop_text_preferences is
    begin
        execute_sql( q'#begin ctx_ddl.drop_preference( 'EBA_DEMO_IG_LX_PREF'); end;#', false ); 
        execute_sql( q'#begin ctx_ddl.drop_preference( 'EBA_DEMO_IG_DS_PREF'); end;#', false ); 
        execute_sql( q'#begin ctx_ddl.drop_section_group( 'EBA_DEMO_IG_SG_PREF'); end;#', false ); 
    end drop_text_preferences;

    procedure create_text_preferences is
    begin
        -- Datastore Preference: Index the NAME and the COUNTRY columns
        execute_sql(q'# 
        begin
            ctx_ddl.create_preference(
                preference_name  => 'EBA_DEMO_IG_DS_PREF',
                object_name      => 'MULTI_COLUMN_DATASTORE'
            );
        
            ctx_ddl.set_attribute(
                preference_name  => 'EBA_DEMO_IG_DS_PREF',
                attribute_name   => 'COLUMNS',
                attribute_value  => 'NAME,COUNTRY,FROM_YR,TO_YR'
            );
        
            ctx_ddl.create_section_group(
                group_name       => 'EBA_DEMO_IG_SG_PREF',
                group_type       => 'XML_SECTION_GROUP'
            );
        
            ctx_ddl.add_field_section(
                group_name       => 'EBA_DEMO_IG_SG_PREF',
                section_name     => 'COUNTRY',
                tag              => 'COUNTRY',
                visible          => true
            );
        
            ctx_ddl.add_field_section(
                group_name       => 'EBA_DEMO_IG_SG_PREF',
                section_name     => 'NAME',
                tag              => 'NAME',
                visible          => true
            );
        
            ctx_ddl.create_preference(
                preference_name  => 'EBA_DEMO_IG_LX_PREF',
                object_name      => 'BASIC_LEXER'
            );
        
            ctx_ddl.set_attribute(
                preference_name  => 'EBA_DEMO_IG_LX_PREF',
                attribute_name   => 'MIXED_CASE',
                attribute_value  => 'NO'
            );
        
            ctx_ddl.set_attribute(
                preference_name  => 'EBA_DEMO_IG_LX_PREF',
                attribute_name   => 'BASE_LETTER',
                attribute_value  => 'YES'
            );
            ctx_ddl.set_attribute(
                preference_name  => 'EBA_DEMO_IG_LX_PREF',
                attribute_name   => 'BASE_LETTER_TYPE',
                attribute_value  => 'GENERIC'
            );
        end;#'
        ); 
    end create_text_preferences;

    procedure create_text_index is
    begin
        execute immediate 
q'#create index eba_demo_ig_text_ftx on eba_demo_ig_people (name)
   indextype is ctxsys.context parameters ( 'section group  EBA_DEMO_IG_SG_PREF
                                             datastore      EBA_DEMO_IG_DS_PREF
                                             lexer          EBA_DEMO_IG_LX_PREF
                                             stoplist       ctxsys.empty_stoplist
                                             memory         10M
                                             sync           (on commit)')#';
    end create_text_index;

    function convert_text_query( p_enduser_query in varchar2 ) return varchar2 
    is 
        l_tokens       apex_application_global.vc_arr2;
        l_set_boolean  boolean := false;

        c_xml constant varchar2(32767) := '<query><textquery><progression>' ||
                                            '<seq>#NORMAL_AND#</seq>' ||
                                            '<seq>#FUZZY_AND#</seq>' ||
                                            '<seq>#FUZZY_OR#</seq>' ||
                                          '</progression></textquery></query>';
        l_textquery    varchar2(32767) := '';
 
        function generate_query( p_feature in varchar2, p_combine in varchar2) return varchar2 is
            l_query        varchar2(32767);
            l_clean_token  varchar2(100);
        begin
            for i in 1..l_tokens.count loop
                l_clean_token := lower( regexp_replace( l_tokens( i ), '[<>{}/()*%&!$?.:,;\+#]', '' ) );
                if ltrim( rtrim( l_clean_token ) ) is not null then
                    if p_feature = 'FUZZY' then
                        l_query := l_query || 'FUZZY({' || l_clean_token || '}, 50, 500) ';
                    elsif p_feature = 'WILDCARD_RIGHT' then 
                        l_query := l_query || l_clean_token || '% ';
                    else 
                        l_query := l_query || '{' || l_clean_token || '} ';
                    end if;
                    if p_combine = 'OR' then 
                        l_query := l_query || ' or ';
                    else 
                        l_query := l_query || ' and ';
                    end if;
                end if;
            end loop;
            if p_combine = 'AND' then
                l_query := substr( l_query, 1, length( l_query ) - 5 );
            else
                l_query := substr( l_query, 1, length( l_query ) - 4 );
            end if;
            return ltrim( rtrim( l_query )); 
        end generate_query;
    begin
        if substr( p_enduser_query, 1, 8 ) = 'ORATEXT:' then
            return substr( p_enduser_query, 9 );
        else 
            l_textquery := c_xml;
            l_tokens := apex_util.string_to_table( p_enduser_query, ' ' );
    
            l_textquery := replace( l_textquery, '#NORMAL_AND#', generate_query( 'NORMAL', 'AND' ) );
            l_textquery := replace( l_textquery, '#FUZZY_AND#', generate_query( 'FUZZY', 'AND' ) );
    
            return l_textquery;
        end if;
    end convert_text_query;

end eba_demo_ig_text_pkg;
/

begin
    eba_demo_ig_text_pkg.init_oracle_text;
end;
/

