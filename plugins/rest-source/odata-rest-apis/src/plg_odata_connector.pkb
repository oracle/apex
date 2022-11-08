create or replace package body plg_odata_connector as

-------------------------------------------------------------------------------
-- Name: plg_odata_connector.pkb
-- Copyright (c) 2012, 2022 Oracle and/or its affiliates.
-- Licensed under the Universal Permissive License v 1.0
-- as shown at https://oss.oracle.com/licenses/upl/
-------------------------------------------------------------------------------

--=============================================================================
-- Constants
--=============================================================================
c_scope constant varchar2(129) := $$plsql_unit || '.';

--=============================================================================
-- Global Types
--=============================================================================
type t_pagination_info is record (
    has_more_rows     	boolean         := false,
    next_query_string 	varchar2(32767),
    row_count         	number          := 0,
    next_link         	varchar2(4000),
    total_rows        	number );

--=============================================================================
-- Check whether the response contains an error message in the format of
-- ODATA 4.01 and return it.
--=============================================================================
procedure has_error_response(
    p_response in 	  		 clob,
    p_result   in out nocopy apex_plugin.t_web_source_fetch_result )
as
    l_error_code    	varchar2(4000);
    l_error_message 	varchar2(4000);
    l_error_target  	varchar2(4000);
    l_error_details 	varchar2(4000);
    l_error_innererror 	varchar2(4000);
begin

    apex_debug.enter( p_routine_name => c_scope || 'has_error_response' );

    /* Try to interpret the response as JSON ODATA Error Format */
    begin
         select code,
                message,
                target,
                details,
                innererror
           into l_error_code,
                l_error_message,
                l_error_target,
                l_error_details,
                l_error_innererror
           from json_table(
                    p_response,
                    '$.error' columns (
                        code 	   varchar2(4000) 			  path '$.code',
                        message	   varchar2(4000) 			  path '$.message',
                        target	   varchar2(4000) 			  path '$.target',
                        details	   varchar2(4000) 			  path '$.details',
                        innererror varchar2(4000) format json path '$.innererror[*]' ) );

    exception
        when others then
            apex_debug.info( 'No JSON Error Response Found' );

    end;

    /* If we found anything in the response return an APEX Error */
    if coalesce( l_error_code,
                 l_error_message,
                 l_error_target,
                 l_error_details,
                 l_error_innererror ) is not null
    then

        apex_debug.error (
            'ODATA Error Response%n'||
            'Code:       %s%n'||
            'Message:    %s%n'||
            'Target:     %s%n'||
            'Details:    %s%n'||
            'Innererror: %s',
            p0        => l_error_code,
            p1 		  => l_error_message,
            p2 		  => l_error_target,
            p3 		  => l_error_details,
            p4 		  => l_error_innererror );

        p_result.reason_phrase  :=    'ODATA Error'
                                   || 'Code: ' || nvl( l_error_code, 'unknown')
                                   || '/'
                                   || 'Message: ' || nvl( l_error_message, 'unknown');

        --
        -- Raise an Application Error in case the Plugin is used in a Process
        -- outside of an APEX App (e.g. APEX_EXEC.OPEN_REST_SOURCE_QUERY)
        --
        apex_error.add_error(
            p_message 			=> substr( p_response, 1, 32767 ),
            p_additional_info 	=> apex_web_service.g_reason_phrase,
            p_display_location  => apex_error.c_inline_with_field_and_notif
        );

    end if;

    if apex_application.g_debug then

        apex_debug.trace(
            p_message => 'Exit has_error_response. return=Code:%s / Message:%s ',
            p0 		  => nvl( l_error_code, 'n/a' ),
            p1        => nvl( l_error_message, 'n/a' ) );

    end if;

end has_error_response;


--=============================================================================
-- Count the number of records in the response and return the value.
--=============================================================================
function get_row_count (
    p_response in clob )
    return number
as
      l_return number;
begin

    apex_debug.enter( p_routine_name => c_scope || 'get_row_count' );

    select
        count(*)
    into
        l_return
    from
        json_table(
            p_response,
  		    '$.value[*]'
			columns( elem for ordinality ) );

    apex_debug.trace( p_message => 'Exit get_row_count. return=%s ', p0 => l_return );
    return l_return;

end get_row_count;


--=============================================================================
-- Determine if there is a nextlink in the answer and return the value
-- if there is one.
--=============================================================================
function get_next_link(
    p_response in clob
) return varchar2
as
    l_return varchar2(32767);
begin

    apex_debug.enter( p_routine_name => c_scope || 'get_next_link' );

    -- Check for ODATA NextLink Pramameter
    begin
        select next_link
          into l_return
          from json_table(
                   p_response,
                   '$' columns( next_link varchar2(4000) path '$."@odata.nextLink"' ) );
    exception
        when others then
            apex_debug.info(
                p_message => 'No Nextlink found' );
    end;

    apex_debug.info(
        p_message => 'Nextlink from Response before modification: %s',
        p0 => l_return );

    --
    -- unescape and extract everything after Questionmark '?$' in the URL
    -- to get the query string for the next request
    --
    -- Note: Some ODATA Services return the nextlink as a full URL,
    --       others with the Resource Path...
    --       We need to handle both cases and extract the query string only
    --

    l_return := substr(
                    l_return,
                    instr( sys.utl_url.unescape( l_return ) ,'?$') + 1,
                    length( l_return ) );

    apex_debug.info(
        p_message => 'Nextlink after modification (unescaped): %s',
        p0        => sys.utl_url.unescape( l_return ) );

    apex_debug.trace( p_message => 'Exit get_next_link. return=%s ', p0 => l_return );

    return l_return;

end get_next_link;


--=============================================================================
-- Determine the total number of recordd of the filtered request from the
-- response and return the value
--=============================================================================
function get_total_count(
    p_response   		   in clob,
    p_attributes 		   in t_plugin_attributes,
    p_web_source_operation in apex_plugin.t_web_source_operation )
    return number
as
    l_return               number;
    l_clob   			   clob;
    l_dummy_time_budget    number;
    l_dummy_parameters     apex_plugin.t_web_source_parameters;
    l_web_source_operation apex_plugin.t_web_source_operation;
begin

    apex_debug.enter( p_routine_name => c_scope || 'get_total_count' );

    apex_debug.info(
        p_message => 'Using Count Method %s',
        p0 => p_attributes.count_method );

    -- Count Methods:
    --	1: $count=true
    --	2: $inlinecount=allpages
    --	3: /$count as separate call
    if p_attributes.count_method = c_count_method_inline then

        select
            total_count
        into
            l_return
        from
            json_table(
                p_response,
                '$' columns ( total_count number path '$."@odata.count"' ) );

    elsif p_attributes.count_method = c_count_method_legacy then

        select
            total_count
        into
            l_return
        from
            json_table(
                p_response,
                '$' columns ( total_count number path '$.Count' ) );

    elsif p_attributes.count_method = c_count_method_not_inline then

        -- Prepare REST Request
        -- Remove $top,$skip,$orderby from query String
        -- Set Content-Type: text/plain
        l_web_source_operation := p_web_source_operation;
        l_web_source_operation.url := case when p_web_source_operation.url like '%/'
                                           then p_web_source_operation.url || 	    c_count_param_name
                                           else p_web_source_operation.url || '/' || c_count_param_name
                                      end;

        apex_web_service.set_request_headers(
                p_name_01           => 'Accept',
                p_value_01          => 'application/json',
                p_name_02           => 'Content-Type',
                p_value_02          => c_request_body_content_type,
                p_reset             => false,
                p_skip_if_exists    => true );

        l_web_source_operation.query_string := regexp_replace(
                                                   p_web_source_operation.query_string,
                                                   '(' || replace( c_limit_param_name, '$', '\$' )   || '|'
                                                       || replace( c_offset_param_name, '$', '\$' )  || '|'
                                                       || replace( c_orderby_param_name, '$', '\$' ) ||
                                                   ')=[^&]+&*' );

        -- Make the REST Request
        apex_plugin_util.make_rest_request(
            p_web_source_operation => l_web_source_operation,
            p_bypass_cache         => true,
            p_time_budget		   => l_dummy_time_budget,
            p_response			   => l_clob,
            p_response_parameters  => l_dummy_parameters );

        apex_debug.info(
            p_message => 'Response Count via /$count Call = %s',
            p0 => l_clob );

        begin

            l_return := to_number( l_clob );

        exception
            when VALUE_ERROR then
                apex_debug.error(
                    p_message => 'Error parsing Total Count from Response: %s',
                    p0 => l_clob );
        end;


    end if;

    apex_debug.trace( p_message => 'Exit get_total_count. return=%s ', p0 => l_return );

    return l_return;

end get_total_count;

--=============================================================================
-- Returns the requested columns as an array
--=============================================================================
function get_requested_columns(
    p_requested_columns in apex_plugin.t_web_source_columns,
    p_profile_id        in number
) return apex_t_varchar2
as
    l_return apex_t_varchar2;
begin

    apex_debug.enter( p_routine_name => c_scope || '' );

    for i in 1 .. p_requested_columns.count
    loop

        apex_string.push( l_return, p_requested_columns(i).selector );

    end loop;

    if apex_application.g_debug then

        apex_debug.trace(
            p_message => 'Exit get_requested_columns. return=%s ',
            p0 => apex_string.join( l_return, ',' ) );

    end if;

    return l_return;

end get_requested_columns;


--=============================================================================
-- Returns the Query String for the REST Request
--=============================================================================
function get_query_string(
    p_pagination_limit          in number   default null,
    p_pagination_offset         in number   default null,
    p_count_option_query        in varchar2 default null,
    p_orderby_query             in varchar2 default null,
    p_filter_query              in varchar2 default null,
    p_row_search_query          in varchar2 default null,
    p_requested_column_list     in varchar2 default null,
    p_plugin_attributes         in t_plugin_attributes )
    return varchar2
as
    l_return varchar2(32767);
begin

    apex_debug.enter( p_routine_name => c_scope || 'get_query_string' );

    l_return :=    case when p_plugin_attributes.client_pagination and p_pagination_offset is not null and p_pagination_limit is not null then
                          c_offset_param_name     || '=' || nvl(p_pagination_offset, 0)
                || '&' || c_limit_param_name      || '=' || p_pagination_limit
                   end
                --
                || case when p_count_option_query is not null then
                   '&' || p_count_option_query
                   end
                --
                || case when p_plugin_attributes.filter_select and p_requested_column_list is not null then
                   '&' || c_colums_param_name     || '=' || p_requested_column_list
                   end
                --
                || case when p_row_search_query is not null then
                   '&' || c_row_search_param_name || '=(' || sys.utl_url.escape( p_row_search_query,  true, 'AL32UTF8' ) || ')'
                   end
                --
                || case when p_filter_query is not null then
                   '&' || c_filter_param_name     || '=' || sys.utl_url.escape( p_filter_query, true, 'AL32UTF8' )
                   end
                --
                || case when p_orderby_query is not null and p_plugin_attributes.orderby then
                   '&' || c_orderby_param_name    || '=' || sys.utl_url.escape( p_orderby_query, true, 'AL32UTF8' )
                   end;

    l_return := case when l_return like '&%'
                     then substr( l_return, 2 )
                     else l_return
                end;

    apex_debug.trace( p_message => 'Exit get_query_string. return=%s ', p0 => l_return );

    return l_return;

end get_query_string;


--=============================================================================
-- Procedure that reads the custom attributes of the ODATA Connector Plugin
-- from the settings of the REST source and saves them as t_plugin_attributes.
--=============================================================================
procedure plugin_attributes(
    p_web_source  in  apex_plugin.t_web_source,
    p_attributes  out t_plugin_attributes )
as
begin

    apex_debug.enter( p_routine_name => c_scope || 'plugin_attributes' );

    --
    -- Check if Web Source supports client driven pagination.
    -- If so, we will use $skip and $top.
    --
    p_attributes.client_pagination := p_web_source.attribute_03 like '%' || c_plugin_opt_client_paging  || '%'
                                        and p_web_source.attribute_03 is not null;

    -- Get $count Method for fetch, 0=not supported at all

    p_attributes.count_method := case p_web_source.attribute_06
                                    when 'count_none' then c_count_method_none
                                    when c_plugin_opt_count_inline then c_count_method_inline
                                    when c_plugin_opt_count_legacy then c_count_method_legacy
                                    when c_plugin_opt_count_not_inline then c_count_method_not_inline
                                    else c_count_method_none
                                 end;

    -- Get $query Method for Fetch
    p_attributes.query_req_body := p_web_source.attribute_05 = 'Y' and p_web_source.attribute_05 is not null;

    -- Get $filter Options for Fetch
    p_attributes.filter_contains := p_web_source.attribute_07 like '%' || c_plugin_opt_filter_contains || '%'
                                        and p_web_source.attribute_07 is not null;

    p_attributes.filter_startswith := p_web_source.attribute_07 like '%' || c_plugin_opt_filter_startswith || '%'
                                        and p_web_source.attribute_07 is not null;

    p_attributes.filter_endswith := p_web_source.attribute_07 like '%' || c_plugin_opt_filter_endswith || '%'
                                        and p_web_source.attribute_07 is not null;

    p_attributes.filter_in := p_web_source.attribute_07 like '%' || c_plugin_opt_filter_in || '%'
                                and p_web_source.attribute_07 is not null;

    p_attributes.filter_lower := p_web_source.attribute_04 like '%' || c_plugin_opt_filter_lower || '%'
                                    and p_web_source.attribute_04 is not null;

    p_attributes.filter_upper := p_web_source.attribute_04 like '%' || c_plugin_opt_filter_upper || '%'
                                    and p_web_source.attribute_04 is not null;

    p_attributes.orderby := p_web_source.attribute_03 like '%' || c_plugin_opt_orderby || '%'
                                and p_web_source.attribute_03 is not null;

    p_attributes.row_search := p_web_source.attribute_03 like '%' || c_plugin_opt_search || '%'
                                and p_web_source.attribute_03 is not null;

    p_attributes.filter_select := p_web_source.attribute_03 like '%' || c_plugin_opt_select || '%'
                                    and p_web_source.attribute_03 is not null;

    apex_debug.trace( p_message => 'Exit plugin_attributes' );

end plugin_attributes;


--=============================================================================
-- Procedure that determines the necessary information for pagination
-- and makes it available for processing in the fetch processing.
--=============================================================================
procedure pagination_info(
    p_response					in         clob,
    p_rows_already_fetched  	in         pls_integer,
    p_pagination_limit      	in         pls_integer,
    p_pagination_offset     	in         pls_integer,
    p_filter_query          	in         varchar2,
    p_query_string          	in         varchar2,
    p_requested_column_list 	in         varchar2,
    p_fetch_all_rows         	in         boolean,
    p_pagination_info      	    out nocopy t_pagination_info,
    p_attributes			 	in 	       t_plugin_attributes,
    p_web_source_operation   	in         apex_plugin.t_web_source_operation )
as
    l_next_link         varchar2(32767); -- ODATA $skiptoken
    l_resp_count_rows   number  := 0;
    l_total_rows        number  := 0;
    l_has_more_rows     boolean := false;
begin

    apex_debug.enter( p_routine_name => c_scope || 'pagination_info' );

    -- Get the next link aka skiptoken from response
    l_next_link 		:= get_next_link ( p_response => p_response );
    -- Get current row count from response
    l_resp_count_rows 	:= get_row_count( p_response => p_response );
    -- Get the total row count from response
    l_total_rows 		:= get_total_count(
                                p_response 				=> p_response,
                                p_attributes 			=> p_attributes,
                                p_web_source_operation 	=> p_web_source_operation );

    --
    -- Checking if there are more rows to fetch:
    --

    -- If we don't have any rows in the response, we can't have more rows
    if nvl( l_resp_count_rows, 0 ) = 0 then

        l_has_more_rows := false;
        apex_debug.info(
            p_message => 'More Rows Check: No rows in response. No more rows to fetch.' );

    -- If we have a next link, we can fetch more rows
    elsif l_next_link is not null then

        l_has_more_rows := true;
        apex_debug.info(
            p_message => 'More Rows Check: Next link found. More rows to fetch.' );

    -- If client driven pagination is not supported and the next link is null,
    -- we can say that all rows are fetched.
    elsif not p_attributes.client_pagination then

        l_has_more_rows := false;
        apex_debug.info(
            p_message => 'More Rows Check: Next link is not found. No more rows to fetch.' );

    -- If we have a total row count and the total row count is greater than the number of rows
    -- we have fetched, we can fetch more rows
    elsif ( p_rows_already_fetched + l_resp_count_rows ) >= l_total_rows then

        l_has_more_rows := false;
        apex_debug.info(
            p_message => 'More Rows Check: All rows fetched. No more rows to fetch.' );

    -- Checking for special Fetch All Rows Cases
    elsif p_fetch_all_rows then

        -- If we have a total row count and the total row count is less than the number of rows
        -- we have fetched, we can't fetch more rows
        if ( p_rows_already_fetched + l_resp_count_rows ) < l_total_rows then

            l_has_more_rows := true;
            apex_debug.info(
                p_message => 'More Rows Check: Total row count not reached. More rows to fetch.' );

        -- If we still get rows there may be more rows to fetch
        elsif l_resp_count_rows > 0 then

            l_has_more_rows := true;
            apex_debug.info(
                 p_message => 'More Rows Check: Response still has rows. Potentially more rows to fetch.' );

        else

            l_has_more_rows := false;
            apex_debug.info(
                p_message => 'More Rows Check: No rows in response. No more rows to fetch.' );

        end if;

    -- Checking for special ~NOT~ Fetch All Rows Cases
    elsif not p_fetch_all_rows then

        -- If the response has as much rows as the pagination limit,
        -- we can potentially fetch more rows... we have to try!

        if l_resp_count_rows >= p_pagination_limit then

            l_has_more_rows := true;
            apex_debug.info(
                p_message => 'More Rows Check: Response has as many rows as the pagination limit. Potentially more rows to fetch.' );

        else

            l_has_more_rows := false;
            apex_debug.info(
                p_message => 'More Rows Check: Response has less rows than the pagination limit. No more rows to fetch.' );

        end if;

    else

        l_has_more_rows := false;
        apex_debug.info(
            p_message => 'More Rows Check: No more rows to fetch.' );

    end if;


    p_pagination_info.next_link             := l_next_link;
    p_pagination_info.total_rows            := l_total_rows;
    p_pagination_info.row_count             := l_resp_count_rows;
    p_pagination_info.next_query_string     := l_next_link;
    p_pagination_info.has_more_rows         := l_has_more_rows;

    if apex_application.g_debug then

        apex_debug.info(
            p_message => 'Pagination Info%n%n' ||
                         'Total Rows To Fetch Count: %s%n' ||
                         'Already Fetched Rows Coun: %s%n' ||
                         'Current Fetched Rows Count: %s%n' ||
                         'Has More Rows: %s%n' ||
                         'Limit: %s%n' ||
                         'Offset: %s%n' ||
                         'Next Offset: %s%n' ||
                         'Next Link: %s' ,
            p0        => l_total_rows,
            p1 		  => p_rows_already_fetched,
            p2 		  => l_resp_count_rows,
            p3 		  => apex_debug.tochar( l_has_more_rows ),
            p4 		  => p_pagination_limit,
            p5 		  => p_pagination_offset,
            p6 		  => p_pagination_offset + p_pagination_limit,
            p7 		  => sys.utl_url.unescape( l_next_link ) );

    end if;

    apex_debug.trace( p_message => 'Exit pagination_info' );

end pagination_info;


--=============================================================================
-- REST Source Capabilities Procedure for Plugin Callback Section.
-- Determines which options are supported.
--=============================================================================
procedure capabilities_web_source(
    p_plugin in            apex_plugin.t_plugin,
    p_result in out nocopy apex_plugin.t_web_source_capabilities )
as
begin

    p_result.pagination 			:= true;
    p_result.page_size_is_stable 	:= false;
    p_result.order_by   			:= true;
    p_result.filtering  			:= true;

end capabilities_web_source;


--=============================================================================
-- REST Source Fetch Procedure for Plugin Callback Section.
-- Fetches the data from the source and returns it to the APEX Engine.
--=============================================================================
procedure fetch_web_source(
    p_plugin     in            apex_plugin.t_plugin,
    p_web_source in            apex_plugin.t_web_source,
    p_params     in            apex_plugin.t_web_source_fetch_params,
    p_result     in out nocopy apex_plugin.t_web_source_fetch_result )
as
    l_web_source_operation  				apex_plugin.t_web_source_operation;
    l_time_budget           				number;
    --
    l_pagination_info       				t_pagination_info;
    l_pagination_limit      				pls_integer;
    l_total_row_count    				    pls_integer := 0;
    l_pagination_offset     				pls_integer;
    l_continue_fetch        				boolean     := true;
    l_page_to_fetch         				pls_integer := 0;
    --
    l_query_string          				varchar2(32767);
    --
    l_filter_query          				varchar2(4000);
    l_row_search_query	  				    varchar2(4000);
    l_orderby_query         				varchar2(4000);
    l_count_option_query    				varchar2(4000);
    --
    l_plugin_attributes     				t_plugin_attributes;
    --
    l_requested_column_list					varchar2(32767);
    --
    l_arr_requested_attribute				apex_t_varchar2;
    --
    l_req_body             					clob;
    --
    l_local_filters        					apex_exec.t_filters;
    --
    l_resource_path        					varchar(32767);
begin

    if apex_application.g_debug then

        apex_plugin_util.debug_web_source(
            p_plugin     => p_plugin,
            p_web_source => p_web_source );

    end if;

    l_web_source_operation :=
        apex_plugin_util.get_web_source_operation(
            p_web_source   => p_web_source,
            p_db_operation => apex_plugin.c_db_operation_fetch_rows,
            p_perform_init => false );

    --
    -- Get the custom plugin attributes settings for this web source.
    --
    plugin_attributes(
        p_web_source => p_web_source,
        p_attributes => l_plugin_attributes );

    l_resource_path := p_web_source.attribute_01;
    l_resource_path :=
        plg_odata_metadata.replace_params_resource_path(
            p_resource_path => l_resource_path,
            p_web_source_parameters => l_web_source_operation.parameters );

    l_resource_path := trim(both '/' from l_resource_path);

    l_web_source_operation.url := regexp_replace( l_web_source_operation.url, '\/*\Z', '' );

    l_web_source_operation.url := sys.utl_url.escape( l_web_source_operation.url || '/' || l_resource_path, false, 'AL32UTF8' );

    --
    -- Get the requested column list from the web source.
    --

    if p_params.requested_columns.count = 0 then

        l_requested_column_list :=  apex_string.join(
                                        get_requested_columns(
                                            p_requested_columns => p_web_source.profile_columns,
                                            p_profile_id  		=> p_web_source.profile_id ), ',' );

    else

        l_requested_column_list := apex_string.join(
                                        get_requested_columns(
                                            p_requested_columns => p_params.requested_columns,
                                            p_profile_id  		=> p_web_source.profile_id ), ',' );

    end if;



    if apex_application.g_debug then

        apex_debug.info(
            p_message => 'Web Source Attributes Info%n%n' ||
                         'attribute_01: %s%n' ||
                         'attribute_02: %s%n' ||
                         'attribute_03: %s%n' ||
                         'attribute_04: %s%n' ||
                         'attribute_05: %s%n' ||
                         'attribute_06: %s',
            p0        => p_web_source.attribute_01,
            p1 		  => p_web_source.attribute_02,
            p2 		  => p_web_source.attribute_03,
            p3 		  => p_web_source.attribute_04,
            p4 		  => p_web_source.attribute_05,
            p5 		  => p_web_source.attribute_06 );

        apex_debug.info(
            p_message => 'Web Source Fetch Params Info%n%n' ||
                         'requested_columns: [%s]%n' ||
                         'max_rows: %s%n' ||
                         'first_row: %s%n' ||
                         'fetch_all_rows: %s%n' ||
                         'fixed_page_size: %s%n' ||
                         'request_context: %s%n' ||
                         'external_filters: %s',
            p0        => l_requested_column_list,
            p1 		  => p_params.max_rows,
            p2 		  => p_params.first_row,
            p3 		  => apex_debug.tochar( p_params.fetch_all_rows ),
            p4 		  => p_params.fixed_page_size,
            p5 		  => sys.utl_url.unescape( p_params.request_context ),
            p6 		  => apex_plugin_util.replace_substitutions( p_params.external_filters ) );

        apex_debug.info(
            p_message => 'Web Source Fetch Params Info 2%n%n' ||
                         'order_bys: %s%n' ||
                         'requested_columns: %s%n' ||
                         'filters: %s%n' ||
                         'primary_key_values: %s%n' ||
                         'initial_request: %s',
            p0 		  => case when p_params.order_bys is null then 'false' else 'true' end,
            p1 		  => case when p_params.requested_columns is null then 'false' else 'true' end,
            p2 		  => case when p_params.filters is null then 'false' else 'true' end,
            p3 	      => case when p_params.primary_key_values is null then 'false' else 'true' end,
            p4 	      => case when p_params.initial_request is null then 'false' else 'true' end );



    end if;

    --
    -- Initialize
    --
    p_result.responses := apex_t_clob();

    apex_debug.info(
        p_message => 'Original Query String is: %s',
        p0 => l_web_source_operation.query_string );

    --
    -- Get Pagination Limits ($top) and Offset ($skip)
    --
    l_pagination_limit :=
        case
            when p_params.fetch_all_rows
            then 0
            else least( coalesce( p_params.max_rows, p_params.fixed_page_size, c_per_page_maximum ), c_per_page_maximum )
        end;

    l_pagination_offset :=
        case
            when p_params.fetch_all_rows
            then 1
            else p_params.first_row - 1
        end;


    --
    -- Loop to fetch the data from the web source.
    --
    <<fetch_data_loop>>
    while    l_continue_fetch
         and coalesce( l_time_budget, 1 ) > 0
    loop

        p_result.responses.extend( 1 );

        l_page_to_fetch := l_page_to_fetch + 1;

        apex_debug.info(
            p_message => 'Fetching Loop Counter (Page) = %s',
            p0 => l_page_to_fetch );
        --
        -- Create the initial Filter Query if we have Filters or External Filters.
        --
        if l_filter_query is null and ( p_params.filters.count > 0 or p_params.external_filters is not null ) then

            apex_debug.info(
                p_message 	=> 'ODATA Filter Format Creation incoming with ext Filter = %s',
                p0 			=> p_params.external_filters );

            --
            -- Pass params to function to receive the correct odata filter format
            --
            l_filter_query := plg_odata_filters.odata_filter_format(
                p_filters           => p_params.filters,
                p_external_filters  => p_params.external_filters,
                p_profile_columns   => p_web_source.profile_columns,
                p_local_filters     => l_local_filters,
                p_web_source        => p_web_source,
                p_plugin_attributes => l_plugin_attributes,
                p_row_search_query  => l_row_search_query );

        end if;

        --
        -- Pass params to function to receive the correct odata order by format
        --
        if l_orderby_query is null and l_plugin_attributes.orderby
            and ( p_params.order_bys.count > 0 or p_params.external_order_bys is not null ) then

            l_orderby_query :=
                plg_odata_order_bys.odata_orderby_format(
                    p_order_bys          => p_params.order_bys,
                    p_external_order_bys => p_params.external_order_bys,
                    p_profile_columns    => p_web_source.profile_columns );

        end if;

        apex_debug.info(
            p_message => 'Filter Query: %s%n' ||
                         'Order By Query: %s',
            p0        => l_filter_query,
            p1        => l_orderby_query ) ;


        --
        -- Check if we have a Total Row Count Method defined in the Web Source.
        -- If so, we will use it to get the total row count.
        --
        case l_plugin_attributes.count_method
            when c_count_method_inline then

                l_count_option_query :=       '$count' || '=' || 'true';
                apex_debug.info(
                    p_message => 'Count Option: $count=true' );

            when c_count_method_legacy then

                l_count_option_query := '$inlinecount' || '=' || 'allpages';
                apex_debug.info(
                    p_message => 'Count Option: $inlinecount=allpages' );

            else

                apex_debug.info(
                    p_message => 'Count Option: No inline count option selected' );

        end case;



        --
        -- Cleanup the requested attribute before selection
        --
        l_requested_column_list := regexp_replace( l_requested_column_list, '\.[^\,]*' );

        select distinct
            regexp_replace( column_value, '\.[^\,]*' )
        bulk collect into
            l_arr_requested_attribute
        from
            apex_string.split( l_requested_column_list, ',' );

        l_requested_column_list := apex_string.join( l_arr_requested_attribute, ',' );

        --
        -- Determine if we need to fetch all rows or not.
        -- Create the appropriate query string.
        --
        if p_params.fetch_all_rows then

            if l_page_to_fetch = 1 then

                apex_debug.info(
                    p_message => 'Fetching all rows (Page 1)' );
                --
                -- Trying to fetch all rows with no limitation regarding the number of rows
                -- First Fetch aka Page 1
                -- Note: no $top and $skip parameters are NOT used to get as many rows as possible
                --
                l_web_source_operation.query_string :=
                    get_query_string(
                        p_count_option_query        => l_count_option_query,
                        p_orderby_query             => l_orderby_query,
                        p_filter_query              => l_filter_query,
                        p_row_search_query          => l_row_search_query,
                        p_requested_column_list     => l_requested_column_list,
                        p_plugin_attributes         => l_plugin_attributes );

            else

                apex_debug.info(
                    p_message => 'Fetching all rows (Page %s)',
                    p0 => l_page_to_fetch );
                --
                -- Still trying to fetch all rows, but not the first page.
                -- We try either: a) fetch via nextlink (if available)
                --                b) fetch via $skip and $top (if nextlink is not available)
                --                  -> $top: row count of the first page, we assume that is the maximum
                --                  -> $skip: total row count of all fetched pages so far
                --
                l_web_source_operation.query_string :=
                    case when l_query_string is not null then
                        l_query_string
                    else
                        get_query_string(
                            p_pagination_limit          => l_pagination_info.row_count,
                            p_pagination_offset         => l_total_row_count,
                            p_count_option_query        => l_count_option_query,
                            p_orderby_query             => l_orderby_query,
                            p_filter_query              => l_filter_query,
                            p_row_search_query          => l_row_search_query,
                            p_requested_column_list     => l_requested_column_list,
                            p_plugin_attributes         => l_plugin_attributes )
                    end;
            end if;

        else

            apex_debug.info(
                p_message => 'Not fetching all rows' );
            --
            -- Not trying to fetch all rows. Standard pagination.
            --
            l_web_source_operation.query_string :=
                case when p_params.request_context is not null then
                    p_params.request_context
                else
                    get_query_string(
                        p_pagination_limit          => l_pagination_limit,
                        p_pagination_offset         => l_pagination_offset,
                        p_count_option_query        => l_count_option_query,
                        p_orderby_query             => l_orderby_query,
                        p_filter_query              => l_filter_query,
                        p_row_search_query          => l_row_search_query,
                        p_requested_column_list     => l_requested_column_list,
                        p_plugin_attributes         => l_plugin_attributes )
                end;

        end if;

        apex_debug.info(
            p_message => 'New Query String is: %s',
            p0 => sys.utl_url.unescape( l_web_source_operation.query_string ) );

        --
        -- Decide whether to use the request body or http query string
        -- depending on the plugin attibute configuration
        --
        if l_plugin_attributes.query_req_body then

            apex_debug.info(
                p_message => 'Going to make the REST Requst via Req. Body' );

            --
            -- Define Settings for the REST Request via Request Body
            --
            l_req_body                          := l_web_source_operation.query_string;

            l_web_source_operation.url          := case when substr(l_web_source_operation.url, -1) = '/'
                                                                  then l_web_source_operation.url || 	      c_request_body_param_name
                                                                  else l_web_source_operation.url || '/' || c_request_body_param_name
                                                             end;

            l_web_source_operation.query_string := null;
            l_web_source_operation.http_method  := 'POST';

            apex_web_service.set_request_headers(
                p_name_01           => 'Accept',
                p_value_01          => 'application/json',
                p_name_02           => 'Content-Type',
                p_value_02          => c_request_body_content_type,
                p_reset             => false,
                p_skip_if_exists    => true );

            --
            -- Make the REST Call via Request Body
            --
            apex_plugin_util.make_rest_request(
                p_web_source_operation => l_web_source_operation,
                p_request_body         => l_req_body,
                p_bypass_cache         => false,
                p_time_budget          => l_time_budget,
                p_response             => p_result.responses( l_page_to_fetch ),
                p_response_parameters  => p_result.out_parameters );

        else

            apex_web_service.set_request_headers(
                p_name_01   => 'Accept',
                p_value_01  => 'application/json',
                p_reset             => false,
                p_skip_if_exists    => true );

            --
            -- Make the REST Call via HTTP Query String
            --
            apex_plugin_util.make_rest_request(
                p_web_source_operation => l_web_source_operation,
                p_bypass_cache         => false,
                p_time_budget          => l_time_budget,
                p_response             => p_result.responses( l_page_to_fetch ),
                p_response_parameters  => p_result.out_parameters );

        end if;

        --
        -- Get all Paging Information
        --
        pagination_info(
            p_response              	=> p_result.responses( l_page_to_fetch ),
            p_rows_already_fetched  	=> l_total_row_count,
            p_pagination_limit      	=> l_pagination_limit,
            p_pagination_offset     	=> l_pagination_offset,
            p_filter_query          	=> l_filter_query,
            p_query_string          	=> l_query_string,
            p_requested_column_list 	=> l_requested_column_list,
            p_fetch_all_rows        	=> p_params.fetch_all_rows,
            p_pagination_info      		=> l_pagination_info,
            p_attributes				=> l_plugin_attributes,
            p_web_source_operation  	=> l_web_source_operation );


        --
        -- Calculate the number of rows fetched and if we need to continue fetching more rows
        --
        l_total_row_count := l_total_row_count + l_pagination_info.row_count;
        l_continue_fetch := p_params.fetch_all_rows and l_pagination_info.has_more_rows;

        apex_debug.info(
            p_message => 'Fetch Data Loop: %n'||
                          'Has Next Page: %s%n'||
                          'Fetched Row Count: %s%n'||
                          'Continue Fetch Loop: %s',
            p0 => case when l_pagination_info.has_more_rows then '1' else '0' end,
            p1 => to_char( l_total_row_count ),
            p2 => case when l_continue_fetch then '1' else '0' end );

        --
        -- If we have more rows to fetch, then continue fetching them
        -- with the new query string from pagination information
        --
        if l_continue_fetch then

            l_query_string := l_pagination_info.next_query_string;
            apex_debug.info(p_message => 'Continue Fetch Query = %s', p0 => l_pagination_info.next_query_string);

        end if;

    end loop fetch_data_loop;

    -- If all fetched there is nothing more (obviously...)
    -- and we started with the first record.
    -- Otherwise our pagination info tells us if more data available.
    if p_params.fetch_all_rows then

        apex_debug.info(p_message => 'End - Fetch All Rows');
        p_result.has_more_rows      := false;
        p_result.response_first_row := 1;

    else

        apex_debug.info(p_message => 'End - Not Fetch All Rows');
        p_result.has_more_rows      := l_pagination_info.has_more_rows;
        p_result.response_first_row := p_params.first_row;

    end if;

    -- Derived by counting array in response
    -- should always be available
    p_result.total_row_count    := l_pagination_info.total_rows;
    p_result.response_row_count := l_total_row_count;
    p_result.local_filters      := l_local_filters;

    --
    -- If we have a ODATA Nextlink, we need to pass it as request context
    -- to the next fetch call.
    if l_pagination_info.next_query_string is not null then

        p_result.request_context := l_pagination_info.next_query_string;
        apex_debug.info(p_message => 'End - Request Context was set with next Query String = %s', p0 => l_pagination_info.next_query_string);

    end if;

    if apex_application.g_debug then

        apex_debug.info(
            p_message => 'End of Fetch Info%n%n' ||
                         'Total Row Count: %s%n' ||
                         'Has More Rows: %s%n' ||
                         'First Row: %s%n' ||
                         'Local Filters Count: %s',
            p0        => l_total_row_count,
            p1 		  => apex_debug.tochar( l_pagination_info.has_more_rows ),
            p2 		  => p_result.response_first_row,
            p3 		  => p_result.local_filters.count );

    end if;

    --
    -- Lastly we need to check if we have received a error response
    -- If so it creates an APEX Error and throws it.
    --
    has_error_response( p_response => p_result.responses( 1 ), p_result => p_result );

end fetch_web_source;


--=============================================================================
-- REST Source Discover Procedure for Plugin Callback Section.
-- Automatically determines the data structure of the REST source with
-- data types and conditions.
--=============================================================================
procedure discover(
    p_plugin         in            apex_plugin.t_plugin,
    p_web_source     in            apex_plugin.t_web_source,
    p_params         in            apex_plugin.t_web_source_discover_params,
    p_result         in out nocopy apex_plugin.t_web_source_discover_result
)
as
    l_web_source_operation          apex_plugin.t_web_source_operation;
    l_operation_metadata            apex_plugin.t_web_source_operation;
    l_dummy_parameters              apex_plugin.t_web_source_parameters;

    l_per_page_value                pls_integer := c_per_page_maximum;
    l_per_page_found                boolean     := false;
    l_per_page_idx                  pls_integer;
    l_time_budget                   number;
    l_odata_version                 varchar2(255);
    l_resource_path                 varchar2(32767);
    l_default_value                 varchar2(32767);
    l_has_error                     boolean;
    l_is_single_property_call		boolean;
begin

    apex_debug.enter( p_routine_name => c_scope || 'discover' );

    if apex_application.g_debug then

        apex_plugin_util.debug_web_source(
            p_plugin     => p_plugin,
            p_web_source => p_web_source );

    end if;

    l_web_source_operation :=
        apex_plugin_util.get_web_source_operation(
            p_web_source   => p_web_source,
            p_db_operation => apex_plugin.c_db_operation_fetch_rows,
            p_perform_init => true );

    l_operation_metadata := l_web_source_operation;

    l_resource_path       := p_web_source.attribute_01;
    l_default_value       := p_web_source.attribute_02;

    if l_resource_path is null then

        apex_error.add_error(
            p_message 			=> 'Error: Resource Path is not found. Please check if the resource path is given or not ',
            p_additional_info 	=> p_result.reason_phrase,
            p_display_location  => apex_error.c_inline_with_field_and_notif );

        return;

    end if;

    if not plg_odata_metadata.illegal_params_check(l_resource_path) then

        return;

    end if;

    plg_odata_metadata.get_params(
        p_resource_path => l_resource_path,
        p_default_value => l_default_value,
        p_parameters    => p_result.parameters,
        p_error         => l_has_error );

    if l_has_error then

        apex_error.add_error(
            p_message 			=> 'Error: Something went wrong with parameters',
            p_additional_info 	=> p_result.reason_phrase,
            p_display_location  => apex_error.c_inline_with_field_and_notif
        );
        return;

    end if;

    l_resource_path :=
        plg_odata_metadata.replace_params_resource_path(
            p_resource_path         => l_resource_path,
            p_web_source_parameters => p_result.parameters );

    l_resource_path := regexp_replace( l_resource_path, '\A\/*', '' );
    l_resource_path := regexp_replace( l_resource_path, '\/*\Z', '' );

    l_web_source_operation.url := regexp_replace( l_web_source_operation.url, '\/*\Z', '' );

    l_operation_metadata.url := sys.utl_url.escape( l_web_source_operation.url || '/$metadata', false, 'AL32UTF8' );

    l_web_source_operation.url := sys.utl_url.escape( l_web_source_operation.url || '/' || l_resource_path, false, 'AL32UTF8' );

    if apex_application.g_debug then

        apex_debug.info(
            p_message => 'Resource Path:		%s%n' ||
                         'Metadata URL:		%s%n' ||
                         'Source URL:		%s%n',
            p0        => l_resource_path,
            p1 		  => l_operation_metadata.url,
            p2 		  => l_web_source_operation.url );

    end if;

    apex_plugin_util.make_rest_request(
        p_web_source_operation => l_web_source_operation,
        p_bypass_cache         => false,
        p_response             => p_result.sample_response,
        p_response_parameters  => l_dummy_parameters,
        p_time_budget          => l_time_budget );


    p_result.response_headers   := apex_web_service.g_headers;
    p_result.status_code        := apex_web_service.g_status_code;
    p_result.reason_phrase      := apex_web_service.g_reason_phrase;

    if apex_application.g_debug then

        apex_debug.info(
            p_message => 'Web Service Status Code:    %s%n' ||
                         'Web Service Reason Phrase:  %s',
            p0        => apex_web_service.g_status_code,
            p1        => apex_web_service.g_reason_phrase );

    end if;

    if p_result.status_code <> 200 then

        apex_error.add_error(
            p_message 			=> 'HTTP ERROR ' || p_result.status_code || ': ' || p_result.reason_phrase,
            p_additional_info 	=> p_result.reason_phrase,
            p_display_location  => apex_error.c_inline_with_field_and_notif
        );
        return;

    end if;

    for i in 1 .. p_result.response_headers.count
    loop

        continue when lower(p_result.response_headers(i).name) not in (c_discover_header_version_lc, c_discover_header_version2_lc);

        apex_debug.info( p_message => p_result.response_headers( i ).name || ': ' || p_result.response_headers( i ).value );
        l_odata_version := replace( p_result.response_headers( i ).value,';' );

    end loop;


    -- Check if ODATA version is supported ( > 4 )
    if l_odata_version is null

           or substr( l_odata_version, 1, instr( l_odata_version, '.') -1 ) < 4
           or ( instr( l_odata_version, '.') = 0 and to_number( l_odata_version ) < 4 )

    then
        p_result.status_code 	:= 400;
        p_result.reason_phrase 	:= 'Odata-Version muss be at least 4.0!';

        apex_error.add_error (
            p_message 			=> 'HTTP ERROR ' || p_result.status_code || ': ' || p_result.reason_phrase,
            p_additional_info 	=> p_result.reason_phrase,
            p_display_location  => apex_error.c_inline_with_field_and_notif
        );
        return;

    end if;

    if plg_odata_metadata.is_raw_value_call( l_resource_path ) then

        return;

    end if;

    plg_odata_metadata.odata_extract_metadata(
        p_web_source_operation 		=> l_operation_metadata,
        p_resource_path        		=> l_resource_path,
        p_data_profile_cols    		=> p_result.profile_columns,
        p_is_single_property_call	=> l_is_single_property_call
    );

    if l_is_single_property_call then

        p_result.row_selector := '';
        p_result.is_single_row := true;
        p_result.data_format := apex_plugin.c_format_json;

    else

        p_result.row_selector 	:= plg_odata_metadata.get_row_selector( p_result.sample_response );
        p_result.data_format 	:= apex_plugin.c_format_json;
        p_result.is_single_row 	:= p_result.row_selector is null;

    end if;

    -- Set Default Value for Custom Attributes
    p_result.attribute_03 := c_plg_basic_options;

    apex_debug.trace( p_message => 'End Discovery' );

end discover;

end plg_odata_connector;
/
