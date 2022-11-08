create or replace package plg_odata_connector as
-------------------------------------------------------------------------------
-- Name: plg_odata_connector.pks
-- Copyright (c) 2012, 2022 Oracle and/or its affiliates.
-- Licensed under the Universal Permissive License v 1.0
-- as shown at https://oss.oracle.com/licenses/upl/
-------------------------------------------------------------------------------

--=============================================================================
-- Constants
--=============================================================================
c_per_page_maximum                 constant pls_integer   := 180;
c_regex_all_charnum                constant varchar2(65)  := '[abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890_]';
--
c_limit_param_name                 constant varchar2(4)   := '$top';
c_offset_param_name                constant varchar2(5)   := '$skip';
c_filter_param_name                constant varchar2(8)   := '$filter';
c_orderby_param_name               constant varchar2(8)   := '$orderby';
c_count_param_name                 constant varchar2(6)   := '$count';
c_colums_param_name                constant varchar2(7)   := '$select';
c_row_search_param_name            constant varchar2(7)   := '$search';
--
c_discover_header_version_lc       constant varchar2(13)  := 'odata-version';
c_discover_header_version2_lc      constant varchar2(18)  := 'dataserviceversion';
--
c_plugin_opt_query                 constant varchar2(12)  := 'option_query';
c_plugin_opt_filter                constant varchar2(13)  := 'option_filter';
c_plugin_opt_count                 constant varchar2(12)  := 'option_count';
c_plugin_opt_orderby               constant varchar2(14)  := 'option_orderby';
c_plugin_opt_search                constant varchar2(14)  := 'option_search';
c_plugin_opt_select                constant varchar2(14)  := 'option_select';
c_plugin_opt_client_paging  	   constant varchar2(40)  := 'option_client_driven_paging';
--
c_plugin_opt_filter_lower          constant varchar2(12)  := 'filter_lower';
c_plugin_opt_filter_upper          constant varchar2(12)  := 'filter_upper';
c_plugin_opt_filter_in             constant varchar2(9)   := 'filter_in';
c_plugin_opt_filter_contains       constant varchar2(15)  := 'filter_contains';
c_plugin_opt_filter_startswith     constant varchar2(17)  := 'filter_startswith';
c_plugin_opt_filter_endswith       constant varchar2(15)  := 'filter_endswith';
--
c_plugin_opt_count_inline          constant varchar2(17)  := 'count_true_inline';
c_plugin_opt_count_legacy          constant varchar2(21)  := 'count_allpages_inline';
c_plugin_opt_count_not_inline      constant varchar2(16)  := 'count_not_inline';
--
c_count_method_none                constant pls_integer   := 0;
c_count_method_inline              constant pls_integer   := 1;
c_count_method_legacy              constant pls_integer   := 2;
c_count_method_not_inline          constant pls_integer   := 3;
--
c_forbidden_param_list             constant varchar2(79)  := '$expand,$select,$orderby,$count,$filter,$skip,$top,$skiptoken,$nextlink,$search';
--
c_request_body_content_type        constant varchar2(10)  := 'text/plain';
c_request_body_param_name          constant varchar2(6)   := '$query';
--
c_plg_basic_options 			   constant varchar2(100) := 'option_orderby:option_select:option_search:option_client_driven_paging';
--=============================================================================
-- Global Types
--=============================================================================
type t_plugin_attributes is record(
    count_method       number,
    --
    query_req_body     boolean default false,
    --
    filter_in          boolean default false,
    filter_contains    boolean default false,
    filter_startswith  boolean default false,
    filter_endswith    boolean default false,
    filter_lower       boolean default false,
    filter_upper       boolean default false,
    --
    orderby            boolean default false,
    --
    filter_select      boolean default false,
    --
    row_search         boolean default false,
    client_pagination  boolean default false );

--=============================================================================
-- Check whether the response contains an error message in the format of
-- ODATA 4.01 and return it.
--=============================================================================
procedure has_error_response(
    p_response      in            clob,
    p_result        in out nocopy apex_plugin.t_web_source_fetch_result );

--=============================================================================
-- REST Source Capabilities Procedure for Plugin Callback Section.
-- Determines which options are supported.
--=============================================================================
procedure capabilities_web_source(
    p_plugin        in            apex_plugin.t_plugin,
    p_result        in out nocopy apex_plugin.t_web_source_capabilities );

--=============================================================================
-- REST Source Fetch Procedure for Plugin Callback Section.
-- Fetches the data from the source and returns it to the APEX Engine.
--=============================================================================
procedure fetch_web_source(
    p_plugin     	in            apex_plugin.t_plugin,
    p_web_source 	in            apex_plugin.t_web_source,
    p_params     	in            apex_plugin.t_web_source_fetch_params,
    p_result     	in out nocopy apex_plugin.t_web_source_fetch_result	);

--=============================================================================
-- REST Source Discover Procedure for Plugin Callback Section.
-- Automatically determines the data structure of the REST source with
-- data types and conditions.
--=============================================================================
procedure discover(
    p_plugin        in            apex_plugin.t_plugin,
    p_web_source    in            apex_plugin.t_web_source,
    p_params        in            apex_plugin.t_web_source_discover_params,
    p_result        in out nocopy apex_plugin.t_web_source_discover_result );

end plg_odata_connector;
/
