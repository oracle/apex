create or replace package body eba_search_text_helper   
is   
    type t_existing_columns is table of varchar2(255) index by varchar2(255);   
   
    LF               constant varchar2(1 char) := unistr('\000a');   
    c_suffix_sg      constant varchar2(3)      := '_SG';   
    c_suffix_uds     constant varchar2(4)      := '_UDS';   
    c_suffix_ds      constant varchar2(3)      := '_DS';   
    c_suffix_lx      constant varchar2(3)      := '_LX';   
    c_suffix_wl      constant varchar2(3)      := '_WL';   
    c_suffix_idx     constant varchar2(4)      := '_IDX';   
    c_prefix_idx     constant varchar2(3)      := 'FT_';   
   
    c_suffix_f       constant varchar2(2)      := '_F';   
    c_suffix_sd      constant varchar2(3)      := '_SD';   
    c_suffix_nd      constant varchar2(3)      := '_ND';   
   
    c_index_memory   constant varchar2(4)      := '500M';   
  
    c_cities_list    constant apex_t_varchar2  := apex_t_varchar2(  
                                                      '( Seattle | New York | Auckland | Pune | Turin | Barcelona | Alexandria | Chicago | Utrecht | Santiago | Beijing | Izmir | Basel | Helsinki | Osaka | Tel Aviv | Mexico City | Melbourne | Davao City | Sao Paulo | Montreal | Monterrey | Singapore | Kowloon | Hyderabad | Dublin | Bengaluru | Cape Town | Munich | Guadalajara | Johor Bahru | Istanbul | Bogota | Graz | Espoo | Tampere | Vienna | Manchester | Prague | Penang | Krakow | Shanghai | Toronto | Frankfurt | Toulouse | Kisumu )',
                                                      '( Paris | Edinburgh | Geneva | Antwerp | Manila | Madrid | Rio de Janeiro | Nairobi | Lisbon | Giza | Ankara | Ghent | Galway | Cork | London | Stockholm | Ostrava | Vancouver | Trondheim | Shenzhen | Tampines | Brisbane | Nagoya | Berlin | Cordoba | Seoul | Port Harcourt | Wroclaw | Braga | Abu Dhabi | Incheon | Amsterdam | Malmo | Porto | Zurich | Gothenburg | Tokyo | Abuja | Brussels | Rome | Christchurch | Concepcion | Warsaw | Curitiba | Dubai | Debrecen | Oslo | Sharjah )',
                                                      '( Budapest | Aarhus | Cali | Szeged | Jurong East | Patras | Cluj-Napoca | Cebu City | Sha Tin | Durban | Milan | Kuala Lumpur | Cairo | Jerusalem | Odense | Lyon | Esch-sur-Alzette | Haifa | Buenos Aires | Copenhagen | Luxembourg City | Valencia | Rotterdam | Lagos | Johannesburg | Bucharest | Salzburg | Timisoara | Sydney | Athens | Rosario | Wellington | Thessaloniki | Differdange | Busan | Hong Kong | Valparaiso )');
    c_countries_list constant apex_t_varchar2  := apex_t_varchar2( 
                                                      '( Poland | United States | India | France | United Arab Emirates | Japan | Nigeria | South Africa | Luxembourg | Mexico | Denmark | Netherlands | Portugal | Greece | Switzerland | Sweden | Colombia | New Zealand | Germany | Canada | Malaysia | Brazil | Hungary | Israel | Australia | Finland | Spain | Italy | Czechia | United Kingdom | Ireland | Turkey | Egypt | China | Belgium | Argentina | Philippines | Singapore | Norway | Kenya | Romania | South Korea | Chile | Austria | Hong Kong )' ); 

--==============================================================================   
--   
-- 1. G E N E R I C   H E L P E R   F U N C T I O N S   
--   
--==============================================================================   
   
--==============================================================================   
-- Returns the Oracle Text config record for this app.   
--==============================================================================   
function get_config return eba_search_text_helper.t_config_table   
is   
begin   
    return eba_search_text_helper.t_config_table(   
                'NAME'            => eba_search_text_helper.t_config_column(   
                                         expression             => q'#FIRST_NAME || ' ' || LAST_NAME#',   
                                         field_search           => true,   
                                         two_char_terms_enabled => true, 
                                         ndata_search           => true ),   
                'COUNTRY'         => eba_search_text_helper.t_config_column(   
                                         alias        => 'cntry',  
                                         priority     => 4 ),   
                'PHONE_NUMBER'    => eba_search_text_helper.t_config_column(   
                                         sdata_search => true,   
                                         sdata_op     => 'llike',   
                                         --   
                                         field_search => false,   
                                         priority     => 2,   
                                         pattern      => '^[0-9]*$',   
                                         alias        => 'phone' ),   
                'EMAIL'           => eba_search_text_helper.t_config_column(   
                                         sdata_search => true,   
                                         --   
                                         field_search => false,   
                                         pattern      => '@example\.invalid$',   
                                         priority     => 2,   
                                         alias        => 'email' ),   
                'JOB_TITLE'       => eba_search_text_helper.t_config_column(   
                                         priority     => 3,   
                                         score_expr   => '*0.2' ),   
                'CITY'            => eba_search_text_helper.t_config_column(   
                                         score_expr   =>'*0.5',   
                                         alias        => 'city',   
                                         priority     => 1 ) );   
end get_config;   
   
--==============================================================================   
-- Helper procedure to tokenize a string, respecting quotes.   
--==============================================================================   
function tokenize(   
    p_string          in varchar2,   
    p_token_quote     in varchar2 default '"',   
    p_token_separator in varchar2 default ' ' )   
    return apex_t_varchar2   
is   
    l_value_len        pls_integer;   
    l_char             varchar2( 1 char );   
    l_next_char        varchar2( 1 char );   
    l_is_quoted        boolean;   
    l_this_value       varchar2(32767);   
    l_pos              simple_integer := 0;   
   
    l_tokenized_values apex_t_varchar2 := apex_t_varchar2();   
   
    ----------------------------------------------------------------------------   
    procedure append_split_tokens(   
        p_text in varchar2 )   
    is   
        l_tokens apex_t_varchar2;   
        l_index  pls_integer;   
    begin   
        l_tokens := apex_string.split( p_text, p_token_separator );   
        l_index  := l_tokens.first;   
   
        while l_index is not null loop   
            if l_tokens( l_index ) is not null then   
                apex_string.push(   
                    p_table => l_tokenized_values,   
                    p_value => l_tokens( l_index ) );   
            end if;   
   
            l_index := l_tokens.next( l_index );   
        end loop;   
    end append_split_tokens;   
begin   
    --   
    -- determine whether we have quotes and whether it is an even or an odd number of quotes.   
    --   
    l_value_len := length( p_string );   
   
    if    instr( p_string, p_token_quote ) = 0   
       or mod( l_value_len - length( translate( p_string, 'x' || p_token_quote, 'x' ) ), 2 ) = 1   
    then   
        --   
        -- we have no quotes, or an odd number of double-quotes. Tokenize without respecting quotes.   
        --   
        append_split_tokens( p_string );   
    else   
        --   
        -- the number of double quotes is even, so we can tokenize the value while respecting the quotes for   
        -- phrases.   
        --   
        l_is_quoted := false;   
        l_pos       := 1;   
   
        <<value_char_loop>>   
        while l_pos <= l_value_len loop   
   
            l_char := substr( p_string, l_pos, 1 );   
            if l_char = p_token_quote then   
                --   
                -- get the next char to see whether we have an escaped quote ("")   
                --   
                l_next_char := substr( p_string, l_pos + 1, 1 );   
                if l_next_char = p_token_quote then   
                    l_this_value := l_this_value || l_char;   
                    l_pos        := l_pos + 2;   
                    continue value_char_loop;   
                end if;   
   
                l_this_value := trim( both from l_this_value );   
                if l_this_value is not null then   
                    if l_is_quoted then   
                        apex_string.push( l_tokenized_values, l_this_value );   
                    else   
                        append_split_tokens( l_this_value );   
                    end if;   
                    l_this_value := null;   
                end if;   
                l_is_quoted := not l_is_quoted;   
            else   
                l_this_value := l_this_value || l_char;   
            end if;   
            l_pos := l_pos + 1;   
        end loop value_char_loop;   
        --   
        -- handle remaining text after the last quote   
        --   
        l_this_value := trim( both from l_this_value );   
        if l_this_value is not null then   
            append_split_tokens( l_this_value );   
        end if;   
    end if;   
    return l_tokenized_values;   
end tokenize;   
   
--==============================================================================   
-- Helper procedure to clean column names for Oracle Text section group   
-- names. Only allow A-Z, 0-9 and underscore, and make column name upper case.   
--==============================================================================   
function clean_column_name(   
    p_column_name in varchar2 )   
    return varchar2   
is   
begin   
    return upper(   
               regexp_replace(   
                   p_column_name,   
                   '[^ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_$]' ) );   
end clean_column_name;   
   
--==============================================================================   
-- Helper procedure to execute (and log) dynamic PL/SQL.   
--==============================================================================   
procedure do_execute(   
    p_plsql         in clob,   
    p_ignore_errors in boolean default false )   
is   
begin   
    apex_debug.info( 'Executing PL/SQL:' );   
    apex_debug.info( p_plsql );   
   
    execute immediate p_plsql;   
exception   
    when others then   
        if not p_ignore_errors then   
            raise;   
        end if;   
end do_execute;   
   
--==============================================================================   
--   
-- 2. C R E A T E   O R A C L E   T E X T   I N D E X   
--   
--==============================================================================   
   
--==============================================================================   
-- Cleans an already existing Text Index up and removes all dependent objects.   
--==============================================================================   
procedure cleanup_oracle_text(   
    p_name_prefix in varchar2 )   
is   
    procedure drop_ctx_object(   
        p_suffix in varchar2 )   
    is   
    begin   
   
        do_execute(   
            p_plsql         =>    'begin '   
                               || 'ctxsys.ctx_ddl.drop_'   
                               ||     case p_suffix   
                                          when c_suffix_sg   
                                          then 'section_group(group_name => '   
                                          else 'preference(preference_name => '   
                                      end   
                               || sys.dbms_assert.enquote_literal( sys.dbms_assert.enquote_name( p_name_prefix || p_suffix ) )   
                               || ');'   
                               || 'end;',   
            p_ignore_errors => true );   
    end drop_ctx_object;   
   
begin   
    do_execute(   
        p_plsql         =>    'drop index '   
                           || sys.dbms_assert.enquote_name( p_name_prefix || c_suffix_idx ) || ' force',   
        p_ignore_errors => true );   
   
    do_execute(   
        p_plsql         =>    'drop procedure '   
                           || sys.dbms_assert.enquote_name( p_name_prefix || c_suffix_uds ),   
        p_ignore_errors => true );   
   
    drop_ctx_object( c_suffix_sg );   
    drop_ctx_object( c_suffix_ds );   
    drop_ctx_object( c_suffix_lx );   
    drop_ctx_object( c_suffix_wl );   
   
end cleanup_oracle_text;   
   
--==============================================================================   
-- drops the Oracle Text Index with all its preferences.   
--==============================================================================   
procedure drop_text_index(   
    p_index_name  in varchar2 )   
is   
begin   
    cleanup_oracle_text( c_prefix_idx || p_index_name );   
end drop_text_index;   
   
--==============================================================================   
-- creates the Oracle Text Index with all its preferences based on the   
-- passed configuration records.   
--==============================================================================   
procedure create_text_index(   
    p_table_name      in varchar2,   
    --   
    p_index_name      in varchar2,   
    p_index_column    in varchar2,   
    --   
    p_config          in t_config_table )   
is   
    l_existing_columns t_existing_columns;   
   
    --------------------------------------------------------------------------------------------------   
    procedure do_build_index   
    is   
        c_name_prefix    constant  varchar2(255) := c_prefix_idx  || p_index_name;   
        c_uds_proc_name  constant  varchar2(255) := c_name_prefix || c_suffix_uds;   
        c_ds_name        constant  varchar2(255) := c_name_prefix || c_suffix_ds;   
        c_sg_name        constant  varchar2(255) := c_name_prefix || c_suffix_sg;   
   
        l_uds_query                varchar2(32767);   
        l_uds_xml                  varchar2(32767);   
        l_uds_sg                   varchar2(32767);   
   
        l_plsql                    varchar2(32767);   
   
        l_column                   varchar2(128);   
        l_text_column              varchar2(128);   
    begin   
        cleanup_oracle_text( c_name_prefix );   
   
        l_column := p_config.first;   
        while l_column is not null loop   
   
            --   
            -- a config table might not exist in the table, but must have an expression, then.   
            --   
            if     not l_existing_columns.exists( l_column )   
               and p_config( l_column ).expression is null   
            then   
                l_column := p_config.next( l_column );   
                continue;   
            end if;   
   
            -- 
            -- Clean Column name strips special characters from the actual column name. In special 
            -- cases, there can be collisions, which we accept for the purpose of this demo app. 
            -- 
            l_text_column := clean_column_name( l_column );   
   
            --   
            -- Build Column List for the query within the UDS procedure   
            --   
            l_uds_query := l_uds_query   
                        || case when l_uds_query is not null then ',' end   
                        || case when p_config( l_column ).expression is not null   
                                then p_config( l_column ).expression || ' '   
                           end   
                        || sys.dbms_assert.enquote_name( l_column );   
   
            --   
            -- Build concatenation statements to put together the XML in the UDS   
            -- procedure.   
            --   
            if p_config( l_column ).field_search then   
                l_uds_xml   := l_uds_xml   
                            || case when l_uds_xml is not null then LF || '||' end   
                            || '''<' || l_text_column || c_suffix_f || '>'''   
                            || '|| replace(replace( l_row.' || sys.dbms_assert.enquote_name( l_column ) || ', ''>''), ''<'' )'    
                            || '|| ''</' || l_text_column || c_suffix_f || '>''';   
            end if;   
   
            if p_config( l_column ).ndata_search then   
                l_uds_xml   := l_uds_xml   
                            || case when l_uds_xml is not null then LF || '||' end   
                            || '''<' || l_text_column || c_suffix_nd || '>'''   
                            || '|| replace(replace(l_row.' || sys.dbms_assert.enquote_name( l_column ) || ', ''>''), ''<'' )'   
                            || '||''</' || l_text_column || c_suffix_nd || '>''';   
            end if;   
            if p_config( l_column ).sdata_search then   
                l_uds_xml   := l_uds_xml   
                            || case when l_uds_xml is not null then LF || '||' end   
                            || '''<' || l_text_column || c_suffix_sd || '>'''   
                            || '|| replace(replace(l_row.' || sys.dbms_assert.enquote_name( l_column ) || ', ''>''), ''<'' )'    
                            || '||''</' || l_text_column || c_suffix_sd || '>''';   
            end if;   
   
            --   
            -- Build ctx_ddl.add_*_section statements   
            --   
            if p_config( l_column ).field_search then   
                l_uds_sg := l_uds_sg   
                         || case when l_uds_sg is not null then LF end   
                         || 'ctxsys.ctx_ddl.add_field_section('   
                         || sys.dbms_assert.enquote_literal( sys.dbms_assert.enquote_name( c_sg_name ) )   
                         || ',''' || l_text_column || c_suffix_f || ''''   
                         || ',''' || l_text_column || c_suffix_f || ''''   
                         || ',' || case when p_config( l_column ).visible then 'true' else 'false' end   
                         || ');';   
            end if;   
   
            if p_config( l_column ).ndata_search then   
                l_uds_sg := l_uds_sg   
                         || case when l_uds_sg is not null then LF end   
                         || 'ctxsys.ctx_ddl.add_ndata_section('   
                         || sys.dbms_assert.enquote_literal( sys.dbms_assert.enquote_name( c_sg_name ) )   
                         || ','''  || l_text_column || c_suffix_nd || ''''   
                         || ','''  || l_text_column || c_suffix_nd || ''''   
                         || ');';   
            end if;   
   
            if p_config( l_column ).sdata_search then   
                l_uds_sg := l_uds_sg   
                         || case when l_uds_sg is not null then LF end   
                         || 'ctxsys.ctx_ddl.add_sdata_section('   
                         || sys.dbms_assert.enquote_literal( sys.dbms_assert.enquote_name( c_sg_name ) )   
                         || ',''' || l_text_column || c_suffix_sd || ''''   
                         || ',''' || l_text_column || c_suffix_sd || ''''   
                         || ',''' || nvl( replace( p_config( l_column ).sdata_datatype, '''', '''''' ), 'VARCHAR2' ) || ''''   
                         || ');';   
            end if;   
            l_column := p_config.next( l_column );   
        end loop;   
   
        --   
        -- Step 1: Create the UDS Procedure   
        --   
        l_plsql := 'create or replace procedure ' || sys.dbms_assert.enquote_name( c_uds_proc_name ) || '(' || LF   
                || 'rid  in rowid,' || LF   
                || 'tlob in out nocopy clob )' || LF   
                || 'is' || LF   
                || 'begin' || LF   
                || 'for l_row in ('   
                || 'select '   
                || l_uds_query   
                || ' from '   
                || sys.dbms_assert.enquote_name( p_table_name )   
                || ' '   
                || 'where rowid = rid )' || LF   
                || 'loop' || LF   
                || 'tlob := ' || l_uds_xml || ';' || LF   
                || 'end loop;' || LF   
                || 'end ' || sys.dbms_assert.enquote_name( c_uds_proc_name ) || ';';   
   
        do_execute( l_plsql );   
   
        --   
        -- Step 2: Create the UDS Preference   
        --   
        do_execute(   
    'begin   
         ctxsys.ctx_ddl.create_preference(   
             preference_name => ' || sys.dbms_assert.enquote_literal( sys.dbms_assert.enquote_name( c_name_prefix|| c_suffix_ds ) ) ||',   
             object_name     => ''user_datastore'' );   
   
         ctxsys.ctx_ddl.set_attribute(   
             preference_name => ' || sys.dbms_assert.enquote_literal( sys.dbms_assert.enquote_name( c_name_prefix|| c_suffix_ds ) ) ||',   
             attribute_name  => ''procedure'',   
             attribute_value => ' || sys.dbms_assert.enquote_literal( sys.dbms_assert.enquote_name( c_uds_proc_name ) ) || ');   
    end;');   
   
        --   
        -- Step 3: Create the Section Group   
        --   
        do_execute(   
            p_plsql =>    empty_clob()   
                       || 'begin '   
                       ||     'ctxsys.ctx_ddl.create_section_group('   
                       ||         'group_name      => ' || sys.dbms_assert.enquote_literal( sys.dbms_assert.enquote_name( c_name_prefix|| c_suffix_sg ) ) || ','   
                       ||         'group_type      => ''xml_section_group'');'   
                       ||     l_uds_sg   
                       || 'end;');   
   
        --   
        -- Step 4: Create the Wordlist and Lexer Preferencews   
        --   
        do_execute(   
    'begin   
         ctxsys.ctx_ddl.create_preference(   
             preference_name => ' || sys.dbms_assert.enquote_literal( sys.dbms_assert.enquote_name( c_name_prefix|| c_suffix_wl ) ) || ',   
             object_name     => ''basic_wordlist'' );   
   
         ctxsys.ctx_ddl.set_attribute(   
             preference_name => ' || sys.dbms_assert.enquote_literal( sys.dbms_assert.enquote_name( c_name_prefix|| c_suffix_wl ) ) || ',   
             attribute_name  => ''ndata_alternate_spelling'',   
             attribute_value => ''true'' );   
   
         ctxsys.ctx_ddl.set_attribute(   
             preference_name => ' || sys.dbms_assert.enquote_literal( sys.dbms_assert.enquote_name( c_name_prefix|| c_suffix_wl ) ) || ',   
             attribute_name  => ''ndata_base_letter'',   
             attribute_value => ''true'' );   
    end;');   
   
        do_execute(   
    'begin   
         ctxsys.ctx_ddl.create_preference(   
             preference_name => ' || sys.dbms_assert.enquote_literal( sys.dbms_assert.enquote_name( c_name_prefix|| c_suffix_lx ) ) || ',   
             object_name     => ''basic_lexer'' );   
   
         ctxsys.ctx_ddl.set_attribute(   
             preference_name => ' || sys.dbms_assert.enquote_literal( sys.dbms_assert.enquote_name( c_name_prefix|| c_suffix_lx ) ) || ',   
             attribute_name  => ''mixed_case'',   
             attribute_value => ''no'' );   
   
         ctxsys.ctx_ddl.set_attribute(   
             preference_name => ' || sys.dbms_assert.enquote_literal( sys.dbms_assert.enquote_name( c_name_prefix|| c_suffix_lx ) ) || ',   
             attribute_name  => ''base_letter'',   
             attribute_value => ''yes'' );   
   
         ctxsys.ctx_ddl.set_attribute(   
             preference_name => ' || sys.dbms_assert.enquote_literal( sys.dbms_assert.enquote_name( c_name_prefix|| c_suffix_lx ) ) || ',   
             attribute_name  => ''base_letter_type'',   
             attribute_value => ''generic'' );   
    end;');   
   
        --   
        -- Step 5: Create the index   
        --   
        do_execute(   
    'create index ' || sys.dbms_assert.enquote_name( c_name_prefix || c_suffix_idx )   
                    || ' on '   
                    || sys.dbms_assert.enquote_name( p_table_name )   
                    || '(' || sys.dbms_assert.enquote_name( p_index_column ) || ')   
    indextype is ctxsys.context   
    parameters(''   
      datastore      ' || c_name_prefix || c_suffix_ds || '   
      section group  ' || c_name_prefix || c_suffix_sg || '   
      wordlist       ' || c_name_prefix || c_suffix_wl || '   
      lexer          ' || c_name_prefix || c_suffix_lx || '   
      stoplist       ctxsys.empty_stoplist   
      sync           (on commit)   
      memory ' || c_index_memory || '   
    '')');   
   
    end do_build_index;   
begin   
    if p_index_name like '%"%' or p_index_name like '%''%' then   
        raise_application_error(-20001, 'Index name must not contain single or double quotes.', true );   
    end if;   
   
    for i in (   
        select column_name,   
               data_type   
          from sys.user_tab_columns   
         where table_name = p_table_name )   
    loop   
        l_existing_columns( i.column_name ) := i.data_type;   
    end loop;   
   
    if        l_existing_columns.count = 0   
       or not l_existing_columns.exists( p_index_column )   
    then   
        raise_application_error(-20001, 'Table or index column does not exist.', true );   
    end if;   
   
    do_build_index;   
end create_text_index;   
   
--==============================================================================   
--   
-- 3. G E N E R A T E   C O N T A I N S   Q U E R I E S   
--   
--==============================================================================   
   
--==============================================================================   
-- generate the CONTAINS query with progressive relaxation, based on user   
-- input and config record.   
--==============================================================================   
function search_query(   
    p_table_name        in varchar2,   
    p_index_column      in varchar2,   
    --   
    p_config            in t_config_table,   
    --   
    p_search_expression in varchar2 )   
    return varchar2   
is   
    type t_query_part is table of varchar2(32767) index by pls_integer;   
    type t_combiners  is table of varchar2(3)     index by pls_integer;   
   
    c_combiners            constant t_combiners := t_combiners( 1 => 'AND', 2 => 'OR' );   
   
    l_tokens                        apex_t_varchar2 := apex_t_varchar2();   
    l_tokens_for_column             apex_t_varchar2;   
    l_generated_query               clob;   
   
    l_exact_search                  t_query_part;   
    l_ndata_search                  t_query_part;   
    l_fuzzy_search                  t_query_part;   
   
    l_highest_prio                  pls_integer := 1;   
    l_column                        varchar2(128);   
    l_text_column                   varchar2(128);   
    l_idx                           pls_integer;   
  
    ----------------------------------------------------------------------------   
    function pre_process_search_string(  
        p_search_string in varchar2 )  
        return varchar2  
    is  
        l_processed_search_string varchar2(32767) := ' ' || p_search_string || ' ';  
    begin  
        --  
        -- If we detect a city name (Munich, New York, etc.), treat that as a city and don't even try to do name search for this.  
        --  
        for i in 1 .. c_cities_list.count loop  
            l_processed_search_string := regexp_replace(   
                      srcstr     => l_processed_search_string,   
                      pattern    => c_cities_list( i ),  
                      replacestr => '"city:\1"',  
                      modifier   => 'i' );  
        end loop;  
        for i in 1 .. c_countries_list.count loop  
            l_processed_search_string := regexp_replace(   
                      srcstr     => l_processed_search_string,   
                      pattern    => c_countries_list( i ),  
                      replacestr => '"cntry:\1"',  
                      modifier   => 'i' );  
        end loop;  
 
        return trim( l_processed_search_string );
    end pre_process_search_string;  
   
    ----------------------------------------------------------------------------   
    procedure pre_process_tokens(   
        p_tokens in out nocopy apex_t_varchar2 )   
    is   
    begin   
        for i in 1 .. p_tokens.count loop   
            l_column := p_config.first;   
   
            while l_column is not null loop   
                if     p_config( l_column ).alias is not null   
                   and p_config( l_column ).pattern is not null   
                   and regexp_like( p_tokens( i ), p_config( l_column ).pattern )   
                   and substr( p_tokens( i ), 1, length( p_config( l_column ).alias ) + 1 ) != p_config( l_column ).alias || ':'   
                then   
                    p_tokens( i ) := p_config( l_column ).alias || ':' || p_tokens( i );   
                end if;   
   
                l_column := p_config.next( l_column );   
            end loop;   
        end loop;   
    end pre_process_tokens;   
   
    ----------------------------------------------------------------------------   
    function filter_tokens_for_column(   
        p_original_tokens in apex_t_varchar2,   
        p_column          in varchar2 )   
        return apex_t_varchar2   
    is   
        l_return_tokens apex_t_varchar2 := apex_t_varchar2();   
        l_token         varchar2(32767);   
        l_colon_pos     pls_integer;   
    begin   
   
        for t in 1 .. p_original_tokens.count loop   
   
            l_token := p_original_tokens( t );   
            l_colon_pos := instr( l_token, ':' );   
   
            if l_colon_pos > 0 then   
                if p_config( p_column ).alias = substr( l_token, 1, l_colon_pos - 1 ) then   
                    apex_string.push( l_return_tokens, trim(  substr( l_token, l_colon_pos + 1 ) ) );   
                end if;   
            else   
                if p_config( p_column ).alias is null then   
                    apex_string.push( l_return_tokens, l_token );   
                end if;   
            end if;   
   
        end loop;   
        return l_return_tokens;   
    end filter_tokens_for_column;   
   
    ----------------------------------------------------------------------------   
    function generate_text_query_part(   
        p_tokens                  in apex_t_varchar2,   
        p_feature                 in varchar2,   
        p_operator                in varchar2,   
        p_section                 in varchar2,   
        p_score                   in varchar2,   
        p_two_char_terms_enabled  in boolean  default false, 
        p_combiner                in varchar2 default null )   
        return varchar2   
    is   
        l_query      varchar2(32767);   
        l_added_term varchar2(32767);
   
        ------------------------------------------------------------------------   
        function add_term_to_query_part(   
            p_term in varchar2,   
            p_pos  in pls_integer )   
            return varchar2   
        is   
            l_cleaned_term varchar2(32767);  
        begin   
            l_cleaned_term := ltrim( rtrim( regexp_replace( p_term, '[][<>{}()/\|*&^#%$!?.,;=~+-]' ) ) );   
  
            if l_cleaned_term is null then   
                return null;  
            end if;   
            return case   
                       when p_feature in ( 'EXACT', 'FUZZY' )   
                       then    case    
                                   when p_feature = 'EXACT'  
                                   then case 
                                            when p_two_char_terms_enabled and length(l_cleaned_term) = 2 
                                            then        l_cleaned_term ||     '%'   
                                            else '{' || l_cleaned_term || '}'   
                                        end 
                                   when p_feature = 'FUZZY'   
                                   then 'FUZZY({' || l_cleaned_term || '},40,1000,W)'   
                               end   
                            --   
                            -- term1 term2 term3 ... term8 term9 ... term 15   
                            -- ----- ----- -----     ----- -----     -------   
                            --  *3.0  *2.3  *2.0 ... *0.3  *0.1  ...    *0.1   
                            --   
                            || coalesce( p_score, case when p_pos > 8   
                                                       then '*0.1'   
                                                       when p_pos = 1   
                                                       then '*3'   
                                                       else '*' || to_char( round( 3 - ( p_pos / 3 ), 1 ),   
                                                                            '0D0',   
                                                                            'nls_numeric_characters=''.,''' )   
                                                  end )   
                            || ' within(' || p_section || ')'   
                         --   
                       when p_feature = 'NDATA'   
                       then    'NDATA( '   
                            || p_section   
                            || ','   
                            || l_cleaned_term  
                            || ')'   
                         --   
                       when p_feature = 'SDATA'   
                       then    'SDATA( '   
                            || p_section   
                            || case p_operator   
                                   when 'like'  then ' like ' || sys.dbms_assert.enquote_literal( '%' || p_term || '%') || ')'   
                                   when 'rlike' then ' like ' || sys.dbms_assert.enquote_literal(        p_term || '%') || ')'   
                                   when 'llike' then ' like ' || sys.dbms_assert.enquote_literal( '%' || p_term       ) || ')'   
                                   else                 ' = ' || sys.dbms_assert.enquote_literal(        p_term       ) || ')'   
                               end   
                         --   
                       else '{' || l_cleaned_term || '}'   
                   end;   
        end add_term_to_query_part;   
    begin   
   
        for i in 1 .. p_tokens.count loop   
   
            if p_tokens( i ) is not null then   

                l_added_term := add_term_to_query_part(   
                                    p_term => p_tokens( i ),   
                                    p_pos  => i );   
   
               if      l_query is not null   
                   and l_added_term is not null
                   and p_combiner is not null   
                then   
                    l_query := l_query   
                            || ' '   
                            || p_combiner;   
                end if;  

                if l_added_term is not null then

                    l_query := l_query   
                            || ' '   
                            || l_added_term;   

                end if;
       
            end if;   
        end loop;   
   
        return coalesce( trim( l_query ), '%' );   
    end generate_text_query_part;   
begin   
    if p_search_expression is null then   
        apex_debug.info( 'empty query - return "%"');  
        return '%';   
    end if;   
   
    l_column := p_config.first;   
   
    while l_column is not null loop   
        if l_highest_prio < nvl( p_config( l_column ).priority, 1 ) then   
            l_highest_prio := p_config( l_column ).priority;   
        end if;   
   
        l_column := p_config.next( l_column );   
    end loop;   
   
    l_tokens := tokenize( pre_process_search_string( p_search_expression ) );   
    pre_process_tokens( l_tokens );   
   
    for p in 1 .. l_highest_prio loop   
   
        for cmb in 1 .. c_combiners.count loop   
   
            l_idx := ( p - 1 ) * 2 + cmb;   
   
            l_fuzzy_search( l_idx ) := '';   
            l_exact_search( l_idx ) := '';   
            l_ndata_search( l_idx ) := '';   
   
            l_column := p_config.first;   
            while l_column is not null loop   
   
                l_text_column := clean_column_name( l_column );   
                --   
                -- does the column's pririoty match the currently processed priority?   
                --   
                if nvl( p_config( l_column ).priority, 1 ) = p then   
   
                    l_tokens_for_column := filter_tokens_for_column(   
                                               p_original_tokens => l_tokens,   
                                               p_column          => l_column );   
   
                    if      l_tokens_for_column.count > 1   
                       or ( l_tokens_for_column.count = 1 and cmb = 1 )   
                    then   
                        if p_config( l_column ).sdata_search then   
                            l_exact_search( l_idx ) := l_exact_search( l_idx )   
                                                    || case when l_exact_search( l_idx ) is not null then ' AND ' end   
                                                    || '('   
                                                    || generate_text_query_part(   
                                                           p_tokens   => l_tokens_for_column,   
                                                           p_feature  => 'SDATA',   
                                                           p_operator => p_config( l_column ).sdata_op,   
                                                           p_score    => p_config( l_column ).score_expr,   
                                                           p_section  => l_text_column || c_suffix_sd,   
                                                           p_combiner => c_combiners( cmb ) )   
                                                    || ')';   
                        end if;   
   
                        if p_config( l_column ).field_search then   
                            l_exact_search( l_idx ) := l_exact_search( l_idx )   
                                                    || case when l_exact_search( l_idx ) is not null then ' AND ' end   
                                                    || '('   
                                                    || generate_text_query_part(   
                                                           p_tokens                 => l_tokens_for_column,   
                                                           p_feature                => 'EXACT',   
                                                           p_two_char_terms_enabled => p_config( l_column ).two_char_terms_enabled, 
                                                           p_operator               => null,   
                                                           p_score                  => p_config( l_column ).score_expr,   
                                                           p_section                => l_text_column || c_suffix_f,   
                                                           p_combiner               => c_combiners( cmb ) )   
                                                    || ')';   
   
                            l_fuzzy_search( l_idx ) := l_fuzzy_search( l_idx )   
                                                    || case when l_fuzzy_search( l_idx ) is not null then ' AND ' end   
                                                    || '('   
                                                    || generate_text_query_part(   
                                                           p_tokens   => l_tokens_for_column,   
                                                           p_feature  => 'FUZZY',   
                                                           p_operator => null,   
                                                           p_score    => p_config( l_column ).score_expr,   
                                                           p_section  => l_text_column || c_suffix_f,   
                                                           p_combiner => c_combiners( cmb ) )   
   
                                                    || ')';   
                        end if;   
   
                        if p_config( l_column ).ndata_search then   
                            l_ndata_search( l_idx ) := l_ndata_search( l_idx )   
                                                    || case when l_ndata_search( l_idx ) is not null then ' AND ' end   
                                                    || '('   
                                                    || generate_text_query_part(   
                                                           p_tokens   => l_tokens_for_column,   
                                                           p_feature  => 'NDATA',   
                                                           p_operator => null,   
                                                           p_score    => p_config( l_column ).score_expr,   
                                                           p_section  => l_text_column || c_suffix_nd,   
                                                           p_combiner => c_combiners( cmb ) )   
   
                                                    || ')';   
   
                        elsif not p_config( l_column ).sdata_search then   
                            --   
                            -- if a column does *not* have NDATA enabled, we need to add as normal FUZZY search,   
                            -- as NDATA search is the next progressive relaxation level. Not adding the columns in   
                            -- would yield in NDATA being searched without combining with filters for other columns   
                            -- on that level.   
                            -- However, for SDATA columns we're not doing this, as SDATA operators are typically   
                            -- used exclusively.   
                            --   
                            l_ndata_search( l_idx ) := l_ndata_search( l_idx )   
                                                    || case when l_ndata_search( l_idx ) is not null then ' AND ' end   
                                                    || '('   
                                                    || generate_text_query_part(   
                                                           p_tokens   => l_tokens_for_column,   
                                                           p_feature  => 'FUZZY',   
                                                           p_operator => null,   
                                                           p_score    => p_config( l_column ).score_expr,   
                                                           p_section  => l_text_column || c_suffix_f,   
                                                           p_combiner => c_combiners( cmb ) )   
   
                                                    || ')';   
                        end if;   
   
                    end if;   
                end if;   
                l_column := p_config.next( l_column );   
            end loop;   
        end loop;   
    end loop;   
   
    l_generated_query := to_clob( '<query><textquery><progression>' ); 
   
    for p in 1 .. l_exact_search.count loop   
        l_generated_query := l_generated_query   
                          || case when l_exact_search(p) is not null then '<seq>' || l_exact_search(p) || '</seq>' end   
                          || case when l_fuzzy_search(p) is not null then '<seq>' || l_fuzzy_search(p) || '</seq>' end   
                          || case when l_ndata_search(p) is not null then '<seq>' || l_ndata_search(p) || '</seq>' end;   
    end loop;   
   
    l_generated_query := l_generated_query || '</progression></textquery></query>';   
  
    if l_generated_query = '<query><textquery><progression></progression></textquery></query>' then  
        return '%';  
    end if;   
   
    if length( l_generated_query ) > 64000 THEN   
        raise_application_error( -20001, 'TEXT Query is too long.', true );   
    end if;   

    return l_generated_query;   
end search_query;   
   
--==============================================================================   
-- Returns the context query based on the config record.   
--==============================================================================   
function get_name_search_query(   
    p_search_expression in varchar2 )   
    return varchar2   
is   
begin   
    return search_query(   
               p_table_name        => 'EMPLOYEES',   
               p_index_column      => 'LAST_NAME',   
               p_search_expression => p_search_expression,   
               p_config            => get_config );   
   
end get_name_search_query;   
   
end eba_search_text_helper;
/