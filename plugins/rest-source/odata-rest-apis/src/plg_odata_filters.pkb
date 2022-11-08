create or replace package body plg_odata_filters as

-------------------------------------------------------------------------------
-- Name: plg_odata_filters.pkb
-- Copyright (c) 2012, 2022 Oracle and/or its affiliates.
-- Licensed under the Universal Permissive License v 1.0
-- as shown at https://oss.oracle.com/licenses/upl/
-------------------------------------------------------------------------------

--=============================================================================
-- Constants
--=============================================================================
c_scope                 constant varchar2(129) := $$plsql_unit || '.';
c_quote                 constant varchar2(1)   := '''';
--
c_odata_date_format     constant varchar2(10) := 'YYYY-MM-DD';
c_odata_datetime_format constant varchar2(26) := 'YYYY-MM-DD"T"HH24:MI:SS"Z"';

--=============================================================================
-- Global Types
--=============================================================================
type t_date_array           is table of date;
type t_timestamp_array      is table of timestamp;
type t_timestamp_tz_array   is table of timestamp with time zone;
type t_timestamp_ltz_array  is table of timestamp with local time zone;

--=============================================================================
-- compute a DATE value based on current timestamp and an offset value;
-- (add a minimal description)
--=============================================================================
function get_offset_date (
    p_interval_type         in apex_exec.t_filter_interval_type,
    p_arithmetic_operation  in varchar2,
    p_value                 in number )
    return timestamp
as
    l_return      timestamp;
    l_intervalds  dsinterval_unconstrained := to_dsinterval( '0 00:00:00' );
    l_intervalym  yminterval_unconstrained := to_yminterval( '0-0' );
begin
    apex_debug.enter( p_routine_name => c_scope || 'get_offset_date' );

    -- Matching of apex_exec.c_filter_int_types for interval
    if p_interval_type = apex_exec.c_filter_int_type_year then
        l_intervalym := numtoyminterval( p_value, 'YEAR' );

    elsif p_interval_type = apex_exec.c_filter_int_type_month then
        l_intervalym := numtoyminterval( p_value, 'MONTH' );

    elsif p_interval_type = apex_exec.c_filter_int_type_week then
        l_intervalds := numtodsinterval( p_value * 7, 'DAY' );

    elsif p_interval_type = apex_exec.c_filter_int_type_day then
        l_intervalds := numtodsinterval( p_value, 'DAY' );

    elsif p_interval_type = apex_exec.c_filter_int_type_hour then
        l_intervalds := numtodsinterval( p_value, 'HOUR' );

    elsif p_interval_type = apex_exec.c_filter_int_type_minute then
        l_intervalds := numtodsinterval( p_value, 'MINUTE' );

    end if;

    l_return := case p_arithmetic_operation
                    when 'add' then current_timestamp + l_intervalym + l_intervalds
                    when 'sub' then current_timestamp - l_intervalym - l_intervalds
                end;

    apex_debug.trace( p_message => 'Exit get_offset_date. return=%s ', p0 => l_return );

    return l_return;
 end get_offset_date;

--=============================================================================
-- compute the ODATA case sensitive Transform, null if none are supported
--=============================================================================
function get_case_insensitive_transform (
    p_plugin_attributes  in plg_odata_connector.t_plugin_attributes )
    return varchar2
as
    l_return varchar2(7);
begin
    apex_debug.enter( p_routine_name => c_scope || 'get_case_insensitive_transform' );

    l_return := case when p_plugin_attributes.filter_upper then 'toupper'
                     when p_plugin_attributes.filter_lower then 'tolower'
                     else null
                end;

    apex_debug.trace( p_message => 'Exit get_case_insensitive_transform. return=%s ', p0 => l_return );
    return l_return;

end get_case_insensitive_transform;

--=============================================================================
-- Get alle the sanitized Values for an External Filters String
--=============================================================================
function get_sanitized_external_filter (
    p_external_filters in varchar2 )
    return varchar2
as
    l_return                varchar2(32767) := p_external_filters;
    l_items_sanitized       apex_t_varchar2;
begin
    apex_debug.enter( p_routine_name => c_scope || 'get_sanitized_external_filter' );

    apex_debug.info(
        p_message   => 'Not Sanitized External Filter=%s',
        p0          => p_external_filters );

    -- Extract the &items. from the External Filters String
    l_items_sanitized := apex_string.grep(
                             p_str         => p_external_filters,
                             p_pattern     => '(\&)' || plg_odata_connector.c_regex_all_charnum || '*?(\.)' );

    -- Loop to replace the &items. with the sanitized values and return the String
    for i in 1 .. l_items_sanitized.count
    loop

        -- Replace &Items. with the real Values
        l_items_sanitized( i ) := apex_plugin_util.replace_substitutions(
                                      p_value  => l_items_sanitized( i ),
                                      p_escape => false );

        l_items_sanitized( i ) := ''''
                                    || replace( trim( l_items_sanitized( i ) ), '''', '''''' )
                                    || '''';

        apex_debug.info(
            p_message   => 'External Filter %s after Sanitation = %s',
            p0          => i,
            p1          => l_items_sanitized( i ) );

        -- Replace the &Items. with the sanitized values for return string
        l_return :=
            replace(
                l_return,
                regexp_substr( p_external_filters, '(\&)' || plg_odata_connector.c_regex_all_charnum || '*?(\.)', 1, i ),
                l_items_sanitized( i ) );

    end loop;

    apex_debug.trace( p_message => 'Exit get_sanitized_external_filter. return=%s ', p0 => l_return );

    return l_return;

end get_sanitized_external_filter;


procedure get_filter_for_search_column(
    p_odata_filter               in out nocopy varchar2,
    --
    p_profile_columns            in            apex_plugin.t_web_source_columns,
    --
    p_search_column_name         in            varchar2,
    p_search_column_data_type    in            apex_exec.t_data_type,
    --
    p_case_insensitive           in            boolean,
    p_case_insensitive_transform in            varchar2,
    --
    p_filter_param               in            varchar2,
    p_filter_search_vc           in            varchar2,
    --
    p_remote_filter              in out nocopy boolean )
as
    l_column_remote_data_type varchar2(255);
    l_filter_string           varchar2(32767);
    l_col_exist_in_profile    boolean := false;
begin

    apex_debug.enter( p_routine_name => c_scope ||  'get_filter_for_search_column' );

    --
    -- Pre-Check for Remote Data Type and possible Local Filter
    --
    <<search_columns_pre_check>>
    for i in 1 .. p_profile_columns.count
    loop

        if p_search_column_data_type <> apex_exec.c_data_type_varchar2
            or p_profile_columns( i ).remote_data_type is not null
        then

            apex_debug.warn(
                p_message => 'Search Column = %s is not of type VARCHAR2 or does not have a suitable Remote Data Type and is therefore ignored for Row Search (adding to Remote Filter)',
                p0        => p_profile_columns( i ).name );

            p_odata_filter  := null;
            p_remote_filter := false;

            -- Exit if we have a local filter situation
            exit;

        end if;

        l_col_exist_in_profile := l_col_exist_in_profile or p_profile_columns( i ).name = p_search_column_name;

    end loop search_columns_pre_check;

    if not l_col_exist_in_profile then

        apex_debug.warn(
            p_message => 'Search Column = %s does not exist in the APEX-Engine''s Data Profile and is therefore ignored for Row Search (adding to Remote Filter)',
            p0        => p_search_column_name );

        p_odata_filter  := null;
        p_remote_filter := false;

        -- Exit if we have a local filter situation
        return;

    end if;

    if p_remote_filter then

        --
        -- Get Remote Data Type for current Search Column
        --
        for m in 1 .. p_profile_columns.count
        loop

            if p_profile_columns( m ).name = p_search_column_name then

                l_column_remote_data_type := p_profile_columns( m ).remote_data_type;

                apex_debug.info(
                    p_message => 'Search Column = %s Remote Data Type = %s',
                    p0        => p_search_column_name,
                    p1        => l_column_remote_data_type );

                exit;

            end if;

        end loop;
        --
        -- We can only create an ODATA Filter if the Remote Data Type
        -- is not set and Columns Data Type is a VARCHAR
        --

        l_filter_string := case when not p_case_insensitive
                                then   p_filter_param
                                    || '('
                                    || p_search_column_name || ','''
                                    || p_filter_search_vc || ''''
                                    || ')'

                                else   p_filter_param
                                    || '('
                                    || p_case_insensitive_transform
                                    || '('   || p_search_column_name ||   '),'
                                    || p_case_insensitive_transform
                                    || '(''' || p_filter_search_vc  || ''')'
                                    || ')'
                           end;

        p_odata_filter := p_odata_filter
                            || case when p_odata_filter is not null
                                    then   ' or '
                               end
                            ||'('
                            || l_filter_string
                            || ')';

    end if;

    apex_debug.trace( p_message => 'Exit get_filter_for_search_column. return=%s ', p0 => p_odata_filter );

end get_filter_for_search_column;


--=============================================================================
--  Return the Filter Query in respect to the Incase Sensitive Flag
--=============================================================================
function get_case_sensitive_filter(
    p_filter_param               in varchar2,
    p_filter_selector            in varchar2,
    p_filter_search_value        in varchar2,
    p_case_insensitive_transform in varchar2 )
    return varchar2
as
    l_return varchar2(4000);
begin
    apex_debug.trace( p_message => 'Enter get_case_sensitive_filter' );

    l_return := case when p_case_insensitive_transform is null
                     then    p_filter_param
                          || '('
                          || p_filter_selector
                          || ','''
                          || p_filter_search_value
                          || ''')'

                     -- Create Query String with ToLower/ToUpper
                     else   p_filter_param
                          || '(' || p_case_insensitive_transform ||'('
                          || p_filter_selector
                          || '),'|| p_case_insensitive_transform ||'('''
                          || p_filter_search_value
                          || '''))'
                end;


    apex_debug.trace( p_message => 'Exit get_case_sensitive_filter. return=%s ', p0 => l_return );
    return l_return;

end get_case_sensitive_filter;


--=============================================================================
-- Returns the ODATA Filter Query for one specific input Filter (t_filter)
--=============================================================================
function get_single_odata_filter_query (
    p_filter                    in            apex_exec.t_filter,
    --
    p_profile_columns           in            apex_plugin.t_web_source_columns,
    p_filter_selector           in            varchar2,
    --
    p_plugin_attributes         in            plg_odata_connector.t_plugin_attributes,
    --
    p_remote_filter             out           boolean,
    --
    p_row_search_query          in out nocopy varchar2 )
    return varchar2
as
    l_filter_values                     apex_exec.t_values;
    l_filter_type                       apex_exec.t_filter_type;
    --
    l_odata_filters                     varchar2(32767); -- Return String with all Filters in ODATA Format to pass as Query Parameter $filter to ODATA Source
    l_odata_filter                      varchar2(32767); -- One ODATA Filter
    l_odata_row_search_query            varchar2(32767); -- Filter Query for Row Search
    --
    l_remote_filter                     boolean := true; -- Flag to indicate if the Filter is a Remote ODATA Filter or Local Filter for APEX Engine
    --
    l_filter_case_insensitive           boolean := false;  -- Flag to indicate if the case insensitive is supported by the ODATA Source
    l_case_insensitive_transform        varchar2(7); -- "tolower" or "toupper" as configured in the Plugin Attributes
    --
    l_column_remote_data_type           varchar2(255); -- Remote Data Type of the Colum as we cannot handle all ODATA Data Types for Filters
    l_filter_selector                   varchar2(255); -- Column Selector from REST Source Data Profile since ODATA needs those and not the Column Names

    -- Single Values, depending on the Filter Type
    l_filter_search_vc                  varchar2(32767);
    l_filter_search_number              number;
    l_filter_search_date                date;
    l_filter_search_ts                  timestamp;
    l_filter_search_ts_tz               timestamp with time zone;
    l_filter_search_ts_ltz              timestamp with local time zone;

    -- Arrays of Values, depending on the Filter Type
    l_filter_search_vc_arr              apex_t_varchar2       := apex_t_varchar2();
    l_filter_search_number_arr          apex_t_varchar2       := apex_t_varchar2();
    l_filter_search_date_arr            t_date_array          := t_date_array();
    l_filter_search_ts_arr              t_timestamp_array     := t_timestamp_array();
    l_filter_search_ts_tz_arr           t_timestamp_tz_array  := t_timestamp_tz_array();
    l_filter_search_ts_ltz_arr          t_timestamp_ltz_array := t_timestamp_ltz_array();
    --
    l_filter_param_1                    varchar2(50); -- Parameter 1 for ODATA Filter Format creation, like "eq", "startswith", etc.
    l_filter_param_2                    varchar2(50);
    l_filter_param_3                    varchar2(50);

    -- Tokenized Search Variables
    l_tokenized                         boolean; -- Tokenize Row Search
    l_separator                         varchar2(1 char);
    l_chips                             apex_t_varchar2;
    l_chip                              varchar2( 32767 );
begin

    apex_debug.enter( p_routine_name => c_scope || 'get_single_odata_filter_query' );

    l_filter_case_insensitive           := not p_filter.is_case_sensitive;
    l_filter_values                     := p_filter.filter_values;
    l_filter_type 			            := p_filter.filter_type;
    l_case_insensitive_transform        := get_case_insensitive_transform( p_plugin_attributes => p_plugin_attributes );
    l_filter_selector                   := p_filter_selector;


    -- Loop Through Filter Values for this particular Filter
    <<process_filter_values_loop>>
    for j in 1 .. l_filter_values.count
    loop

        apex_debug.info(
            p_message => 'Loop through Filter Values as Iteration Number = %s',
            p0 => j );

        -- Reset Values to null
        l_filter_search_vc      := null;
        l_filter_search_number  := null;
        l_filter_search_date    := null;
        l_filter_search_ts      := null;
        l_filter_search_ts_tz   := null;
        l_filter_search_ts_ltz  := null;

        l_odata_filter          := null;
        l_remote_filter         := true;
        l_tokenized             := null;
        l_separator             := null;

        -- Add Entry to Array
        l_filter_search_vc      := l_filter_values( j ).varchar2_value;
        l_filter_search_number  := l_filter_values( j ).number_value;
        l_filter_search_date    := l_filter_values( j ).date_value;
        l_filter_search_ts      := l_filter_values( j ).timestamp_value;
        l_filter_search_ts_tz   := l_filter_values( j ).timestamp_tz_value;
        l_filter_search_ts_ltz  := l_filter_values( j ).timestamp_ltz_value;
        l_tokenized             := p_filter.tokenize_value;
        l_separator             := p_filter.multi_value.separator;

        --
        -- Add Filter Values to machting Filter Array
        -- Some Filters have multiple Values, so we need to add them to the Array
        -- e.g. "between" has two Values, so we need to add both to the number Array
        --
        if    l_filter_search_vc is not null
          and l_tokenized
          and l_separator is not null then

            l_chips := apex_string.split(
                           p_str => l_filter_search_vc,
                           p_sep => l_separator );

            for i in 1 .. l_chips.count
            loop

                l_chip := replace( l_chips( i ), c_quote, c_quote || c_quote );

                if regexp_like ( l_chip, '^"[^"]*"$' ) then

                    apex_string.push( l_filter_search_vc_arr, replace( l_chip, '"') );

                else

                    apex_string.push( l_filter_search_vc_arr, apex_string.split( l_chip, ' ' ) );

                end if;

            end loop;

        elsif l_filter_search_vc is not null then

            l_filter_search_vc := replace( l_filter_search_vc, c_quote, c_quote || c_quote );

            apex_string.push( l_filter_search_vc_arr, l_filter_search_vc );

        elsif l_filter_search_number is not null then

            apex_string.push( l_filter_search_number_arr,
                                to_char( l_filter_search_number, 'TM9', 'NLS_NUMERIC_CHARACTERS=''.,'''  ) );

        elsif l_filter_search_date is not null then

            l_filter_search_date_arr.extend( 1 );
            l_filter_search_date_arr( l_filter_search_date_arr.count ) := l_filter_search_date;

        elsif l_filter_search_ts is not null then

            l_filter_search_ts_arr.extend( 1 );
            l_filter_search_ts_arr( l_filter_search_ts_arr.count ) := l_filter_search_ts;

        elsif l_filter_search_ts_tz is not null then

            l_filter_search_ts_tz_arr.extend( 1 );
            l_filter_search_ts_tz_arr( l_filter_search_ts_tz_arr.count ) := l_filter_search_ts_tz;

        elsif l_filter_search_ts_ltz is not null then

            l_filter_search_ts_ltz_arr.extend( 1 );
            l_filter_search_ts_ltz_arr( l_filter_search_ts_ltz_arr.count ) := l_filter_search_ts_ltz;

        else

            -- Add to Local Filters
            l_remote_filter := false;
            apex_debug.error( p_message => 'Unknown Filter Value - Cannot Create ODATA Filter - adding to local filters' );

        end if;

        if apex_application.g_debug then

            apex_debug.info(
                p_message => 'Current Filter Value: %s',
                p0 => coalesce(
                        to_char( apex_string.join( l_filter_search_vc_arr, ':' ) ),
                        to_char( l_filter_search_number, 'TM9', 'NLS_NUMERIC_CHARACTERS=''.,'''  ),
                        to_char( l_filter_search_date,   'yyyy/mm/dd HH:MI:SS' ),
                        to_char( l_filter_search_ts,     'yyyy/mm/dd HH:MI:SS' ),
                        to_char( l_filter_search_ts_tz,  'yyyy/mm/dd HH:MI:SS' ),
                        to_char( l_filter_search_ts_ltz, 'yyyy/mm/dd HH:MI:SS' ) ) );

        end if;

    end loop process_filter_values_loop;

    --
    -- Map all APEX Filters to ODATA Filters to create the ODATA Query later
    --
    l_filter_param_1 := case l_filter_type
                            when apex_exec.c_filter_eq              then 'eq'
                            when apex_exec.c_filter_not_eq          then 'ne'
                            when apex_exec.c_filter_gt              then 'gt'
                            when apex_exec.c_filter_gte             then 'ge'
                            when apex_exec.c_filter_lt              then 'lt'
                            when apex_exec.c_filter_lte             then 'le'
                            when apex_exec.c_filter_null            then 'eq null'
                            when apex_exec.c_filter_not_null        then 'ne null'
                            when apex_exec.c_filter_starts_with     then 'startswith'
                            when apex_exec.c_filter_not_starts_with then 'not startswith'
                            when apex_exec.c_filter_ends_with       then 'endswith'
                            when apex_exec.c_filter_not_ends_with   then 'not endswith'
                            when apex_exec.c_filter_contains        then 'contains'
                            when apex_exec.c_filter_not_contains    then 'not contains'
                            when apex_exec.c_filter_in              then 'in'
                            when apex_exec.c_filter_not_in          then 'in'
                            when apex_exec.c_filter_like			then 'contains' -- Variant 1: '%ABC%'
                            when apex_exec.c_filter_not_like		then 'contains' -- Variant 1: '%ABC%'
                            when apex_exec.c_filter_search  		then 'contains'
                            when apex_exec.c_filter_between         then 'ge'
                            when apex_exec.c_filter_not_between     then 'ge'
                            when apex_exec.c_filter_last            then 'ge'
                            when apex_exec.c_filter_not_last        then 'ge'
                            when apex_exec.c_filter_next            then 'le'
                            when apex_exec.c_filter_not_next        then 'le'
                            when apex_exec.c_filter_between_ube     then 'ge'
                        end;

    l_filter_param_2 := case l_filter_type
                            when apex_exec.c_filter_like			then 'startswith' -- Variant 2: 'ABC%'
                            when apex_exec.c_filter_not_like		then 'startswith' -- Variant 2: 'ABC%'
                            when apex_exec.c_filter_between         then 'le'
                            when apex_exec.c_filter_not_between     then 'le'
                            when apex_exec.c_filter_last            then 'sub'
                            when apex_exec.c_filter_not_last        then 'sub'
                            when apex_exec.c_filter_next            then 'add'
                            when apex_exec.c_filter_not_next        then 'add'
                            when apex_exec.c_filter_between_ube     then 'lt'
                        end;


    l_filter_param_3 := case l_filter_type
                            when apex_exec.c_filter_like			then 'endswith' -- Variant 3: '%ABC'
                            when apex_exec.c_filter_not_like		then 'endswith' -- Variant 3: '%ABC'
                            when apex_exec.c_filter_last            then 'le'
                            when apex_exec.c_filter_not_last        then 'le'
                            when apex_exec.c_filter_next            then 'ge'
                            when apex_exec.c_filter_not_next        then 'ge'
                        end;

    -- Check if we have at least one filter parameter
    if l_filter_param_1 is null then

        --
        -- No matching ODATA Filter found, so we add to local filters
        apex_debug.warn(
            p_message => 'Filter Type = %s cannot be processed by ODATA Source for Column = %s - no mapping possible - adding to local filters',
            p0        => l_filter_type,
            p1        => p_filter.column_name );

        l_remote_filter := false;

        --continue process_filters_loop;

    end if;

    if apex_application.g_debug then

        apex_debug.info(
            p_message => 'Filter Parameter 1:         %s%n' ||
                         'Filter Parameter 2:         %s%n' ||
                         'Filter Parameter 3:         %s%n' ||
                         'Is Filter Case Insensitive: %s',
            p0        => nvl( l_filter_param_1, 'n/a' ),
            p1        => nvl( l_filter_param_2, 'n/a' ),
            p2        => nvl( l_filter_param_3, 'n/a' ),
            p3        => apex_debug.tochar( l_filter_case_insensitive ) ) ;


    end if;

    --
    -- Create ODATA Filter Query for Filter Types
    --

    --
    -- Create Query for Filters: startswith, endswith, contains
    --
    if l_filter_type in ( apex_exec.c_filter_starts_with,
                          apex_exec.c_filter_ends_with,
                          apex_exec.c_filter_not_starts_with,
                          apex_exec.c_filter_not_ends_with,
                          apex_exec.c_filter_contains,
                          apex_exec.c_filter_not_contains )
    then

        apex_debug.info( 'Special Filter: (not) startswith, (not) endswith, (not) contains' );

        l_odata_filter :=
            get_case_sensitive_filter(
                p_filter_param                  => l_filter_param_1,
                p_filter_selector               => l_filter_selector,
                p_filter_search_value           => l_filter_search_vc,
                p_case_insensitive_transform    => l_case_insensitive_transform );

    --
    -- Create Query for Filter: row search
    ---
    -- This is a special filter that is used to search over all rows in the DATA Source
    -- It does not use the $filter Query Parameter but instead uses the $search Query Parameter
    -- That's why we set p_row_search_query here and return it as out parameter
    -- The function itself will return null because we do not use $filter
    --
    -- This only works if the Source supports the $search Query Parameter,
    -- otherwise we will use the next elsif block
    --
    elsif l_filter_type = apex_exec.c_filter_search and p_plugin_attributes.row_search
    then

        apex_debug.info( 'Special Filter: search (with $search)' );

        if p_row_search_query is null and l_tokenized then

            p_row_search_query := apex_string.join(l_filter_search_vc_arr, ' OR ');

        elsif p_row_search_query is null then

            p_row_search_query := l_filter_search_vc;

        elsif l_tokenized then

            p_row_search_query := p_row_search_query || ' and (' || apex_string.join(l_filter_search_vc_arr, ' OR ') || ')';

        else

            p_row_search_query := p_row_search_query || ' and ' || l_filter_search_vc;

        end if;

        apex_debug.info(
            p_message => 'Row Search Query: %s',
            p0        => p_row_search_query );


    --
    -- Create Query for Filter: row search
    --
    -- This is a special filter that is used to search over all rows in the DATA Source
    -- We don't have support for $search so we use the $filter Query Parameter with
    -- "contains" if the Source supports it.
    --
    -- We also have to differentiate between the case insensitive and case sensitive search
    -- This block is for case insensitive search.
    --
    elsif l_filter_type = apex_exec.c_filter_search and p_plugin_attributes.filter_contains
          and l_filter_case_insensitive
    then

        apex_debug.info( p_message => 'Special Filter: search (without $search, but "contains" (case insensitive))' );

        if l_filter_selector is not null and l_tokenized then

            for i in 1..l_filter_search_vc_arr.count
            loop

                l_odata_filter :=
                    case when length(l_odata_filter) > 0
                        then l_odata_filter || ' AND '
                    end
                    || get_case_sensitive_filter(
                           p_filter_param                  => l_filter_param_1,
                           p_filter_selector               => l_filter_selector,
                           p_filter_search_value           => l_filter_search_vc,
                           p_case_insensitive_transform    => l_case_insensitive_transform );

            end loop;

        elsif l_filter_selector is not null then

            l_odata_filter :=
                get_case_sensitive_filter(
                    p_filter_param                  => l_filter_param_1,
                    p_filter_selector               => l_filter_selector,
                    p_filter_search_value           => l_filter_search_vc,
                    p_case_insensitive_transform    => l_case_insensitive_transform );

        else

            --
            -- We need to lookup the columns in Filters "search_columns"
            --
            <<process_search_columns_loop>>
            for i in 1 .. l_filter_search_vc_arr.count
            loop

                l_odata_row_search_query := null;

                for l in 1 .. p_filter.search_columns.count
                loop

                    --
                    -- Loops through all search columns as received from the Filter
                    -- in out param sets the odata filter
                    --
                    get_filter_for_search_column(
                        p_odata_filter                  => l_odata_row_search_query,
                        p_profile_columns               => p_profile_columns,
                        p_search_column_name            => p_filter.search_columns( l ).name,
                        p_search_column_data_type       => p_filter.search_columns( l ).data_type,
                        p_case_insensitive              => l_filter_case_insensitive,
                        p_case_insensitive_transform    => l_case_insensitive_transform,
                        p_filter_param                  => l_filter_param_1,
                        p_filter_search_vc              => l_filter_search_vc_arr( i ),
                        p_remote_filter                 => l_remote_filter );

                    -- Exit if we have a local filter situation
                    exit when not l_remote_filter;

                end loop;

                if l_odata_row_search_query is not null then

                    l_odata_filter := l_odata_filter
                                        || case when length(l_odata_filter) > 0
                                                then ' and '
                                           end
                                        || '( '
                                        || l_odata_row_search_query
                                        || ' )';

                end if;

            end loop process_search_columns_loop;

        end if;

    --
    -- Create Query for Filters: like / not like
    --
    elsif l_filter_type in ( apex_exec.c_filter_like, apex_exec.c_filter_not_like ) then

        apex_debug.info( 'Special Filter: (not) like' );

        --
        -- We only support wildcard search in these 3 variants: '%ABC%', 'ABC%', '%ABC';
        -- if not, we fallback to local filter for APEX Engine
        --

        --
        -- This checks if we don't support the wildcard search; maybe this check must be extended
        --
        if  l_filter_search_vc like '_%!%%_' escape '!'
                or l_filter_search_vc like '_%!_%_' escape '!'
        then

            -- local filter case
            apex_debug.warn(
                p_message => 'Cannot Proccess Filter Type %s for Selector %s because Filter Option is not supported by REST Source - returning Filter as local filter to APEX Engine',
                p0 		  => l_filter_type,
                p1 		  => l_filter_selector );

            l_remote_filter := false;

            --continue process_filters_loop;


        elsif l_filter_search_vc like '!%%!%' escape '!'
                and p_plugin_attributes.filter_contains
        then  -- Variant 1: Oracle Style '%ABC%'; mapping to ODATA "contains"

            apex_debug.info( p_message => '(not) like - Variant 1: Oracle Style *ABC*' );

            l_odata_filter :=
                get_case_sensitive_filter(
                    p_filter_param                  => l_filter_param_1,
                    p_filter_selector               => l_filter_selector,
                    p_filter_search_value           => substr( l_filter_search_vc, 2, length( l_filter_search_vc ) - 2 ),
                    p_case_insensitive_transform    => l_case_insensitive_transform );


        elsif l_filter_search_vc like '%!%' escape '!'
                and l_filter_search_vc not like '!%%' escape '!'
                and p_plugin_attributes.filter_startswith

        then  -- Variant 2: Oracle Style 'ABC%'; mapping to ODATA "startswith"

            apex_debug.info( p_message => '(not) like - Variant 2: Oracle Style ABC*' );

            l_odata_filter :=
                get_case_sensitive_filter(
                    p_filter_param                  => l_filter_param_2,
                    p_filter_selector               => l_filter_selector,
                    p_filter_search_value           => substr( l_filter_search_vc, 1, length( l_filter_search_vc ) - 1 ),
                    p_case_insensitive_transform    => l_case_insensitive_transform );


        elsif l_filter_search_vc like '!%%' escape '!'
                and l_filter_search_vc not like '%!%' escape '!'
                and p_plugin_attributes.filter_endswith

        then -- Variant 3: Oracle Style '%ABC'; mapping to ODATA "endswith"

            apex_debug.info( p_message => '(not) like - Variant 3: Oracle Style *ABC' );

            l_odata_filter :=
                get_case_sensitive_filter(
                    p_filter_param                  => l_filter_param_3,
                    p_filter_selector               => l_filter_selector,
                    p_filter_search_value           => substr( l_filter_search_vc, 2, length( l_filter_search_vc ) ),
                    p_case_insensitive_transform    => l_case_insensitive_transform );

        else
            --
            -- Unsupported wildcard variant; fallback to local filter for APEX Engine
            --
            apex_debug.warn(
                p_message => 'Cannot Proccess Filter Type %s for Selector %s because Filter Option is not supported by REST Source - returning Filter as local filter to APEX Engine',
                p0 		  => l_filter_type,
                p1 		  => l_filter_selector );

            l_remote_filter := false;

        end if;


    --
    -- Create Query for Filters: in / not in
    --
    elsif l_filter_type in ( apex_exec.c_filter_in,
                             apex_exec.c_filter_not_in )
    then

        apex_debug.info( p_message => 'Special Filter: (not) in');

        l_odata_filter :=   '('
                            ||   l_filter_selector
                            || ' '
                            || case when l_filter_search_vc_arr.count > 0 and p_plugin_attributes.filter_in
                                    -- String search: "in" Parameter supported
                                    then l_filter_param_1 || ' (''' || apex_string.join( l_filter_search_vc_arr, ''',''' ) || ''')'

                                    -- String search: "in" Parameter no supported
                                    when l_filter_search_vc_arr.count > 0 and not p_plugin_attributes.filter_in
                                    then 'eq ''' || apex_string.join( l_filter_search_vc_arr, ''' or ' || l_filter_selector || ' eq ''' ) || ''''

                                    -- Number Search: "in" Parameter not working, using eq-or-eq-or Matching
                                    when l_filter_search_number_arr.count > 0
                                    then 'eq ' || apex_string.join( l_filter_search_number_arr, ' or ' || l_filter_selector || ' eq ' )
                               end
                            || case when l_filter_type = apex_exec.c_filter_not_in
                                    then ' eq false'
                               end
                            || ')';

    --
    -- Create Query for Filters: between / not between
    --
    elsif l_filter_type in ( apex_exec.c_filter_between,
                             apex_exec.c_filter_not_between )
    then

        apex_debug.info( p_message => 'Special Filter: (not) between' );
        l_odata_filter :=     '('
                            || l_filter_selector || ' ' || l_filter_param_1 || ' '
                            --
                            || case
                                    when l_filter_search_number_arr.count > 0 then to_char( l_filter_search_number_arr( 1 ) )
                                else
                                    to_char (
                                        case
                                            when l_filter_search_date_arr.count   > 0 then l_filter_search_date_arr( 1 )
                                            when l_filter_search_ts_arr.count     > 0 then l_filter_search_ts_arr( 1 )
                                            when l_filter_search_ts_tz_arr.count  > 0 then l_filter_search_ts_tz_arr( 1 )
                                            when l_filter_search_ts_ltz_arr.count > 0 then l_filter_search_ts_ltz_arr( 1 )
                                        end,
                                        c_odata_datetime_format )
                                end
                            --
                            || ' and '
                            --
                            || l_filter_selector || ' ' || l_filter_param_2 || ' '
                            || case
                                    when l_filter_search_number_arr.count > 0 then to_char( l_filter_search_number_arr( 2 ) )
                                else
                                    to_char (
                                        case
                                            when l_filter_search_date_arr.count   > 0 then l_filter_search_date_arr( 2 )
                                            when l_filter_search_ts_arr.count     > 0 then l_filter_search_ts_arr( 2 )
                                            when l_filter_search_ts_tz_arr.count  > 0 then l_filter_search_ts_tz_arr( 2 )
                                            when l_filter_search_ts_ltz_arr.count > 0 then l_filter_search_ts_ltz_arr( 2 )
                                        end,
                                        c_odata_datetime_format )
                                end
                            --
                            || ')'
                            || case when l_filter_type = apex_exec.c_filter_not_between then ' eq false' end;


    --
    -- Query for Filters: between upper bound excluded
    --
    elsif l_filter_type = apex_exec.c_filter_between_ube then

        apex_debug.info( p_message => 'Special Filter: between - upper bound excluded');

        l_odata_filter := 	 '('
                            || l_filter_selector || ' ' || l_filter_param_1 || ' ' || l_filter_search_number_arr( 1 )
                            --
                            || ' and '
                            --
                            || l_filter_selector || ' ' || l_filter_param_2 || ' ' || l_filter_search_number_arr( 2 )
                            --
                            || ')';

    --
    -- Query for Filters: (not) last, (not) next
    --
    elsif l_filter_type in ( apex_exec.c_filter_last,
                             apex_exec.c_filter_not_last,
                             apex_exec.c_filter_next,
                             apex_exec.c_filter_not_next )

    then

        apex_debug.info(
            p_message => 'Special Filter: (not) last/next%n' ||
                         'l_filter_search_number: %s',
            p0        => l_filter_search_number );

        l_odata_filter :=    '('
                            || l_filter_selector || ' ' || l_filter_param_1 || ' '
                            --
                            || to_char(
                                    get_offset_date(
                                        p_interval_type        => l_filter_search_vc,
                                        p_arithmetic_operation => l_filter_param_2,
                                        p_value                => l_filter_search_number ) at time zone 'UTC',
                                    c_odata_datetime_format )
                            --
                            || ' and '
                            --
                            || l_filter_selector || ' ' || l_filter_param_3 || ' '
                            --
                            || to_char ( current_timestamp, c_odata_datetime_format )
                            --
                            || ')'
                            || case when l_filter_type in ( apex_exec.c_filter_not_last,
                                                            apex_exec.c_filter_not_next )
                                    then ' eq false'
                                end;

    --
    -- Query for Filters: (not) null
    --
    elsif l_filter_type in ( apex_exec.c_filter_null, apex_exec.c_filter_not_null ) then

        apex_debug.info( p_message => 'Special Filter: (not) null' );

        l_odata_filter := l_filter_selector || ' ' || l_filter_param_1;

    --
    -- Query for Filters: Varchar2 Search Term
    --
    elsif l_filter_search_vc is not null and l_filter_type not in ( apex_exec.c_filter_search )
    then

        apex_debug.info(
            p_message => 'Special Filter: String Search%n' ||
                         'l_filter_search_vc: %s',
            p0        => l_filter_search_vc );

        --
        l_odata_filter := case when not l_filter_case_insensitive
                               then
                                       l_filter_selector
                                   || ' '
                                   || l_filter_param_1
                                   || ' '
                                   || ''''
                                   || l_filter_search_vc
                                   || ''''
                               else
                                       l_case_insensitive_transform
                                   || '('
                                   || l_filter_selector
                                   || ') '
                                   || l_filter_param_1
                                   || ' ('
                                   || l_case_insensitive_transform
                                   || '('''
                                   || l_filter_search_vc
                                   || '''))'
                          end;

    --
    -- Query for Filters: Number Search
    --
    elsif l_filter_search_number is not null then

        apex_debug.info(
            p_message => 'Special Filter: Number Search%n'||
                         'l_filter_search_number: %s',
            p0        => to_char( l_filter_search_number, 'TM9', 'NLS_NUMERIC_CHARACTERS=''.,'''  ) );

        l_odata_filter := l_filter_selector || ' ' || l_filter_param_1 || ' ' || to_char( l_filter_search_number, 'TM9', 'NLS_NUMERIC_CHARACTERS=''.,'''  );

    else

        --
        -- LOCAL FILTERS Block:
        --
        -- cannot match any filter values
        -- Log Warning and return empty filter and define remote filter to be empty
        -- This inidcates that the filter must be handled by the the APEX Engine
        -- as a Local Filter
        --
        apex_debug.info(
            p_message => 'Special Filter for Filter Type = %s cannot be processed by ODATA Source - adding to Local Filters',
            p0        => l_filter_type,
            p1        => p_filter.column_name );

        l_odata_filter := null;
        l_remote_filter := false;

    end if;

    --
    -- Set Remote Filter Flag for further processing
    --
    p_remote_filter := l_remote_filter;

    apex_debug.trace( p_message => 'Exit get_single_odata_filter_query. return=%s ', p0 => l_odata_filter );

    return l_odata_filter;

end get_single_odata_filter_query;


--=============================================================================
-- compute the ODATA Filter Expression and evaluate all Local Filters that
-- must be returned to the APEX Engine as t_filters;
--=============================================================================
function odata_filter_format (
    p_filters               in            apex_exec.t_filters,
    p_local_filters         in out nocopy apex_exec.t_filters,
    p_external_filters      in            varchar2,
    --
    p_web_source            in            apex_plugin.t_web_source,
    p_profile_columns       in            apex_plugin.t_web_source_columns,
    --
    p_plugin_attributes     in            plg_odata_connector.t_plugin_attributes,
    --
    p_row_search_query      out           varchar2 )
    return varchar2
as
    l_odata_filters                     varchar2(32767); -- Return String with all Filters in ODATA Format to pass as Query Parameter $filter to ODATA Source
    l_odata_filter                      varchar2(32767); -- One ODATA Filter
    l_odata_filter_arr                  apex_t_varchar2 := apex_t_varchar2(); -- Array of all ODATA Filters
    --
    l_filter_type                       apex_exec.t_filter_type; -- Filter Type as defined in APEX_EXEC Constants
    --
    l_filter_selector                   varchar2(255); -- Column Selector from Data Profile
    l_filter_column_name                varchar2(255); -- Column Name from Data Profile
    --
    l_column_data_type                  apex_exec.t_data_type; -- Column Data Type from Data Profile
    l_column_remote_data_type           varchar2(255);  -- Column Remote Data Type as definied in Discovery
    --
    l_filter_values                     apex_exec.t_values; -- Filter Values for one Filter
    l_filter_values_external            varchar2(32767); -- External Filters
    --
    l_row_search_query                  varchar2(32767); -- Query that is used by ODATA $search Parameter for Row Level Search
    --
    l_filter_case_insensitive           boolean; -- Flag to indicate if Case Insensitive Search is required
    l_case_insensitive_transform        varchar2(7); -- Method to use for Case Insensitive Search (lower, upper)
    --
    l_remote_filter                     boolean := true; -- Flag to indicate if Filter is Remote or Local
    l_local_reason                      varchar2(255); -- Reason for Local Filter; for Logging
begin

    apex_debug.enter( p_routine_name => c_scope || 'odata_filter_format' );

    apex_debug.info(
        p_message => 'Total Filters Count = %s ',
        p0 => p_filters.count );

    --
    -- Check if there are any External Filters and Sanitize them
    --
    if p_external_filters is not null then
        l_filter_values_external := get_sanitized_external_filter( p_external_filters );
    end if;

    l_case_insensitive_transform := get_case_insensitive_transform( p_plugin_attributes => p_plugin_attributes );

    --
    -- Loop through all Filters and create the ODATA Filter Expression
    --
    <<process_filters_loop>>
    for i in 1 .. p_filters.count
    loop

        apex_debug.info( p_message => 'Proccess Filters Loop Counter = %s', p0 => i);

        --
        -- filter Info
        --

        if apex_application.g_debug then

            apex_debug.info(
                p_message => 'Filter Info%n%n' ||
                             'Column Name: %s%n' ||
                             'Datatype: %s%n' ||
                             'tokenize_value: %s%n' ||
                             'Multi Value Type: %s%n'||
                             'Multi Value Separator: %s%n'||
                             'Multi Value trim_space: %s%n'||
                             'Multi Value filter_combi: %s',
                p0        => p_filters( i ).column_name,
                p1 		  => to_char(p_filters( i ).data_type),
                p2 		  => case when p_filters( i ).tokenize_value then 'True' else 'False' end,
                p3 		  => p_filters( i ).multi_value.type,
                p4        => p_filters( i ).multi_value.separator,
                p5        => case when p_filters( i ).multi_value.trim_space then 'True' else 'False' end,
                p6		  => p_filters( i ).multi_value.filter_combi );

        end if;

        --
        -- (re)Set relevant Variables for the Filter Loop Iteration
        --
        l_filter_case_insensitive           := not p_filters( i ).is_case_sensitive;
        l_filter_values                     := p_filters( i ).filter_values;
        l_filter_type 			            := p_filters( i ).filter_type;
        l_odata_filter                      := null;
        l_remote_filter                     := true;
        l_local_reason                      := null;
        l_filter_selector                   := null;


        apex_debug.info(
            p_message => 'Profile Columns Count = %s',
            p0 		  => p_profile_columns.count );

        apex_debug.info(
            p_message => 'Search Columns Count = %s',
            p0 		  => p_filters( i ).search_columns.count );

        --
        -- Gett Colulmn Selectors for Columns because ODATA is Case Sensitive and Column Names can be different
        ---
        for k in 1 .. p_profile_columns.count
        loop

            if p_profile_columns( k ).name = p_filters( i ).column_name then
                --
                -- a data profile also has the "remote attribute_name" property, which allows to specify
                -- a JSON or column name which is different from the JSON selector. If a remote attribute
                -- name is present, it should take precendence over the selector.
                --
                l_filter_selector := coalesce( p_profile_columns( k ).remote_attribute_name, p_profile_columns( k ).selector );
                l_column_data_type := p_profile_columns( k ).data_type;
                l_column_remote_data_type := p_profile_columns( k ).remote_data_type;

                apex_debug.info(
                    p_message => 'filter_type = %s and filter_selector = %s and data_type = %s and remote_data_type = %s',
                    p0 		  => l_filter_type,
                    p1 		  => l_filter_selector,
                    p2        => l_column_data_type,
                    p3        => l_column_remote_data_type );

                exit; -- exit the loop once we've found something.

            end if;

        end loop;

        --
        -- Check if the REST Source is configured to support the Filter Types
        -- and if we need to push them back to the APEX Engine as local Filters
        --

        case
            when p_filters( i ).force_local then
                l_remote_filter := false;
                l_local_reason  := 'Pre-Check: Force Local';

            when l_column_remote_data_type is not null and l_column_remote_data_type != 'Edm.Guid' then
                l_remote_filter := false;
                l_local_reason := 'Pre-Check: Remote Data Type not Supported';

            when l_filter_case_insensitive and l_case_insensitive_transform is null then
                l_remote_filter := false;
                l_local_reason := 'Pre-Check: Case Insensitive not Supported';

            when l_filter_case_insensitive and l_column_data_type = apex_exec.c_data_type_varchar2 then
                l_remote_filter := ( p_plugin_attributes.filter_lower or p_plugin_attributes.filter_upper );
                l_local_reason  := 'Pre-Check: Case Insensitive';

            when l_filter_type in ( apex_exec.c_filter_contains, apex_exec.c_filter_not_contains ) then
                l_remote_filter := p_plugin_attributes.filter_contains;
                l_local_reason  := 'Pre-Check: Contains';

            when l_filter_type = apex_exec.c_filter_search then
                l_remote_filter := case when p_plugin_attributes.filter_contains then true
                                        when p_plugin_attributes.row_search      then true
                                        else false
                                   end;
                l_local_reason  := case when not l_remote_filter then 'Pre-Check: Row Search with contains/$search' end;

            when l_filter_type = apex_exec.c_filter_starts_with then
                l_remote_filter := p_plugin_attributes.filter_startswith;
                l_local_reason  := 'Pre-Check: Starts With';

            when l_filter_type = apex_exec.c_filter_ends_with then
                l_remote_filter := p_plugin_attributes.filter_endswith;
                l_local_reason  := 'Pre-Check: Ends With';

            when l_filter_type in ( apex_exec.c_filter_like, apex_exec.c_filter_not_like ) then
                l_remote_filter := (  p_plugin_attributes.filter_contains
                                   or p_plugin_attributes.filter_endswith
                                   or p_plugin_attributes.filter_startswith );
                l_local_reason  := 'Pre-Check: Like';
            else
                l_remote_filter := true;

        end case;

        --
        -- Decide if we need to push the Filter to the APEX Engine as a Local Filter
        -- or if we need to push it to the REST Source as a Remote Filter
        --
        if l_remote_filter then
            --
            -- Pre-Check okay, continue with further proccessing for Remote Filters
            --
            l_odata_filter := get_single_odata_filter_query(
                                p_filter            => p_filters( i ),
                                p_profile_columns   => p_profile_columns,
                                p_filter_selector   => l_filter_selector,
                                p_remote_filter     => l_remote_filter,
                                p_plugin_attributes => p_plugin_attributes,
                                p_row_search_query  => p_row_search_query );

        end if;

        --
        -- Check again if we need to push the Filter to the APEX Engine as a
        -- Local Filter after running get_single_odata_filter_query()
        --
        if not l_remote_filter then
            --
            -- We cannot support the Filter Type, so add it to the local Filters
            --
            apex_exec.add_filter(
                p_filters      => p_local_filters,
                p_filter_type  => l_filter_type,
                p_column_name  => p_filters( i ).column_name );

            apex_debug.warn(
                p_message => 'Cannot Proccess Filter Type %s for Selector %s%n' ||
                             'Returning Filter as local filter to APEX Engine%n' ||
                             'Reason: %s',
                p0 		  => l_filter_type,
                p1 		  => l_filter_selector,
                p2        => nvl( l_local_reason, 'Cannot Create Remote Filter Query for Filter' ) ) ;

        end if;

        --
        -- Push the current Filter to overall Filter Array
        --
        if l_odata_filter is not null then

            apex_string.push( l_odata_filter_arr, l_odata_filter );

        else

            apex_debug.info( p_message => 'Nothing to push to OData Filter Array' );

        end if;

    end loop process_filters_loop;

    apex_debug.info( p_message => 'Count ODATA Filter Query Params: %s', p0 => l_odata_filter_arr.count );

    --
    -- Check if we have any Filters (User and External) and create the ODATA Retrun Query String
    --
    if l_odata_filter_arr.count > 0 and l_filter_values_external is not null then

        apex_debug.info(
            p_message => 'User Filters and External Filters in use%n' ||
                         'External Filters will be added: %s',
            p0        => l_filter_values_external );

        l_odata_filters :=    '(('
                           || apex_string.join( l_odata_filter_arr, ' and ' )
                           || ') and ('
                           || l_filter_values_external
                           || '))';

    elsif l_odata_filter_arr.count > 0 then

        apex_debug.info( p_message => 'Only User Filters in use' );
        l_odata_filters :=    '('
                           || apex_string.join( l_odata_filter_arr, ' and ' )
                           || ')';

    elsif l_filter_values_external is not null then

        apex_debug.info( p_message => 'Only External Filters in use' );
        l_odata_filters :=    '('
                           || l_filter_values_external
                           || ')';

    else
        apex_debug.info( p_message => 'No Filters in use' );

    end if;

    apex_debug.trace(
        p_message => 'Exit odata_filter_format. return=%s ',
        p0        => l_odata_filters );

    return l_odata_filters;

end odata_filter_format;

end plg_odata_filters;
/
