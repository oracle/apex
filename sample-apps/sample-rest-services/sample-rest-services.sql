--------------------------------------------------------------------------------
-- Name: Sample REST Services
-- Copyright (c) 2012, 2025 Oracle and/or its affiliates.
-- Licensed under the Universal Permissive License v 1.0
-- as shown at https://oss.oracle.com/licenses/upl/
--------------------------------------------------------------------------------
prompt --application/set_environment
set define off verify off feedback off
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>20
,p_default_application_id=>7930
,p_default_id_offset=>15349786538206521
,p_default_owner=>'ORACLE'
);
end;
/
 
prompt APPLICATION 7930 - Sample REST Services
--
-- Application Export:
--   Application:     7930
--   Name:            Sample REST Services
--   Exported By:     ORACLE
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     37
--       Items:                   55
--       Computations:             1
--       Validations:              2
--       Processes:               28
--       Regions:                125
--       Buttons:                 83
--       Dynamic Actions:         15
--     Shared Components:
--       Logic:
--         Items:                  1
--         App Settings:           5
--         Build Options:          3
--       Navigation:
--         Lists:                  9
--         Breadcrumbs:            1
--           Entries:             30
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   5
--         Plug-ins:               1
--       PWA:
--       Globalization:
--         Messages:              10
--       Reports:
--       E-Mail:
--         Templates:              1
--     Supporting Objects:  Included
--       Install scripts:          5
--   Version:         24.2.0
--   Instance ID:     743329105414563
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'ORACLE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Sample REST Services')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'SAMPLE-REST-SERVICES')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'05B9E120A271E945304560BECB549D85DEE17C5ED6456E0EC9639844218CDDEA'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(94274128250483475)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Sample REST Services'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'24.2.1'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Sample REST Services'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>152
,p_version_scn=>75158722
,p_print_server_type=>'NATIVE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
,p_copyright_banner=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Name: #APP_NAME#',
'Copyright (c) 2012, #YEAR# Oracle and/or its affiliates.',
'Licensed under the Universal Permissive License v 1.0',
'as shown at https://oss.oracle.com/licenses/upl/'))
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(7930)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(94274941999483477)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(94276171256483492)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/moviedb_api_key
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(15655119485874726)
,p_name=>'MovieDb API Key'
,p_static_id=>'moviedb_api_key'
,p_authentication_type=>'HTTP_QUERY_STRING'
,p_prompt_on_install=>false
);
end;
/
prompt --workspace/remote_servers/odata_flexible_remote_server
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(17028453717544882)
,p_name=>'OData Flexible Remote Server'
,p_static_id=>'OData_Flexible_Remote_Server'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('OData_Flexible_Remote_Server'),'#host#')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('OData_Flexible_Remote_Server'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('OData_Flexible_Remote_Server'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('OData_Flexible_Remote_Server'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('OData_Flexible_Remote_Server'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('OData_Flexible_Remote_Server'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('OData_Flexible_Remote_Server'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('OData_Flexible_Remote_Server'),'')
,p_configuration_procedure=>'configure_odata_remote_server'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'procedure configure_odata_remote_server(',
'   p_info   in apex_plugin.t_remote_server_info,',
'   p_config in out apex_plugin.t_remote_server_config',
')',
'is',
'begin',
'',
'   p_config.base_url := apex_app_setting.get_value(p_name => ''ODATA_URL'');',
'',
'exception',
'   when no_data_found then',
'      p_config.base_url := null;',
'end;',
''))
);
end;
/
prompt --workspace/remote_servers/flexible_remote_servers
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(18529060167393527)
,p_name=>'flexible remote servers'
,p_static_id=>'flexible_remote_servers'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('flexible_remote_servers'),'#host#')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('flexible_remote_servers'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('flexible_remote_servers'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('flexible_remote_servers'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('flexible_remote_servers'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('flexible_remote_servers'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('flexible_remote_servers'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('flexible_remote_servers'),'')
,p_configuration_procedure=>'configure_remote_server'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'procedure configure_remote_server(',
'   p_info   in apex_plugin.t_remote_server_info,',
'   p_config in out apex_plugin.t_remote_server_config',
')',
'is',
'begin',
'   p_config.base_url := apex_app_setting.get_value(p_name => ''REMOTE_SERVER_BASE_URL'') ',
'                        || apex_app_setting.get_value(p_name => ''REMOTE_SERVER_SCHEMA_ALIAS'');',
'',
'exception',
'   when others then',
'      p_config.base_url := null;',
'',
'end;',
''))
);
end;
/
prompt --workspace/remote_servers/api_themoviedb_org_3_search
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(19597746759082809)
,p_name=>'api-themoviedb-org-3-search'
,p_static_id=>'api_themoviedb_org_3_search'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('api_themoviedb_org_3_search'),'https://api.themoviedb.org/3/search/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('api_themoviedb_org_3_search'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('api_themoviedb_org_3_search'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('api_themoviedb_org_3_search'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('api_themoviedb_org_3_search'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('api_themoviedb_org_3_search'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('api_themoviedb_org_3_search'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('api_themoviedb_org_3_search'),'')
);
end;
/
prompt --workspace/remote_servers/api_themoviedb_org_3_2
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(20780987798122564)
,p_name=>'api-themoviedb-org-3 (2)'
,p_static_id=>'api_themoviedb_org_3_2_'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('api_themoviedb_org_3_2_'),'https://api.themoviedb.org/3')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('api_themoviedb_org_3_2_'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('api_themoviedb_org_3_2_'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('api_themoviedb_org_3_2_'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('api_themoviedb_org_3_2_'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('api_themoviedb_org_3_2_'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('api_themoviedb_org_3_2_'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('api_themoviedb_org_3_2_'),'')
);
end;
/
prompt --application/shared_components/data_profiles/new
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(94519930053963392)
,p_name=>'NEW'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(94520143011963392)
,p_data_profile_id=>wwv_flow_imp.id(94519930053963392)
,p_name=>'EMPNO'
,p_sequence=>1
,p_is_primary_key=>true
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'empno'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(94520506450963392)
,p_data_profile_id=>wwv_flow_imp.id(94519930053963392)
,p_name=>'ENAME'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'ename'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(94520733706963392)
,p_data_profile_id=>wwv_flow_imp.id(94519930053963392)
,p_name=>'JOB'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'job'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(94521077136963392)
,p_data_profile_id=>wwv_flow_imp.id(94519930053963392)
,p_name=>'MGR'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'mgr'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(94521340220963392)
,p_data_profile_id=>wwv_flow_imp.id(94519930053963392)
,p_name=>'HIREDATE'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_has_time_zone=>true
,p_selector=>'hiredate'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(94521640195963392)
,p_data_profile_id=>wwv_flow_imp.id(94519930053963392)
,p_name=>'SAL'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'sal'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(94522010407963392)
,p_data_profile_id=>wwv_flow_imp.id(94519930053963392)
,p_name=>'COMM'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'comm'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(94522250453963393)
,p_data_profile_id=>wwv_flow_imp.id(94519930053963392)
,p_name=>'DEPTNO'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'deptno'
);
end;
/
prompt --application/shared_components/data_profiles/prod_odata
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(95467700418104477)
,p_name=>'PROD_ODATA'
,p_format=>'JSON'
,p_row_selector=>'value'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(95467899512104478)
,p_data_profile_id=>wwv_flow_imp.id(95467700418104477)
,p_name=>'PRODUCTID'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'ProductID'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(95468186224104478)
,p_data_profile_id=>wwv_flow_imp.id(95467700418104477)
,p_name=>'UNITPRICE'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'UnitPrice'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(95468475880104478)
,p_data_profile_id=>wwv_flow_imp.id(95467700418104477)
,p_name=>'CATEGORYID'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'CategoryID'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(95468738625104478)
,p_data_profile_id=>wwv_flow_imp.id(95467700418104477)
,p_name=>'SUPPLIERID'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'SupplierID'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(95469092566104478)
,p_data_profile_id=>wwv_flow_imp.id(95467700418104477)
,p_name=>'PRODUCTNAME'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'ProductName'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(95469365090104479)
,p_data_profile_id=>wwv_flow_imp.id(95467700418104477)
,p_name=>'DISCONTINUED'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'Discontinued'
,p_remote_data_type=>'boolean'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(95469662630104479)
,p_data_profile_id=>wwv_flow_imp.id(95467700418104477)
,p_name=>'REORDERLEVEL'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'ReorderLevel'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(95469987798104479)
,p_data_profile_id=>wwv_flow_imp.id(95467700418104477)
,p_name=>'UNITSINSTOCK'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'UnitsInStock'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(95470296084104479)
,p_data_profile_id=>wwv_flow_imp.id(95467700418104477)
,p_name=>'UNITSONORDER'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'UnitsOnOrder'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(95470534099104479)
,p_data_profile_id=>wwv_flow_imp.id(95467700418104477)
,p_name=>'QUANTITYPERUNIT'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'QuantityPerUnit'
,p_remote_data_type=>'string'
);
end;
/
prompt --application/shared_components/data_profiles/eba_rest_movies
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(96292647239875502)
,p_name=>'EBA_REST_MOVIES'
,p_format=>'JSON'
,p_has_header_row=>false
,p_row_selector=>'results'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96292847807875505)
,p_data_profile_id=>wwv_flow_imp.id(96292647239875502)
,p_name=>'ID'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'id'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96293192082875505)
,p_data_profile_id=>wwv_flow_imp.id(96292647239875502)
,p_name=>'ADULT'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'adult'
,p_remote_data_type=>'boolean'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96293451522875506)
,p_data_profile_id=>wwv_flow_imp.id(96292647239875502)
,p_name=>'TITLE'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'title'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96293749107875506)
,p_data_profile_id=>wwv_flow_imp.id(96292647239875502)
,p_name=>'VIDEO'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'video'
,p_remote_data_type=>'boolean'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96294080653875506)
,p_data_profile_id=>wwv_flow_imp.id(96292647239875502)
,p_name=>'OVERVIEW'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'overview'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96294402034875506)
,p_data_profile_id=>wwv_flow_imp.id(96292647239875502)
,p_name=>'GENRE_IDS'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'ARRAY'
,p_has_time_zone=>false
,p_selector=>'genre_ids'
,p_remote_data_type=>'array'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96294642083875506)
,p_data_profile_id=>wwv_flow_imp.id(96292647239875502)
,p_name=>'POPULARITY'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'popularity'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96295012487875506)
,p_data_profile_id=>wwv_flow_imp.id(96292647239875502)
,p_name=>'VOTE_COUNT'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'vote_count'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96295277366875506)
,p_data_profile_id=>wwv_flow_imp.id(96292647239875502)
,p_name=>'POSTER_PATH'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'poster_path'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96295535136875506)
,p_data_profile_id=>wwv_flow_imp.id(96292647239875502)
,p_name=>'RELEASE_DATE'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_format_mask=>'YYYY"-"MM"-"DD'
,p_has_time_zone=>false
,p_selector=>'release_date'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96295834499875506)
,p_data_profile_id=>wwv_flow_imp.id(96292647239875502)
,p_name=>'VOTE_AVERAGE'
,p_sequence=>11
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'vote_average'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96296173224875506)
,p_data_profile_id=>wwv_flow_imp.id(96292647239875502)
,p_name=>'BACKDROP_PATH'
,p_sequence=>12
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'backdrop_path'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96296517938875506)
,p_data_profile_id=>wwv_flow_imp.id(96292647239875502)
,p_name=>'ORIGINAL_TITLE'
,p_sequence=>13
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'original_title'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96296812320875506)
,p_data_profile_id=>wwv_flow_imp.id(96292647239875502)
,p_name=>'ORIGINAL_LANGUAGE'
,p_sequence=>14
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'original_language'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96297067807875506)
,p_data_profile_id=>wwv_flow_imp.id(96292647239875502)
,p_name=>'GENRE_IDS2'
,p_sequence=>15
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(96294402034875506)
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'.'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18385081178009775)
,p_data_profile_id=>wwv_flow_imp.id(96292647239875502)
,p_name=>'VOTE_AVG_ROUNDED'
,p_sequence=>25
,p_column_type=>'SQL_EXPRESSION'
,p_data_type=>'NUMBER'
,p_has_time_zone=>true
,p_transform_type=>'SQL_EXPRESSION'
,p_expression1=>'ROUND(VOTE_AVERAGE, 1)'
);
end;
/
prompt --application/shared_components/data_profiles/eba_rest_department
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(96329498526973668)
,p_name=>'EBA_REST_DEPARTMENT'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96329651893973674)
,p_data_profile_id=>wwv_flow_imp.id(96329498526973668)
,p_name=>'DEPTNO'
,p_sequence=>1
,p_is_primary_key=>true
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'deptno'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96329999656973674)
,p_data_profile_id=>wwv_flow_imp.id(96329498526973668)
,p_name=>'DNAME'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'dname'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96330314901973674)
,p_data_profile_id=>wwv_flow_imp.id(96329498526973668)
,p_name=>'LOC'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'loc'
);
end;
/
prompt --application/shared_components/data_profiles/eba_movie_plug
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(96604717442449025)
,p_name=>'EBA_MOVIE_PLUG'
,p_format=>'JSON'
,p_row_selector=>'results'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96604834971449027)
,p_data_profile_id=>wwv_flow_imp.id(96604717442449025)
,p_name=>'ID'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'id'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96605182304449028)
,p_data_profile_id=>wwv_flow_imp.id(96604717442449025)
,p_name=>'ADULT'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'adult'
,p_remote_data_type=>'boolean'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96605496797449028)
,p_data_profile_id=>wwv_flow_imp.id(96604717442449025)
,p_name=>'TITLE'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'title'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96605731140449028)
,p_data_profile_id=>wwv_flow_imp.id(96604717442449025)
,p_name=>'VIDEO'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'video'
,p_remote_data_type=>'boolean'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96606116695449028)
,p_data_profile_id=>wwv_flow_imp.id(96604717442449025)
,p_name=>'OVERVIEW'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'overview'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96606387753449028)
,p_data_profile_id=>wwv_flow_imp.id(96604717442449025)
,p_name=>'GENRE_IDS'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'ARRAY'
,p_has_time_zone=>false
,p_selector=>'genre_ids'
,p_remote_data_type=>'array'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96606655736449028)
,p_data_profile_id=>wwv_flow_imp.id(96604717442449025)
,p_name=>'POPULARITY'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'popularity'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96607008998449028)
,p_data_profile_id=>wwv_flow_imp.id(96604717442449025)
,p_name=>'VOTE_COUNT'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'vote_count'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96607280855449028)
,p_data_profile_id=>wwv_flow_imp.id(96604717442449025)
,p_name=>'POSTER_PATH'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'poster_path'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96607543009449028)
,p_data_profile_id=>wwv_flow_imp.id(96604717442449025)
,p_name=>'RELEASE_DATE'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_format_mask=>'YYYY"-"MM"-"DD'
,p_has_time_zone=>false
,p_selector=>'release_date'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96607896027449028)
,p_data_profile_id=>wwv_flow_imp.id(96604717442449025)
,p_name=>'VOTE_AVERAGE'
,p_sequence=>11
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'vote_average'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96608196732449028)
,p_data_profile_id=>wwv_flow_imp.id(96604717442449025)
,p_name=>'BACKDROP_PATH'
,p_sequence=>12
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'backdrop_path'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96608454778449028)
,p_data_profile_id=>wwv_flow_imp.id(96604717442449025)
,p_name=>'ORIGINAL_TITLE'
,p_sequence=>13
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'original_title'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96608785945449029)
,p_data_profile_id=>wwv_flow_imp.id(96604717442449025)
,p_name=>'ORIGINAL_LANGUAGE'
,p_sequence=>14
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'original_language'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96609048013449029)
,p_data_profile_id=>wwv_flow_imp.id(96604717442449025)
,p_name=>'GENRE_IDS2'
,p_sequence=>15
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(96606387753449028)
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'.'
,p_remote_data_type=>'number'
);
end;
/
prompt --application/shared_components/data_profiles/eba_rest_employee_invoke
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(96617775063252433)
,p_name=>'EBA_REST_EMPLOYEE_INVOKE'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96617973640252437)
,p_data_profile_id=>wwv_flow_imp.id(96617775063252433)
,p_name=>'JOB'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'job'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96618262897252438)
,p_data_profile_id=>wwv_flow_imp.id(96617775063252433)
,p_name=>'MGR'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'mgr'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96618573799252438)
,p_data_profile_id=>wwv_flow_imp.id(96617775063252433)
,p_name=>'SAL'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'sal'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96618909527252438)
,p_data_profile_id=>wwv_flow_imp.id(96617775063252433)
,p_name=>'COMM'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'comm'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96619170751252438)
,p_data_profile_id=>wwv_flow_imp.id(96617775063252433)
,p_name=>'EMPNO'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'empno'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96619463382252438)
,p_data_profile_id=>wwv_flow_imp.id(96617775063252433)
,p_name=>'ENAME'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'ename'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96619799723252438)
,p_data_profile_id=>wwv_flow_imp.id(96617775063252433)
,p_name=>'DEPTNO'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'deptno'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96620064363252438)
,p_data_profile_id=>wwv_flow_imp.id(96617775063252433)
,p_name=>'HIREDATE'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY"-"MM"-"DD"T"HH24":"MI:SS.FF9TZR'
,p_has_time_zone=>true
,p_selector=>'hiredate'
,p_remote_data_type=>'string'
);
end;
/
prompt --application/shared_components/data_profiles/eba_rest_employees
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(96712392525489461)
,p_name=>'EBA_REST_EMPLOYEES'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96712590505489465)
,p_data_profile_id=>wwv_flow_imp.id(96712392525489461)
,p_name=>'RN'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'rn'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96712916645489465)
,p_data_profile_id=>wwv_flow_imp.id(96712392525489461)
,p_name=>'JOB'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'job'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96713214237489465)
,p_data_profile_id=>wwv_flow_imp.id(96712392525489461)
,p_name=>'MGR'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'mgr'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96713473244489465)
,p_data_profile_id=>wwv_flow_imp.id(96712392525489461)
,p_name=>'SAL'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'sal'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96713789289489465)
,p_data_profile_id=>wwv_flow_imp.id(96712392525489461)
,p_name=>'COMM'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'comm'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96714076463489465)
,p_data_profile_id=>wwv_flow_imp.id(96712392525489461)
,p_name=>'EMPNO'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'empno'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96714354403489465)
,p_data_profile_id=>wwv_flow_imp.id(96712392525489461)
,p_name=>'ENAME'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'ename'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96714644425489465)
,p_data_profile_id=>wwv_flow_imp.id(96712392525489461)
,p_name=>'LINKS'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'ARRAY'
,p_has_time_zone=>false
,p_selector=>'links'
,p_remote_data_type=>'array'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96714971104489465)
,p_data_profile_id=>wwv_flow_imp.id(96712392525489461)
,p_name=>'DEPTNO'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'deptno'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96715279699489466)
,p_data_profile_id=>wwv_flow_imp.id(96712392525489461)
,p_name=>'HIREDATE'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY"-"MM"-"DD"T"HH24":"MI:SS.FF9TZR'
,p_has_time_zone=>true
,p_selector=>'hiredate'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96715598042489466)
,p_data_profile_id=>wwv_flow_imp.id(96712392525489461)
,p_name=>'REL'
,p_sequence=>11
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(96714644425489465)
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'rel'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(96715828970489466)
,p_data_profile_id=>wwv_flow_imp.id(96712392525489461)
,p_name=>'HREF'
,p_sequence=>12
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(96714644425489465)
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'href'
,p_remote_data_type=>'string'
);
end;
/
prompt --application/shared_components/data_profiles/eba_rest_pagination
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(97132180668595591)
,p_name=>'EBA_REST_PAGINATION'
,p_format=>'JSON'
,p_has_header_row=>false
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100044701956165322)
,p_data_profile_id=>wwv_flow_imp.id(97132180668595591)
,p_name=>'ID'
,p_sequence=>0
,p_is_primary_key=>true
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'id'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97132384650595593)
,p_data_profile_id=>wwv_flow_imp.id(97132180668595591)
,p_name=>'SAL'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'sal'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97132631587595593)
,p_data_profile_id=>wwv_flow_imp.id(97132180668595591)
,p_name=>'DEPT'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'dept'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97132927593595593)
,p_data_profile_id=>wwv_flow_imp.id(97132180668595591)
,p_name=>'NAME'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'name'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97133264433595593)
,p_data_profile_id=>wwv_flow_imp.id(97132180668595591)
,p_name=>'RNUM'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'rnum'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97133592269595593)
,p_data_profile_id=>wwv_flow_imp.id(97132180668595591)
,p_name=>'BONUS'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'bonus'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97133917289595593)
,p_data_profile_id=>wwv_flow_imp.id(97132180668595591)
,p_name=>'STATUS'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'status'
,p_remote_data_type=>'string'
);
end;
/
prompt --application/shared_components/data_profiles/eba_rest_purchase_order
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(97220260886071489)
,p_name=>'EBA_REST_PURCHASE_ORDER'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97220462353071491)
,p_data_profile_id=>wwv_flow_imp.id(97220260886071489)
,p_name=>'PO_USER'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'po.User'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97220782745071491)
,p_data_profile_id=>wwv_flow_imp.id(97220260886071489)
,p_name=>'PO_PONUMBER'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'po.PONumber'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97221072508071491)
,p_data_profile_id=>wwv_flow_imp.id(97220260886071489)
,p_name=>'PO_LINEITEMS'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'ARRAY'
,p_has_time_zone=>false
,p_selector=>'po.LineItems'
,p_remote_data_type=>'array'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97221394573071491)
,p_data_profile_id=>wwv_flow_imp.id(97220260886071489)
,p_name=>'PO_REFERENCE'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'po.Reference'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97221692303071491)
,p_data_profile_id=>wwv_flow_imp.id(97220260886071489)
,p_name=>'PO_REQUESTOR'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'po.Requestor'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97221974876071491)
,p_data_profile_id=>wwv_flow_imp.id(97220260886071489)
,p_name=>'PO_COSTCENTER'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'po.CostCenter'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97222231485071491)
,p_data_profile_id=>wwv_flow_imp.id(97220260886071489)
,p_name=>'PO_SHIPPINGINSTRUCTIONS_NAME'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'po.ShippingInstructions.name'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97222536069071491)
,p_data_profile_id=>wwv_flow_imp.id(97220260886071489)
,p_name=>'PO_SHIPPINGINSTRUCTIONS_PHONE'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'ARRAY'
,p_has_time_zone=>false
,p_selector=>'po.ShippingInstructions.Phone'
,p_remote_data_type=>'array'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97222843629071492)
,p_data_profile_id=>wwv_flow_imp.id(97220260886071489)
,p_name=>'PO_SHIPPINGINSTRUCTIONS_ADDRESS_CITY'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'po.ShippingInstructions.Address.city'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97223216551071492)
,p_data_profile_id=>wwv_flow_imp.id(97220260886071489)
,p_name=>'PO_SHIPPINGINSTRUCTIONS_ADDRESS_STATE'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'po.ShippingInstructions.Address.state'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97223518532071492)
,p_data_profile_id=>wwv_flow_imp.id(97220260886071489)
,p_name=>'PO_SHIPPINGINSTRUCTIONS_ADDRESS_COUNTY'
,p_sequence=>11
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'po.ShippingInstructions.Address.county'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97223742220071492)
,p_data_profile_id=>wwv_flow_imp.id(97220260886071489)
,p_name=>'PO_SHIPPINGINSTRUCTIONS_ADDRESS_STREET'
,p_sequence=>12
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'po.ShippingInstructions.Address.street'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97224039273071492)
,p_data_profile_id=>wwv_flow_imp.id(97220260886071489)
,p_name=>'PO_SHIPPINGINSTRUCTIONS_ADDRESS_COUNTRY'
,p_sequence=>13
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'po.ShippingInstructions.Address.country'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97224331465071492)
,p_data_profile_id=>wwv_flow_imp.id(97220260886071489)
,p_name=>'PO_SHIPPINGINSTRUCTIONS_ADDRESS_ZIPCODE'
,p_sequence=>14
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'po.ShippingInstructions.Address.zipCode'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97224708422071492)
,p_data_profile_id=>wwv_flow_imp.id(97220260886071489)
,p_name=>'PO_SHIPPINGINSTRUCTIONS_ADDRESS_POSTCODE'
,p_sequence=>15
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'po.ShippingInstructions.Address.postcode'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97224952150071493)
,p_data_profile_id=>wwv_flow_imp.id(97220260886071489)
,p_name=>'PO_SPECIAL_INSTRUCTIONS'
,p_sequence=>16
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'po."Special Instructions"'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97225303633071493)
,p_data_profile_id=>wwv_flow_imp.id(97220260886071489)
,p_name=>'PART_UPCCODE'
,p_sequence=>17
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(97221072508071491)
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'Part.UPCCode'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97225560868071493)
,p_data_profile_id=>wwv_flow_imp.id(97220260886071489)
,p_name=>'PART_UNITPRICE'
,p_sequence=>18
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(97221072508071491)
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'Part.UnitPrice'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97225872686071493)
,p_data_profile_id=>wwv_flow_imp.id(97220260886071489)
,p_name=>'PART_DESCRIPTION'
,p_sequence=>19
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(97221072508071491)
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'Part.Description'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97226122039071493)
,p_data_profile_id=>wwv_flow_imp.id(97220260886071489)
,p_name=>'QUANTITY'
,p_sequence=>20
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(97221072508071491)
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'Quantity'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97226496470071493)
,p_data_profile_id=>wwv_flow_imp.id(97220260886071489)
,p_name=>'ITEMNUMBER'
,p_sequence=>21
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(97221072508071491)
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'ItemNumber'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97226801309071493)
,p_data_profile_id=>wwv_flow_imp.id(97220260886071489)
,p_name=>'TYPE'
,p_sequence=>22
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(97222536069071491)
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'type'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97227095541071493)
,p_data_profile_id=>wwv_flow_imp.id(97220260886071489)
,p_name=>'NUMBER_'
,p_sequence=>23
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(97222536069071491)
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'number'
,p_remote_data_type=>'string'
);
end;
/
prompt --application/shared_components/data_profiles/eba_rest_orders
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(97409095293480085)
,p_name=>'EBA_REST_ORDERS'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97409230649480090)
,p_data_profile_id=>wwv_flow_imp.id(97409095293480085)
,p_name=>'ORDER_ID'
,p_sequence=>1
,p_is_primary_key=>true
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'order_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97409588661480090)
,p_data_profile_id=>wwv_flow_imp.id(97409095293480085)
,p_name=>'ORDER_DATETIME'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'order_datetime'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97409905586480090)
,p_data_profile_id=>wwv_flow_imp.id(97409095293480085)
,p_name=>'CUSTOMER_ID'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'customer_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97410205172480090)
,p_data_profile_id=>wwv_flow_imp.id(97409095293480085)
,p_name=>'ORDER_STATUS'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'order_status'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97410457120480090)
,p_data_profile_id=>wwv_flow_imp.id(97409095293480085)
,p_name=>'STORE_ID'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'store_id'
);
end;
/
prompt --application/shared_components/data_profiles/eba_rest_stores
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(97413067277508068)
,p_name=>'EBA_REST_STORES'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97413272921508068)
,p_data_profile_id=>wwv_flow_imp.id(97413067277508068)
,p_name=>'STORE_ID'
,p_sequence=>1
,p_is_primary_key=>true
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'store_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97413612829508068)
,p_data_profile_id=>wwv_flow_imp.id(97413067277508068)
,p_name=>'STORE_NAME'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'store_name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97413900681508068)
,p_data_profile_id=>wwv_flow_imp.id(97413067277508068)
,p_name=>'WEB_ADDRESS'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'web_address'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97414207864508068)
,p_data_profile_id=>wwv_flow_imp.id(97413067277508068)
,p_name=>'PHYSICAL_ADDRESS'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'physical_address'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97414502873508068)
,p_data_profile_id=>wwv_flow_imp.id(97413067277508068)
,p_name=>'LATITUDE'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'latitude'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97414756384508068)
,p_data_profile_id=>wwv_flow_imp.id(97413067277508068)
,p_name=>'LONGITUDE'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'longitude'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97415024529508068)
,p_data_profile_id=>wwv_flow_imp.id(97413067277508068)
,p_name=>'LOGO'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'logo'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97415394292508068)
,p_data_profile_id=>wwv_flow_imp.id(97413067277508068)
,p_name=>'LOGO_MIME_TYPE'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'logo_mime_type'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97415720309508068)
,p_data_profile_id=>wwv_flow_imp.id(97413067277508068)
,p_name=>'LOGO_FILENAME'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'logo_filename'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97415970616508068)
,p_data_profile_id=>wwv_flow_imp.id(97413067277508068)
,p_name=>'LOGO_CHARSET'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'logo_charset'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97416304092508069)
,p_data_profile_id=>wwv_flow_imp.id(97413067277508068)
,p_name=>'LOGO_LAST_UPDATED'
,p_sequence=>11
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_has_time_zone=>true
,p_selector=>'logo_last_updated'
);
end;
/
prompt --application/shared_components/data_profiles/eba_rest_employee_data
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(97612894991111857)
,p_name=>'EBA_REST_EMPLOYEE_DATA'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97613023437111860)
,p_data_profile_id=>wwv_flow_imp.id(97612894991111857)
,p_name=>'JOB'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'job'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97613399949111861)
,p_data_profile_id=>wwv_flow_imp.id(97612894991111857)
,p_name=>'MGR'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'mgr'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97613663625111861)
,p_data_profile_id=>wwv_flow_imp.id(97612894991111857)
,p_name=>'SAL'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'sal'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97613971514111861)
,p_data_profile_id=>wwv_flow_imp.id(97612894991111857)
,p_name=>'COMM'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'comm'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97614284172111861)
,p_data_profile_id=>wwv_flow_imp.id(97612894991111857)
,p_name=>'EMPNO'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'empno'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97614594877111861)
,p_data_profile_id=>wwv_flow_imp.id(97612894991111857)
,p_name=>'ENAME'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'ename'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97614886793111861)
,p_data_profile_id=>wwv_flow_imp.id(97612894991111857)
,p_name=>'DEPTNO'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'deptno'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97615178246111861)
,p_data_profile_id=>wwv_flow_imp.id(97612894991111857)
,p_name=>'HIREDATE'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY"-"MM"-"DD"T"HH24":"MI:SS.FF9TZR'
,p_has_time_zone=>true
,p_selector=>'hiredate'
,p_remote_data_type=>'string'
);
end;
/
prompt --application/shared_components/data_profiles/eba_rest_employee_invokeapi
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(97616502399198490)
,p_name=>'EBA_REST_EMPLOYEE_INVOKEAPI'
,p_format=>'JSON'
,p_has_header_row=>false
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97616670369198490)
,p_data_profile_id=>wwv_flow_imp.id(97616502399198490)
,p_name=>'JOB'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'job'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97616922808198490)
,p_data_profile_id=>wwv_flow_imp.id(97616502399198490)
,p_name=>'MGR'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'mgr'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97617310126198490)
,p_data_profile_id=>wwv_flow_imp.id(97616502399198490)
,p_name=>'SAL'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'sal'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97617595388198490)
,p_data_profile_id=>wwv_flow_imp.id(97616502399198490)
,p_name=>'COMM'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'comm'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97617883197198491)
,p_data_profile_id=>wwv_flow_imp.id(97616502399198490)
,p_name=>'EMPNO'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'empno'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97618146975198491)
,p_data_profile_id=>wwv_flow_imp.id(97616502399198490)
,p_name=>'ENAME'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'ename'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97618453091198491)
,p_data_profile_id=>wwv_flow_imp.id(97616502399198490)
,p_name=>'DEPTNO'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'deptno'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97618803328198491)
,p_data_profile_id=>wwv_flow_imp.id(97616502399198490)
,p_name=>'HIREDATE'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY"-"MM"-"DD"T"HH24":"MI:SS.FF9TZR'
,p_has_time_zone=>true
,p_selector=>'hiredate'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97620853767240650)
,p_data_profile_id=>wwv_flow_imp.id(97616502399198490)
,p_name=>'status'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector=>'status'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97621568439243926)
,p_data_profile_id=>wwv_flow_imp.id(97616502399198490)
,p_name=>'message'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector=>'message'
);
end;
/
prompt --application/shared_components/data_profiles/eba_rest_tasks
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(99358845759770428)
,p_name=>'EBA_REST_TASKS'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99359106644770431)
,p_data_profile_id=>wwv_flow_imp.id(99358845759770428)
,p_name=>'ID'
,p_sequence=>1
,p_is_primary_key=>true
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99359323007770431)
,p_data_profile_id=>wwv_flow_imp.id(99358845759770428)
,p_name=>'PROJECT'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'project'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99359624372770431)
,p_data_profile_id=>wwv_flow_imp.id(99358845759770428)
,p_name=>'TASK_NAME'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'task_name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99359994252770431)
,p_data_profile_id=>wwv_flow_imp.id(99358845759770428)
,p_name=>'START_DATE'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_has_time_zone=>true
,p_selector=>'start_date'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99360281026770431)
,p_data_profile_id=>wwv_flow_imp.id(99358845759770428)
,p_name=>'END_DATE'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_has_time_zone=>true
,p_selector=>'end_date'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99360607867770431)
,p_data_profile_id=>wwv_flow_imp.id(99358845759770428)
,p_name=>'STATUS'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'status'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99360843439770431)
,p_data_profile_id=>wwv_flow_imp.id(99358845759770428)
,p_name=>'ASSIGNED_TO'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'assigned_to'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99361155323770431)
,p_data_profile_id=>wwv_flow_imp.id(99358845759770428)
,p_name=>'COST'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'cost'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99361480880770431)
,p_data_profile_id=>wwv_flow_imp.id(99358845759770428)
,p_name=>'BUDGET'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'budget'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99361811825770432)
,p_data_profile_id=>wwv_flow_imp.id(99358845759770428)
,p_name=>'CREATED'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'created'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99362067162770432)
,p_data_profile_id=>wwv_flow_imp.id(99358845759770428)
,p_name=>'CREATED_BY'
,p_sequence=>11
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'created_by'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99362329024770432)
,p_data_profile_id=>wwv_flow_imp.id(99358845759770428)
,p_name=>'UPDATED'
,p_sequence=>12
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'updated'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99362709253770432)
,p_data_profile_id=>wwv_flow_imp.id(99358845759770428)
,p_name=>'UPDATED_BY'
,p_sequence=>13
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'updated_by'
);
end;
/
prompt --application/shared_components/data_profiles/eba_rest_movie_synchronization
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(99753932264949277)
,p_name=>'EBA_REST_MOVIE_SYNCHRONIZATION'
,p_format=>'JSON'
,p_row_selector=>'results'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99754167946949280)
,p_data_profile_id=>wwv_flow_imp.id(99753932264949277)
,p_name=>'ID'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'id'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99754422372949280)
,p_data_profile_id=>wwv_flow_imp.id(99753932264949277)
,p_name=>'ADULT'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'adult'
,p_remote_data_type=>'boolean'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99754795664949280)
,p_data_profile_id=>wwv_flow_imp.id(99753932264949277)
,p_name=>'TITLE'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'title'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99755049985949280)
,p_data_profile_id=>wwv_flow_imp.id(99753932264949277)
,p_name=>'VIDEO'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'video'
,p_remote_data_type=>'boolean'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99755413363949280)
,p_data_profile_id=>wwv_flow_imp.id(99753932264949277)
,p_name=>'OVERVIEW'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'overview'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99755650506949280)
,p_data_profile_id=>wwv_flow_imp.id(99753932264949277)
,p_name=>'GENRE_IDS'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'ARRAY'
,p_has_time_zone=>false
,p_selector=>'genre_ids'
,p_remote_data_type=>'array'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99756012822949280)
,p_data_profile_id=>wwv_flow_imp.id(99753932264949277)
,p_name=>'POPULARITY'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'popularity'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99756233553949280)
,p_data_profile_id=>wwv_flow_imp.id(99753932264949277)
,p_name=>'VOTE_COUNT'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'vote_count'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99756617044949280)
,p_data_profile_id=>wwv_flow_imp.id(99753932264949277)
,p_name=>'POSTER_PATH'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'poster_path'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99756897216949280)
,p_data_profile_id=>wwv_flow_imp.id(99753932264949277)
,p_name=>'RELEASE_DATE'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_format_mask=>'YYYY"-"MM"-"DD'
,p_has_time_zone=>false
,p_selector=>'release_date'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99757217987949280)
,p_data_profile_id=>wwv_flow_imp.id(99753932264949277)
,p_name=>'VOTE_AVERAGE'
,p_sequence=>11
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'vote_average'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99757480621949281)
,p_data_profile_id=>wwv_flow_imp.id(99753932264949277)
,p_name=>'BACKDROP_PATH'
,p_sequence=>12
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'backdrop_path'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99757768642949281)
,p_data_profile_id=>wwv_flow_imp.id(99753932264949277)
,p_name=>'ORIGINAL_TITLE'
,p_sequence=>13
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'original_title'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99758052344949281)
,p_data_profile_id=>wwv_flow_imp.id(99753932264949277)
,p_name=>'ORIGINAL_LANGUAGE'
,p_sequence=>14
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'original_language'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(99758332155949281)
,p_data_profile_id=>wwv_flow_imp.id(99753932264949277)
,p_name=>'GENRE_IDS2'
,p_sequence=>15
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(99755650506949280)
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'.'
,p_remote_data_type=>'number'
);
end;
/
prompt --application/shared_components/data_profiles/eba_rest_employee_derived
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(100014664032004394)
,p_name=>'EBA_REST_EMPLOYEE_DERIVED'
,p_format=>'JSON'
,p_has_header_row=>false
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100014832228004395)
,p_data_profile_id=>wwv_flow_imp.id(100014664032004394)
,p_name=>'JOB'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'job'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100015124507004395)
,p_data_profile_id=>wwv_flow_imp.id(100014664032004394)
,p_name=>'MGR'
,p_sequence=>20
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'mgr'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100015513095004395)
,p_data_profile_id=>wwv_flow_imp.id(100014664032004394)
,p_name=>'SAL'
,p_sequence=>30
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'sal'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100015725907004395)
,p_data_profile_id=>wwv_flow_imp.id(100014664032004394)
,p_name=>'COMM'
,p_sequence=>40
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'comm'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100016035158004395)
,p_data_profile_id=>wwv_flow_imp.id(100014664032004394)
,p_name=>'EMPNO'
,p_sequence=>50
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'empno'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100016417184004395)
,p_data_profile_id=>wwv_flow_imp.id(100014664032004394)
,p_name=>'ENAME'
,p_sequence=>60
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'ename'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100016671064004395)
,p_data_profile_id=>wwv_flow_imp.id(100014664032004394)
,p_name=>'DEPTNO'
,p_sequence=>70
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'deptno'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100016990223004395)
,p_data_profile_id=>wwv_flow_imp.id(100014664032004394)
,p_name=>'HIREDATE'
,p_sequence=>80
,p_column_type=>'DATA'
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY"-"MM"-"DD"T"HH24":"MI:SS.FF9TZR'
,p_has_time_zone=>true
,p_selector=>'hiredate'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100019622513013230)
,p_data_profile_id=>wwv_flow_imp.id(100014664032004394)
,p_name=>'Full Salary'
,p_sequence=>85
,p_column_type=>'SQL_EXPRESSION'
,p_data_type=>'NUMBER'
,p_has_time_zone=>true
,p_is_filterable=>false
,p_transform_type=>'SQL_EXPRESSION'
,p_expression1=>'SAL + COALESCE(COMM, 0)'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100017277383004395)
,p_data_profile_id=>wwv_flow_imp.id(100014664032004394)
,p_name=>'APEX_ROW_SYNC_TIMESTAMP'
,p_sequence=>90
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'"apex$row_sync_timestamp"'
,p_remote_data_type=>'null'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100017611398004396)
,p_data_profile_id=>wwv_flow_imp.id(100014664032004394)
,p_name=>'APEX_SYNC_STEP_STATIC_ID'
,p_sequence=>100
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'"apex$sync_step_static_id"'
,p_remote_data_type=>'null'
);
end;
/
prompt --application/shared_components/data_profiles/eba_rest_product_workflows
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(100821317945377521)
,p_name=>'EBA_REST_PRODUCT_WORKFLOWS'
,p_format=>'JSON'
,p_has_header_row=>false
,p_row_selector=>'.'
,p_use_raw_json_selectors=>false
,p_is_single_row=>true
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100821451711377521)
,p_data_profile_id=>wwv_flow_imp.id(100821317945377521)
,p_name=>'PRODUCT_ID'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'product_id'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100821760729377521)
,p_data_profile_id=>wwv_flow_imp.id(100821317945377521)
,p_name=>'UNIT_PRICE'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'unit_price'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100822098348377521)
,p_data_profile_id=>wwv_flow_imp.id(100821317945377521)
,p_name=>'PRODUCT_NAME'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'product_name'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100822370033377521)
,p_data_profile_id=>wwv_flow_imp.id(100821317945377521)
,p_name=>'IMAGE_CHARSET'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'image_charset'
,p_remote_data_type=>'null'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100822704866377521)
,p_data_profile_id=>wwv_flow_imp.id(100821317945377521)
,p_name=>'PRODUCT_IMAGE'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'product_image'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100823019705377521)
,p_data_profile_id=>wwv_flow_imp.id(100821317945377521)
,p_name=>'IMAGE_FILENAME'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'image_filename'
,p_remote_data_type=>'null'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100823279262377521)
,p_data_profile_id=>wwv_flow_imp.id(100821317945377521)
,p_name=>'IMAGE_MIME_TYPE'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'image_mime_type'
,p_remote_data_type=>'null'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100823558683377522)
,p_data_profile_id=>wwv_flow_imp.id(100821317945377521)
,p_name=>'PRODUCT_DETAILS'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'product_details'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100823899425377522)
,p_data_profile_id=>wwv_flow_imp.id(100821317945377521)
,p_name=>'IMAGE_LAST_UPDATED'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'image_last_updated'
,p_remote_data_type=>'null'
);
end;
/
prompt --application/shared_components/data_profiles/post
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(100978003251109721)
,p_name=>'Post'
,p_format=>'JSON'
,p_has_header_row=>false
,p_row_selector=>'.'
,p_use_raw_json_selectors=>false
,p_is_single_row=>true
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100981610930114403)
,p_data_profile_id=>wwv_flow_imp.id(100978003251109721)
,p_name=>'ID'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'id'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100982063657114403)
,p_data_profile_id=>wwv_flow_imp.id(100978003251109721)
,p_name=>'LINKS'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'ARRAY'
,p_has_time_zone=>false
,p_selector=>'links'
,p_remote_data_type=>'array'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100982561100114403)
,p_data_profile_id=>wwv_flow_imp.id(100978003251109721)
,p_name=>'USER_ID'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'user_id'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100983089251114404)
,p_data_profile_id=>wwv_flow_imp.id(100978003251109721)
,p_name=>'CREATED_DATE'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY"-"MM"-"DD"T"HH24":"MI:SS.FF9TZR'
,p_has_time_zone=>true
,p_selector=>'created_date'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100983541340114404)
,p_data_profile_id=>wwv_flow_imp.id(100978003251109721)
,p_name=>'PRODUCT_NAME'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'product_name'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100984073235114404)
,p_data_profile_id=>wwv_flow_imp.id(100978003251109721)
,p_name=>'PRODUCT_DETAILS'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'product_details'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100984574341114404)
,p_data_profile_id=>wwv_flow_imp.id(100978003251109721)
,p_name=>'REL'
,p_sequence=>7
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(100982063657114403)
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'rel'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(100985045299114404)
,p_data_profile_id=>wwv_flow_imp.id(100978003251109721)
,p_name=>'HREF'
,p_sequence=>8
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(100982063657114403)
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'href'
,p_remote_data_type=>'string'
);
end;
/
prompt --application/shared_components/web_sources/eba_rest_data_employee
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(94522571563963393)
,p_name=>'EBA_REST_DATA_EMPLOYEE'
,p_static_id=>'Employee_ords_rest_source'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(94519930053963392)
,p_remote_server_id=>wwv_flow_imp.id(18529060167393527)
,p_url_path_prefix=>'employee/'
,p_sync_max_http_requests=>1000
,p_version_scn=>14288611
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(94522766668963393)
,p_web_src_module_id=>wwv_flow_imp.id(94522571563963393)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(96691874295807534)
,p_web_src_module_id=>wwv_flow_imp.id(94522571563963393)
,p_web_src_operation_id=>wwv_flow_imp.id(94522766668963393)
,p_name=>'query'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(94523141831963393)
,p_web_src_module_id=>wwv_flow_imp.id(94522571563963393)
,p_operation=>'POST'
,p_database_operation=>'INSERT'
,p_url_pattern=>'.'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(94523528551963393)
,p_web_src_module_id=>wwv_flow_imp.id(94522571563963393)
,p_operation=>'DELETE'
,p_database_operation=>'DELETE'
,p_url_pattern=>':empno'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(94523925313963393)
,p_web_src_module_id=>wwv_flow_imp.id(94522571563963393)
,p_operation=>'GET'
,p_database_operation=>'FETCH_SINGLE_ROW'
,p_url_pattern=>':empno'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(95986552749280915)
,p_web_src_module_id=>wwv_flow_imp.id(94522571563963393)
,p_web_src_operation_id=>wwv_flow_imp.id(94523925313963393)
,p_name=>'empno'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(94524406799963393)
,p_web_src_module_id=>wwv_flow_imp.id(94522571563963393)
,p_operation=>'PUT'
,p_database_operation=>'UPDATE'
,p_url_pattern=>':empno'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(95986282455276823)
,p_web_src_module_id=>wwv_flow_imp.id(94522571563963393)
,p_name=>'fetchOne'
,p_operation=>'GET'
,p_url_pattern=>':empname'
,p_force_error_for_http_404=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(96691450972804341)
,p_web_src_module_id=>wwv_flow_imp.id(94522571563963393)
,p_web_src_operation_id=>wwv_flow_imp.id(95986282455276823)
,p_name=>'query'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
end;
/
prompt --application/shared_components/web_sources/eba_rest_odata_product
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(95470832101104479)
,p_name=>'EBA_REST_ODATA_PRODUCT'
,p_static_id=>'prod_odata'
,p_web_source_type=>'NATIVE_ODATA'
,p_data_profile_id=>wwv_flow_imp.id(95467700418104477)
,p_remote_server_id=>wwv_flow_imp.id(17028453717544882)
,p_url_path_prefix=>'Northwind.svc/'
,p_attribute_01=>'Products'
,p_attribute_03=>'option_orderby:option_select:option_search:option_client_driven_paging'
,p_attribute_04=>'none'
,p_attribute_05=>'N'
,p_attribute_06=>'count_none'
,p_attribute_07=>'filter_contains:filter_startswith:filter_in:filter_endswith'
,p_version_scn=>37743998
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(95471042835104479)
,p_web_src_module_id=>wwv_flow_imp.id(95470832101104479)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/eba_rest_movies
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(96297614377875508)
,p_name=>'EBA_REST_MOVIES'
,p_static_id=>'eba_rest_movies'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(96292647239875502)
,p_remote_server_id=>wwv_flow_imp.id(20780987798122564)
,p_url_path_prefix=>'/movie/popular'
,p_credential_id=>wwv_flow_imp.id(15655119485874726)
,p_version_scn=>23648570
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(96297772513875510)
,p_web_src_module_id=>wwv_flow_imp.id(96297614377875508)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/eba_rest_department
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(96330562230973675)
,p_name=>'EBA_REST_DEPARTMENT'
,p_static_id=>'eba_rest_department'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_imp.id(96329498526973668)
,p_remote_server_id=>wwv_flow_imp.id(18529060167393527)
,p_url_path_prefix=>'departments/'
,p_sync_max_http_requests=>1000
,p_attribute_01=>'N'
,p_attribute_02=>'HIGHEST'
,p_version_scn=>20576631
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(96330729021973678)
,p_web_src_module_id=>wwv_flow_imp.id(96330562230973675)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(96331218303973679)
,p_web_src_module_id=>wwv_flow_imp.id(96330562230973675)
,p_operation=>'POST'
,p_database_operation=>'INSERT'
,p_url_pattern=>'.'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(96331586784973679)
,p_web_src_module_id=>wwv_flow_imp.id(96330562230973675)
,p_operation=>'DELETE'
,p_database_operation=>'DELETE'
,p_url_pattern=>':deptno'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(96332012943973679)
,p_web_src_module_id=>wwv_flow_imp.id(96330562230973675)
,p_operation=>'GET'
,p_database_operation=>'FETCH_SINGLE_ROW'
,p_url_pattern=>':deptno'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(96332358759973679)
,p_web_src_module_id=>wwv_flow_imp.id(96330562230973675)
,p_operation=>'PUT'
,p_database_operation=>'UPDATE'
,p_url_pattern=>':deptno'
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/eba_movie_plug
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(96609545478449030)
,p_name=>'EBA_MOVIE_PLUG'
,p_static_id=>'eba_movie_plug'
,p_web_source_type=>'PLUGIN_COM.ORACLE.APEX.RESTSOURCE.FIXEDPAGESIZE'
,p_data_profile_id=>wwv_flow_imp.id(96604717442449025)
,p_remote_server_id=>wwv_flow_imp.id(19597746759082809)
,p_url_path_prefix=>'/movie'
,p_credential_id=>wwv_flow_imp.id(15655119485874726)
,p_version_scn=>21055822
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(96610132248449032)
,p_web_src_module_id=>wwv_flow_imp.id(96609545478449030)
,p_name=>'query'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_is_query_param=>true
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(96609812963449031)
,p_web_src_module_id=>wwv_flow_imp.id(96609545478449030)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_legacy_ords_fixed_page_size=>20
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/eba_rest_employee_invoke
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(96620419708252440)
,p_name=>'EBA_REST_EMPLOYEE_INVOKE'
,p_static_id=>'eba_rest_employee_invoke'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_imp.id(96617775063252433)
,p_remote_server_id=>wwv_flow_imp.id(18529060167393527)
,p_url_path_prefix=>'/data/emp'
,p_attribute_01=>'N'
,p_attribute_02=>'FLEXIBLE'
,p_version_scn=>16940737
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(96634766134771763)
,p_web_src_module_id=>wwv_flow_imp.id(96620419708252440)
,p_name=>'Content-Type'
,p_param_type=>'HEADER'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'application/json'
,p_is_static=>true
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(96620558791252448)
,p_web_src_module_id=>wwv_flow_imp.id(96620419708252440)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(96621035803260629)
,p_web_src_module_id=>wwv_flow_imp.id(96620419708252440)
,p_operation=>'PUT'
,p_database_operation=>'UPDATE'
,p_url_pattern=>'/:id'
,p_request_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'   "sal":#SAL#  ',
'}'))
,p_force_error_for_http_404=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(96621377864263442)
,p_web_src_module_id=>wwv_flow_imp.id(96620419708252440)
,p_web_src_operation_id=>wwv_flow_imp.id(96621035803260629)
,p_name=>'SAL'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(96621761492265094)
,p_web_src_module_id=>wwv_flow_imp.id(96620419708252440)
,p_web_src_operation_id=>wwv_flow_imp.id(96621035803260629)
,p_name=>'id'
,p_param_type=>'URL_PATTERN'
,p_data_type=>'NUMBER'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(97172860848300305)
,p_web_src_module_id=>wwv_flow_imp.id(96620419708252440)
,p_web_src_operation_id=>wwv_flow_imp.id(96621035803260629)
,p_name=>'response'
,p_param_type=>'BODY'
,p_is_required=>false
,p_direction=>'OUT'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(96633935206562721)
,p_web_src_module_id=>wwv_flow_imp.id(96620419708252440)
,p_operation=>'GET'
,p_database_operation=>'FETCH_SINGLE_ROW'
,p_url_pattern=>'/:id'
,p_force_error_for_http_404=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(96634243075564449)
,p_web_src_module_id=>wwv_flow_imp.id(96620419708252440)
,p_web_src_operation_id=>wwv_flow_imp.id(96633935206562721)
,p_name=>'id'
,p_param_type=>'URL_PATTERN'
,p_data_type=>'NUMBER'
,p_is_required=>false
);
end;
/
prompt --application/shared_components/web_sources/eba_rest_employees_query
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(96716525393489468)
,p_name=>'EBA_REST_EMPLOYEES_QUERY'
,p_static_id=>'eba_rest_employees'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_imp.id(96712392525489461)
,p_remote_server_id=>wwv_flow_imp.id(18529060167393527)
,p_url_path_prefix=>'data/emp'
,p_attribute_01=>'N'
,p_attribute_02=>'HIGHEST'
,p_version_scn=>16940912
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(96716782362489468)
,p_web_src_module_id=>wwv_flow_imp.id(96716525393489468)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/eba_rest_employee_pagination
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(97134193668595595)
,p_name=>'EBA_REST_EMPLOYEE_PAGINATION'
,p_static_id=>'eba_rest_pagination'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(97132180668595591)
,p_remote_server_id=>wwv_flow_imp.id(18529060167393527)
,p_url_path_prefix=>'/data/Pagination'
,p_attribute_01=>'FLEXIBLE'
,p_attribute_02=>'limit'
,p_attribute_07=>'offset'
,p_attribute_08=>'OFFSET'
,p_attribute_09=>'hasMore'
,p_attribute_10=>'EQUALS'
,p_attribute_11=>'true'
,p_version_scn=>16940986
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(97134344128595596)
,p_web_src_module_id=>wwv_flow_imp.id(97134193668595595)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/eba_rest_purchase_order
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(97228724484071495)
,p_name=>'EBA_REST_PURCHASE_ORDER'
,p_static_id=>'eba_rest_purchase_order'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(97220260886071489)
,p_remote_server_id=>wwv_flow_imp.id(18529060167393527)
,p_url_path_prefix=>'/orders/purchaseorders/'
,p_sync_max_http_requests=>1000
,p_version_scn=>19717119
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(97228975513071496)
,p_web_src_module_id=>wwv_flow_imp.id(97228724484071495)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/eba_rest_orders
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(97410732940480092)
,p_name=>'EBA_REST_ORDERS'
,p_static_id=>'eba_rest_orders'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_imp.id(97409095293480085)
,p_remote_server_id=>wwv_flow_imp.id(18529060167393527)
,p_url_path_prefix=>'/orders/'
,p_attribute_01=>'N'
,p_attribute_02=>'HIGHEST'
,p_version_scn=>12447756
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(97410936520480093)
,p_web_src_module_id=>wwv_flow_imp.id(97410732940480092)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(97411363335480094)
,p_web_src_module_id=>wwv_flow_imp.id(97410732940480092)
,p_operation=>'POST'
,p_database_operation=>'INSERT'
,p_url_pattern=>'.'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(97411724649480094)
,p_web_src_module_id=>wwv_flow_imp.id(97410732940480092)
,p_operation=>'DELETE'
,p_database_operation=>'DELETE'
,p_url_pattern=>':order_id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(97412218842480094)
,p_web_src_module_id=>wwv_flow_imp.id(97410732940480092)
,p_operation=>'GET'
,p_database_operation=>'FETCH_SINGLE_ROW'
,p_url_pattern=>':order_id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(97412576443480094)
,p_web_src_module_id=>wwv_flow_imp.id(97410732940480092)
,p_operation=>'PUT'
,p_database_operation=>'UPDATE'
,p_url_pattern=>':order_id'
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/eba_rest_stores
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(97416571925508069)
,p_name=>'EBA_REST_STORES'
,p_static_id=>'eba_rest_stores'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_imp.id(97413067277508068)
,p_remote_server_id=>wwv_flow_imp.id(18529060167393527)
,p_url_path_prefix=>'/stores/'
,p_attribute_01=>'N'
,p_attribute_02=>'HIGHEST'
,p_version_scn=>13110830
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(97416732618508069)
,p_web_src_module_id=>wwv_flow_imp.id(97416571925508069)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(97417201582508069)
,p_web_src_module_id=>wwv_flow_imp.id(97416571925508069)
,p_operation=>'POST'
,p_database_operation=>'INSERT'
,p_url_pattern=>'.'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(97417606208508069)
,p_web_src_module_id=>wwv_flow_imp.id(97416571925508069)
,p_operation=>'DELETE'
,p_database_operation=>'DELETE'
,p_url_pattern=>':store_id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(97417937834508069)
,p_web_src_module_id=>wwv_flow_imp.id(97416571925508069)
,p_operation=>'GET'
,p_database_operation=>'FETCH_SINGLE_ROW'
,p_url_pattern=>':store_id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(97418339934508069)
,p_web_src_module_id=>wwv_flow_imp.id(97416571925508069)
,p_operation=>'PUT'
,p_database_operation=>'UPDATE'
,p_url_pattern=>':store_id'
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/eba_rest_employee_data
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(97615444059111863)
,p_name=>'EBA_REST_EMPLOYEE_DATA'
,p_static_id=>'eba_rest_employee_data'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_imp.id(97612894991111857)
,p_remote_server_id=>wwv_flow_imp.id(18529060167393527)
,p_url_path_prefix=>'/data/emp'
,p_attribute_01=>'N'
,p_attribute_02=>'HIGHEST'
,p_version_scn=>16941126
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(97615659330111864)
,p_web_src_module_id=>wwv_flow_imp.id(97615444059111863)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/eba_rest_employee_invokeapi
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(97619078723198491)
,p_name=>'EBA_REST_EMPLOYEE_INVOKEAPI'
,p_static_id=>'eba_rest_employee_invokeapi'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_imp.id(97616502399198490)
,p_remote_server_id=>wwv_flow_imp.id(18529060167393527)
,p_url_path_prefix=>'/data/emp'
,p_attribute_01=>'N'
,p_attribute_02=>'HIGHEST'
,p_version_scn=>16941200
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(97619292147198491)
,p_web_src_module_id=>wwv_flow_imp.id(97619078723198491)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(97619766522213729)
,p_web_src_module_id=>wwv_flow_imp.id(97619078723198491)
,p_operation=>'PUT'
,p_database_operation=>'UPDATE'
,p_url_pattern=>'/:id'
,p_request_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'    ',
'   "sal":#SAL#',
'   ',
'}'))
,p_force_error_for_http_404=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(97620067503219840)
,p_web_src_module_id=>wwv_flow_imp.id(97619078723198491)
,p_web_src_operation_id=>wwv_flow_imp.id(97619766522213729)
,p_name=>'id'
,p_param_type=>'URL_PATTERN'
,p_data_type=>'NUMBER'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(97620428822226096)
,p_web_src_module_id=>wwv_flow_imp.id(97619078723198491)
,p_web_src_operation_id=>wwv_flow_imp.id(97619766522213729)
,p_name=>'SAL'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(97621987270246159)
,p_web_src_module_id=>wwv_flow_imp.id(97619078723198491)
,p_web_src_operation_id=>wwv_flow_imp.id(97619766522213729)
,p_name=>'status'
,p_param_type=>'DATA_PROFILE'
,p_is_required=>false
,p_direction=>'OUT'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(97622332785247158)
,p_web_src_module_id=>wwv_flow_imp.id(97619078723198491)
,p_web_src_operation_id=>wwv_flow_imp.id(97619766522213729)
,p_name=>'message'
,p_param_type=>'DATA_PROFILE'
,p_is_required=>false
,p_direction=>'OUT'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(97643187924517376)
,p_web_src_module_id=>wwv_flow_imp.id(97619078723198491)
,p_web_src_operation_id=>wwv_flow_imp.id(97619766522213729)
,p_name=>'Content-Type'
,p_param_type=>'HEADER'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'application/json'
);
end;
/
prompt --application/shared_components/web_sources/eba_rest_tasks
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(99362981613770433)
,p_name=>'EBA_REST_TASKS'
,p_static_id=>'eba_rest_tasks'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_imp.id(99358845759770428)
,p_remote_server_id=>wwv_flow_imp.id(18529060167393527)
,p_url_path_prefix=>'/tasks/'
,p_attribute_01=>'N'
,p_version_scn=>14510638
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(99363159237770434)
,p_web_src_module_id=>wwv_flow_imp.id(99362981613770433)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(99363620097770436)
,p_web_src_module_id=>wwv_flow_imp.id(99362981613770433)
,p_operation=>'POST'
,p_database_operation=>'INSERT'
,p_url_pattern=>'.'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(99364015024770436)
,p_web_src_module_id=>wwv_flow_imp.id(99362981613770433)
,p_operation=>'DELETE'
,p_database_operation=>'DELETE'
,p_url_pattern=>':id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(99364387656770436)
,p_web_src_module_id=>wwv_flow_imp.id(99362981613770433)
,p_operation=>'GET'
,p_database_operation=>'FETCH_SINGLE_ROW'
,p_url_pattern=>':id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(99364739688770436)
,p_web_src_module_id=>wwv_flow_imp.id(99362981613770433)
,p_operation=>'PUT'
,p_database_operation=>'UPDATE'
,p_url_pattern=>':id'
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/eba_rest_movie_synchronization
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(99758843148949282)
,p_name=>'EBA_REST_MOVIE_SYNCHRONIZATION'
,p_static_id=>'eba_rest_movie_synchronization'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(99753932264949277)
,p_remote_server_id=>wwv_flow_imp.id(19597746759082809)
,p_url_path_prefix=>'movie'
,p_credential_id=>wwv_flow_imp.id(15655119485874726)
,p_sync_table_name=>'EBA_DEMO_REST_MOVIES_SYNC'
,p_sync_type=>'APPEND'
,p_sync_max_http_requests=>1000
,p_version_scn=>21055947
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(99759442710949285)
,p_web_src_module_id=>wwv_flow_imp.id(99758843148949282)
,p_name=>'query'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'star trek'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(99759025157949283)
,p_web_src_module_id=>wwv_flow_imp.id(99758843148949282)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/eba_rest_employee_derived
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(100017857832004397)
,p_name=>'EBA_REST_EMPLOYEE_DERIVED'
,p_static_id=>'eba_rest_employee_derived'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_imp.id(100014664032004394)
,p_remote_server_id=>wwv_flow_imp.id(18529060167393527)
,p_url_path_prefix=>'/data/emp'
,p_attribute_01=>'N'
,p_attribute_02=>'HIGHEST'
,p_version_scn=>20623564
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(100018108962004398)
,p_web_src_module_id=>wwv_flow_imp.id(100017857832004397)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/eba_rest_product_workflows
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(100824169162377522)
,p_name=>'EBA_REST_PRODUCT_WORKFLOWS'
,p_static_id=>'eba_rest_product_workflows'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_imp.id(100821317945377521)
,p_remote_server_id=>wwv_flow_imp.id(18529060167393527)
,p_url_path_prefix=>'/orders/product/:id'
,p_attribute_01=>'N'
,p_attribute_02=>'HIGHEST'
,p_version_scn=>16754260
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(100824721830377522)
,p_web_src_module_id=>wwv_flow_imp.id(100824169162377522)
,p_name=>'id'
,p_param_type=>'URL_PATTERN'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'1'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(100824338908377522)
,p_web_src_module_id=>wwv_flow_imp.id(100824169162377522)
,p_name=>'fetch single product'
,p_operation=>'GET'
,p_database_operation=>'FETCH_SINGLE_ROW'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(100826557525382766)
,p_web_src_module_id=>wwv_flow_imp.id(100824169162377522)
,p_web_src_operation_id=>wwv_flow_imp.id(100824338908377522)
,p_name=>'PRODUCT_NAME'
,p_param_type=>'DATA_PROFILE'
,p_is_required=>false
,p_direction=>'OUT'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(100827521586383639)
,p_web_src_module_id=>wwv_flow_imp.id(100824169162377522)
,p_web_src_operation_id=>wwv_flow_imp.id(100824338908377522)
,p_name=>'PRODUCT_DETAILS'
,p_param_type=>'DATA_PROFILE'
,p_is_required=>false
,p_direction=>'OUT'
);
end;
/
prompt --application/shared_components/web_sources/eba_rest_product_workflows_post
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(100978729707109722)
,p_name=>'EBA_REST_PRODUCT_WORKFLOWS_POST'
,p_static_id=>'post'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_imp.id(100978003251109721)
,p_remote_server_id=>wwv_flow_imp.id(18529060167393527)
,p_url_path_prefix=>'/orders/product_post'
,p_attribute_01=>'N'
,p_attribute_02=>'HIGHEST'
,p_version_scn=>16762132
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(100979787989109722)
,p_web_src_module_id=>wwv_flow_imp.id(100978729707109722)
,p_name=>'id'
,p_param_type=>'URL_PATTERN'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'1'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(100978958068109722)
,p_web_src_module_id=>wwv_flow_imp.id(100978729707109722)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(100979324000109722)
,p_web_src_module_id=>wwv_flow_imp.id(100978729707109722)
,p_operation=>'POST'
,p_database_operation=>'INSERT'
,p_url_pattern=>'.'
,p_request_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'    ',
'   "USER_ID":"#USER_ID#"',
'   ,"PRODUCT_NAME":"#PRODUCT_NAME#"',
'   ,"PRODUCT_DETAILS":"#PRODUCT_DETAILS#"',
'   ',
'}'))
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(100986558119126113)
,p_web_src_module_id=>wwv_flow_imp.id(100978729707109722)
,p_web_src_operation_id=>wwv_flow_imp.id(100979324000109722)
,p_name=>'USER_ID'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(100987012170127850)
,p_web_src_module_id=>wwv_flow_imp.id(100978729707109722)
,p_web_src_operation_id=>wwv_flow_imp.id(100979324000109722)
,p_name=>'PRODUCT_NAME'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(100987385589131133)
,p_web_src_module_id=>wwv_flow_imp.id(100978729707109722)
,p_web_src_operation_id=>wwv_flow_imp.id(100979324000109722)
,p_name=>'PRODUCT_DETAILS'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(101006743241237039)
,p_web_src_module_id=>wwv_flow_imp.id(100978729707109722)
,p_web_src_operation_id=>wwv_flow_imp.id(100979324000109722)
,p_name=>'Content-Type'
,p_param_type=>'HEADER'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'application/json'
);
end;
/
prompt --application/shared_components/workflow/workflows/creating_order
begin
wwv_flow_imp_shared.create_workflow(
 p_id=>wwv_flow_imp.id(99739218066397751)
,p_name=>'Creating Order'
,p_static_id=>'CREATE_ORDER'
,p_title=>'Creating Order'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(99782119840280109)
,p_workflow_id=>wwv_flow_imp.id(99739218066397751)
,p_label=>'PRODUCT_ID'
,p_static_id=>'PRODUCT_ID'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_is_required=>true
,p_value=>'1'
);
wwv_flow_imp_shared.create_workflow_version(
 p_id=>wwv_flow_imp.id(15884232942746257)
,p_workflow_id=>wwv_flow_imp.id(99739218066397751)
,p_version=>'1.O'
,p_state=>'ACTIVE'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(15886640403746281)
,p_workflow_version_id=>wwv_flow_imp.id(15884232942746257)
,p_label=>'PRODUCT_DETAILS'
,p_static_id=>'PRODUCT_DETAILS'
,p_direction=>'VARIABLE'
,p_data_type=>'CLOB'
,p_is_required=>false
,p_value_type=>'ITEM'
,p_value=>'PRODUCT_DETAILS'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(15886719118746282)
,p_workflow_version_id=>wwv_flow_imp.id(15884232942746257)
,p_label=>'PRODUCT_NAME'
,p_static_id=>'PRODUCT_NAME'
,p_direction=>'VARIABLE'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value_type=>'ITEM'
,p_value=>'PRODUCT_NAME'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(15886818118746283)
,p_workflow_version_id=>wwv_flow_imp.id(15884232942746257)
,p_label=>'USER_EMAIL'
,p_static_id=>'USER_EMAIL'
,p_direction=>'VARIABLE'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value_type=>'SQL_QUERY'
,p_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select email',
'  from apex_workspace_apex_users',
' where user_name = v(''APP_USER'')'))
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(15884300131746258)
,p_workflow_version_id=>wwv_flow_imp.id(15884232942746257)
,p_name=>'Start'
,p_static_id=>'New'
,p_display_sequence=>10
,p_activity_type=>'NATIVE_WORKFLOW_START'
,p_diagram=>'{"position":{"x":-390,"y":100},"z":1}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(15884544790746260)
,p_workflow_version_id=>wwv_flow_imp.id(15884232942746257)
,p_name=>'End'
,p_static_id=>'New_2'
,p_display_sequence=>20
,p_activity_type=>'NATIVE_WORKFLOW_END'
,p_attribute_01=>'COMPLETED'
,p_diagram=>'{"position":{"x":1030,"y":100},"z":2}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(15884638648746261)
,p_workflow_version_id=>wwv_flow_imp.id(15884232942746257)
,p_name=>'Fetch Product Data'
,p_static_id=>'FETCH_PRODUCT_DATA'
,p_display_sequence=>30
,p_activity_type=>'NATIVE_INVOKE_API'
,p_attribute_01=>'WEB_SOURCE'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(100824169162377522)
,p_web_src_operation_id=>wwv_flow_imp.id(100824338908377522)
,p_diagram=>'{"position":{"x":-270,"y":100},"z":3}'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(15884812096746263)
,p_web_src_param_id=>wwv_flow_imp.id(100824721830377522)
,p_workflow_activity_id=>wwv_flow_imp.id(15884638648746261)
,p_value_type=>'ITEM'
,p_value=>'PRODUCT_ID'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(15884919869746264)
,p_web_src_param_id=>wwv_flow_imp.id(100827521586383639)
,p_workflow_activity_id=>wwv_flow_imp.id(15884638648746261)
,p_value_type=>'ITEM'
,p_value=>'PRODUCT_DETAILS'
,p_ignore_output=>false
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(15885021550746265)
,p_web_src_param_id=>wwv_flow_imp.id(100826557525382766)
,p_workflow_activity_id=>wwv_flow_imp.id(15884638648746261)
,p_value_type=>'ITEM'
,p_value=>'PRODUCT_NAME'
,p_ignore_output=>false
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(15885180504746266)
,p_workflow_version_id=>wwv_flow_imp.id(15884232942746257)
,p_name=>'Pending State'
,p_static_id=>'New_6'
,p_display_sequence=>40
,p_activity_type=>'NATIVE_WORKFLOW_WAIT'
,p_attribute_01=>'STATIC'
,p_attribute_05=>'PT5S'
,p_diagram=>'{"position":{"x":30,"y":100},"z":4}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(15885371007746268)
,p_workflow_version_id=>wwv_flow_imp.id(15884232942746257)
,p_name=>'Creating New Order'
,p_static_id=>'New_1'
,p_display_sequence=>50
,p_activity_type=>'NATIVE_INVOKE_API'
,p_attribute_01=>'WEB_SOURCE'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(100978729707109722)
,p_web_src_operation_id=>wwv_flow_imp.id(100979324000109722)
,p_diagram=>'{"position":{"x":500,"y":100},"z":5}'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(15885585953746270)
,p_web_src_param_id=>wwv_flow_imp.id(101006743241237039)
,p_workflow_activity_id=>wwv_flow_imp.id(15885371007746268)
,p_value_type=>'DEFAULT'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(15885671304746271)
,p_web_src_param_id=>wwv_flow_imp.id(100979787989109722)
,p_workflow_activity_id=>wwv_flow_imp.id(15885371007746268)
,p_value_type=>'ITEM'
,p_value=>'PRODUCT_ID'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(15885715247746272)
,p_web_src_param_id=>wwv_flow_imp.id(100987385589131133)
,p_workflow_activity_id=>wwv_flow_imp.id(15885371007746268)
,p_value_type=>'ITEM'
,p_value=>'PRODUCT_DETAILS'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(15885808138746273)
,p_web_src_param_id=>wwv_flow_imp.id(100987012170127850)
,p_workflow_activity_id=>wwv_flow_imp.id(15885371007746268)
,p_value_type=>'ITEM'
,p_value=>'PRODUCT_NAME'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(15885904720746274)
,p_web_src_param_id=>wwv_flow_imp.id(100986558119126113)
,p_workflow_activity_id=>wwv_flow_imp.id(15885371007746268)
,p_value_type=>'ITEM'
,p_value=>'USER_EMAIL'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(15886030636746275)
,p_workflow_version_id=>wwv_flow_imp.id(15884232942746257)
,p_name=>'Send Email'
,p_static_id=>'New_3'
,p_display_sequence=>60
,p_activity_type=>'NATIVE_SEND_EMAIL'
,p_attribute_01=>'&USER_EMAIL.'
,p_attribute_02=>'&USER_EMAIL.'
,p_attribute_06=>'Order Recieved'
,p_attribute_07=>'Order recieved.'
,p_attribute_10=>'N'
,p_diagram=>'{"position":{"x":770,"y":100},"z":6}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(15886252749746277)
,p_workflow_version_id=>wwv_flow_imp.id(15884232942746257)
,p_name=>'is data fetched?'
,p_static_id=>'New_4'
,p_display_sequence=>70
,p_activity_type=>'NATIVE_WORKFLOW_SWITCH'
,p_attribute_01=>'CHECK_WF_VARIABLE'
,p_attribute_10=>'PRODUCT_NAME'
,p_diagram=>'{"position":{"x":160,"y":100},"z":7}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(15886596223746280)
,p_workflow_version_id=>wwv_flow_imp.id(15884232942746257)
,p_name=>'Product Data  is Not Fetched'
,p_static_id=>'New_5'
,p_display_sequence=>80
,p_activity_type=>'NATIVE_WORKFLOW_END'
,p_attribute_01=>'TERMINATED'
,p_diagram=>'{"position":{"x":240,"y":-90},"z":8}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(15884406773746259)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(15884300131746258)
,p_to_activity_id=>wwv_flow_imp.id(15884638648746261)
,p_diagram=>'{"source":{},"target":{},"vertices":[],"z":9,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(15884767211746262)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(15884638648746261)
,p_to_activity_id=>wwv_flow_imp.id(15885180504746266)
,p_diagram=>'{"source":{},"target":{"name":"topLeft","args":{"dx":"0%","dy":"50%","rotate":true}},"vertices":[],"z":10,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(15885288378746267)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(15885180504746266)
,p_to_activity_id=>wwv_flow_imp.id(15886252749746277)
,p_diagram=>'{"source":{"name":"right","args":{"dx":-10,"dy":0}},"target":{"name":"topLeft","args":{"dx":"4.55%","dy":"50%","rotate":true}},"vertices":[],"z":11,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(15885441490746269)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(15885371007746268)
,p_to_activity_id=>wwv_flow_imp.id(15886030636746275)
,p_diagram=>'{"source":{},"target":{},"vertices":[],"z":12,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(15886134723746276)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(15886030636746275)
,p_to_activity_id=>wwv_flow_imp.id(15884544790746260)
,p_diagram=>'{"source":{},"target":{"name":"topLeft","args":{"dx":"50%","dy":"50%","rotate":true}},"vertices":[],"z":13,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(15886328915746278)
,p_name=>'Yes'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(15886252749746277)
,p_to_activity_id=>wwv_flow_imp.id(15885371007746268)
,p_condition_type=>'NOT_NULL'
,p_diagram=>'{"source":{"name":"right","args":{"dx":-10,"dy":0}},"target":{"name":"topLeft","args":{"dx":"9.091%","dy":"50%","rotate":true}},"vertices":[],"z":14,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(15886454767746279)
,p_name=>'No'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(15886252749746277)
,p_to_activity_id=>wwv_flow_imp.id(15886596223746280)
,p_condition_type=>'IS_NULL'
,p_diagram=>'{"source":{"name":"top","args":{"dx":0,"dy":10}},"target":{"name":"topLeft","args":{"dx":"50%","dy":"50%","rotate":true}},"vertices":[],"z":15,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_participant(
 p_id=>wwv_flow_imp.id(15886920243746284)
,p_workflow_version_id=>wwv_flow_imp.id(15884232942746257)
,p_participant_type=>'ADMIN'
,p_name=>'Admin'
,p_identity_type=>'USER'
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'v(''APP_USER'')'
);
wwv_flow_imp_shared.create_workflow_participant(
 p_id=>wwv_flow_imp.id(15887040247746285)
,p_workflow_version_id=>wwv_flow_imp.id(15884232942746257)
,p_participant_type=>'OWNER'
,p_name=>'Owner'
,p_identity_type=>'USER'
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'v(''APP_USER'')'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(94274941999483477)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>50269255
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94287125440483520)
,p_list_item_display_sequence=>9
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94309439979681128)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'REST Data Source'
,p_list_item_link_target=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-window-search'
,p_list_item_current_type=>'TARGET_PAGE'
,p_sub_list_id=>wwv_flow_imp.id(94308748506666992)
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94309929674699451)
,p_list_item_display_sequence=>11
,p_list_item_link_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Combine with Relational Data',
''))
,p_list_item_link_target=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-database-arrow-up'
,p_list_item_current_type=>'TARGET_PAGE'
,p_sub_list_id=>wwv_flow_imp.id(94317290780924273)
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94626406420559813)
,p_list_item_display_sequence=>13
,p_list_item_link_text=>'Data Display Options'
,p_list_item_link_target=>'f?p=&APP_ID.:300:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_sub_list_id=>wwv_flow_imp.id(94619572120533775)
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94310786885721737)
,p_list_item_display_sequence=>14
,p_list_item_link_text=>'Advanced Features'
,p_list_item_link_target=>'f?p=&APP_ID.:400:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-ellipsis-h-o'
,p_list_item_current_type=>'TARGET_PAGE'
,p_sub_list_id=>wwv_flow_imp.id(94322544283999405)
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94299612521483547)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:500:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(94280170220483504)
,p_list_item_current_type=>'TARGET_PAGE'
,p_sub_list_id=>wwv_flow_imp.id(94300678338483549)
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(94276171256483492)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>21517321
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(98348540945043064)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:500:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-gear'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94296427930483546)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Help'
,p_list_item_link_target=>'f?p=&APP_ID.:600:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-question-circle-o'
,p_required_patch=>wwv_flow_imp.id(94279328512483503)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94298103336483547)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94298602169483547)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(94298103336483547)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94298972456483547)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(94298103336483547)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_interface
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(94300678338483549)
,p_name=>'User Interface'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(94279434483483503)
,p_version_scn=>4594966
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94301032192483549)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_list_item_link_target=>'f?p=&APP_ID.:501:&SESSION.::&DEBUG.:10010:::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel.'
,p_required_patch=>wwv_flow_imp.id(94279434483483503)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(95284208551247718)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Reset Data'
,p_list_item_link_target=>'f?p=&APP_ID.:502:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-refresh'
,p_list_text_01=>'This application ships with sample data. You can reset the sample data using this administrative page.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(95724173663797890)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Web Credentials'
,p_list_item_link_target=>'f?p=&APP_ID.:503:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-lock-new'
,p_list_text_01=>'The REST Data Source Plugins & Cards Layout pages rely on TMDb API. Use this page to provide your own TMDb API key.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(97695150653772278)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Network Setup'
,p_list_item_link_target=>'f?p=&APP_ID.:504:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-window-search'
,p_list_text_01=>'This page helps you to setup connection with ORDS and ODATA.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/home
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(94302958188495697)
,p_name=>'Home'
,p_list_status=>'PUBLIC'
,p_version_scn=>50269995
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94679820729953826)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'REST Data Sources'
,p_list_item_link_target=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-search'
,p_list_text_01=>'This section explores various methods for integrating RESTful services within Oracle APEX. It covers basic HTTP requests and...'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94680178202979949)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Combine with Relational Data',
''))
,p_list_item_link_target=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-database-arrow-up'
,p_list_text_01=>'Showcase how to merge and enriche external REST data with local Oracle Tables using ...'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94680467246998245)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Data Display Options'
,p_list_item_link_target=>'f?p=&APP_ID.:300:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'This section showcases various techniques for presenting REST data in Oracle APEX, including reports ...'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94680741160012016)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Advanced Features'
,p_list_item_link_target=>'f?p=&APP_ID.:400:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-ellipsis-h-o'
,p_list_text_01=>'This section highlights advanced functionalities such as dynamic actions for triggering REST calls and robust error handling ...'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/rest_data_sources
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(94308748506666992)
,p_name=>'REST Data Sources'
,p_list_status=>'PUBLIC'
,p_version_scn=>16565667
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94309005886666992)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Simple HTTP'
,p_list_item_link_target=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-search'
,p_list_text_01=>unistr('One\2011shot HTTP endpoint delivering your complete dataset instantly.')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94313160137741628)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'ORDS'
,p_list_item_link_target=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-database-application'
,p_list_text_01=>'Enable insert, update and delete on ORDS compliant endpoints.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94316932905895904)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'OData'
,p_list_item_link_target=>'f?p=&APP_ID.:103:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-database-check'
,p_list_text_01=>'Seamlessly integrate and consume external OData REST services.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/combine_with_relational_data
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(94317290780924273)
,p_name=>'Combine with Relational Data'
,p_list_status=>'PUBLIC'
,p_version_scn=>50269019
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94317474959924274)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Post Processing SQL'
,p_list_item_link_target=>'f?p=&APP_ID.:201:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-arrow-up'
,p_list_text_01=>'Showcases how to combine external REST data with data from local tables using <strong>Post Processing SQL</strong>.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(95681596473689234)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Derived Columns'
,p_list_item_link_target=>'f?p=&APP_ID.:202:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-circle-arrow-in-east'
,p_list_text_01=>'Showcases how to use additional <em>derived columns</em> in the <strong>Data Profile</strong> to enrich results coming from the REST service.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/interactivity
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(94320694233969499)
,p_name=>'Interactivity'
,p_list_status=>'PUBLIC'
,p_version_scn=>3887138
);
end;
/
prompt --application/shared_components/navigation/lists/advanced_features
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(94322544283999405)
,p_name=>'Advanced Features'
,p_list_status=>'PUBLIC'
,p_version_scn=>20808695
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(99565370497197267)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'REST Synchronization'
,p_list_item_link_target=>'f?p=&APP_ID.:401:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-refresh'
,p_list_text_01=>'Leverage REST Synchronization for improved performance and availability.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(95973161006318377)
,p_list_item_display_sequence=>19
,p_list_item_link_text=>'Invoke API Process'
,p_list_item_link_target=>'f?p=&APP_ID.:402:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-compass'
,p_list_text_01=>'Shows how to declaratively invoke a REST API using the Invoke API Page Process type.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94868803416083046)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'REST Data and PL/SQL'
,p_list_item_link_target=>'f?p=&APP_ID.:404:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-window-pointer'
,p_list_text_01=>'Illustrates how to invoke REST endpoints with PL/SQL and the APEX_EXEC package.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94635605028852496)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Nested JSON and Dynamic Actions'
,p_list_item_link_target=>'f?p=&APP_ID.:405:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-ai-sparkle-generate-text'
,p_list_text_01=>'Use Dynamic Actions to visualize nested JSON from a REST Data Source in two regions.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94871360183157127)
,p_list_item_display_sequence=>41
,p_list_item_link_text=>'REST Data Source Plugins'
,p_list_item_link_target=>'f?p=&APP_ID.:406:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-plug'
,p_list_text_01=>'Use a REST Data Source Plug-In to support special functionality of an external REST API.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(99781549479088977)
,p_list_item_display_sequence=>51
,p_list_item_link_text=>'REST and Workflow'
,p_list_item_link_target=>'f?p=&APP_ID.:407:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-workflow'
,p_list_text_01=>'Explains how to orchestrate REST calls using Workflows.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/data_display_options
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(94619572120533775)
,p_name=>'Data Display Options'
,p_list_status=>'PUBLIC'
,p_version_scn=>23634224
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94633099177690758)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Simple Report'
,p_list_item_link_target=>'f?p=&APP_ID.:301:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Shows how to consume a REST endpoint with automatic JSON conversion to present data without advanced features.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94633413665693847)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Report with Pagination'
,p_list_item_link_target=>'f?p=&APP_ID.:302:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-clock'
,p_list_text_01=>'Highlights how to dynamically fetch and display subsets of data from a REST service using offset/limit parameters, making it suitable for large datasets.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94633899712699876)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Report with Query'
,p_list_item_link_target=>'f?p=&APP_ID.:303:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-database-search'
,p_list_text_01=>'Illustrates how to create a report that handles larger REST service responses and offers built-in query capabilities.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94634131248701839)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Cards Layout'
,p_list_item_link_target=>'f?p=&APP_ID.:304:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-address-card'
,p_list_text_01=>'Showcases how to use visual card regions to display REST data in a mobile-friendly format, offering an alternative presentation to traditional reports.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94634781844707759)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Oracle JET Charts'
,p_list_item_link_target=>'f?p=&APP_ID.:305:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-combo-chart'
,p_list_text_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Demonstrates how to build interactive, dynamic visualizations using Oracle JET.',
'',
''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94699600207927404)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Faceted Search'
,p_list_item_link_target=>'f?p=&APP_ID.:306:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-search'
,p_list_text_01=>'Demonstrates how to consume and display REST-sourced data using Faceted Search, with filtering by Job and Salary ranges.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94702429091956815)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Map'
,p_list_item_link_target=>'f?p=&APP_ID.:307:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-map-marker'
,p_list_text_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Displays REST data on a map using the built-in APEX Map component.',
'',
''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(94704085147998295)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Calendar'
,p_list_item_link_target=>'f?p=&APP_ID.:308:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'Presents REST data in the APEX Calendar component for date-based visualization.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE9000003F2494441545847ED975B685C451880BF9973D9B3D9D5961813622DD5AAA12835A9D634B26031565AA14A89FA6263B04F898AFA';
wwv_flow_imp.g_varchar2_table(2) := 'D282041F4454D0A782E08BF82278417CA82550B1502B8205B12D78A1E0059336B1B1DAE6B6DDECB9CC1999B3D9B0DB6C684CB6F8921F76CFEE9C39F37FF3DFE63F62ECFC5F9AFF51C42AC0AA0516B3801002292542D4885013B6E5F1FF10C2711C13EBEA';
wwv_flow_imp.g_varchar2_table(3) := '076A06A151EED8369E97C23C64408C68AD13208140CD8D9BB9B518AFC4366A8320C0F7832A889A00966591CDA4F1521E972627497B1E9625992D16716C07D775989EC993CD34E0A5521888A548D1F7C95F2E1004E1FCF49A00B601C836E03A0EBF8F9C63';
wwv_flow_imp.g_varchar2_table(4) := 'CD75595CD765726A9A86B447369361F4FC38CD4D8DACBD7E0D522E0DC00F02F2F902E65A96DA00B601C892F652F86194ECDEEC522995B8C39292200CB16D1B7B89BB370ACD5AF97C3E71C3E20046C1C43F349CFA96F499D308AD49C24693F8BFEA77F9CF';
wwv_flow_imp.g_varchar2_table(5) := '52EC1FC7041B6EA7704F2EB912C7C9530B2D6059586323A43FFF10EFD810C46A29CB5F7D8E52841D5D14F6F4126EE902555AB736C09F67490F7D8277FCC842009346863E0113E03825E551541A371963592573558A0168BF8FC2A34F11B6772E13C02877';
wwv_flow_imp.g_varchar2_table(6) := '53889656C4BA0D68DF47FF7C1A021FD17617A2A9057DF102FADC30CC5EBE06004A216EDB84D8B90736DF8B1E1F253EF81A4C4D20F7BD88E87A004647D0470FA3BFFBA6DA0A75B140E0231FEF43E71E62F6DDB7616C18378A9242149A2C696C22F5441F6E';
wwv_flow_imp.g_varchar2_table(7) := '530BD1EBFB4BEE284B3D00741461F5F623DA3B090707920C99AFC8265B94C2EA1DC0BA7B2BD1E0409D5D202462CB36644F2F3A3F837AF300425A554A741024F7E5EE27D1873E223EFE0514674B73566401B3BB8D6DD87BFB89D736127DF601D689AF6A46';
wwv_flow_imp.g_varchar2_table(8) := '7A7CC79D889E5E9C5BDB88DE3F083F7E0F61002A5E5916C437DC88CEED407474227FF9093E7E0F44858FCBA998EB46EFEA211E1D461C3D8C1C1B29A5DC8A2C600AA152440D19EC675EC0D9D846B87F1FC2B2AF70818FD5F71CDCDF8DFFEA4B58172FCC9F';
wwv_flow_imp.g_varchar2_table(9) := 'A42B0648AAB15F4C824C6CCD11BDF23CC2F8D7149D391F6B53C69F7E16B16933EAE57EB02B00576A8104200C10BB7A10DB77C29787E0EC1F68636253059B5B11EB6F815C37C41AFDCE1BF54F43536A55F34DE8071FC1DDB11BFDF738F15B833079093970';
wwv_flow_imp.g_varchar2_table(10) := '00D1B59DE88793A8A14F717E3B730D0A51727A4894EB12BA9E699170F3D30834613A43ECB85861801D141173874D5D0B517931D39A998F91CA762D69D912C6E4BB0E85E8D810A28EC771D0B18DC2637BAF721A9ADC9E99449E3A81FDF5915280D5434CFC';
wwv_flow_imp.g_varchar2_table(11) := '7474A2720F43EB7AD08B352426DA4DFB3C35811EFE75A12F97099338ACF56664CB3A64457A2EFE6E681A8ACAD36C998AAB2BD55C335331B8FA72FA2F9DBFCCBF80C82A780000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(94277223547483501)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B8000000017352474200AECE1CE9000016EF49444154785EED9D79745DD575877FE7DE376BB2ADE10D92B0F1808D21310E1EC01063C264C2E090D2006926528A4DDA6658';
wwv_flow_imp.g_varchar2_table(2) := '0B02592BAB6D569366A069429A04933A09216D81666088718C71004328369EC0650E606C49EF3DC91A6C494F6FBC7737FB3ECD962CE9DEF39E2473CE3F5ECBBAFB0CFB7E6F9F7DCEDEE75C015594061C6840389055A24A03500029081C694001E4487D4A';
wwv_flow_imp.g_varchar2_table(3) := '5801A41870A401059023F52961059062C0910614408ED4A78415408A01471A500039529F12560029061C694001E4487D4A5801A41870A401059023F529E12909502C16AB267257121995D0A912A45512689600CADE0BAF8C802E01D10E61B6C1106D42E8';
wwv_flow_imp.g_varchar2_table(4) := '6D4264DBC2E1F091A936FE49058888442CD6B6D014E64A0DB492801502783F01EEA9A6A8A9D01F0164093800601741BCA091B62B1CAE7C43084193D5BFA202C496C514E25C32B59502B40202CB01544CD6E04F92768F81B05B686217C1DC6566B3CFD5D7';
wwv_flow_imp.g_varchar2_table(5) := 'D7B7176B6C450388AD4DB4B9F96A98E2CB105855AC01BEA7DA11788E40DFAA0D061F2B96552A38407B88DC9158F36748885B019CF69E7AA19337D83720E8CE583078DF3221B285EC4641016A6868ADD55CC62300CE2EE42054DDA36980F668A00F17D2F9';
wwv_flow_imp.g_varchar2_table(6) := '2E1840B1586CB129B46D20D4AA173C791A10C0DB02E6BA7038FC4A217A5110809A9A5ACE87469B95835C885766ABCE631AB475E170F50E5BD22710920E906579A0ED061090DD59559F230DF4683057C8B64452018A46A301123AC3B3D8D1509570A134F0';
wwv_flow_imp.g_varchar2_table(7) := '8A2063452412E991D5805C8062CDF712F069599D53F5C8D780007E1109073F23AB66690035C65A3E23403F97D531554FE134401037D6856BEE95D18214801A1A1AFC9ACBD30460A68C4EA93A0AAE81764146BD8CA94C0A408DD1E60D42E0EE820F5B3520';
wwv_flow_imp.g_varchar2_table(8) := '4D0344B8A52E12DCE8B442C70059218A78CB6B00163AED8C922FA606C46B9150F5194E431E8E018A465BD692A0DF1773E8AA2D391A10242E8F446AB63AA9CD31404DB166EEC0654E3AA164274D038FD786836B9DB4EE08A083070FFA3CBE400280E6A413';
wwv_flow_imp.g_varchar2_table(9) := '4A76D234609AB94C697D7D7DD26E0F1C01D4108BADD1A03D65B7F111E5B84793961E257524F22B2B806E4C9817D687C34FDBEDAC23809AE22D7780E89B761B1F2C278480AE6BF078DC70E93A84BA7966885A09849C612093C9C2304C1049FA9509F195DA';
wwv_flow_imp.g_varchar2_table(10) := '50CDB7ECBE436700459B1F86C03ABB8DF7C9313C5E8F1B7EBF0F1EB71B9AA666C491746A9A2632D92C92C914D299AC1C88088FD446821FB1FB0E6D0344445A34DED202A0D26EE37D722E978EB2D212F8BC5E304CAA8CAE01B63CA9741A5DDD09E472860C';
wwv_flow_imp.g_varchar2_table(11) := '5535D7868321BB15D97E5BD168EB221206EFFF382B0208F87D282B2981AEEBA3D69537D90263F1653D27C69E00FBA680E908AC6118E84A24D0934C49F1173598A786C3E177EDBC480700C9DBFF292F2B41492030A2F5B14C762A0D569A263478BDEE112D';
wwv_flow_imp.g_varchar2_table(12) := '55B6F739FE550AAD774AF4F98EAB93EB49A652C8667396BED8E7F2FB7CD36ADA64F8133D3DE8ECE205B0F3E2643FC836404DF1F8F52071BFF3EE031565A50804FCC7BDEC6C2E87D6B676B4751CB5CC35FB463CD505ABABE0F70D4C77FCB7B68E0EB4B61F';
wwv_flow_imp.g_varchar2_table(13) := '058324340DA5257E84AAAB5112F0F777917D88F6A3C7AC3A53E90C1B34047C3EAB3EAE77BAF85E0C504F4F12C7BABA65A81F1074436D28F4809DCA6C032433FE351A40478F75A2211AB7E6FCBEA2BB5C085757A1BA6A96B55AE3898DFD81A6581C899E64';
wwv_flow_imp.g_varchar2_table(14) := 'BF63C9D361D5AC99A88F84FAC16493DF188DA3B3BBBBFF394D0854CE9C89BA48102E97CB8E0E8B2E231B20277131DB00C95CC28F06504B6B1B0E354687BC20F659665694A33E12B6A61F56665BFB5134C6E2608B35B8949795E2B4B973FA013AD6D96501';
wwv_flow_imp.g_varchar2_table(15) := 'D9934C0EB17633CACB31BB3E62AD00A743910D9020FA522412FABE9DB1DB0728D6CC7B07B7DB6974B8CC6800B5771CC3E168CC9A96FA2D90AEA3A6721682355570BB5C16406CCA9BA27124D3E901CBA269A89C3903B3EB22FDB0B0856A688A590E685F61';
wwv_flow_imp.g_varchar2_table(16) := '20F9B9BA48C8AA6F3A14D900C1C15E906D801AE3CD1B0561BD0C858F06503A9341734BABE5B7B0F3CBCE7169208070B006A525034E373BDA2D47DAF2BE9291B38009F8FD0807AB515136709C9EEB38D2D68E236D1DC86433D6AACEE7F52054536D59B5F7';
wwv_flow_imp.g_varchar2_table(17) := 'AC0F047CBB361CBCC3CEBBB40D505462FAEA6800F18018A2CEAE6ECBE9E5FDA2F2D2D2DE55D340D7F91799C9E6D0D5DD6DADB0D8FFE16D015ED969DAD021F2EAAB3B91B0FC2506ADAC24809292C009B710EC28B69032B22D1009DC53170A6EB0D367DB00';
wwv_flow_imp.g_varchar2_table(18) := '35C69BEF11849BED343ADE29ACEF395E3D994456788381186DEFA6FF3921C0CEF1E8CF51EF544796D5996E7B410AA061049DC802C900F464AB4301341CA0F2B2FC3ED0C9F6A60B341EDEBAB0F6813ABBA4B430BDA73022941D694249472B40A614859CF4';
wwv_flow_imp.g_varchar2_table(19) := '95080D899955E8AAAEB5C2364ECBF406C83450F25F77C3BFED2160D072DDA9524E6A79B71BC94BAF41E2AF6E01B4D1E387E3D5C1B40728F0DFF7C0FFC4C310B982DE44325E7D4EF9E7C8E546F2928FA0E7E3EB1540300D288026C6AC0268B0BE144013A3';
wwv_flow_imp.g_varchar2_table(20) := '87337E95051AA43305900268C21A5016C891CA940552002980A48532D4143661989405521668C2D00C1650002980144027CF14E6E4B8A71359FB0C290B34991688B30E675642D484202A6601BA0BE0939EAD7150E3BB1CA53CC1D96ACEC20F40D4CD86A8';
wwv_flow_imp.g_varchar2_table(21) := '0E037C00D2304047DB4047E240471B302CADD63E26A34B2A80260320B707225C0BB1FC7C68672C85A8090381D23C041CC4ED6887B1F5B730773C0EA492C70729F9BC99CF0F6DCD65D02FBBC68210A257B6BBCB02C87C791F68F773A0781360653C16A628';
wwv_flow_imp.g_varchar2_table(22) := '808A0D50A004E2AC95D02FBA0262F15910B3AA80E1F9CFA609E3A9DFC3BCF707A0A686110112B5B3A1DDF8F7D0D7ACCD8337B8E472A0F623A0575F84F187C7402FBE00F4C839B7351C430550B10062ABE1F1429CBD0AFA5F7E1ADAE9EF07BCBE11CD02A5';
wwv_flow_imp.g_varchar2_table(23) := '92C86DDF0CBAFF3F8058E3C816285C07F1F19BE162107D03E7CD8654984EC17CED008C5FFD02B4F77F814C5A4ACA855A858D66CD0BBC0F24EA4F85FED9CF435BB9BA1F1EE2D31BDDC7403D3D20D3B4FC98ECA1B7917BEC57701DD80DDD18F9CCB9A1BB90';
wwv_flow_imp.g_varchar2_table(24) := '7BDF32B8AEBC16EED9F301BE45845362D92F2AAD80F07AF3A3648876EE40EE673F001A0F5AC9FB328BB24045B140ECB304A05F7425F40DB759CE2FBF48B3BB13E93DCF23B9FD77C8BCFCA2F5B24104CAE5E03573D6F5FAC3F2F0FB7B6B10C03731A53517';
wwv_flow_imp.g_varchar2_table(25) := '844BCFFB401E1F3C672E81FFE2ABE05DBE0A5A6979BEBE9E048CBBBF0DF3C92DF936241605503100E2E92B5C0BD74D5F82F6C14B00971B94C920F9D416241EBC17E6E177A0E57210BDF7EC30341E4DC07D828B193895344B84B4C949F9F9419010305D2E';
wwv_flow_imp.g_varchar2_table(26) := '68A7CC45C97537C2FFA1CB21DC1E209785F9EC13C86DFA1E106B923A8D29808A02900971DA99707DF54E88C82996D39B6B3C84AE1F7F07E6AE67E0360DB806C1C2930C67878E35D930370C4FDFF54EFC6F8E08594D8776CE6A947DEE76B86A4F014C1314';
wwv_flow_imp.g_varchar2_table(27) := '3D8CDC3FDF0A7AF395E39D6E07164901540C80188825CBE1FAFA8F20FC018B8EF40B7F44FA9E7F85EB9D37A0B3EFE2E0250E716AC15B4926720B16C377CBEDF02C5D919FC6BABB90FBCA7AD02BFBA5640EF6B5A9002A06406C5D969D07D7377E04C19B85';
wwv_flow_imp.g_varchar2_table(28) := '7CF8F0D927606CFA1EB486772DE7576661679CE62D82BEE156B8979D970728D18DDC1D1B402FEFB51C6E594501542C80969F97B740BD0019BD3E89683828D52258C3310998BF10FAFADBA02F5B65016426BA61288046FEDD4CF558183BB7DA300BC40099';
wwv_flow_imp.g_varchar2_table(29) := '9BBE072A04407C7276DE4268C701B41EF4F23E6581866334D50162A759AC5C0DD7D7EE1A62810A0AD0FC85D06E1E64817829FFD5BF05BDB45BADC2A615401CA608D5425BFB51B8AEFB6C6FBC8B306081DE95BA2ACAAFE74D88B98BA06DB8153AFB40FC5F';
wwv_flow_imp.g_varchar2_table(30) := 'B91C8CFB7F0273DBA3404B4C5AA055F94005F3810450566EADBE780391FF151533F2AD71ACEBC9C760FCFCDF8168837C807847BB7E0EB41B3F0FD79ACB7A03AD04EAEC00ED7FC16A9BFE6F2FD0D9E9F826750550210072B9204E996745DBF50BD7824318';
wwv_flow_imp.g_varchar2_table(31) := 'F071DC4B58F0E4628DC8FEFA3E88273743EBEA943AA5E4CD0DC12CAB8079D195F0FCC527E10AD7F55B3EDE8966BFCBD8F13868F71F4187DE76740A5701241B209F1FE2CCA5D694A59DB5326F757A97E9944923FBD6EB486EDF0CF3D9EDF0B51F41FE6645';
wwv_flow_imp.g_varchar2_table(32) := 'F9852368A95935D0CEBF08FE8BAF847BC1E9109EDEF8185BA8CEA3305FDA0D63CB6FF24BFB94BD108702482640BCDF73FAFBA17FEA73D0962CB7A2EF7DC5ECEA447AD733483EFE08722FBF086F3201AFC6B12E595B884321E43B8CD22690F607A09F7916';
wwv_flow_imp.g_varchar2_table(33) := '02977E04DE7356432B2B1F78309B86B96F178CFB7E0C7AE3E5FCB6F6048B02483240DA851F867ED317F349627D70102177E86D746EBA0BC6DEE7E14EF5C02B00BD40F0F40DC9E00D4B0232DE00F4B3CF41D94D5F807BCEFC41FD32AD843363D35D30776C';
wwv_flow_imp.g_varchar2_table(34) := '55004DF0C773FCE312D239CC056740FBE406B8979E03E1F7F7BF2CB3F31832FB9E073DB905DA813D10892ECB1F2A68D13450A00C263BF017AE85E7EC55D0CA2BF24DF2EE74AA07D9BDCFC3FCE546686FD9BBE85F5920991688D32B5C1E64E72F827FDD0D';
wwv_flow_imp.g_varchar2_table(35) := 'F09EBB1A5A69C5C02F3E9B05351D86B97D338CED8F029CBB5CC8521D827EC955D02EBE0A22520F7064BECFC9E654929DCF20F9F0FD70BFF52ABC366F235100490688532C9242873163167CAB2F45E0F26BE09A336F88034BC73A60FCE6973037FF8FE5CC';
wwv_flow_imp.g_varchar2_table(36) := 'CAB898690887ECCB945740BBE263D0AFFD1444C5CC418E7CC69A4E7B1E7F18A9A7B741EF68859F0C2B75C44E51004906C8CAD3314DA409304ACBA12F580CFF6557C3FB8173A1D7F47E888608C6935B60FE9C739E0FCBDF07E28DC4BA39D03FFB056817F0';
wwv_flow_imp.g_varchar2_table(37) := '3E501E0EA3258EF4BE9D486E7B14C69BAF40EFEEB47C31B7836C0005906480AC19C28A67E693BDB22E3710A987EF92AB50FA89F5F95B5819A042C7C2E67230F55668CB0776A2BBFFF31EA4FEB0058835C09DCBC2ABF5DE206BC7F4F4CA28800A00505F95';
wwv_flow_imp.g_varchar2_table(38) := 'FDD64868D0567C1033AC740EBD38007134FEE6DBA0F545E37B12387AC72DA003BB2D709C589DC12A53001510A0FEE5340468D92AF8FFE5C793174C4D742379FBCD10AFECB73E0C23AB28808A009095CE31423E5051A3F1BD0965500965C7FF76A67A3AC7';
wwv_flow_imp.g_varchar2_table(39) := '89012A44349E2086A773A884B2D18DEEB40068A484B29F7E1F74983312E5A6B4B293AE009AC0243DE501E238FC592BE1FEFA0FF3A7488580B1EB19983FF92EE89D370B03D082D3A16DF832F4A52B07A5B47252FD3EA929B4CA072A860FC417262C7C1FF4';
wwv_flow_imp.g_varchar2_table(40) := '7FF837B882110B187AF72DE436DE09DAFB3CF87A61A985F775D8E26DB80D62F6BC7CFE51730CE6D7BE980F9A4AB4780AA0220064E5E784EB810DB7C277EE85F9CB14D229188FFD1AE6EF1E04351E020CFEC2615F349C0F858D7367D83A18C65F87E68170';
wwv_flow_imp.g_varchar2_table(41) := '8456B7AE7CD1AEBE1EFAE5D7E6F3907239A477EE00367E078213D8C65BF738A85600150920235082DCDA8FA2F4C6BF83E0AB5C7869DFD16A1D37369FDB9E8F8BF139782BC899CCDF0D64417582C2273CF82CBCB73768CB479CAB43D0CEBB08DA87AE8098';
wwv_flow_imp.g_varchar2_table(42) := '596541C92732123FBD0BAE6D8F404F261440C3553AD57D202B8CC03BD37317C27FCB97E139F303F9CB0FD872A4925638834F8E5AF7F858A7481B61EEDA017AFBF5D1739739EB71FE22682B2FB0EE1AB2BE53C1F70E454E81E0D3A8BDBE165FDE9039B007';
wwv_flow_imp.g_varchar2_table(43) := 'C98D77C27BF04DE92924CA0215C30259D91384B4C70B63C56AEBDCBA7BC162080F7F58371FDA1848E622209D86B1F52118F76F025A9B47BEDEA53A08FD86BF81BEF61AFEE0FCC0AD1BD699E8FCF4676540FEE935241EF819F4DDCFC29B494BFFA09D02A8';
wwv_flow_imp.g_varchar2_table(44) := '480071333C2125BD01EB8C5860DD75F02C5E02C177040D7AE95677D8E9FDE376983FFB413E6779B8D3CB7944B3E75957C5E8E75F3CF4EFBD30523A85CCAB2FA1E7910761EE7D0EFE540F0AF1195F055011016217396312926E2FC4DC05F09EBD0ADE2567';
wwv_flow_imp.g_varchar2_table(45) := 'C3356701F4CA6A40D7F249F74D0DC8FEE63E687FD80C91E81ED102992565302FBA029E8F7E02AEDAD9FDB246EB11E40EFE09E9037B90DEBBD3DA26F06733F068635FD6300E9FF9B84714404504C89A5638E9CC30913209666919F49A30B4CA6A08CEDFE1';
wwv_flow_imp.g_varchar2_table(46) := 'E53D7F93B5A30DDAC1B7E0EBEA18D567B1EE072A9B019A330FDAAC2AEB7CBDC91774761D83D97604464B0C5A77177C9A8057977779C3708214404506A80F22BE86256390953B6432567C41546FE17B827CBA80EF041FE1659F2A659A48313496CFD3BBEC';
wwv_flow_imp.g_varchar2_table(47) := '27138C0B47DB3DBA18726D8C1D0B33968C02681200EA6B9233A2396F88DD967C7634DB27014649E75C9D31DE1ECB186CC986C9324F7CDA632CF9B1E018CFDF15409308D0785ED0547F4601A40072C4E849015053ACF95B7F5E21DFEE4813D6F2597DF272';
wwv_flow_imp.g_varchar2_table(48) := 'A23A940D10806FD78683774CB41FFCFC38833FC757DD146FB90344DFB4D3E8101905D08455281D2021BE521BAA618330E1621BA0C668F3062170F7845B1C2EA0009AB00A650344845BEA22C18D13EE88330B14BF1E24EEB7D3A8B240CEB4261B2008BAA1';
wwv_flow_imp.g_varchar2_table(49) := '36147AC04EAF6C5BA068B4652D09FABD9D461540CEB4261B2041E2F248A466AB9D5ED906A8311E3F479078DE4EA3C701F4E026F8B73D04C1DF9550654C0D90C78BE4A5D7A0E7BA9BA4643A92A073EB42A19D63363CC203B6018A465B179130ECDD0E30B8';
wwv_flow_imp.g_varchar2_table(50) := '2364C2B5F5B728D9FC00DC47DBEC8CE13D27939D5189C495D75BB94E8377D3ED2A42907E7A2452F5BA1D79DB001D3C78D0E7F1053A008CFCF99B71F68640C8BCF92ACA1EBA0F65AFBF089129DC77B6C6D9A529FD18793CE85A7416BAAEF9143CA72D86B0';
wwv_flow_imp.g_varchar2_table(51) := 'BF90EE1B672A93EA9979EAA9A7DABAEDCA3640DC7A632CFEB480B8C0A9C6931D6DA0FDBB50FEC2D32839FC0EF49E2E08CE6956A55F032434188132244E998BCE156B2096AE849F3F7AE7B01068475D38B4C66E358E006A8A35FFD39F8349FF68B7F13EB9';
wwv_flow_imp.g_varchar2_table(52) := '6C3683446B2B8C58234ADE7A159E636D10B293DE9D767292E549D391A9A84462FE62E8E13A945455C1DD77758CB3BE7DAD361CE4F768AB3802A821165BA3417BCA56CB8384ACCCC1741A89440299540AE628DFEB72DACE7497D7741D1E9F0F252525F07A';
wwv_flow_imp.g_varchar2_table(53) := 'BD52321D4D9817D687C34FDBD58D238064F941DC798628C72719D269989CA36CE3EE40BB4A980E727CC308E72E31382ECECD9673CAC391FFC37A73041057D0148B3F0088EB64BD04498A91D59D29578FDC1F163D581B0E5DEF64908E0192B61FE464144A';
wwv_flow_imp.g_varchar2_table(54) := 'D696069CECFFF435E81820AE281A6BDE49C04A5BA3504293A20101EC8A8483E7386D5C0A404D71497131A7A351F2E3D78083F8D7E046A4004444AE68BC853F4F5C37FE11A827274D03024D9160CD1C21C418C770C7EEA114802C673A1E5F07120F8FDDA4';
wwv_flow_imp.g_varchar2_table(55) := '7A62D23520E8EADA50E87732FA210D20EE4C63B4E5FB42D01764744CD551180D1089BBEA22355F9455BB5480F610B943F123CF09D072591D54F5C8D38080783A1AAABE7499105959B54A05883B158BC5E69842DB0F42EF87BA647555D5E35003CD2E0D4B';
wwv_flow_imp.g_varchar2_table(56) := '82C160B3C37A86884B07C8F2879A5A9642A3DF029823B3B3AA2EDB1A38441AD6D505832FD9AE6114C1820064F9438D8D9542733F00818B65775AD537210D3C4946F6637575750549B62A18403C4422D263F1961F12B0614243560FCBD2C07723A19ADB85';
wwv_flow_imp.g_varchar2_table(57) := '1092EFF31BE85E4101EA6BA6F704C75D007A3F5D234B3FAA9E51349084A01B6B43A1070BADA1A200C483686868ADD55CC65F03741320EA0B3DB0F768FD8D7FDECCDD64E6F44DF5F5554DC5D041D100EA1B8C35ADC55AAE2681F5002E959111500C454DE1';
wwv_flow_imp.g_varchar2_table(58) := '360C406C21887B6A43555B0B395D8DA483A20334B8136FB7B757F853B925D0CCA520B114C00708381D28C8C55E53988171772D27003EC8B01F44FB85D0F7BB5CD8575D5DDD35EE1A243F38A9008D3696582C564DE4AE24322AA1532548AB24D02CFE2ABC';
wwv_flow_imp.g_varchar2_table(59) := 'E4F14FC9EA08E81210ED10661B0CD12684DE2644B62D1C0E1F996A1D9E92004D3525A9FE8CAE010590A2C3910614408ED4A78415408A01471A500039529F12560029061C694001E4487D4A5801A41870A401059023F52961059062C0910614408ED4A784';
wwv_flow_imp.g_varchar2_table(60) := '15408A01471A500039529F12560029061C69E0FF01C064C845B5677C140000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(94277585949483502)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE900001CD849444154785EED9D09745CD579C7FF6F995DB22C59F28A8D17B0B1B1019BCD188C43ED504E315B81B2A6A4490804278126E1';
wwv_flow_imp.g_varchar2_table(2) := '24210DB42925096439242581B42421690E341008010C9C623078C11BDE70B08D57BC20CB92B56BD6F7EEEDF9EECC08693423CFC89E9927BFEF069D083473DFBBF7FE7FF7FBEEF65DED607D830427AE0197D680C600B8B4E5B9D8AA0618001682AB6B8001';
wwv_flow_imp.g_varchar2_table(3) := '7075F373E11900D680AB6B80017075F373E11900D680AB6B80017075F373E11900D680AB6B80017075F373E11900D680AB6B80017075F373E11900D680AB6B80017075F373E11900D680AB6B80017075F373E11900D680AB6B80017075F373E11900D680';
wwv_flow_imp.g_varchar2_table(4) := 'AB6B80017075F373E11900D680AB6B80017075F373E11900D680AB6B80017075F373E11900D680AB6B80017075F373E11900D680AB6B80017075F373E11900D680AB6B80017075F373E11900D680AB6BC0B10048C951DB4F4C656AD034E794CC7100E8BA';
wwv_flow_imp.g_varchar2_table(5) := '8EE48F06FA1FA713A7062424A86313424088E4EFE54E8E0140D334988601AFCF03BFCF078F692A10389D383540824F581662F13862B1382CCB5630943339020012BFD7EB41281080D7EB55BD3FA713B7061408090B5D912862B1585921700400D4DB5756';
wwv_flow_imp.g_varchar2_table(6) := '84E0F37941307072470DC4E309747685118DC78132B943650780DC9C40C087CA5005F7FCEED07DAF527685C3E80A47943B548E5476004CD344D5900AF8BCDE72949F9F59E61AA0314147671722916859AC7F5901205F90DC9E9AA1553CE02DB310CBF578';
wwv_flow_imp.g_varchar2_table(7) := 'D20001403FE5707FCB0E00CDF80CAB199A77FD5385456331D563C42D4B7DCF6B9A0804FC6AF6289F4A944220128B23128DAAC1180D3B3C1E0F027ECA23BF7108CD5E24DF23A66636280F2FE511F02B6B96CF7BE45DE813FC8324FEF68ECEB2D4D9A00280';
wwv_flow_imp.g_varchar2_table(8) := '444795D5D2D6AE2A8CA6D32891E0865456A0BA6A881A4CF7377D6ADB021D5D9DA93CBA104FE541F0A4F3A808058F92878DF6CE641E1D1D5D882712EA3D027ECAA312D55595A80885CAD2A083911506200F0B403D7F3812C1C1FA06747485FB4C9D91E82B';
wwv_flow_imp.g_varchar2_table(9) := '43418C193502C14020ABF8280F9A753878A8410DBC32E7A0290F8260CC88E1AA27CFD68BD3777AE691B998631846771E7E7F7E1669308AF678BE3303900700966DA3BEA1114D479A41BF674BB490563BAC06A346D4A945B5CC44AE4A7DC3613435B7802C';
wwv_flow_imp.g_varchar2_table(10) := '41D63C4C13C36B6B30B2AE0E86D177218EA6EE3E3E7C18479A5B73CE5F933B95CCA396C7367990C200E4010009EFC3DD7B95DF9D6B099D7A6C7265264F1CAF16D632137D77C7EE8F94EBD45F1E41BF1FA74E1AAF56A3331359A19D7BF675BB5FD9DA97DE';
wwv_flow_imp.g_varchar2_table(11) := '23140C62F2C49341168153FF35C000E4010089F6830F77C14A0D7C7355294DAB4E9B3C29EBB42A0D7AB7EED80D3B870549E74983D969934F81C7D31700727FB6EFDA73D4D54B9ADDA23CB2592206A2770D30007902B07DE79E7E7BDEF48078CA29137200';
wwv_flow_imp.g_varchar2_table(12) := '10C387BBF6740F5AB3F6DE00C8779F72CAC4AC1680C60E3B76EF55333FB912AD650702019C76CA04B60079D0CE00E40100F5FCFBEB0FA1B9A52D67EF4B83D89AEA2A8C1D351264093213CDD61CA83F8496D6F69C7990CB32AC7A284E1A3522AB78C9121D';
wwv_flow_imp.g_varchar2_table(13) := 'F8F8909A01CAE5469926E551ADF2E00D7D47278001C80380F414E8C14387D56C50A6F8C8EFA6D99F312387E79C0AA53C68FA94F22077A8671EB43157D734D014E8E811C93CB2CD02D942A0ADBD031F1F3ADC673C92CE83BE4B79505EBC1EC000E4AC0112';
wwv_flow_imp.g_varchar2_table(14) := '60210B61E4BB37B7B6A9DE37B97F24E986506F1F0A06D43A00AD2AF737F0A4EFA4F320901296AD4E1DD08037140AAA3CE8A7BF3C68F1ACB9B515ADED1D08875379A416D348F4E93CB8F73FBAF8E9136C01F2B000E9AA54F3F0E1B0AA34DA53AEFC7E9F57';
wwv_flow_imp.g_varchar2_table(15) := 'F5D815C1FE17B0D279104804507B67EF85B0CACA90DA929D8F70290F1A10ABF748241444B4924CEF110CF8F3CA233F799CF89F62000A00E0C49783FB4AC8003000EE537D8F1233000C0003C09BE15CAD0157179E2D005B0006C0B5162010C0B0A1435C2D';
wwv_flow_imp.g_varchar2_table(16) := '00B717BE2312437B6B6B59D64CCA7B1E40D7E13BFC31AA572D71BB065C5B7E8DA693A79E858EA93341BF973A9517008F07DEF756A2EADFBE0247850B2B752BB8F979F118C2B7DC85AECF2C82168F95BC26CA0FC08655A87AE8EB0C40C99BDE190F24D177';
wwv_flow_imp.g_varchar2_table(17) := 'DD783BBA6EBA9301704693F05B94B2061800B600A5D49BE39EC50030008E1365295F880160004AA937C73D8B0160001C27CA52BE1003C00094526F8E7B1603C000384E94A57C2106800128A5DE1CF72C068001709C284BF9420C0003504ABD39EE590C00';
wwv_flow_imp.g_varchar2_table(18) := '03E0385196F285180006A0947A73DCB3180006C071A22CE50B31000C4029F5E6B86731000C80E34459CA176200188052EACD71CF6200062B0074AF6DFA876445B7DAF7BAE3580282A28522F9DF8FE5FEE3F46DEA99F9D0F333FF762CCF29031E0CC06004';
wwv_flow_imp.g_varchar2_table(19) := '8044667A8060085AA8020884805008F0FA0049624F09331C065A1A219B8F00896418C7829361401B321418361CA8A8A440A89F3C83CED0767502E12EC87067F27775E974F6DB6F0A7E7609BEC0000C2600349D2E0F8036B406DA88D1C094D3A14F99016D';
wwv_flow_imp.g_varchar2_table(20) := 'EC0468B5C3814090BA7BF50F6C01D9DC08B96E05ECD75E80DCB51DA033AF85F4D024FE11A3A0CF5F08FDC205D04E1A0778BC40CAB01054EA1907F741EEDC0AB9F57DC8037B215B9A00824F94FE9079A1CC30008305007271AA6BA14F9F09ED8279D0A79D';
wwv_flow_imp.g_varchar2_table(21) := '05ADA62E29C8B4FB93296E724FE27188375E82FDA7DF41EED901E47B6512B9374386C2B8FA261857DE040CADA1F8ED49C0D2A9DB0D13806D43B6B540EED80AB17619E4FAD590F507003BF7451E858AB5189F6700060900DAB889D0172C847EF1A5D06A47';
wwv_flow_imp.g_varchar2_table(22) := '003E7F52F87924F9F17ED8BFF801C48A25809EE79D6142401B7332CC077E0A6DE2A980D1F7C28F3E8F26D72791806C6D8158BF0AE2F51720FFBA41C1E1D4C400381E00096DDC24E8975F0763FE42A0AA3A6FE17777D42D4760FFEC4188A5AFE5FF5D0260';
wwv_flow_imp.g_varchar2_table(23) := 'EC04980FFD12DAE8B1F97F8F1E4A96A1AB1362C36AD8CF3D05B97593632160009C0C8094D0269CAAC4AFCFBB0CDAB0BA0175A4D69AE510BF7B0CD8B2217F1788DCA7DAE1D03E7737CCF99743A30176A129DC09B17E35ECE77F0F49CF76A03BC400381980';
wwv_flow_imp.g_varchar2_table(24) := 'EA61CAFFD62FBB1ADAF05185CA0F321A457CDBFB88BDF44798EB96C36C6FCDBF279712C2EB436CEA99F05E75237C336743AF1A5AF03B20DC097BF912883FFC0AE48A396D60CC00381500D38476FE3C18377F11FA94E9BDC69EDD2AB46DD8CD8DB00E7C04';
wwv_flow_imp.g_varchar2_table(25) := 'FB703D24CDBC90FB414908888E36C4B7BE0FFB834D0874B5C3A7E6F1F3D7B025810EC38471EA3478A7CF825E371C5A7A2CA069D0BC5EE8357530C74D80513722BB959012F2C861D8BF7F1C62E9AB40477B613351F9BFEE803EC900381100126A65158CCF';
wwv_flow_imp.g_varchar2_table(26) := '7E19FA257F076D4855EFC6A5DEB9AB13899DDB105FFF2E621BD620B1FB4348EAE1538B5F0A037263740DA66E20641AF0AA599CFC932D814ECB46826678D4DCBE960A209B0449F307608C1D0FDF59E7C177F66C784E9B01A3A6B6AF9589C720562F83FDEB';
wwv_flow_imp.g_varchar2_table(27) := '4721F7EF75D43A0103E0440068FE7DE2641877DF9FECFD33667B64B80BB1F5ABD0F5E7A711DFFC1EE8DFFB4C51A6744EF3443E5D835FD76014B2064063590031211011120443D64416C730E0993405C185D7C33F77010C5A93E89984806C3C04FBB11F40';
wwv_flow_imp.g_varchar2_table(28) := 'BCB71288841D63051800C7012001AF1FFAFCCB61DCB6085ADDC8DE62B22D2476EF40FBAF7E82F8A6754034A2FE9EEEDB7BF6F1A477AFA6C1A7EB300AEBFCBB9F49FD7E5C08C484ECDE59D13DBB94FA85D8903A41301995B77D09BED99F52EE51AF9488C3';
wwv_flow_imp.g_varchar2_table(29) := 'FEE36F60BFF834D0D890FF58247F8335A04F32004E03807AD45005CC45DF5673FEB4DDA15767DADE8AF0EB2FA2F3D73F57538DA6AE2991D32C3DDD099CA9F302DDFEEC9D7C6A6633F38F04872D25E252224180E83A42D7DC82D0759F8139665C8615B093';
wwv_flow_imp.g_varchar2_table(30) := '3342BFFC21E4AE6DF9AD2B0C48D2857D89017022005543D502947EFACCE44A6F8F64EDDB83F69F3F04EBBD77E11336BCBAAEBC9F0176F085A925CBA755EF2F81849488D836F453A7A1E2735F85FFC24B7A7F9A06C3870EC27AF01B905BD627F732392031';
wwv_flow_imp.g_varchar2_table(31) := '004E0380BAEC11A3E079F017D04E9ED4C755886FD988B67FBD07DEE646D0CC7C81E3DAA2498E4088DB02B1CA2A04EFBC17C1CBAFED0B406B33AC07EE86DCB806F03000CA753D58DF906B7855B4C6EAF661E9820CA7014003DED1E3E079F8BF921BDE3252';
wwv_flow_imp.g_varchar2_table(32) := '6CDD4A74DEB708213B8EFC364214BD1ABB1F20C90AF802F07DE95E04AEBCB12F00ED2DB0BEFB5506A047CD300099FA2400C68C87E7474F26777866A4C4DAE588DC7717FC0EDD6999F005E0B9F35E78AFBCA10F00A2AD05F6FD0C40CF8A6100720060FEE8';
wwv_flow_imp.g_varchar2_table(33) := '49E85900B0D62E47E23B8B6038705B014D9C0A7F10E61DF7C2CC06406B0BEC07180006A03FAF44D7215316201300F215C5BA15B0BE731734CB89DB8C5300DC792FCC2BB2580006A04FCBB305C862018E0EC0226856A274CE7DDE4F92108194056000F2AA';
wwv_flow_imp.g_varchar2_table(34) := '3506202B0027C3F3A35FF771813EB1008314001E03B005386AB7402ED049E3E179A4EF1860D003D04E83E0D434289D2D7640E27500A74D83D2B9DE6967C273DFC3EAEC6FCF34A801A005B35814F6A3FF0EB1FC0D7590BE7BE76A194160009C00406A4319';
wwv_flow_imp.g_varchar2_table(35) := '468E817EFEC5D02FFC1BE8D367F55905763E0080F007607EF16B30AFBAB9AFACA580D8B11572E55B10EF2E4D9E51A6B14C819BF48E272F0C40B901A0E9CC502534DA6F3FEF52E8A7CF4A465FC87106D75EBB3C390BE4D073B642D360D029B21B3F0F2DDB';
wwv_flow_imp.g_varchar2_table(36) := '9965DA12416717B66D8658F116C49A7780D6962C718D8EA7CC73E7C500940B00DAAB4F111AEA46423FE742E89FBA0CDAB433A1A9D026D993E8EC80B5E465C89FFF07B4F4C197D2E824EFA7483A147FF5CD306FBD13E6F08C9DAC3D7349C421F6EC805CF6';
wwv_flow_imp.g_varchar2_table(37) := '7F10ABDE86DCB70748C452615D4AB7B3890128070012C9432E274F827EEE45D0E72E48EEFBE927C94818B18D6B91F8CB33F0AE5906AD3B384FDEDA2CC907A56D213E6506F42B6E4060EE02E87488BFBFD47244B943F6CAB7801D1FA838432A8A4489DC22';
wwv_flow_imp.g_varchar2_table(38) := '06A0D400A85E7F14F499E7439F43BEFE592AFE4E7FC93ED288F8E675882C590CB176392AAD78D9767F1E8D22DA0F14D60DD893A723F0E985F09D7B61726B3405F5CA95E8C4D8AE6DC9B1C19AE590FBF700B1E8D11E755CFECE0094120012FFC893A02FBC';
wwv_flow_imp.g_varchar2_table(39) := '1EC6DC4F270FBAE70A5445BE32B9094D87115EF20A226FBC027BFF5E786D0B95A6D3B6C1F5D662D81688683AF46175F09D3717A16B6F81396AAC3A429933961195B7A30D62ED0A88BF3C0DB97D4B32CC62912D0103502A00C8E7AFA9857ECD2D30AFBA09';
wwv_flow_imp.g_varchar2_table(40) := 'A81892BB71D581F67624B6BD8FAE179F417CE31A750698425AF9352060381B80B890EA1825AD5553381573FC2484AEFD0C7CB3CE8741D1EC72AD01A8487302F6EB2F423CF75BC85D1FE61FC66580F68001281500B6ADFC7CF37B3F8336767CEE086D4280';
wwv_flow_imp.g_varchar2_table(41) := '5C9EF0ABCF23BAEC0D581FED868C4694F8D3677BF522F78A03D452F7D7C80DA25362511BB068ACE2F1C0A81B05DFF973115C782D3C1327F77B224C36362423D9BDF94AD10FCE30002503C08236E934983FF96D32DA722E110B01EBD041743CF1634457BD';
wwv_flow_imp.g_varchar2_table(42) := '03D9D509AF6128F17B34CD3107608E0609AD59580482201004A461C03BF50C54DE7E0FBC679C03ADBF95E0580CD6A3DF8378F9D9A21F9C61004A06800D8C1907FD9F1F8079D679B97B36F2856351E5FE44972C865CB30C66E3219852649F573F9A12CBF8';
wwv_flow_imp.g_varchar2_table(43) := '77B204746ED8AA180231E36CF8165C09EF59E7421F5ADDAF6F6F6F7B1FE2C94721698DA0C847271980520140620856207EDE5CF8AFBE059EA9D3A1659CF7EDA5552961EFDD09B96E25E4EAB7213FFC2BD04941A59CEDFFF7F08354005F72FBB473E600E7';
wwv_flow_imp.g_varchar2_table(44) := '5D0CF3B4E9C93B0C72250958FB7623FAD2FF427FFB75984DC58F1EC100940A008AA0000DED810A78CF9D03FF9C4BE0A305B0EADEFB7DFA68A3AD1562EB2688554B55C4651CDC57C63E3DCF47D360B67A18F433CE813EE71268E4F2D08C573F6317198F21';
wwv_flow_imp.g_varchar2_table(45) := 'BE712DA22BDF42ECDDB71168AA57679E8B9D188052022025DA2D01DBE38167DC4404165C01DFECB9304F3A191A853BCFD9330A750985FDE66288579F070ED7175B1703CF3F75AF00099FA67BF5C9A7F7EFC65816ECA606C436AF43F8D51790D8BA057AB8';
wwv_flow_imp.g_varchar2_table(46) := '13412319CFA8D88901282100E40FD38030AA824C49B5ED8122A905165C0ECFE4D361906FDC4F1C7E15E7FFD9A7205E7AC6113B29B38A9366BBCE9B0BE3E6DBA1D3582727D4126A6B07B93C2BDF4278F1F310471AD50A37093F3080487603818501282100';
wwv_flow_imp.g_varchar2_table(47) := 'D44014488A00A0694215C693E6C9274E867FEE7CF82F9807F3A409D0FC39AC816541BCFB16ACEF7DED93CBE906D2EAC5FC8E102AA02F014001BEB2256925201A1B10DBB01A91A5AF23B165835AE7D0A554335D14C6D153A2782F0C4089012041A89991D4';
wwv_flow_imp.g_varchar2_table(48) := '62114D15D214A15E5109EFB43311B8FC3AF8CEB9003A5D7C97C5674E9E095E94DC46ECC4E4F5C1F8FC3D30AEFBC7ECE24FC411DFFE57445E7F51F9FA76731334DB52E2A7053E0260A0611C07521D0C401900A086A2CE5F8515141231355DA8A9FDFFC6E8';
wwv_flow_imp.g_varchar2_table(49) := 'B1085C76152AAEB9191A419091C4BA956A3BB4330190EAC64AF38BDF809E191542155A20BC6431C22F3D8BC4F62D9091087429546F4FBDBE9925B4E340445DC87718803201906E248ABA4C5680A2305378416978E099723A6A1E7A2C196ABC474A1F88B1';
wwv_flow_imp.g_varchar2_table(50) := '1D6B0192001877DC0BE38A7FE8AD432A5BB8132D0F7D5BF9FC14D5C248C535A5F08ED4EB976E13F427AFC600941900D5314A9A224D5A03B5CF73F4380C7BF42975E9443600C805726A54084916E08E6FC0C81615A2AD05CDF72D4262C31AF87CDE6450DF';
wwv_flow_imp.g_varchar2_table(51) := '32AF6E33000E00202D729A194A683AECD127A3F2A7BFE91367DFF94722256420A82C40AEB840EDDFFD32B0712D7C5E4FC1F71514E2DAE4FB5906C04100A846D39300F87E7C028645696D41ECFEAF40DBB4163A07C755CDCD718132BBAA546CD06CA11107';
wwv_flow_imp.g_varchar2_table(52) := '8305E0C058F9DA9EE4E718802C007064B8C244742C9F6617C8812E1003702C922EECBB0C0003509862FAFD34C7062DB432D9056217A850CD1CD7CFB305709A05D074C8D163E1F9FEE3D0332E9A5383E08D6B60DFFF15C78416CC58ED8248AD03649D06E5';
wwv_flow_imp.g_varchar2_table(53) := 'E0B87DE0650B90A53F1335B5301F7C0CC62953A165448D103B3E80FD836F250349D1417B27255AEDAD1B01F30B5F83F1E92B32D89010CD4DB0FFF51EC8CD6B8B7ED22BDF6A610BE0340B40FB822A2AA17FFB87F0CCBA009AAFF7B110D9500FFB0F8F43BC';
wwv_flow_imp.g_varchar2_table(54) := 'F6E7B2C7D5EC2332415BA12F8671EB1DD0679CDDFBCF74D679EF2E8887EF03B66E620052B5C31620534504803F0071EB9DF0D38192CCA05991B00A1E653DF148F2608C534224D27B540E8171E3E7A15F760DB4EADEFB9828DA5B74E96BD09EFA4F6864BD';
wwv_flow_imp.g_varchar2_table(55) := '72C543CAB7EB3E4E9F630BE0340B40F76C991EC466CD41E8AE6FC2A4102A3D532AB8ACFDDC53C930E374EB3A5D9857AEB3C269002B86A8B3BFC675B7419F7A469FADDC14DDA2F3C94761BEF90A8CB65430DCE324E263C98601701C0080D47574D58D42E8';
wwv_flow_imp.g_varchar2_table(56) := 'ABFF02EFACD9D0BCBD2FCBA6ADD062FF1EE506C9752B200F1F026291644C4D1A29D3B6CA9E96E158E308655A99747EB46AEDF541AB1A9A8C6EFDB77F0F7DDA994020D05B93B685C49E9DE8FCD983F06D7B1F669943A2F77C3906C0890000E8F2F8E1B9F6';
wwv_flow_imp.g_varchar2_table(57) := '5604AFBC014696FB8249ECB2A31572DB168835CB203FD804D9DAACF6DC2B0248B4561C88C5922106077AAD2A899D00F4FA93317AC8D2A87DCB1AB45005B40993A1CFBE18DA8CB3A10DABEB73A7017D927AFF301D8079E649049A1A4A7AE0E568D6810170';
wwv_flow_imp.g_varchar2_table(58) := '28003168484C3A0DA1CF2E82EF9C392AC4609FA4449E5002A738A2BD444E3344CD4D2AF4B87873B13A545F300424F6AA6AE873E7439F7719349A96ED19D04AD3A151DC1E7A378223DB2176EAFDF7EE42FB133F86B9791D7CF1289C14D98E017020002474';
wwv_flow_imp.g_varchar2_table(59) := '3A24D3657A615E341FA1EB6F5351D50A4EE412D1BD5CAFBE00F1CA7390073FCA7FF04970852AA12FB802C635B7401B75D280A2B4D987EBD1F5A7FF4174F1F30876B5C353A6832FB9EA8E01702800E4C85094E544C510782FF8144257DD08EFF4990533A0';
wwv_flow_imp.g_varchar2_table(60) := '5C90BD3B613FFE08C4EA77724767CECC5908257AE39B0F413F7D66EE80B6FDBC91FDF17E74BDF42C226FBC04A3A901210D8E3803C06380540D488F075E870240AF489123C2960DBB7228FC175E82D0C2EBE1993AA3FF8872D904D9D6028B2EA77B6B71EE';
wwv_flow_imp.g_varchar2_table(61) := 'A0BCD900183711E60F9F8046639042669968CE7FDF6E84DF781991D75E846CAC47504FC6F929C7B1C7FE7A0DB6000E0640C511120251CB86ACAA816FE6F908CC9D0FCF6933608C1C9D7D5C90A5B5ED0F3642FCF74F21D7AFCEDF05A231C4F051D0EFFE2E';
wwv_flow_imp.g_varchar2_table(62) := 'CC732FCACFFDB16DD84D8791D8B51DB1D5EF204A511FEA0FC0676808AA73BF4E933FC000381800D2723A8E508C222CFBFC30C74D80F78CB3952530C74E8431AC16FA902A68FE60DFB9772B01EBE03EC45F7E16FAD2D7941B92F3828A2C0B7274BC3171DE';
wwv_flow_imp.g_varchar2_table(63) := 'C5F0D29D5FA74E851EEC1BA582421AD25D06A2E508EC831F21B1FD03C4B7AC477CE776C8F656780DBD3BDCC980FCB7227F8901703800BD20A088723401E9F140AFAA8139690A3C9326C3183B1E46ED08E874034BDABDA32B49DB5A115BBB02F1779722D0';
wwv_flow_imp.g_varchar2_table(64) := 'DC041F75C00574C236800EAF1FE6CCD9F0CD9997BCE585667B68AD81C61656023609FFC047B0766D573D3F5900BACF8022BC795211DE28D68F531303300800484340F183622AAC62B70693BA320C254CAD67584575C5524289D49012214387B7C0686B14';
wwv_flow_imp.g_varchar2_table(65) := 'B2A5C3B661D1A57E86995C90EB31D529A5808C2700BAEA35B558A618A3A5038D7CFEE49D064E4E0CC02001804444BD3FC50E4AD0F543296B90EA8C931ACB141BC51F4DDD2C3390589B9477241DCB34F980BE16A4A7F00115E68440A3E94E27FAFC993032';
wwv_flow_imp.g_varchar2_table(66) := '00830800E576A440202B406B05F443E384B455E80904C5562631A6A3AE0DA427262B4041BB286611B9443DF327B8E81914E08A846FD2EFA9383FCEEEF73FA90906609001D053C40A06E50E49E581F4B20629779F044986E1580449CFA09845947F2600C9';
wwv_flow_imp.g_varchar2_table(67) := 'BC3F79C6B13C6720801EEB771880410CC0B1363E7F9FA7411DBD10C6022D7E0DB005600B507C9539F8090C0003E0607916FFD5180006A0F82A73F013180006C0C1F22CFEAB31000C40F155E6E02730000C8083E559FC5763001880E2ABCCC14F60001800';
wwv_flow_imp.g_varchar2_table(68) := '07CBB3F8AFC6003000C55799839FC00030000E9667F15F4D0170C3EDE8BAF94E753AACD4C919A111BFFFF5C24E8A94BA96F879C5AB81441C6102E0A63BDC07004C0FCCCD6B51F9C8B7609481FEE2B52AE79C6F0D480A3F73C31710B9FE73D02880588953';
wwv_flow_imp.g_varchar2_table(69) := '592D000579D2B76F81FF898711FC78AF7302CD96B8115CFB383A61575D8BC875FF04EBD2AB8144A2E455515E007403E2D041C8BF3C8DE1CB16ABDBCB39B9A806A444CB99B311BBF26698147389028995389515004DD310A3B895EB5761D42BCF2078702F';
wwv_flow_imp.g_varchar2_table(70) := '343ADFCAC9153510AB1D81864BAE80B8E852540E1F0159860B47CA0F402C86F603FB10DAB406356BDE44F0C01EE896A52234733A016B20758639563712CDB3E6A27DD685F04D3C15951515A0F140A9535901A0C25A96858EB636C41B1B10FC6807867CF8';
wwv_flow_imp.g_varchar2_table(71) := '3E427BB6C3D774087A2C02AD0C9552EA4670C3F3D4714E8F17F1EA5A84C79D828EC933D039E134E82347A3626835FC7EBF3B0120EAA3D128DADADB216251788F342270683F3C2D8DD0E33106E044A14383BA78C4AAAC4664E4589005A0C05FD4F3078341';
wwv_flow_imp.g_varchar2_table(72) := '1865BAB1A6EC1680DAD7B66D747676221289A8280B140753AAD3DE83ED88F789A2D6629543263B342154340BBFCF878A8A0A78332F2029D6E3B3E4EB0800C80A5856029148545903024294614054C27A77EDA368E2837A7B127D301850FFAF1512F8F738';
wwv_flow_imp.g_varchar2_table(73) := 'D79C2300489789441F8FC715048944822138CE8D5DEEEC48FCA6692A7FDFE7F395CDEDE9590F8E0220FD62E5980D28B738DCF47C02C129C9910038A572F83D4EFC1A60004EFC36E612F653030C00CBC3D535C000B8BAF9B9F00C006BC0D535C000B8BAF9';
wwv_flow_imp.g_varchar2_table(74) := 'B9F00C006BC0D535C000B8BAF9B9F00C006BC0D535C000B8BAF9B9F00C006BC0D535C000B8BAF9B9F00C006BC0D535C000B8BAF9B9F00C006BC0D535C000B8BAF9B9F00C006BC0D535C000B8BAF9B9F00C006BC0D535C000B8BAF9B9F00C006BC0D535C0';
wwv_flow_imp.g_varchar2_table(75) := '00B8BAF9B9F00C006BC0D535C000B8BAF9B9F00C006BC0D535C000B8BAF9B9F0FF0FF0FA8ACFCD8DDCD70000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(94277887442483502)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A866000000017352474200AECE1CE90000200049444154785EED9D09985C45B9F7FF754EAFB34F92999E9E9E248410B2B105010191B01A11170414596453088BDC0B17F9DC';
wwv_flow_imp.g_varchar2_table(2) := '4040BD78059E4F403E01B78B888A172F8B80045983045196C82A1842B6D927B36FBD9C73EAF33D3D934C323DD3DD3367EBE9B79E671E7DC8E9B7AA7E55F53F6F2DA75E014E4C8009142D0151B435E78A330126001600EE044CA08809B0001471E373D599';
wwv_flow_imp.g_varchar2_table(3) := '000B00F7012650C40458008AB8F1B9EA4C800580FB00132862022C0045DCF85C7526C002C07D80091431011680226E7CAE3A136001E03EC0048A98000B4011373E579D09B000701F6002454C8005A0881B9FABCE045800B80F30812226C00250C48DCF55';
wwv_flow_imp.g_varchar2_table(4) := '67022C00DC0798401113600128E2C6E7AA33011600EE034CA08809B0001471E373D599000B00F7012650C40458008AB8F1B9EA4C800580FB00132862022C0045DCF85C7526C002C07D80091431011680226E7CAE3A13285A01D8D8D555191AD6F615422E';
wwv_flow_imp.g_varchar2_table(5) := '9390CB01B10C02CB00D473B798D1049A21F18E84785B817C474ABC1D0FFBDF5A386B56EF8CAEF504959BF102B0654B4FB5CF975CCE03BD18BB775E751E270C9A167C67FEFCAAEEBCAC14D8C3335600B66DDB364BF8829F12429E04898F012829B0B6E1E2';
wwv_flow_imp.g_varchar2_table(6) := 'BA4B6008024F08030FEA7AF2B1B973E776B95B1C7B729F5102D0D4D4344FA87E1AF02749C82301A8F66063AB4546401710CF4BE001DD271E985753D33C53EA3F230480063E54DF0D90381D8032531A87EBE1490286047E2D0CEDEA582CB6D59325CCA350';
wwv_flow_imp.g_varchar2_table(7) := '052D009B3B3AA27E4DFF26202E0410C8A3DEFC2813982E8124A4BC33E557FF6B8F9A9A96E91A73EBF70529009B3675570542C96F01B81440D82D789C2F1300300CE047C978E0FB0B1654F7141A91821280F6F6F632CD30FE4D425C0589AA4283CDE59DC1';
wwv_flow_imp.g_varchar2_table(8) := '04047A00F1032395B875EEDCB9240A05910A46009A9BB72F91427F1CC01E0541960B59940424F0815FC1F19148E4834200501002D0D4D676380CD0E0AF2804A85CC6A227B01D86F86C2C56FB82D749785E009A9BDBCE9402BFE0453EAF77252EDF6E0492';
wwv_flow_imp.g_varchar2_table(9) := '12B8A0211AB9C7CB643C2B00524AD1D4D2F69F42886F781920978D094C46404A71432C5A73B510427A91946705A0B1B9FD1621E4BF7B111A978909E449E007B168E4EB79FEC691C73D29008DCD6D1709813B1C21C0993001070808212FA8AFABFB990359';
wwv_flow_imp.g_varchar2_table(10) := 'E59585E704A0B1ADED30C5C05A09F8F3AA093FCC043C4C40002969E0E8582CB2CE4BC5F494006C6B6F5FA4E8F2450073BC0489CBC2042C22D02175E58886869A7F5A646FDA663C23009D9D9D15F184F60A04164DBB566C80097897C03F4301DFC1B367CF';
wwv_flow_imp.g_varchar2_table(11) := 'EEF342113D2100AF48E98FB6B43F0681E3BD0085CBC0046C26F0447D5DED27841086CDF96435EF0901E045BFACEDC40FCC300252E2E286FAC89D6E57CB7501305DFFA4B60140ADDB30387F26E02081B678D0BFD8EDABC85C1780A696B6EB005CEB2078CE';
wwv_flow_imp.g_varchar2_table(12) := '8A097885C0F5B16884FABF6BC95501686D6DADD5A5A0B73F9FF177AD0B70C62E12E8F529581C8944DADC2A83AB02D0D8DA76A79058ED56E5395F26E0360129C5AD0DF5B597BB550ED704A0A5A5650F03CAFB7C6F9F5B4DCFF97A84405C1572595D5DDD26';
wwv_flow_imp.g_varchar2_table(13) := '37CAE39A0034B5B4DE0788D3DCA834E7C904BC4540FE2E16ADFB821B65724500DADBDBEB52BAA49B555DC9DF0DD09C27139884804CF994981B770BBA320079DF9F070313D895805BE7025C1180A696B6350056712760024C6007812762D1C8C79DE6E1B8';
wwv_flow_imp.g_varchar2_table(14) := '00747474942735633BDFF0E37453737E1E27900C057C354E7F23E0B80034B6B49F2B20FFDBE38DC1C56302CE1310F2F4585DDD7D4E66ECB800B0FBEF64F3725E054540E2E1587DE42427CBECA800B0FBEF64D3725E0548C0F16980A302D0D4DAFA0548F1';
wwv_flow_imp.g_varchar2_table(15) := '5BAF368C276F6DF42AAC022E97A39D3E5F4E0E4F031C65E1C5A3BF8A222084C20712F2EDA833E079127C29250CC3F5CFF277D094027735D4452E720AAFB302D0D2FA9C8058E954E526CB470801BFCF87502888602000555540FF8D5371109012D0750D89';
wwv_flow_imp.g_varchar2_table(16) := '6412C3F124344D33C5C0ED2421D73644EB8E72AA1C8EF6F8A696B6560011A72A37513E8AA2A0241C424938CC03DFEDC670317F73B84B094DD331343C8CE1781C0605FF7637B5C5A2913AA78AE098008C44F4ED76AA6213E5436FF9D292B0F9A7AAAADBC5';
wwv_flow_imp.g_varchar2_table(17) := 'E1FC3D4240D3750C0C0C9922E0B627908C07AA9D8A34EC980034B6B61E2AA4F88BDBED1DF0FB515559019F8F07BFDB6DE1B5FC539A869EDE3EA4529AAB4593421ED65057F7921385704E003C10EC8316FCCA4A4BCDB73FCFF79DE85E859747FFC0200687';
wwv_flow_imp.g_varchar2_table(18) := '865C9D0A38F95D808302E07EA82F72F9675555C2EFF7155ECFE4123B4220994CA2BBB71FBAAE3B925FA64C9CBC24C43101F0C209409FAA62CEEC6AD022603E89E684BA61401A12B444A40801F226A66387F2A74D07B2311D3B541EB2A34EC14E3E0C8AE5';
wwv_flow_imp.g_varchar2_table(19) := '591AF89DDD3DE6C2A08BC9B10F839C140057770068A0F85515357366E5E5FE538718181C42574F2F068786CD05A2702868AE23545594C3E7CBCD9B200119181844574F9FB9E26C48696E3F565794A7D724FCBE9CCE22909DC11DE549BBAAC16000551515';
wwv_flow_imp.g_varchar2_table(20) := 'A8AE2C87DFCF11D5A63370E94CC0F6AE6EB705604B2C1AD9633AF5C8F5B74E0A80ABFB2B5311005A196EDFDE898EED9D4869FA8ED56101616E1F565694E35FB7BA9A0379B2447BCCEDDBBBD0D1D9055A681A5D65A67508F224C84E7D6D2DC2E1D0A476CC';
wwv_flow_imp.g_varchar2_table(21) := 'B75357375A3BB69B0B552422A389A637E56525981B8D9A671B384D8D80470420118B4626EF0C53ABDEB85FB1004C0072B42334B5B69B8744322572BB675557A1211A99D013203BE43D34B7B69B874E26B2435393686DED84EB13F4A6EFEEED4563730B92';
wwv_flow_imp.g_varchar2_table(22) := '13AC52D354A2AAB21C73EBA3A0DD0E4EF913F08800D08BC591B1E94826D40C4D2D6D05E5010C0D0DA3B1A50D3D7D7D134E19A842E1601073EBEB50595161CEC5774FB4A8B4B5A9053D7DFD93EE2F8743215348683A90290DC713C4105D3D3D934E610201';
wwv_flow_imp.g_varchar2_table(23) := '3F1AA251CCAAA2F238D6BCF98F348FFE8205C0A686293401A0B7F6D6C666D3659F2CD15B375A5B8368A426E3801B1C1EC6FB1F6C4132959ADC8E5010ADAB457DA426E3737DFD03F8606B235259ECD0A08FCC99634E4D687AC1293F022C00F9F1CAF9E942';
wwv_flow_imp.g_varchar2_table(24) := '13005A08DADCD864AEFC674B75B535E6DB3BD31B9716ECDEDDB829EB0727B42E108DD49ADE44A6440754366ED996D50E9561F6AC6ACC8F45F3DE5DC856CF62F87716009B5AB9D004A0BBA7175B72F5002235A617904900682AB161532E1E8018F1003287';
wwv_flow_imp.g_varchar2_table(25) := '48240F60D3D6C61C3C0981DA9A3988D5D5B2004CA12FB3004C015A2E3F293401A02D3F5A03E8CD610DA0A1BECEDC12CC240089640A5B9B9AD19BC31A00B9EDD513AE01C4CD3580EEDEC9C3CAD3E21F95870E3CF11A402E3D73D7675800F26796D32F0A4D';
wwv_flow_imp.g_varchar2_table(26) := '00688B8DB6FF68D0D1DE7BA6241481D95595985B5F3FE1B705E4DA6FEFEA41536BEB8467CCE96011ED02C4EA26DE4D203B5DDD3DE682226D4F662C8F10A610CD9F1B333F75E6943F011680FC99E5F48B421300AA142D00D23980EDE6FEFD987300E6FEBD';
wwv_flow_imp.g_varchar2_table(27) := '82CAF23273B12D149C7CDF7DA79DEE0CE700D2766811913E4F9E2CD1C0A7B2B475D0B984DDCF1328E6398086BA0842A110BFFD73EA95E31F62019822B86C3F2B4401181501FA4084E6E0F17802062482FE00CACB4ACD814BDB6EB9B8DA346077D84924CC';
wwv_flow_imp.g_varchar2_table(28) := 'C5453AB55751568A8A8A32F330512E76480446ED8C7EBF4E6EFF6879E854602E76B2B557B1FE3B0B804D2D5FA8024038A853D029BCD1A9802214F32E013A0D984FDA69C7BC8CCABC8ACCA7A66DE593E85050BA3CE9A9C054CB934F9EC5F22C0B804D2D5D';
wwv_flow_imp.g_varchar2_table(29) := 'C80260131236EB41022C0036350A0B804D60D9ACA50458002CC5B9D3180B804D60D9ACA50458002CC5C90260134E366B130116009BC0B207601358366B290116004B717ACD0350501BE2CF646D6AE2196156A70357090D29DDDD6021FC39B0D5DD89B6EE';
wwv_flow_imp.g_varchar2_table(30) := '3ADB30EBEE5B2046B6CFACCE82ED153E01235C829ED35643AB8902D23D116001B0BA2F290AD46D9B51FDB573812C9FF85A9D35DB2B1C024679157ABF7D2BF4F90BE900886B056701B01A3D0940E366547FFD4B80EEEEBDEF56578DED5947C028AF44EFD5';
wwv_flow_imp.g_varchar2_table(31) := 'B7409FB7270B807558DDBF11082C005636E78CB5C5026053D3BABD0BC0026053C3CE30B32C003635280B804D60D9ACA50458002CC5E99D6D40F6006C6AD819669605C0A606650FC026B06CD652022C0096E2640FC0269C6CD626022C003681650FC026B0';
wwv_flow_imp.g_varchar2_table(32) := '6CD652022C0096E2640FC0269C6CD626022C003681650FC026B06CD652022C0096E2640FC0269C6CD626022C003681650FC026B06CD652022C0096E2640FC0269C6CD626022C003681650FC026B06CD652022C0096E2640FC0269C6CD626022C00368165';
wwv_flow_imp.g_varchar2_table(33) := '0FC026B06CD652022C0096E2640FC0269C6CD626022C003681650FC026B06CD652022C0096E2640FC0169C92428B517431090801FAD2719764461E1BB9CE8AFE7DBA6934BFDDF321BB746DD66839ACC86BBA659DE6EF5900A60970A29FB3076001581AD4';
wwv_flow_imp.g_varchar2_table(34) := '34D8C2A510B36A808A0AA0BC0AA2A474A708D0E0D752907D3D90DB36033D9DD3C898044601AAE74034CC87A8AC0676C43114E6E0974303406F37D0DF0BD9B51D880FA745A940C58005601ADD65B29FB2004C03ECC81B9606A058B008D86B099445CB80FA';
wwv_flow_imp.g_varchar2_table(35) := '791035B510256500E84D3FE219E83A6467078C979E87F1C7FB219BB64E7D40CEDB13EA274E8572D0E1107322148974A422E9FCE4E000645B33D0D208E3BDB720DF7F17D8B211B2BF67A44CD3A8B70B3F6501B0093A0BC054C10AA0A40462AFA5500E3B0A';
wwv_flow_imp.g_varchar2_table(36) := 'CA11C741D4CFCDD998FE9B9F41FFFDDD404F577E2240A2336B0ED4335743FDCCE9E3A7191394C0D8F23EE49F9F82F1D7E7D362904CEE14A69C4BEDDE832C0036B1670198025872A3ABE740396A1594633F997EEBE7194A5C6E7C0FDAED3740BEFE727E02';
wwv_flow_imp.g_varchar2_table(37) := '60E8500E3912EA15D742D4C5F22B7C2201E3BD37613CF9088C754F037D3DE9A94B012416009B1A8905204FB04281983507CAE7CF83B27215C4EC9A9CDFC2BBE4D4D60CEDB6EFC178696D7E05300C28479F00F5AAEF42844BF3FBADB938A84376B49922A0';
wwv_flow_imp.g_varchar2_table(38) := '3FFC5BA07B7B4188000B40FE4D9DD32F580072C2947EC87CF3CF867AF625508FFE04505A96DFDB7B4C56F21F6F42BBE3BF20DF5A9F9F0D4387587128D4CBBF0D85EEC89F4A92D25C8C341EBD1FFA83F702DDD359909C4A01F2FF0D0B40FECC72FA050B40';
wwv_flow_imp.g_varchar2_table(39) := '4E98D20F955540FDEC99504FFE22505199C70FC73C4A0B818938867F7527C4A3FF0375B03F3F0190127A790570F2D9087DFE5C8860686A1E08AD0074B442FFCD4F613CFE0090A23501EF2616009BDA86052047B08A0271D8D1F09DF715883D164D3C6875';
wwv_flow_imp.g_varchar2_table(40) := '1DC6603F647F1F64320139768EADEBD03BDA9078F905A49E7F12E1AE0EF877ACDEE7580E00494362B8B61EC195C72378D047A0CC9AB3AB0808610A83525E0985BC944CE704CCE98001E3EDF5D07F711BE4DFFF366521C9BDE4537F920560EAEC26FD250B';
wwv_flow_imp.g_varchar2_table(41) := '400E60699FBFB61EBE732E8572DCA7007FE648C6C6403F521BDF45F2F557917AF74DE89DEDBBC43B94F4F68F0FC3E8EE84121F46A9221098A2000C1812B2A4144A553544A80462EC20F7F9A1D64410587E0002FB1F04FF824510E192CC154DC4A13FF81B';
wwv_flow_imp.g_varchar2_table(42) := 'E8BFFDA97966C0ABE704580072E8A75379840520076ABA9E5E78BBE03F26DCEA33FAFB105FFB04061FFC0DB4AD1F40A6521962D8C9F4910021101002A5AA803A8583399A9418D42552E45D8C7A18BBDB218F2510826FE162949D7216821F390ACA048B86';
wwv_flow_imp.g_varchar2_table(43) := 'B42DA8FFE46618AFAC4B1F30F2606201B0A9515800B280A5011608403DE72B504FFF72C687657C08C34FFD11FDF7DC019D0EDF4CB2B546C7746888D1E0F7D3209D42BB9286D03460483740078BB36DE4293575A8587D05C2B46B416B06BB274342BFF70E';
wwv_flow_imp.g_varchar2_table(44) := 'E8F7FD1C48C4A75022FB7FC20260136316802C60E94CFD9E7BC377E195503E7C6486C1A323F1EA4BE8BDFDFBD0366F8490122A7D0600610EEEDD07B8426F7F05E69B7F2A837FB400E6C9624322492BFABB2980F9C901001D1286E92448F897ED8FCA8BBF';
wwv_flow_imp.g_varchar2_table(45) := '8AC07E07659CEB1B7F7E12FACF6F85DCFA8127A7012C002C003611C86256D7213E720C7C977C0D22367FDCC3FAF6760CDEF70B0CFCEE6EF3346E5011F08BB46B3FD1F47E3A037FF7024CF4F6A781AFCBB44090B7600482283FF302949E7C1694CAAA71F5';
wwv_flow_imp.g_varchar2_table(46) := '901FBC07EDC73742BEF617168049BA442C1AB1B2F926CCC9914C2877F600B24D010C281F3F19EAC5FF07A27CFCD65FF29D37D07BFB0D30DE5C8F1255855FA163F98E355F56512421201118222FE0C347A2F292AFC1377FFCF901FA6048FFD17FC258BBC6';
wwv_flow_imp.g_varchar2_table(47) := '93EB00EC01646DEAA93DC00290859BAA423DE58B50CFBF3CE3EA7FFC2F6BD17FD3350874752044737AEF8CFD1D15232F21AE1BD016EF8B8A2BAF837FEF65E32BDDDB0D8D04E0E9C73CB91DC80230B5F19DF5572C005910F9FD504FBF00EA39978E7F504A';
wwv_flow_imp.g_varchar2_table(48) := 'C49F7B0243377E0B2589614FBDF9C7AFF34924F75A8AF095DF817FF1F2F15380DEEEB407C002306987E029405649C9F3014581DAB819D55FFF12A06B79FED881C7FD7E28675C08DFD99764580034905CBB06C91BAF46209970A030D3CB42DB6B1982575E';
wwv_flow_imp.g_varchar2_table(49) := '0775EF0C02D093F600E433EC014C469905607A7D70FCAF3D2E00923C804904405BFB0452375D0335316C3519CBEDC945CBE0FF8FEBA06414802E683FBA8105200B751600ABBBE50C1000FDA66B200A4000B068197C130A007B00B9746D16805C28E5F30C';
wwv_flow_imp.g_varchar2_table(50) := '0B403EB4A6F72C0BC0F4F80160019836C2DD0CB000584D74627B2C00D366CD02306D84052600F461CD99132F02D21A004F01ACEE1419D65BCB2BD17BF52DD0E90E043A9DE9526201B01ABCC73D00D067B5675D04DF191764DC0598310230D80FEDAE9B21';
wwv_flow_imp.g_varchar2_table(51) := '1F7FD0BC35C86B89CF01D8D4227C0E6002B074A887AEDD3EE870289FFA3C94A5FBCF680180A6C178ED25188FDD0FE3F5BF0103FD9EBA2A8C058005C0260219CC06821073174059751294435742446380A216BE002CD81BEA15DF86BAEC80CCE7FD5329C8';
wwv_flow_imp.g_varchar2_table(52) := 'C6CDE685A1C6937F485F2B4E9F357B20B100D8D408EC01EC0A96827908BA75F7942F422CD80B08954CF8718CD435E84F3F06FDFF5E07E1F12BB5E89341A3360ADFBF5D0DDFA12B273EEE4B9F160E0D9AB1048CDFDF0DE38D578061F7CF38B000B000D844';
wwv_flow_imp.g_varchar2_table(53) := '60C4ACCF0751D7907EEBAFFA8CE9FE4F7895D6C84FE84BC0D4FD77433C782F84EEBD79F32EC04800CA2A609C7A0EC2A79E9D8E5A3459A2DB8B5A9B60FCE961184F3E0CB9BD1D70B18E2C0036757FF6006086D612071C02E5F84F43D9678579F967B6AF7A';
wwv_flow_imp.g_varchar2_table(54) := 'F4AE0EC49F5D83D403F722DCDA38AD6FFB6D6ADA71663521109FBB10E133BE8CE0873F0AA562FC67C1BBFC8856DBFBFB60BCF51A8C271E82F1D6AB405FAF2B6B032C0036F592A216007F0062FE42F3BA2FE5F06320EAEA81407052D274D557EA83F7105F';
wwv_flow_imp.g_varchar2_table(55) := 'FB27C49F7D1C6A5B33CA28E49E4DED63A559BA1F60000A645D0CE1559F46E823C7C2B7C75E103EDFE4D9D0E5A6CDDB605E1AB2F609802E0DD1B4AC226965D95900ACA439C656D10A00B9FCCB0E80FAB9F3A0AC38040885B37668A3B70789D75EC2D0A3F7';
wwv_flow_imp.g_varchar2_table(56) := '23F9C6ABE6F55974014899EACD7BF476EF327437C0A06E2021A5794968F04387A1E4C453103CE01008BA3D78B244370F0DF69BF7061ABFFE09E4A6F777463AB6A96F8E35CB026013E4A214005AE8A205B1D55742F9E8F1802FF32DBF3B906B1AB46D9B31';
wwv_flow_imp.g_varchar2_table(57) := 'FCDCE3185AF330F49646F39FE8EAAF12453145A01012DD0B90300C0CE9D2BC4B90926FDE02844F3819E1238F878F763BB2B1300CE80FFD1AFAAFEE4C471F76E8020416009B7A58510A8061402C5E0EDFF53F82A8AD9BB413D3DDFEC9D75F316FFBA5B7BF';
wwv_flow_imp.g_varchar2_table(58) := '1C1A4C0F1CBAFE4B080455C5BCE4B35012790171C3306F09D2CCCB032594B20A040E3902A59F3D1D81E52B2026B8F6DCAC2379022DDBA05D7D69DA0B9828E680C54058002C063A6AAE680560E97EF0DD70074455F5A4E1B2E91EFFA1A71EC5C0BD77416F';
wwv_flow_imp.g_varchar2_table(59) := '69322FFDA4BBFC69F053508FC278F7EFDA79CC0B45E932137DE4525121E09BB727CABE7811C22B3F06119C641D8404A0B70BDA57BF0CB9F15D16009BC6A563FDAA280580027DCC5B08DF55DF85B264BFC923FBD2F6595F0F127F7F19893FDC07E58D5710';
wwv_flow_imp.g_varchar2_table(60) := 'A008BD3635BC9366695130A5FA60AC380CA1CF7C01817D5798D1842675EB29F2D1CB2F40BBE53B407BB363F707B2076053CF284A01A0EBB24325D08EF9A4B925A646A2994FFA8D659E4A41DFBC01C6538F42D2B5593D9DAE6C8759D60D28CA71240A71DC';
wwv_flow_imp.g_varchar2_table(61) := '27218E39114A6C7EF6DD005D83D6B40D4377DD8CC02B2F40A15382BC066059938C35C41E802D58771AA5CBC7064A2BE13FFC2894AC3AC9BC28D38CA33759A2D0DA5DDBCD37A02904FF7CDB3C355770A9B40C62E97E50577D16CA018798118FB30D648A7C';
wwv_flow_imp.g_varchar2_table(62) := '947CE7750CAF7908C997D6A23C31049F43839FF8B20760532F2B4E0F80E6C0401F9D760B86E1DF736F848E3B11A14357C257472BE159F6C5870721B76D86FE87FB60AC7B06E8EBB1A9756C305B3D1BCACA55503F712A446C5E7AFB739244E71EF4D6460C';
wwv_flow_imp.g_varchar2_table(63) := 'AF7B16F167FE086DD3FB50927194AB0A0B800DCD336A923D001BE19A6F14A4F7C4296886A4201EA5A5087EE458949C782A024BF79B7C216C74357CF306E8BFFC318C179E76744F7CCA680221282B3F968E71481185B3BCC1E5F010926FFFDD3CF740D79F';
wwv_flow_imp.g_varchar2_table(64) := 'D38228ED028414811287773FD8039872AB4FFEC362F500884A8AE2EB1986E90D9811761415FEBD96A0F4943311FCD0E15067D74CBE40984C42FFD3C3D06FBF01F0FAC7409010B36BA1AEBE0ACA51AB0075122F8798B4B722F1E233187CE47E681BFF6906';
wwv_flow_imp.g_varchar2_table(65) := '1BA3B7929FCE3E38FCF6E729804D839FCC16B30050FD693B2C4131F6284026FD07A140A9A840E8C88F217CCC09F02FD977E2B50169407F8E6E04BADAB341357759589ABB00EAE5DF86B2FFC199DFFEB4E33138909EEB3FFD18122F3E67EE80D05B9F0E3D';
wwv_flow_imp.g_varchar2_table(66) := 'D1D6276D813A39F71F2D3F7B00368940B10B80E9CD9BD1760D240C9821B7694A200241F8F6DC1BE1633F81F051ABA0D646C7B70009C0DA3F41BF9104C0FD4F66B37511B1D732A8575C0B65C93E19EB422BFCF1E7D660E8D935D0376F34439C0B483394B9';
wwv_flow_imp.g_varchar2_table(67) := '19F3D0C5730F2C00D95A778AFFCE0290066746D31D09A419A7609AA63720A0D6445076CE2528FDD4E7C713A663B12377021684002C5A6E5E0B2E328406A3F9FDC07D3FC7E003BF8141477CE9AD8F74B0D3205DDBE6D8AA54E68ECC0230C5019EED672C00';
wwv_flow_imp.g_varchar2_table(68) := 'BB1232E8700C9D9233D2D303DA11283D6B352ACEBF6C4201D00A242E8018B9155864080C421F3AF5DCF21DC49F7C144251CCB93E0DFE005D8D96AD1339F0EF2C0036416601C8E00D8F7803B43690F2F9113E6B35CACFCD101B9016CB66C8ADC0464F17FA';
wwv_flow_imp.g_varchar2_table(69) := '6EFD1E124F3D667EDF40839F429C7B25B100D8D4122C001383A50F67523E1F7C675C88701108C0D06DE9D880E65BDF43839F77016C1AFCBC0B901D2CC506544EBF10FE733207079D291E80ECE9426A2436204D01BC96D803B0A945D803981C6C2EC14139';
wwv_flow_imp.g_varchar2_table(70) := '30884D9D738C5916009B18B300B00098BB201C1E3CA711C6918172C294C7431E8F0CC41E401E6D69E3A3EC01D804973D00F600D803C87D70B107903BABDC9E2C080F60357C675F9C61BF307D1458BBF91A08FA50C6EB89A3034FBB855800A68D7037035E';
wwv_flow_imp.g_varchar2_table(71) := '17009F1FCAE7CF83EFBCCBCC0332BB2429A1AF7B1AFACDD798F7E77B3EEDBD1CBE2BAE8392E92420AF01E4D47C2C003961CAE321AF0B0004C4A7BF00FF85574284C77F3B6FACFF2BF45BBE03B96D53D6CF6BF3A062C3A302D8F740F82EFB1694858BC7D9';
wwv_flow_imp.g_varchar2_table(72) := 'A76D406D641BD0A98B3EF3A924AF01E4432B8F67790D20CB1A005D1A72DC27E1BFF86BE9CF83774B72F3FBD07E760BE4BAA71DBB20338FE6DDF9A8A24239F644A8E75E6A8640DB3D19ADCDD0FEDFF781754F3976CF5F3EF56001C887561ECFB200641700';
wwv_flow_imp.g_varchar2_table(73) := 'FDC0C3E0BBE82A0432B8CE880F437FFC01E877DC08E874D19847535905D4D55F857AEC27810CB7FEA6DE7C0DFA4F6E86F2F6DF3DE9C9B000D8D4AF5800B208007D2138AB06EA972E47C9099FCDF8B0DCB211FA3D3F86F1E2B3403261534B4DD5AC04FC01';
wwv_flow_imp.g_varchar2_table(74) := '28C77D0AEAE95F8688CDCF6868F891FF8171CF8FE1EF6C6701980435AF014CB51F4EF43B8FAF0150B1E9F36071CAD9283DFF322899A2EA6A9A194E5BFFDF7B205F5E070CF4A507916BE7E947AE38A2AF192BABA01C7C0494CF9D0B65E1928C371CD19780';
wwv_flow_imp.g_varchar2_table(75) := '033FFD21C49AFF45907EE3C1C41E804D8DC21EC0E460E97BB8B8A621B57405CA2EB90A81FD3E94F9072402746DF8337F847CFD65C8C62DE99D01636CD8F0918149BB09569CB7A7E8BDF44769ACD8A82A50510531770F28071E06E59813211AE64D78F579';
wwv_flow_imp.g_varchar2_table(76) := '7CDDB318BCEB6604B76E44807EEBC1C4026053A3B00064076BDE1DE80F2278DAB9283BED7C2865E513FF687808C6867720DF7B1BB2AB231D457734D11A414F178CF7DF055A9B003D356954A2494BE6F343D4CF85D86B8939D8E93EC31DC9EF87981381B2';
wwv_flow_imp.g_varchar2_table(77) := '645F085AF10F862634A57777A2FF17B7437BE477285128E499773E011E5B681680ECFD744A4FB00064C7469F050FD3B7FF0B97A0FCFCCB103CE4A393C7CF9BC8A46140767742BEB51EFA83F742BEF377401FEB21642F8BF984EA8338E060A89F390362F9';
wwv_flow_imp.g_varchar2_table(78) := '011095D5539A6EC8781C43CF3C86815FDE81404B234AFCAA272EFFC844810520C7BE91EF632C00B91133A3EAAA7EF83E74182A2EB802BE3D17418C7DEBE66626FD9434603CF908F45FDD01D9B435BFC14B814DE7EF09F5FCCBA11C71ECD4A7129A86C49B';
wwv_flow_imp.g_varchar2_table(79) := 'AFA2FFBF6F87F6C6AB281DB901289F6A38F92C0B804DB4590072034BEF698A2390F2071138E060545CF64DF81AE68F3F1D989B39C8A62DD07F7483196528AF4471098F381EEA95D74354CDCAEBA73B1E360CA436FC037D77DC84E4DBEB11482551AA0828';
wwv_flow_imp.g_varchar2_table(80) := '1E75FFA9DC2C00536BEAACBF6201C88A68C70314567B880289F8FC08ACF830CACE5A8DC0927D20B244D7C998031DBCB9EDBB30FEFA7CEE0530478201E5E88F43BDEA7B10E1D2FC7E4BD77E0F0F9BC13E06EEF93152EFBC01554B9AF7FCD3CDBF5E4E2C00';
wwv_flow_imp.g_varchar2_table(81) := '36B50E0B40EE60E9C2D061832E0C95A0CF84038BF741F8D813113CE87033C0683E42A0BFFC02F49FFE1078FF1F794E017460E9FE502FF91AD47D0ECCB9F07268105AF336245E5E87E1A71E81F6C1FB10BA86B0A298917E3C3EFED903C8B9A5F37C900520';
wwv_flow_imp.g_varchar2_table(82) := '3F607475F8902E91A4F8018A0A75D61CF897EE83E0878F847FE16228B3E640292D87A0009C19B6D4E8FA6D6DDB66C47FFB33A82F3E0B5F2ADF8343125A300C7DE5C7113AF56CF86827205C32AE1252D720070740413DF5CE0E681BFE81F85FFF8CD43FDF';
wwv_flow_imp.g_varchar2_table(83) := '86D1DD0921A579F167D863977F4ED41AEC01E4D74F737E9A052067543B1E344560249A503AA498920E2452DF00FF7399EE9500000A4649444154E27DA036CC878FC26D9795ED72B9A6D434E8ADCD883FFF14B4375F43A99644600A17EED382E4602004FF';
wwv_flow_imp.g_varchar2_table(84) := 'FE072374F8D1F0D5D5EF7AC047C21CF85AE316685B3F40F2DDB760B437432693E602245DF4ED1714DFCF5B37FF4ED6122C00F9F7D39C7EC1029013A6710F9108D054803C017DECE1393A4967C613F0A7B70AC74EAD691B30993207215DB95DA62A66B49D';
wwv_flow_imp.g_varchar2_table(85) := '7C135D574E0B92342521DF5D040223E700460A42DE494ADBF96DC218FF9EF486E6FBF4E6F7F2A2DFEE4C5800F2ED25393ECF029023A80C8F99D7868FC416A420222367F2723248F36E9A7F4FC10130231891074242906BA29B0CE8AD4FB1FD4800BC3EE7';
wwv_flow_imp.g_varchar2_table(86) := '6701C8B565A7F91C0BC034019A4144D25184D27F147A5C9A4E000DCFDD87280D441A842121E09BC2DB7FB4B466F422DA9634F3DB35914F417F649EDC7D12191AFCF4BF5E0AF6910F79F600F2A195C7B32C0079C0CAF2683ABE203D949E16A407BF1C09AC';
wwv_flow_imp.g_varchar2_table(87) := '9D1E9474605725F7DB826CC913A07C480046F322B30269FB2400E6FF37FFB7B0130B804DEDC7026013D811B3BB7B00760CC4B179D861DF5E42B9596701C88D53DE4FB100E48D8C7FE0020116009BA0B300D80496CD5A4A8005C0529C3B8DB100D80496CD';
wwv_flow_imp.g_varchar2_table(88) := '5A4A8005C0529C2C0036E164B336116001B0092C7B00368165B396126001B014277B0036E164B336116001B0092C7B00368165B396126001B014277B0036E164B336116001B0092C7B00368165B396126001B014277B0036E164B336116001B0092C7B00';
wwv_flow_imp.g_varchar2_table(89) := '368165B396126001B014E72E1EC0660099E345D994E72E660B2032901318388FC909784400B6C4A2913D9C682BC7BEE9686A695B0360951395CA98C7A8007CE34BBB06D170AD409CB1170918E555E8BDFA87D0E7EDB9331A92F3057D22168D7CDC896C1D';
wwv_flow_imp.g_varchar2_table(90) := '1380C6E6F65B8490FFEE44A5261480A62DA8B8E622A8C343AE158333F636016D562DFABF7123F486056E0AC00F62D1C8D79D20E5A000B45D2404EE70A252130980686B46C94DDF40A8792B84CCE75E1DD74ACD193B4940080C2D5C86E14BBF0959D7E09A';
wwv_flow_imp.g_varchar2_table(91) := '004888F31AA2B5773B5175E704A0B5F55021C55F9CA854C63C8480ECEB85BCEFA798F3E73550287E1E2726308600DDBEDCBEEA14884F9F01A5B22A7DE7A20B490A7958435DDD4B4E64ED98006CDAD45D150825BB9DA8D44402A025121878E545C41EBC1B';
wwv_flow_imp.g_varchar2_table(92) := 'A1D66D10A3116F5D2B1467EC150234F88763F3D1FCB90B50B6EF81F00582192E5A73A6B4C978A07AC182EA1E2772734C00A8324D2D6DAD00224E542C531E9AAEA3AB712B2AFFB61635CF3F8E40F776F3E65C4EC54D80067F72762D5A8F3F1983071C8A59';
wwv_flow_imp.g_varchar2_table(93) := '913AF87C3EB7A0B4C5A2913AA7327754001A5B5A9F13102B9DAADCEEF9E8BA8EEEEE6E50A8EACA37FF86392FAC41A8AD391D31C72577CF2D169C2F5D6A28208562BEF93B3E7A02FA97AE40A0AA1A9595955033045B718899633B00541F6705A0B5ED4E21';
wwv_flow_imp.g_varchar2_table(94) := 'B1DA2190E3B29174CDF5D0107A7B7B219209731A50F1F67A947DF00FF8BB3BA068290877A67D6E2129CA7CA5000C7F10C9593518D86B397A97AE4022520FF803A8AAAA42381CDE25D08A9390A414B736D4D75EEE549E8E0A40536BEB1720C56F9DAA5CA6';
wwv_flow_imp.g_varchar2_table(95) := '7C744D436F5F1FE2F104A4AE438D0F428D0F99837FC71DDB6E1690F3B69F00397C423183AFEAA112E8E11233BC5A3814444585AB6F7F40C8D3637575F7D90F219D83A302D0D9D959114F6A1D7465BD5315CCE00620914C60A07F008964D28C7A23CCE815';
wwv_flow_imp.g_varchar2_table(96) := '8EA270ADFA9CF1580214574142110A42A100CACBCAE1A7E847EEA564C0A7CCA9A9A9E977AA088EF7FAA6E6B68720F019A72A98311F29914CA5303434884422095A1B307847C0D526713A73127D4551CCBF502884D29292F4C29F9BA18C241E8ED5474E72';
wwv_flow_imp.g_varchar2_table(97) := '9285F302E08169C028601AF4C964D2FCD3343E17E064C7733B2F12005AE80B0683F0FBFDA610B89E1C76FF1D9F0250869E9806B8DED25C0026308E80E3EEBF2B024099BAFE6110F73E26E03D028E6EFF8D56DFF1290065DCD8ECF27701DE6B7C2E519113';
wwv_flow_imp.g_varchar2_table(98) := '70F2FCFF58D4AE08C0E68E8EA85F339A78E9BDC87B3D577F94802BEEBF6B5300CAB8B9A5ED6E099CC37D8009143B0101FCB23E1A39D70D0EAE780054D1D6D6D605BA14EF0008B95171CE93097884405C81B1341A8DD28D598E27D70420BD16E0F225218E';
wwv_flow_imp.g_varchar2_table(99) := 'E3E60C99C0AE049C3EFABB3B7F5705A0ADAD2DA219780F4025770C26508404FA542117D5D5D5B5BB55775705802ADDD4D276DDBF3EBCBED62D009C2F137091C0F5B16884FABF6BC97501D8D8D555194AA4C80B70ED9E00D7E873C6C54CA03D14F02D9A3D';
wwv_flow_imp.g_varchar2_table(100) := '7B769F9B105C1700AA7C7373EBE552881FBA0982F366024E1290121737D447EE7432CF4C797942005E91D25FD7DAFEB0004E701B08E7CF046C2720F1644BB4F6C4838448D99E57960C3C210054C691A9C05F012C761B0AE7CF046C2320B12114F41DE4B6';
wwv_flow_imp.g_varchar2_table(101) := 'EB3F5A3FCF0880B920D8D4B1188A4122C0BB02B6F54036EC22813E431507CDADADDDE0621976C9DA530240256B69693FC1807C148007BECFF44A3371390A9D80005252C189B148E4492FD5C57302C08B825EEA1E5C16AB087865D16FF7FA785200A8908D';
wwv_flow_imp.g_varchar2_table(102) := '2E5F206A55C3B31D262005EE6AA88B5CE445129E150029A5DAD2D67E9394B8C28BE0B84C4C20070252087143345273AD1042CFE179C71FF1AC008C92686A6D3D0D52FC044085E374384326307502FD0AC469D168EDE3533761FF2F3D2F0084606477E061';
wwv_flow_imp.g_varchar2_table(103) := 'DE22B4BF43700ED32720803775559CE2A5D5FE896A55100240854FDF2598FA09204E9B7E13B10526600F0101FC5ED79267CF9D3B77D89E1CACB55A3002305AEDE6E6B693A5C00DEC0D58DB11D8DAF408D05BDF10F29B0D7575B4855D30A9E00480C84A29';
wwv_flow_imp.g_varchar2_table(104) := '7DCD6D6DE7FCEB12F7EB21112B18DA5CD09948A059485C1F8DD6FE4C08517091660B5200467BD1B66DDBC28A2FF01500DF00503D137B17D7C9B304BA01F103434BDC5628EE7E2692052D00A315DAB2A5A75AF5C7AF12425050C5B067BB0C176C2610A0B9';
wwv_flow_imp.g_varchar2_table(105) := 'FD6D5A32F883F9F3ABBA0BBD42334200461B813E280A279327428A9364FACBC2B2426F202EBF27080C08600D241E0A067D8F78E5431E2BC8CC2801180B64C3860DC17059D57142CA9320E4A701D45A018C6D140D817648F188548C877A3B3BFFB47CF9F2';
wwv_flow_imp.g_varchar2_table(106) := 'E44CACF98C1580B18D25A5541A3B3A160A1D2B04E4811058018915006A6662A3729DF226D0F1AF80B5EB21B11E42AE979ABA3E169BF37E212EEAE55BF3A2108089A034367636085F6A05A42041480B03302F5F88FC7C4111D89A1EE8E9C10E5D5F1F8BC5';
wwv_flow_imp.g_varchar2_table(107) := 'B615540D2C2C6C510B80851CD914132848022C0005D96C5C6826600D0116006B38B2152650900458000AB2D9B8D04CC01A022C00D670642B4CA02009B0001464B371A1998035045800ACE1C85698404112600128C866E34233016B08B00058C391AD3081';
wwv_flow_imp.g_varchar2_table(108) := '8224C0025090CDC6856602D6106001B086235B610205498005A0209B8D0BCD04AC21C002600D47B6C2040A92000B4041361B179A0958438005C01A8E6C85091424011680826C362E3413B086000B80351CD90A132848022C0005D96C5C6826600D011600';
wwv_flow_imp.g_varchar2_table(109) := '6B38B2152650900458000AB2D9B8D04CC01A022C00D670642B4CA02009B0001464B371A1998035045800ACE1C85698404112600128C866E34233016B08B00058C391AD30818224C0025090CDC6856602D610F8FFEAB9F22D9FE531140000000049454E44';
wwv_flow_imp.g_varchar2_table(110) := 'AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(94278207249483503)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EECBD07981CD779A6FB555587E99E1900030C069901A498298A1473CE394A62A61844054A96E5F5DAF7FADA77';
wwv_flow_imp.g_varchar2_table(2) := 'BDB6EFBDCFB3F77AD76BED7A4D5BCC9248020C62147314A324529498939840A4419CD833D3DD55759FFFF40C089098E99EAEFFD474A3BE7A040120EAFC75EA3D07386F9DE8AC58D51D8217099000099000099040A2083814804495375F96044880044880';
wwv_flow_imp.g_varchar2_table(3) := '040C010A002B020990000990000924900005208185CE5726011220011220010A00EB000990000990000924900005208185CE5726011220011220010A00EB000990000990000924900005208185CE5726011220011220010A00EB00099000099000092490';
wwv_flow_imp.g_varchar2_table(4) := '0005208185CE5726011220011220010A00EB000990000990000924900005208185CE5726011220011220010A00EB000990000990000924900005208185CE5726011220011220010A00EB000990000990000924900005208185CE5726011220011220010A';
wwv_flow_imp.g_varchar2_table(5) := '00EB000990000990000924900005208185CE5726011220011220010A00EB000990000990000924900005208185CE5726011220011220010A00EB000990000990000924900005208185CE5726011220011220010A00EB0009900009900009249000052081';
wwv_flow_imp.g_varchar2_table(6) := '85CE5726011220011220010A00EB000990000990000924900005208185CE5726011220011220010A00EB000990000990000924900005208185CE5726011220011220010A00EB000990000990000924900005208185CE5726011220011220010A00EB0009';
wwv_flow_imp.g_varchar2_table(7) := '90000990000924900005208185CE5726011220011220010A00EB000990000990000924900005208185CE5726011220011220010A00EB000990000990000924900005208185CE5726011220011220010A00EB000990000990000924900005208185CE5726';
wwv_flow_imp.g_varchar2_table(8) := '011220011220010A00EB000990000990000924900005208185CE5726011220011220010A00EB000990000990000924900005208185CE5726011220011220010A00EB000990000990000924900005208185CE5726011220011220010A00EB000990000990';
wwv_flow_imp.g_varchar2_table(9) := '000924900005208185CE5726011220011220010A00EB000990000990000924900005208185CE5726011220011220010A00EB000990000990000924900005208185CE5726011220011220010A00EB000990000990000924900005208185CE572601122001';
wwv_flow_imp.g_varchar2_table(10) := '1220010A00EB000990000990000924900005208185CE5726011220011220010A00EB000990000990000924900005208185CE5726011220011220010A00EB000990000990000924900005208185CE5726011220011220010A00EB00099000099000092490';
wwv_flow_imp.g_varchar2_table(11) := '0005208185CE5726011220011220010A00EB000990000990000924900005208185CE5726011220011220010A00EB000990000990000924900005208185CE5726011220011220010A00EB000990000990000924900005208185CE5726011220011220010A';
wwv_flow_imp.g_varchar2_table(12) := '00EB000990000990000924900005208185CE5726011220011220010A00EB000990000990000924900005208185CE5726011220011220010A00EB000990000990000924900005208185CE5726011220011220010A00EB0009900009900009249000052081';
wwv_flow_imp.g_varchar2_table(13) := '85CE5726011220011220010A00EB000990000990000924900005208185CE5726011220011220010A00EB000990000990000924900005208185CE5726011220011220010A00EB000990000990000924900005208185CE5726011220011220010A00EB0009';
wwv_flow_imp.g_varchar2_table(14) := '90000990000924900005208185CE5726011220011220010A00EB000990000990000924900005208185CE5726011220011220010A4003D5813094CC98FFE34502244002DB2C01C771B6D9776BA617A300344069C95F06CFF390F25CB8AE0BC7911F80FC77';
wwv_flow_imp.g_varchar2_table(15) := 'EA40031410B340022450370169EAC330847CE08461802008E0CB8FB28FA0F2D5C36B8A085000A608BC3CD634FA290FE9540A29F3C333FFCD1D158029CC1A1F4D02244002AA04A4AD0F44007C1F65F951F2512A97502EFBF0FD00213F775479D7128C0250';
wwv_flow_imp.g_varchar2_table(16) := '0B25E57BE42B5F1AFD6C3683966CC634FEBC48800448206904440446468AE647B15432BD03BCE2234001888FB5799234FEB9962C5AF33936FC31B3E7E34880041A9380EFFB280C0DA350183212C0818178CA8902100F6733A69FF252686DCD9BAF7E1101';
wwv_flow_imp.g_varchar2_table(17) := '5E2440022440021502321FA0582C6260A08052B96CE60DF0B24B80026097AF892E8D7F3A9D467B5B1B32E99499DCC78B0448800448604B02D2E8CBB0405FFF008AC51225C07205A10058062CE165BC7FDAB47636FE31B0E6234880049A9B807CF74B0F40';
wwv_flow_imp.g_varchar2_table(18) := '5F5F3F4A25F604D82C4D0A804DBAA363FED3DADBCCB83FBFFC2DC366781220816D828048C0C8C808FAFA068C0CF0DF4E3BC54A01B0C3D5441D9BF0D7DED6CA317F8B9C199A044860DB2320C301038305333150F60DE0A54F8002A0CF7453C46C2683E9D3';
wwv_flow_imp.g_varchar2_table(19) := 'DA38DBDF226386260112D87609C8EA80BEFE410C0F0F7365808562A60058802A2165431F59EAD7D69AB7F4048625011220816D9F802C0F1C181C341B06F1D2254001D0E5F9D9D77F3683E9EDFCFAB78497614980041242C0F4020C0C62686838216F1CDF';
wwv_flow_imp.g_varchar2_table(20) := '6B52002CB096092BF2F52F93FF78910009900009442330385840FFC020CF0E8886F10BA92900CA40259C6CED2B5DFFF95C8B85E80C4902244002C922303C5234C300B237002F3D0214003D9626926C5E956BC9A0ADAD1599745A393AC39100099040F208';
wwv_flow_imp.g_varchar2_table(21) := '94CB65F40F143034CC6100CDD2A70068D21C3DF652BAFFDBDBDBE071BB5F65BA0C470224904402723E802C09946100EE09A0570328007A2C477B0042B4B5B69AF17FEEF8AB0C97E14880041249407A56070B05F4F6F55300146B0005401166650820846C';
wwv_flow_imp.g_varchar2_table(22) := 'FCC30980CA60198E044820D104060B43E8E9EDA30028D6020A8022CC310190C65F24A0112EB3AF76B1849162E5BC6D594B1B84955DB55CC745CAF3904EA790CD66CD9C8546E9B590C93ED5F39C41269D619E1BA1A2310F24609980EC08B89102A04A9902';
wwv_flow_imp.g_varchar2_table(23) := 'A08A73B407A0BD0DD3A65800A4274266CE16868620E62C6B68C71A54194F3302E0BAE6A0A26C36835C4B0B5AF379B4E65BD0929D9A730BEACB73CE2CB99CCA3C0B57615C3BE71CF2A379761BC5B894FF1E301C096813A0006813052800CA4CCD10C0140B';
wwv_flow_imp.g_varchar2_table(24) := '80CC981D2814B0A1A7CF8C99954A257326F17887109B53B7C3D02C5F9C3EAD1D33674C33F318440EE2BAA2E5B90D33674C475BBED5F466C4758DE579634F1F7AC638C319B747620BCEEDA37916CE31E6392E367C0E096813A0006813A500A8139D6A0190';
wwv_flow_imp.g_varchar2_table(25) := 'E333D76FDC88EEB5EB502C95EB7ABF74CAC39CD99D9835B32396A58C72DAD7FA0D3DE85EBBB6EE3CA746F3DC19679E374A9ED7A1582C02E3EAD5F845B029CF1D1DC864B864B4AECACA4489214001D02F6AF60028339D4A0190C67FCDBAF5E647D98FB66F';
wwv_flow_imp.g_varchar2_table(26) := 'B69C65D035AB035D9D9D561B2769FC37E539E25EDF9EE762F6AC999813439ED7AE5B8F6EE11C35CFAE8BD99D92E759C86432CAB591E14860DB214001D02F4B0A8032D3A91200E98E5EB761235675AF8DDCF88F21110998DBD589D9333B90B6B0A991C9F3';
wwv_flow_imp.g_varchar2_table(27) := 'C61EACEA5E13B921FD2CCF2EE6CE9E8DD9B3ECE579FDC61EACB490E7CE59F1F4B828577986238158085000F431530094994E8500C8337BFBFBF1C9A72BEAEE421F0F830C076CB7703E3AA64F575D7E633BCF8B16CC37F30234370D913CF7F50FE0E34F97';
wwv_flow_imp.g_varchar2_table(28) := 'AB7396E180ED2CE459B97A331C094C19010A803E7A0A8032D3A91080A1E111AC5AB316EB376C547E9BCAAA86591D33306F4E97EAD906C3232358D96D2FCF333B6660FE9CD9C8E7726A4C24CFD2C3223D2DDA9770963CCF9B331BAD8A79D6CE27E391C054';
wwv_flow_imp.g_varchar2_table(29) := '11A000E893A70028338D5B006466F9868D3D58B66215A44BDDC62543010BE7CFC5EC993355D6DC57F2DC8B652B56DACDF3BCB9664E80D64ABB0D3DBDF864B9ED3CCFC1EC59B3D4F26CA33E3026094C05010A803E750A8032D3B8054036CC59BD761D56AF';
wwv_flow_imp.g_varchar2_table(30) := '59ABDADDBD3996200CCD2435F93ACD2A4C54933CCBEC79E9B5D0ECA2DF22CF418839B367615ED76CB3CF41D44B3651EA5EBBDECC57B099E7AECE99983FA74B25CF51DF99E949A091085000F44B8302A0CC346E0190C33156AE5E83DE81813A16A2D5F6F2';
wwv_flow_imp.g_varchar2_table(31) := '95ED8DDB4C97BAEC1310F58A2FCFADA63155CB73F71A3307C0D635B68DF4BCAE2ECC981E9DB3AD7C322E094C05010A803E750A8032D3B8054066A4AF58D56D76F9B379C936C1F3E776992EF5A89774FF2F5FB53A963CCBDC05F9AA8E7A49F7FFF295F6F3';
wwv_flow_imp.g_varchar2_table(32) := '2CAB2D44B4BA3A6745CD32D393C036458002A05F9C140065A6710B80AC45FF74C52A3359CFE625DDDEF3E7CE318D53D44BD6FDCB9C8558F23CA7CB884BD46BCDBA0DA379AE6CA36CEB12CE222D0B14F26C2B8F8C4B0253418002A04F9D02A0CC346E0190';
wwv_flow_imp.g_varchar2_table(33) := '717411005BE3D26378E4BD440016CE9B1399D8EA35EBCC04C078F2DC8585F3E646CEB3CC5990098071E4590460D1FCE8798EFCD20C40020D448002A05F18140065A61480EA402900E33392FA4301A85E877847F2085000F4CB9C02A0CC346E019099E99F';
wwv_flow_imp.g_varchar2_table(34) := 'AE8CA93B7D6E97995417F56ADE218095B10C5B7008206A0D63FA6D91000540BF542900CA4CE3160099042893D364999ACDAB32394D67429DC9F3AAEED14374ECE55A33CF3271F1D355AB63CA332701DAAB158CDCAC042800FA25470150661AB700C8B234';
wwv_flow_imp.g_varchar2_table(35) := 'D997BE6F60D0F232C056D3353DA3999601B68EE6596149DDD8D2C5BE01CBCB004D9E6763C6F469CA3593E148A0B9095000F4CB8F02A0CC346E0118914D75D6AC359B01D99AA0261B0175CDAA6C04D4A2B0A98EC9730C9B1775CD9A69A44523CF716DB8A4';
wwv_flow_imp.g_varchar2_table(36) := '9967E5AACD702430A5042800FAF82900CA4CE3160059FD275DEA32ABDE8F7804F07828E498DD85F3E6A96DAB2B79DED0D36366D5DBCCF3827973210DAA8618C59167D715CE73CDBE051A7956AEDA0C4702534A8002A08F9F02A0CC346E0190EC0F0D0F9B';
wwv_flow_imp.g_varchar2_table(37) := '8375E44C00ED2B448899D3A763DEDC2ED5436AE4002319BAB092E73044C78CE966CE426B5EEF302073E852F71A235CDA97D41B1B79D6CE27E391C05411A000E893A70028339D0A019067F6F4F599E3804B655FF58D529E1C073C0F1D3366C0D53A550795';
wwv_flow_imp.g_varchar2_table(38) := '53067BFAE408E3E516F2EC568E30B690673976F963E15CD23D7829E5B9304718774C87EBB8AA65C86024B02D10A000E89722054099E9540880BC42A95CC6BAF51BB06ACD3AB56E75E9929EDBD569BAFE652B60EDAB92E78DE65020ADA10093E7D99D98DD';
wwv_flow_imp.g_varchar2_table(39) := '6931CF1B369A638135F32C0717C93C8B4C469FB376B9311E094C05010A803E750A8032D3A91200790D590AB866ED3AAC59BF3172E3240DE9EC591D9833BB53E504C0F13057F2BC1E6BD66F689A3C97E464C075EB21DB03479500C379E62867850996CAD5';
wwv_flow_imp.g_varchar2_table(40) := '99E148A061085000F48B8202A0CC742A05604C02D66DD86844A0582A4F7A32998CF9A7BD14BA66CF42E7CC0EAB8DFF187A9180F51B369A465566DB4F7E025C0819AAE8EAEC44E7AC38F3DC83EE75EBEACEB3E77998339AE74C26636D19A7721567381298';
wwv_flow_imp.g_varchar2_table(41) := '120214007DEC140065A6532D006638A05442FFE02036F6F4A1B77FC00C0F38C0B80DABE4598E124AA73C4C6B6B43C78C69E6F85F1BDDFEE3E19631F5FEC1016CECED436FDF24F2EC79686F6FC3CC29CBF3A0C9735F5F3F8A357216599936457956AEEE0C';
wwv_flow_imp.g_varchar2_table(42) := '4702B111A000E8A3A60028336D04019057927CC8ACF5C142018385210C0F8F98E377450682A072A29D743FA75229643369B4645BCC8CF9D6D61C722D2DAA13FE6A455C779EF339E4724D90E7741A2D2DD90AE77C1EB95C9613FE6AAD1CBC2FF1042800FA';
wwv_flow_imp.g_varchar2_table(43) := '558002A0CCB4510460ECB564FD7AB1543402205DEDB24A200C02F3C5EFBA8EE9EE978967D96CD674F72B4EF4AF9BACE4AD581C3FCFA9D13CB7983CA7EB1832A83B6BE3266CC63CEB53604412B0478002A0CF9602A0CCB4D10440F9F5188E04488004A684';
wwv_flow_imp.g_varchar2_table(44) := '0005401F3B0540992905401928C39100099000000A807E35A0002833A5002803653812200112A00058A903140065AC140065A00C470224400214002B758002A08C9502A00C94E148800448800260A50E500094B152009481321C099000095000ACD4010A';
wwv_flow_imp.g_varchar2_table(45) := '8032560A8032508623011220010A80953A400150C64A015006CA70244002244001B052072800CA582900CA40198E04488004280056EA000540192B05401928C3910009900005C04A1DA0002863A5002803653812200112A00058A903140065AC140065A0';
wwv_flow_imp.g_varchar2_table(46) := '0C470224400214002B758002A08C9502A00C94E148800448800260A50E500094B152009481321C099000095000ACD4010A8032560A8032508623011220010A80953A400150C64A015006CA70244002244001B052072800CA584500A6CD988EF65C8B7264';
wwv_flow_imp.g_varchar2_table(47) := '862301122081E4122894CAD8B86E3D1CC7492E04E537A70028030D5D0F6D1FBD83F60FDE84FC9A1709900009904034024EE0A3B070317A77FB0A9C2088168CA93711A0002857863093457EE93568BDE97F0299AC72748623011220810412288E60F8B4F3';
wwv_flow_imp.g_varchar2_table(48) := 'D0FFC3BF85532A2610809D57A6002873150168BDE37AB4DE7C35E4D7BC488004488004A211708A23183AF9EBE8BFEAAF2900D1506E919A02A008534251009481321C099040E2095000EC54010A8032570A80325086230112483C010A809D2A400150E64A';
wwv_flow_imp.g_varchar2_table(49) := '015006CA7024400289274001B053052800CA5C2900CA40198E044820F104280076AA000540992B05401928C3910009249E0005C04E15A0002873A50028036538122081C413A000D8A902140065AE140065A00C47022490780214003B558002A0CC9502A0';
wwv_flow_imp.g_varchar2_table(50) := '0C94E1488004124F800260A70A500094B952009481321C099040E2095000EC54010A8032570A80325086230112483C010A809D2A400150E64A015006CA7024400289274001B053052800CA5C2900CA40198E044820F104280076AA000540992B05401928';
wwv_flow_imp.g_varchar2_table(51) := 'C3910009249E0005C04E15A0002873A50028036538122081C413A000D8A902140065AE140065A00C47022490780214003B558002A0CC9502A00C94E1488004124F800260A70A500094B952009481321C099040E2095000EC54010A8032570A8032508623';
wwv_flow_imp.g_varchar2_table(52) := '0112483C010A809D2A400150E64A015006CA7024400289274001B053052800CA5C2900CA40198E044820F104280076AA000540992B05401928C3910009249E0005C04E15A0002873A50028036538122081C413A000D8A902140065AE140065A00C470224';
wwv_flow_imp.g_varchar2_table(53) := '90780214003B558002A0CC9502A00C94E1488004124F800260A70A500094B952009481321C099040E2095000EC54010A8032570A80325086230112483C010A809D2A400150E64A015006CA7024400289274001B053052800CA5C2900CA40198E044820F1';
wwv_flow_imp.g_varchar2_table(54) := '04280076AA000540992B05401928C3910009249E0005C04E15A0002873A50028036538122081C413A000D8A902140065AE140065A00C47022490780214003B558002A0CC9502A00C94E1488004124F800260A70A500094B952009481321C099040E20950';
wwv_flow_imp.g_varchar2_table(55) := '00EC54010A8032570A80325086230112483C010A809D2A400150E64A015006CA7024400289274001B053052800CA5C2900CA40198E044820F104280076AA000540992B05401928C3910009249E0005C04E15A0002873A50028036538122081C413A000D8';
wwv_flow_imp.g_varchar2_table(56) := 'A902140065AE140065A00C47022490780214003B558002A0CC9502A00C94E1488004124F800260A70A500094B952009481321C099040E2095000EC54010A8032570A80325086230112483C010A809D2A400150E64A015006CA7024400289274001B05305';
wwv_flow_imp.g_varchar2_table(57) := '2800CA5C2900CA40198E044820F104280076AA000540992B05401928C3910009249E0005C04E15A0002873A50028036538122081C413A000D8A902140065AE140065A00C47022490780214003B558002A0CC9502A00C94E1488004124F800260A70A5000';
wwv_flow_imp.g_varchar2_table(58) := '94B952009481321C099040E2095000EC54010A8032570A8032D06D215C18D6F7168E535FBA864C1502F5603008B6250E0D59380D9F290A809D22A2002873A50028036DB670D2D8870130D6E8A733403A0D7869C0ADA1219374BE0F94CB40B954F9B5EB02';
wwv_flow_imp.g_varchar2_table(59) := 'CD2803F22E4150C9BF3010169E575B898A2C180E45A038529107C1E734298BDADE9A778D43800260A76A500094B952009481367AB8B1466EAC85CAE5E1CCEC04DADA817C3B9C599D703A3A81F669402A8DAA9FC1D2D00D1710F66C0036AE47B86615C295';
wwv_flow_imp.g_varchar2_table(60) := 'CB81C1FE8A04348B0848C39F4EC399BB00CEDC85C0ECB9703A6602F9D61A4AD4A98843611061CF7A846BBB819EF5C0E000C2BE1EF3B3912C31826695A31A28F096CF085000ECD4060A8032570A8032D0460C67BEF247BFF45B72706675551AB8193381CE';
wwv_flow_imp.g_varchar2_table(61) := '3970E72F02A4B19BD65191818E5970DAA6D5F6F52B0DFCF010C28D2200EB10AE5A8EF09DD711FCFE37083FFD1028951A5B02848BE3C099BF08CEEEFBC0DDF32B7076D8F9333EB97C6D251A060887864CC31FAE5B03AC5D8DB07723B066B5F97DD8BB0158';
wwv_flow_imp.g_varchar2_table(62) := 'DB5DF9B3C24045ACD83B501BDB26BC8B0260A7D02800CA5C2900CA401B29DC66DDFACE8C8E4AC33E6F119CBDF685BBE7BE70B6DF09A8B5819BCC7B95CB089E7E08FEC377237CFB356068B0D2D835DA257C3259383BED0AEFB8D3E01E7F06306D867E2E8B';
wwv_flow_imp.g_varchar2_table(63) := '2308572C43F0E61F10BEF10AC24F3EA8888248930C17C8D52C3D25FA74B6C98814003BC54A0150E64A015006DA28E1A44149A5CD97BCB3FD6238071F0DF7D063E074CD035229FB0D4E1822FCE3DB28FFE49F10FEFEC5C69C18275FFEBBEC09EF877F0377';
wwv_flow_imp.g_varchar2_table(64) := '973D2B5C6C5E221C2203AB56207CED25F8CF3F81F0A3F781FE3EA054FC6C1E86CD3C30762C0428007630530094B952009481364238D78523DDF9BBEC611A7DF981F6E995317D19838EF1F2EF5D8AE0EE9B2B5FBD313F7BC2D70C02380BB68377F64570CF';
wwv_flow_imp.g_varchar2_table(65) := 'BE6874BE434C6064BE805F36732782979E47F0D443A6A7C4CC17908984BC9A9E0005C04E11520094B9520094814E75B874A6D2F01F7706DC838E8033BD0368C9D9FFE21FEFBD4786E1DFF213F877DF52990CD7085DDDF2259E6D817BF449485DF5BF03C2';
wwv_flow_imp.g_varchar2_table(66) := '68AAAE9191CAC4C1377E8FE0B1FB10BCFC42657E40BD4B31A7EA3DF8DC2D085000EC54080A8032570A8032D0A90A178670E6CEAF74F51F7922DC2FED01B4B64D556EB6786EF0CCA3F06FBDD64C0EAC79599DCD9CFB3E9C9D768377DEE5704F3ADBE6936A';
wwv_flow_imp.g_varchar2_table(67) := '8F2D2B293EFE2382671E47F0C29308977F4C09A89D5EC3DD4901B05324140065AE140065A071871B9BC5BEC73E704F3C0BEE570E82336F41BC5DDA55DE397CEB55F8B7DD80E0F9271AA3510B02B8871C0DEFD21FC0D96DEFB84B6CFCE7F9BE594619BCF6';
wwv_flow_imp.g_varchar2_table(68) := '328247EE31BD02666F8546E835691C4A4D91130A809D62A2002873A50028038D33DCE8DA75F7C023E09E762E9CBDF68323EBF71BEC92AF59FFAE5B103C72B7593238E597EBC23DF91C7897FF299C59B3A73C3B5FC8C0403F82775E43F0C403089E7B02E8';
wwv_flow_imp.g_varchar2_table(69) := 'EF6D8C9E93C623D5B039A200D8291A0A8032570A8032D0B8C2C964B1D636F325EB9E7901DCBDBFDAB05F8AE1BA6E04F7DF8EE0BEA595B5F153F9452B3D26A934DCB32F44EA8A1FD95906A95407C20FDE857FD7CD089E7B1C106EB5EE4AA8F47C86A99F00';
wwv_flow_imp.g_varchar2_table(70) := '05A07E7613A5A4002873A50028038D235CE09B5DFBDC838F8477F177E12CDE358EA7D6FD8C70F54AD3F8FB0FDC010CF44EFD9240E90138497A007E08A7B3ABEEF78A2361F8D17BF07F713382671FA304C4015CE919140025909F0B430150E64A0150066A';
wwv_flow_imp.g_varchar2_table(71) := '3B9C7CC1E6F2700F3A12DE85DF862393FD1AFC0ADF7B13FEED3722F8D5A380C8CB545F6158E177C9F7E0ECB9EF54E7A6EAF3650965F08B9FC37FFAA1CA9E018DB49CB26AEE93790305C04EB9530094B952009481DA0C37BA739D7BD8B1F0CEBDBCB126B0';
wwv_flow_imp.g_varchar2_table(72) := '4DF0DEC1B38FC35F722D643260437463CB2A805DF78277FE15708F3DCD6689A9C50E977D88E0EE5BE03F724F651EC5540EA3A8BDD5B61B880260A76C2900CA5C2900CA402D873363FEE75E0E779F032C3F49277C582AC2FFE9D508EEFA79E3345C22525E';
wwv_flow_imp.g_varchar2_table(73) := '0A8EEC03F0677F5B39F7A0092EB34C5024E0C13B2B870FF16A580214003B45430150E64A0150066A2B9C745BEF7B10DCF3BE0577FF431BE34BBA86771D7AF24104B7DD88D47B6FC069A0AEEBD0F711C8A13F175C89DC89673547B7BA6CAFFCE61F50BEF9';
wwv_flow_imp.g_varchar2_table(74) := 'DF10CA8641DC2CA8861A3835B75000EC70A7002873A5002803B514CE993D07DE653F847BD449351E516B292335870D515EBE0C7DFFFEDF10BEF834724119A90612003F0831E47A08F7390033FEE2EFE1C98988CDD0AD3E5440F0EBA7E15FFDFF21DCB89E';
wwv_flow_imp.g_varchar2_table(75) := '1250737D8CF7460A801DDE140065AE140065A036C2A53370CFB918DE9917C099B7D0C613546386C3431879E9390C3DF120465E7E016EEF46E45229645D47F539518215831005DF879F6F4376DF03D172C4F16839F828B8721C72835FE1FAB5081EB803FE';
wwv_flow_imp.g_varchar2_table(76) := 'ADD700C56273884B8333D5CE1E05409B68251E0540992B054019A87638D783B3CBEEF0BEFF577077DFA761BBFE83C10104EBD6A0BCFC63145F7F05C53FBC84D21FDF4138320CCF75D0E2BA68711D348A020C1B01081098F9001E52DBEF84CC1E5F46F6A0';
wwv_flow_imp.g_varchar2_table(77) := '23915EBC0BBCCE2E38F956EDD2D489274301CB3E44F9BFFE2784EFBDC5DD0275A8AA46A100A8E2DC148C02A0CC9502A00C543B5C6B1BBCEFFD25BC634E01F276F7F6F7BB57C197AD6837AE47D0DF8750CEAAAF61B2994CF40BFA7AE0AFED86BFFC13943E';
wwv_flow_imp.g_varchar2_table(78) := '78176161B0F265EA3890F30745007222000D60002180613F442108E4D89D4A37BABCA797427AB73D91DE6167B89D5D70DBA7C3C964AAEF5B20C70A67B370F26DF06674C09BB300DEDCF976E715C8214B8FDC8340CE5858BB5ABBD6315E440214808800C7';
wwv_flow_imp.g_varchar2_table(79) := '494E0150E64A015006AA154E1A2539D96FCFAF20FD9FFF199861E1C4BA3040D0B3117EF74A9457AD40E9DD3751FAE01DF8AB5620D8B80EE1D050550108C3A0728F694C43986F7C19EBDFACA5F71C20E7BA6608A001DA7F53429B7A003E5F5EB21FBF1CAC';
wwv_flow_imp.g_varchar2_table(80) := '241935EFE1C13143175BCFB9797FD95828DF0A77DA0C785DF390DA7937A477D903A9ED76446AEE7CB872DAA0EB69D58C4A1CE905D8B016FE3FFF0382577EDD382B2C74DFB269A35100EC141D0540992B054019A8563869846675C1FBD68FE0CAD7BF1CE9';
wwv_flow_imp.g_varchar2_table(81) := 'AB78C9177AF9D38F31F2CAAF31F2DB67517AFF1D04037D5B9E47AFF4B99E7280BCEB22D3687300821065AD99F49BC7715D38992CD2BB7F192D071D81CC3EFB23B5DD62B8724E8312535315CA25F8BFBCDDACB20857AFB0DBE3A058F792108A0260A79429';
wwv_flow_imp.g_varchar2_table(82) := '00CA5C2900CA4035C28D7EFDBB7BED8BD43FFC0F40739D7AE0C3DFB01EC5577E8DC2A3F7A3F8EA4B95AE7EAD86702BEF9F711CE43C0769CDC62F226769F887FC102316DF5BB2E8645B90DE7937E48E3BD54C34F4667501A954C4DC8F26975E97959FA2FC';
wwv_flow_imp.g_varchar2_table(83) := 'E37F40F8EA4B15796B20C63A2FD99C51280076CA8D02A0CC9502A00C54235C10C0993D17EED917C13BF7323314A0327CDC430000200049444154720501CA2B97A170FF1D187AFA11F8AB5702D2856DF1928E73E9FE17016894EEFFB1D7956180417F741E';
wwv_flow_imp.g_varchar2_table(84) := '804506D228CBA4421180D633CE83B7DD8E7014CBD4BFF9DFCDAA8070CD6AF602D82CC749C4A6004C02D6246EA5004C02562DB752006AA114FF3DCEEE5F46EACFFF0ECE8EBBE8FCA31E04F0572EC3C0D21B31FCFC53F037ACB5FAD53F464CBAFDA5FB5F86';
wwv_flow_imp.g_varchar2_table(85) := '011AEDF243590960BF17C0BCB74C869C36C30C07B47EED6264F6DAD70C13685CE13BAFC3BFE95F10FCEEC5D1B3161A10B6C68B36510C0A809DC2A2002873A50028038D1A6E6CBFFF438F41EAFFF82F804623215FFEAB5762E0E69F60F885A7CC2C7F3371';
wwv_flow_imp.g_varchar2_table(86) := 'CF727771CA71901FEDFA6FC426495600C850C0A0AF3817A04AF93BAD6DC8ECB10FA6FFC7BF436AC176516B4B25FDF010CA3FFD57040FDD05F4C971CBB2EE82D75412A000D8A14F0150E64A0150061A359C74FF77CD857BFA79F0BEF9FDA8D14CFAA0BF17';
wwv_flow_imp.g_varchar2_table(87) := 'FDD7FF0B869E7AA8D2F88B64586CFCA5B1972F7F99F52FE3FE8DD8F88F811509280521468210459959AF427CE2204E2E6FE604B45F7215BCF93A1B3B054F3D047FE9F508DF7DDD2C67E435B504280076F8530094B9520094812A8493EE7FEFE2EFC23DE4';
wwv_flow_imp.g_varchar2_table(88) := '98C8D1C2A102869F7F12BD57FFA3D9A8A7966BF34670FC05705B4632ABE6A49BDB0152708C003462B7FF78EF2F3D01A5002823842FDB028421647644357911569FE7550B63B76D1ADAAFFC1172279C6E8606A25E6618E067572378E1A986DD2C2AEA3B36';
wwv_flow_imp.g_varchar2_table(89) := '537A0A809DD2A2002873A50028038D124EBECCB32D708F3C11DEB7FF83990818F52ABDFF367AFFD77F41F1D597275CD35F69C0011795465C7E2F0D5BED02E040D6FB7B32E16D347DD4BC4F45FAB234FE2201B2B5418DFD019B4B8014A18F1041B8A5187C';
wwv_flow_imp.g_varchar2_table(90) := 'E15DC210992F7F15D3BEFB1FCDBC80A857B87A39FC25D72378EC3EEE091015A6427A0A8002C4AD84A0002873A50028038D124EC6E53B66993DFFBDCB7F182592492BBBF90D3D7A9F1100B3446C2B978C16CB97BB34DA32662F5FED5E653B9FC95D4DDCE8';
wwv_flow_imp.g_varchar2_table(91) := '6FED452B3B04D68EA0726BA5D74024427A14A427614C06B61A2995C6B42BFF14F9D3CFAD6C1614E51A1E827FFF6D08EEBA1961F70ACE0388C252212D0540012205C00EC4CDA35200EC33AEF909810F67D18EF0BE7119DC332FA839D9783796DE7A157DD7';
wwv_flow_imp.g_varchar2_table(92) := 'FCB3D9ECE7F39734F0D2E8CB187D5ABAEBA5D1DFC61AF1C8002304901E0051AE621898390622035FF089204066BF83D0FECDAB903DE0B0084FAB240D9E7D0CFE2DD754E60168EF3C183977C90A4001B053DEEC0150E64A0150061A259C5F86B3C757E05D';
wwv_flow_imp.g_varchar2_table(93) := 'F81DB8471C1F259299E85778E45EF4FCE37F02CAE52D62C957BF99A467BEF81B637FFE682FDBB8A9374D3234730C2A3D045B5CE90CA65DF127683DEFF2C8CB02C3375E817FEBB5085E78921301A7B84A5000EC14000540992B054019689470E512DCFD0F';
wwv_flow_imp.g_varchar2_table(94) := '8377E9F7E1EC73609448F0D7AFC5E05DB760E0A67FDD6252987CF5CBA97C59C73563FDBCE221203D02B2CA6048F663D8AC2B202C97D07ACE45A617C09BBB205266C2651FC15F7A9DD91408A974A4584C1C8D0005201ABFF152530094B952009481460927';
wwv_flow_imp.g_varchar2_table(95) := '0270D871F02EFB1338BBEE1525124AEFBC81815BAEC1D0530F6FDA48481AFF56D7355DFE6CFB23E1AD2BF1586FC0E0E612E097913DF008B47DF37BC8EE77705D71C71285DD2B2B0270D7CD14804824A327A6004467B8B508140065AE140065A0F58693E9';
wwv_flow_imp.g_varchar2_table(96) := 'E3B95678C79D06F7BC2BE02CDCBEDE4826DDC86F9E45FFCD3F41F1F7BF3502601A7FCF6DF875F9915EBA09128F49801C452C93056572667AD73DD176C9F7903BF694686F20A7032EBD01FE6D37E89D37102D47894D4D01B053F4140065AE140065A0F586';
wwv_flow_imp.g_varchar2_table(97) := '130198D909EFC4B3CC0440274A7770B98CC263F79B9DFFCACB3E32B3FC652FFE1639A5AEDEFC319D1A0169F765E3219100DF0F905AB403DA2FFE2EF2A77F23DA33D6AF857FDBF5F06FBB9102108D64E4D41480C808B71A8002A0CC9502A00CB4DE702200';
wwv_flow_imp.g_varchar2_table(98) := '9D73E09D7521DCB32E8013E104C07078C88CFFF7FFFCDF81C101C8697CF2F5CF31FF7A0B473F9D4C062CF80146CA3EDCF98BD076F177D07A56B4951FE1BA356637C0E08E9B2800FA4536A988148049E1AAF9660A40CDA86ABB9102501B27EB77C9A97CB3';
wwv_flow_imp.g_varchar2_table(99) := 'E7C23BEF5BF0CEB938D20140C1603F0697DC608600524180D654A5EB9F57631130E710947C04F317A2EDE2EFA2F5CCF32365305CD76D860028009130AA24A600A860FC42100A8032570A8032D07AC38D09C00557C23BE7927AA39874C1401F066EBD0E83';
wwv_flow_imp.g_varchar2_table(100) := 'B75C8BAC03B4793C1C2612504B8945C9064B6594E62D425E7A0028009648C71F96026087390540992B05401968BDE1D405E07A0CDF7A2D5ADDCA663FBC1A9340C9F731327721B21745178060B40720E410C094173605C04E11500094B952009481D61B6E';
wwv_flow_imp.g_varchar2_table(101) := '330170CFB924D264BD4A0FC0F5282DB916ED1CF8AFB74462491706018A7317C2BBF0DBC847EC01A000C45264353D84025013A649DF44019834B2891350009481D61B4E59000A4BAE47F9D6EB9067EF7FBD25124FBA204069EE22B8175E895C4401F0477B';
wwv_flow_imp.g_varchar2_table(102) := '00C01E8078CA6E82A75000EC14010540992B05401968BDE194056078C9F5F0975C67E600F06A6002B21470DE22B8175C892C05A0810B6A7259A3004C8E57AD7753006A2555E37D14801A41D9BE2D0C1076CE350D41FA6BD127018EC872B05BAF439A0260';
wwv_flow_imp.g_varchar2_table(103) := 'BBE4A2C50F02042200175E89CC19D15601547A00AE07EEF8299701462B95C8A9290091116E35000540992B05401968BDE19405A0243BC22DB916A97AF3C374F110100198BF089E889F8A00DC000E01C45374133D850260A70C2800CA5C2900CA40EB0DA7';
wwv_flow_imp.g_varchar2_table(104) := '2C0065590FBEE43AB89339D4BEDEBC335DFD042800F5B36BE09414003B85430150E64A0150065A6F380B02102EBD0E8EEC30C8AB710950001AB76C22E48C021001DE04492900CA5C2900CA40EB0DA72D00B7DD80700905A0DEE2882D1D052036D4713E88';
wwv_flow_imp.g_varchar2_table(105) := '026087360540992B05401968BDE12800F5926BEE741480E62EBF71724F01B053AC140065AE140065A0F586A300D44BAEB9D351009ABBFC2800B1961F0540193705401968BDE12800F5926BEE741480E62E3F0A40ACE5470150C64D0150065A6F380A40BD';
wwv_flow_imp.g_varchar2_table(106) := 'E49A3B1D05A0B9CB8F02106BF95100947153009481D61B8E02502FB9E64E470168EEF2A300C45A7E140065DC140065A0F586A300D44BAEB9D3690AC0DA6EF8B77123A046A8109C0468A7142800CA5C2900CA40EB0D1786083ABB2A3BC27DED9BF54631E9';
wwv_flow_imp.g_varchar2_table(107) := 'E434C03297014662185B624D0158B766742BE09BB815706C05B8F5075100EC14000540992B05401968BDE1440066CD36C7C25200EA85D884E9140520E8D9607A0064FF07785E13C2D876B24C01B05396140065AE140065A075850B81B28F60C176485D72';
wwv_flow_imp.g_varchar2_table(108) := '1552A77EBDAE286389D80310095FBC891505201C1E86FFD02F10FCFC6A60C37A4A40BC25B9C5D3280076E0530094B9520094814E369C6CD59B4AC1993113F8EAA1704F3F17DE9EFB4E36CA16F7530022E18B37B1A20098E19FF7DF42F0C09D085F7C0AE1';
wwv_flow_imp.g_varchar2_table(109) := 'FAB54010000E8F848CB750010A801DE2140065AE140065A0930D97CBC3D96E27B8279D05F7F0E3E0CCEA9A6C842FDC4F01888C30BE009B04E0DB489F719ECA73C39E0D089E790CC1BD4B1076AF04860B00CF8450615B6B100A40ADA426771F056072BCAA';
wwv_flow_imp.g_varchar2_table(110) := 'DE4D01A88AC8CE0DAE07E4F3F08E3A09EEB957C099BF1090FFA6F0B54601B0536456A28E09C0F957227DE6F93A8F90C6BE5444B86219FCBB6F46F0DC13407F6FA53780572C0428007630530094B952009481560D1702D91C9C9D778377C259700E390ACE';
wwv_flow_imp.g_varchar2_table(111) := 'CCD980EB564D59EB0D14805A4935C07D2200F316C13DFB22A4CE3C1F6E4B4E2F53BE8FB07723C2DFBD88E0C13B11BCFB063032048043027A90B71E89026087300540992B054019E844E1CA6538F316C23DE10CB8479C0067FE22A06D9A7A0682C101331B';
wwv_flow_imp.g_varchar2_table(112) := '3CB8F51A1E07AC4E573960182098D9059CFC35A4CFB908DEACD9CA0F00501844F8C13BF09F7B1CE1B38F235CB90CF052FACF61C44D042800762A030540992B054019E8D6C2F93E906D81F3A53DE01D772A9CC38F87337BAEB5074B0F807FEBB51501E03F';
wwv_flow_imp.g_varchar2_table(113) := 'F4D638EB040EE17B69E0F83390FEE6F7919AB74027ECE7A394CB08D7AE42F8FBDF2078FA6104AFFD0E181956ED79B293F1E68C4A01B0536E140065AE140065A09F0FE7FB7076D819EE7E07C339E070B87BEC034CEFB0FA505F7684BBE52708EFFA399C74';
wwv_flow_imp.g_varchar2_table(114) := 'C6EAB3183C3A01BF544270C409C85CF91F905EFCA5E801278A501840F0F6EB089E7D0CE14BCF215CBDA232415061EE89DD8C3757740A809DF2A2002873A50028031D0B37BAFCCAD96D2F78279D0DE7C023E1CC9D0F387A63FDE3E5BCF4F6EB28DF7A0DDC';
wwv_flow_imp.g_varchar2_table(115) := '671E85936257AFA512560B2B02E0EF73005297FE002D071CA61677DC404160860182DF3E8BF085A710BCF97B6078B82201140115FE1400158C5F08420150E64A01D0065AF99A7266769A2E7FF7A4B3E11E7038906F557ED038E1021F85077E81E0CE9F22';
wwv_flow_imp.g_varchar2_table(116) := 'B3EC4376F1C6433DD2537CDF4771EE4278675D88D6732F85934A478A5773625929F0EACB089EF82582D75E46B86615502EB3CED40C70FC1B29000A10B7128202A0CC9502A00854BA52B359380B76807BC851704F3B17CE1CF9EA8F6FD675F9A3F731F0D3';
wwv_flow_imp.g_varchar2_table(117) := 'AB81671F431EA1E2CB31942D027E1062C8F510EE7708A67DEB4F91DE6DAF58EB8C2C11F41FBA0B814C10FCF87DA03000537562ACB7B6D84E555C0A801DF2140065AE140025A0B2F77A6B1B9C5DF68277CEC570F73D10C8B4C4F78FA89C25D0B301FDB75C';
wwv_flow_imp.g_varchar2_table(118) := '8BE1C7EE43B66703F229EE07AF54BA56C3F82130542E63647A0772479F8CF66F5E05AFB32BDE2FF1C047F8DE5BF065F3A0DFBD60960F9ADE005E7511A000D485AD6A220A40554493BB810230395E5FB85BBE925CB7B29BDFF1A7C13DFA14389D73E23D8D';
wwv_flow_imp.g_varchar2_table(119) := 'CDF711F4F5A0EFDA1F6358BEE27A3722E739C82BEE2D109112934F40C0084010603808E1CEE840CB9127A2FDB2EFC39BD919EF723D99B732D087E0C5A7E13FF80B84EFBC01F825EE225847EDA500D401AD862414801A204DE6160AC064687DF15E677A07';
wwv_flow_imp.g_varchar2_table(120) := '9C030F8777CCA97076FF32D03E2D96897E6339094B25986EFF5BAFC5C8CB2F1A119001070A40B4728D33B5ECCF37E407180A2AF347DCD636A477FB32DA2EBA1299BDF685A3B939502D2F3654304301C1AF1E45F0AB8711AEEDA604D4C26DB37B28009304';
wwv_flow_imp.g_varchar2_table(121) := '56E3ED14801A41D57A1B05A056529FBB4FBEFA17EE00F7B46FC03DE848385DF3CDF87F7C57087FC37A8CBCF41C861EFB254A6FFE01B201905C1480F84A41E3492200C3D203E08718DBACD7C96491DA6957B49E7501B2071D0E4F768B8C734C5EF60D58BF';
wwv_flow_imp.g_varchar2_table(122) := '06E1AB2F99F901E1DBAF99ED8579D5468002501BA7C9DE4501982CB12AF7530026017474BDB4337D269CFD0F857BE48970F7DA179093FCE2BCCA6594DE7D1385277E8991DFBD087FC53284C5CFFE711601C87B0E721C0288B354EA7E96CCB71B91898041';
wwv_flow_imp.g_varchar2_table(123) := '00190EA85C21E0A6905AB83D325FDE0F2D871F87EC97F787D3D65EF773EA4A383880F08377113CF5208217E484C1353C61B0069014801A20D5710B05A00E681325A100D408541A7FCF83B3607BB8C79D0EF7A023E02CDE35DEB17E39EE75FD5A0CFFF659';
wwv_flow_imp.g_varchar2_table(124) := '0C3FF5088A6FBD6A26FE7D7EFDB6EC3490F35CE45D87EB006A2CDEA9BEAD188628F821CA5B9CDA1722F47DB8EDD391DE6957B41C7D1272C79C0C4FE698C47C85CB3E44F0F20B081EBD17E187EF01E552BC3D1231BF6FD4C75100A212DC7A7A0A8032570A';
wwv_flow_imp.g_varchar2_table(125) := '400D404DE39F82B3FD4EF0CEBC00EE11C7031DB36A48A8778B8CF597DE7B13232F3E8DE1679F40E983772BC1B7F2959F72E4EBDF41D68D6FF9A1DE9B26339234FC85204451E6017CFE0A03844188D4763B2277C4F1C81E7C1432BBEF0D27978F175661D0';
wwv_flow_imp.g_varchar2_table(126) := '6C1EE4DF75736548C02F5302C629010A809DAA490150E64A01A80168E0C359B823DCAF5D0CEF8C0B62FFEAF7D7AC46F1B59731F4E4431891BDDC7B7B26DCE14F1A7E5901E0B1FDAFA1701BE31669F76512A00C038C7BC9B6D22D39A477FF3272C79D8AEC';
wwv_flow_imp.g_varchar2_table(127) := 'FE879A218258E706482FD483BF807FFB8D083FF920DEA58A8D515435E582025013A649DF44019834B289135000AA0095AFFF7406EE896722F5C3BF3187FAC475854305F8AB3EC5D0530FA370FFEDF0D7ADA9AC3098603298ACFC97EE7F9100B6FF719554';
wwv_flow_imp.g_varchar2_table(128) := 'F4E7C8777F29905E8000E56AFB3705811181FC29E7207FDA37E02DDA01AEEC3419D724C18DEBE0FFFCDFE0FFF20E400EBAE2F5050214003B958202A0CC95025005A87C757D697778E75D01F7843395E98F13CEF7E1F7AC47F1D59751B8EF3614DF7A0DE1';
wwv_flow_imp.g_varchar2_table(129) := 'B09CE33EF16566FFBB0E5A5C17ECFDAF46ABF1FE5CDA7D190218F083DAE66EA452C8ECBE0F72279D89ECFE87C0EB9A1FDBD90FC163F7C1BFE51AF6028C538D280076FE7E510094B95200AA002D15E11E7B1ABC6FFD08CE768B95E97F2E5C18222C1551FE';
wwv_flow_imp.g_varchar2_table(130) := 'E88F283C7A2F861E7F00417F6F4D3BB299897F6EE5CB9F8DBFDD62B2195D0600CC8A003FD8B42470C2E7C9C4D47C2BB25F3D04ADE75C84EC3E07C472A88F74FFFB4BAF47F0D05D66722CAF2D095000ECD4080A8032570A4015A0C511B8675F04EF7B7F09';
wwv_flow_imp.g_varchar2_table(131) := 'A76D9A32FD2DC3F91BD661E4B7CF9A75FDC5377E5FF9EADF6256F8D61F2F63FDD2F867A4F1B79A43068F8380484079743E800C07541B11903CC9BE01E95DF744FEE4B3CD9241D7F624D5C17EF877FE0CFECFAE8E0349D33D830260A7C82800CA5C2900D5';
wwv_flow_imp.g_varchar2_table(132) := '04A008F71B972275D5FF667DFC7FF8C55F61F0CE9FA1F8EA4B0847E478D6899B73F95369F4B38E8314C7FC95FF664C6D3869F4FD3034BD01F26382A981958C8A28A6D248EFB23B5ACFBC00F993CE34BFB7761547E0DF7D33FCEBFF07E7016C053205C04E';
wwv_flow_imp.g_varchar2_table(133) := 'CDA3002873A50054138011B8DFB82C160190867FE08E9F62E4D7CF2094F3D927D8C82705206BBEFA012FAEC95FCA758FE1AA1390D501A55111909FC7ED0D90D5038E63B60E6E3DFF0AE48E3AD1EEA4C09161F877FD1CFE0DFFB3B23110AF2D085000EC54';
wwv_flow_imp.g_varchar2_table(134) := '080A8032570A400D0270F6C5487DEF2F01CBBBB0C9F2BED287EF62E4F9A75078F241F8AB57C0F1525BFC433EF6D59F91AF7ED9379E53FD95FF46345EB8CD7B0364C3201916D854ECF2E51F04F0BAE6207BE011A6FB5F96099AD3042D5E61CF060477FC14';
wwv_flow_imp.g_varchar2_table(135) := 'FE926BED8A86C577B0199A0260872E0540992B05A00AD05209EE1127C0BBE2877076DE5D99FED6C3F9DDAB30F4E483A627A0F8F6AB080B05484B9F762A5FFCD2F8F3AB3F96A268988748832FDB048B00C84A81D2E8E640B24435B3DB9E6839E468B41C75';
wwv_flow_imp.g_varchar2_table(136) := '2252DBEF144B9EC377DF348D7FF0F4C39C04C8218058EA9C3C8402A08C9A025005A8D9046807B8E75C0CF7AC8BE0C434E3D9ECFCF7D61FCC4A80E2EF7F0377E53264031F6999F5AD5C0718AEB9089483002370509E391BA9BDF743EEF8D391DDEF2038F9';
wwv_flow_imp.g_varchar2_table(137) := 'B6785E44CE2CB86F0982DB6E44D8BDA2EA5C957832D5584F610F809DF2A0002873A50054012AE3AEA91470E011702FFB53A477DE6DB3FE57E5C2D85AB87209230FDE05E7E1BB80651F02B2326074BC3786A7F3118D4440BAFB655E484B1ECEFC45080E3D';
wwv_flow_imp.g_varchar2_table(138) := '069933CF87232705C678953E7807C18DFF02FCEA5138994C8C4F6E9E475100EC94150540992B05A03A50DF0F303263169C634F45FB25DF833BA323DE2D50CB25847FF82DFC271F34C7B386EBBA81120F63A95E72DBD81DD2FB3363269CBDBF0AF7C4B3E1';
wwv_flow_imp.g_varchar2_table(139) := 'EEF355209B8B6F0C3E0810F46E3413558347EE4176C31A782EF700D85A2DA300D8F9BB470150E64A019818A874B70FCB16AD7E00CC9E83FC695F47FE8CF3E07674C6B6EB9AC9A15F46D8DB83F09517CDE62BC1AB2F578E8CAD619F00E52AC37071139055';
wwv_flow_imp.g_varchar2_table(140) := '1EA9349CED17C33DE654B8C79C026756179092C637A60121DF47B0711D0A8FDC8BC107EE04967F82BCE7F1C0A971EA0205C0CE5F120A8032570A40750190435A06657B569975DF310B2D071E81FC19E722BDCB9E70B259E51299209C34F6A522C2775E87';
wwv_flow_imp.g_varchar2_table(141) := 'FFE02F103CFF043054A004C4570253F224F3D5FFD543E11E7F3ADCBDE5ABBF25D61EA8B05C32BB530E3D7C37869E7D1C72389513F8A3474E73EB29F600C4F7D78202A0CC9A0230090118BDD56D6B476ABB9D903BE134E48E3DC5F406C47A890474AF44F0';
wwv_flow_imp.g_varchar2_table(142) := 'DACB6616B60C0FF05096584B209E8785219C5DF6847BDC69700F38DC8CFB2313A3704A1F536110C32F3E8DC243F7A0F4FE9B087A7A009918EBC899130E5A3D0A0005209EBF0EF2140A80326B0AC0E405C074BB7B1EBCB90B90DDF740E44F3E0799BDF78B';
wwv_flow_imp.g_varchar2_table(143) := 'F5ABCCE47A7000C147EF237CE651F80FDE697E5FD91820A66E61E5BAC870A304A4E1CFB7C239EC58730E85B3EB5E70A677C437D62FD90802943E7817438FDD8FE1DF3E077FF927A3BB5356EAD6D8C153790AC056AB2D8700ECFC6DA6002873A500D42100';
wwv_flow_imp.g_varchar2_table(144) := '264908F8019CD63664F6DCC76CC0D272F051F0166CA75C42D5C3852B9721F8D5A3089E7C00E1271F02654E10AC4EAD01EF18154B67DE42D3F0BB871F0767F12E40CC13EDFCF56B31F2DBE730FCDCE328BEFA3B041BD757E476B31D27CDE1539E6B4E9FE4';
wwv_flow_imp.g_varchar2_table(145) := 'F5450214003BB58202A0CC9502501DA86CBE229300B77A4EBB2C13F47DA4E62F44CB61C7A2E588E391DE6D6FC83041ACD75001FED30F23B86F29C20FDEA99C20C82D82632D82480F1B6BFC176E0FF7D46F98A3A765EC3FCE2B1C2E54C6FA9F7F0AC3CF3C';
wwv_flow_imp.g_varchar2_table(146) := '6A7E6D7ABBB6B225B5EC42298DBF9C3EC98B0210571DA0002893A60054072A3BB0C94A80A189F63CF77D3321501AFFDCC96723BBEF41482D5814EFD79B1CD0F2CBDB2B12B0EC230A40F5A26D9C3BA4A19D330F9E2CEF3BF732EB274F7EFEC5FD35AB507C';
wwv_flow_imp.g_varchar2_table(147) := 'FD150C3DF100465EF92DC2BE1E40F6BF18E792C65F4EA064FBBF7540EC01B0F3578B02A0CC9502501B50D97EB5108CD30B301662F46BC99DD58596C38E41FEC433915AFC25B8B2435B5C5FE3EBD6C05F7A1DFC47EEA9CC0988EBB9B561E45D5B2320F5A6';
wwv_flow_imp.g_varchar2_table(148) := 'A505EEC1C754B69C5EB4636C9CE4D4497FD5727304F5907CF5AF5856758F899403E45DD77CFDD77254716C2FD3400FA200D8290C0A8032570A406D40E554B69130C4B01FC0AF218993CE20B5D32E683DE76264F73F14DECC59801CEC13C315BCF83402D9';
wwv_flow_imp.g_varchar2_table(149) := 'A7FDB5DF719FF61878477E84F41E6DB723DCAF7F13DE5917450E57530059D7DFDF8BD25BAF62F09EA528BEFE3B0485C1AA4B4ACDD8BFE9FAE7D7FF449C290035D5C249DF44019834B2891350006A073A5909909502EEF40EE48E3905B9E34E437AA75DE1';
wwv_flow_imp.g_varchar2_table(150) := 'B4B458FF2A0F3FFD08FE2DD72078E81776CF84AF1D1DEF9C8840B90477BF43E05DF603385F39C83AABB05484BFEC230C3DFD30869E781072F894ACF5AFB6A99434FEB2F44F1A7F8F43FF13961305C04E35A6002873A5004C0EA89C7C5E0A423327A03CD1';
wwv_flow_imp.g_varchar2_table(151) := 'F9EC63611D074E4B0EE9C5BB2077D259E69C76D94CC8EAD5D703FF969FC05F721DE4B4385E0D4E4004E0C893E07DE7CFE16CB7D86A66C3E12133C37FF0DEA528BEF33AC2C141B3AEBFDA25DDFE2DAE6B4EA2E4B87F355A0005A03AA37AEEA000D4436D82';
wwv_flow_imp.g_varchar2_table(152) := '341480C90395714FE90D189653D982102205135E6100279D350DBFD937E08CF390F9F257EDF50414062BF3006EFE89BD67547B67FE796D0464FC3FDF0AF7F833E05DF86D3873E6D796AE8EBB4AEFBD89A147EFC7F08BBF82DFBD728B75FDE38593AFFE8C';
wwv_flow_imp.g_varchar2_table(153) := '5BD9F4478EA0E6877F6DE02900B5719AEC5D1480C912ABD63665B268BDE37AB4DE7C35440678D54E405607482FC0886C9A22DBF24F9454FEA10F02386DED660BE196838F44EEA433E175CEA9FD81B5DE393800FFB61BE0DF7A4DD56EDD5A43F23E4B0444';
wwv_flow_imp.g_varchar2_table(154) := '0E67CF837BCA3970CFB800CE2CFD93FD82817E0CFFEA510C3FF3188A6FBD5A59D72F9343AB4C104D3B30DDFDF2B334FEBC6A274001A89DD564EEA4004C86560DF7B207A0064813DC228DBE1F8690550223A34230E13F95B29450C650BBE6227BE0E16839';
wwv_flow_imp.g_varchar2_table(155) := 'F244D32BE0C8FEEE5AD7407F4500965C4B01D0626A2B8E48E1FC45F0BE7609DC33CE57DDEA57C6F54BEFBC8EE1E79E345FFD65591A5A2A56DDB1528E184A8FAEF197F5FE6CFA275FF81480C933AB250505A0164A93B88702300958E3DC2AFF40CA28AA91';
wwv_flow_imp.g_varchar2_table(156) := '805AE7068808781E32FB1C80DC71A722BBDF4148CD5B34E1DAEB9A734A01A819D594DF382600177E1BEEE9E7E9642708E0AF5D8DE26BBFC3D0AF1EC1C84B2F201C5B123AC197BCD46369F0332ECC58BFFC9ACBFCEA2B120A407DDCAAA5A200542334C93F';
wwv_flow_imp.g_varchar2_table(157) := 'A7004C125895DE00191228064029AC4C12AC7A05813953A0E5D0A3CDC14269D9F73D97AF9A6CC21B2800D1F8C5995A5900C25209E58FDFC7D0538F60584EEEFBF423B35365B5EEFEB1AF7E19EF4FF3AB3F720DA0004446B8D500140065AE140065A09553';
wwv_flow_imp.g_varchar2_table(158) := '024C6F40CD2B0544145229B41C7234DACEBF02997DF68F94A970A01F01870022318C2DB1B20094DE7F1B83BFB8D91CE2131647AA36FCF2D52F4BFAB28E83ACE78267FBE9943C054087E3E7A3500094B9520094816E164E7A000A7EA527A0FA4A8110EECC';
wwv_flow_imp.g_varchar2_table(159) := '4EB45FF23DB49E7B69A44C8900C81C00D90CA8DADAEE480F62E2E8041405201C2A60F0EE5BD07FD3BF221C1EAE9A3769EC5332C3DF71CC983FC7FAAB22ABF9060A40CDA8267523056052B8AADF4C01A8CE28CA1D9FED1B50D94678DC41813084D7D985B6';
wwv_flow_imp.g_varchar2_table(160) := '8BBE13590082813ED30310C83E00B50C43447941A68D46405100820DEBD0BFE47A0CDC7A1D1C4F3AF5B77E6DFED59F19DDD18F8D7FB462FCC2976A710443277F1DFD57FD351C9978C94B8500054005E367412800CA40B7126E6CA5804C101C96CD83B666';
wwv_flow_imp.g_varchar2_table(161) := '0161006FF65CB45DFC1DB47EFD9B91322502203D0021052012C758122B0A80BFAEDB34FE03B7DD08679C6DA7C7D6F5CB3EFE9CE16FAF84D90360872D0540992B054019E804E1C67A034404E488E12D2E2300F3D076F1B7D504407A001CF600C457C0F53C';
wwv_flow_imp.g_varchar2_table(162) := '495683CC5F04F7C26F2315711540350118DBCD4F26F9C96E7EFCEAAFA7C06A4B4301A88DD364EFA2004C965895FB2900CA40ABF11EDD37A0140043616076143497B20094477B002800F196EFA49F160408651F800BAF44EAF4F3279D7CF304E309800BD9';
wwv_flow_imp.g_varchar2_table(163) := 'BFBFB2A31FBFFA2321AE393105A0665493BA910230295CD56FA600546764E30EF93097D30537ED1BA03C044001B0516A166206010211800BAE445A36028A707D5E0036ADEB376BFB652BDF08C199745204280093C255F3CD14809A51D5762305A0364EB6';
wwv_flow_imp.g_varchar2_table(164) := 'EE92FD02E470A1A21F203473007486002800B64A4C39AE2501F05229B3998FFC30EBFAD9F82B17DCC4E128007670530094B952009481D611CEEC1BE00728CDEA42F6220A401D089B3789B2000CDE7A1D866FBF09D974CAACED77D9F24F49DDA000D8C14E';
wwv_flow_imp.g_varchar2_table(165) := '0150E64A0150065A6F38E9099835C77405B77CFD927AA39874B20A803D009110C69758590086975C8FE00E1180747CEFC027E915E67900002000494441547D810005C04EA5A0002873A5002803AD375C1820EC9C6B0420F5350A40BD189B2E9DB2009497';
wwv_flow_imp.g_varchar2_table(166) := '5C0FDCF95338A954D3A1D896324C01B0539A140065AE140065A0F5861B15005726835100EAA5D87CE99405C05F7A0370C74D3A874A351FCD86C93105C04E51500094B952009481D61B8E02502FB9E64E470168EEF21B27F714003BC54A0150E64A015006';
wwv_flow_imp.g_varchar2_table(167) := '5A6F380A40BDE49A3B1D05A0B9CB8F02106BF95100947153009481D61B8E02502FB9E64E470168EEF2A300C45A7E140065DC140065A0F586A300D44BAEB9D351009ABBFC2800B1961F0540193705401968BDE12800F5926BEE741480E62E3F0A40ACE547';
wwv_flow_imp.g_varchar2_table(168) := '0150C64D0150065A6F380A40BDE49A3B1D05A0B9CB8F02106BF95100947153009481D61B8E02502FB9E64E470168EEF2A300C45A7E140065DC140065A0F586A300D44BAEB9D351009ABBFC2800B1961F0540193705401968BDE12800F5926BEE741480E6';
wwv_flow_imp.g_varchar2_table(169) := '2E3F0A40ACE5470150C64D0150065A6F380A40BDE49A3B1D05A0B9CB8F02106BF95100947153009481D61B8E02502FB9E64E470168EEF2A300C45A7E140065DC140065A0F586A300D44BAEB9D351009ABBFC2800B1961F0540193705401968BDE12800F5';
wwv_flow_imp.g_varchar2_table(170) := '926BEE741480E62E3F0A40ACE5470150C64D0150065A6FB8304020C7019FFF2D731CB0E338F5464230D00FFFF61B112EB9160882BAE330610C044400E62D8277E195489F717EA407FAEBBAC1D3002321544BCCC380D4506E118802A0CC9502A00CB4DE70';
wwv_flow_imp.g_varchar2_table(171) := '6188A0B30BEED9172375F64570F3ADF546423854807FF72D086EBD06182AD41D87096320302600720CF4995105600DFCA5D7F338E0188AADDA232800D508D5F7E71480FAB88D9B8A02A00CB4DE702200333B8113CF42FACC0BE0CD5D506F2484A512FCC7';
wwv_flow_imp.g_varchar2_table(172) := 'EFAF08C08A654084DE84BA33C184B511100158B03DBC0BBF8DF469DFA82DCD3877F9EBD75604E0F61B81542A522C268E468002108DDF78A92900CA5C2900CA40EB0D2702D0DA061C773A52E75E8ED482EDEA8D0448ACDF3E0BFFD66B11BEFE32E0B8F5C7';
wwv_flow_imp.g_varchar2_table(173) := '624ABB04021FE1CEBBC3BDF03B481F7B6AA467F91BD65504E0B61B28009148464F4C0188CE706B112800CA5C2900CA402384F3CB6584871D8BD4657F82CCAE7B45880404EFBC561180671F075C0A4024983613FB6560BF43E05DF45D78FB1F1AE9497EF7';
wwv_flow_imp.g_varchar2_table(174) := '2AF84BAF03EEFA39904A478AC5C4D1085000A2F1630F801D7E5F884A018809740D8FF14B2504071C86D4A53F40769F036A4831FE2DE1DA6EF877DF8CE0D66B01CF8B148B892D122897E09C762EBC8BBF07374AAF0F80F2A71FC35F721D9C076EA700582C';
wwv_flow_imp.g_varchar2_table(175) := 'B25A4253006AA134F97BD80330796613A6A00028038D104E7A00FC3DBF82D445DF45CBE1C7458804C0F7113C720FCAFFFDEF81902B01A2C1B498DAF3E05D7215DCF3AE80D3928BF4A0D29B7F30BD3EEEF38F031EE7004482193131052022C07192530094';
wwv_flow_imp.g_varchar2_table(176) := 'B9520094814608E7FB3E4ADB2D46EA1B97237FE6791122559286AFBF82F24FFE1BC2B75F8D1C8B012C10080238BBEC09EF9BDF871B55F8008C3CFF14FC5B7E82D4DB7F005CF6FA5828B19A4352006A4635A91B290093C255FD660A40754671DDE1070146';
wwv_flow_imp.g_varchar2_table(177) := '66CC8477D64568BFFC4F223F36ECD980E0E1BBE15FFF63EE071099A68500F2F5FFF54BE19E75219C08AB3E4CCECA650C3D7027FC3B6E4266C5279CF761A1B82613920230195AB5DF4B01A89D554D7752006AC214CB4D7E1860389D8573F4A968BFEA2FE0';
wwv_flow_imp.g_varchar2_table(178) := '75CC8AFCDCF0EDD750FEA7BF43F8F1FB667500AF0621108695AFFF6FFD08EEFE87456EB0FDB5AB51B8ED26E0E1BB902D0C70E9E714173305C04E01500094B9520094814608178421864220D8E32B68BDF4FB6839E88808D14693F6F52078F45E94653260';
wwv_flow_imp.g_varchar2_table(179) := 'EFC6E8F1184187402E5F99F877F239701444AFF8EE1B28DC74359CE79F402ECDF17F9D42AA3F0A05A07E7613A5A4002873A50028038D104EA6EA0D97CB2875CD47CBD917A1FDE2EF4488F659D2B0673DFC7FFB4704BF7906E8EF5389C9201108645BE01E';
wwv_flow_imp.g_varchar2_table(180) := '7884F9FA77B65B1C21D06749879E790C855BAE41EAAD5791CB7009A00AD40841280011E04D909402A0CC9502A00C344238E9A01FF12BC300E9238E47C7DFFCBF3A1BBAF83EC2E59FC0FFE9FF42F0CA8B94800865143969B605CE4EBB21F517FF0067FBC5';
wwv_flow_imp.g_varchar2_table(181) := '2A9B3485C511F4DF7435867F793BB2BD1B914B710260E4728A1880021011E038C92900CA5C2900CA4023862B0621068310DE5EFB62C65FFD3F482DDC21F2F8B0C9926C32F4C907F06FBBC1EC1288FEDE883965F24913C8B7C2D9631F78E75C0277DF8380';
wwv_flow_imp.g_varchar2_table(182) := '6CCBA4436C2D41E98FEFA2FFBA1FA3F49B67900B03B478DCF849056C8420148008F0D8036007DED6A25200E2635DCB934A618842D94730673EDACEBF027999219E56EAD21509F8F88F081EB803C1B38F23DCB046E50BB496F74AF43DB20FC3F499700F39';
wwv_flow_imp.g_varchar2_table(183) := '0ADE69E7C1D969D74AE3AF714643186260C90D18BCE75660D572E4531EB26EFD274926BA9C145F9E02A00873B350EC0150E64A0150061A315C592602FA0146D21964F73D081DFFF0E34827037E213B2201AB5720FCDD0BF09F7A08E15BAF02E51260DA0C';
wwv_flow_imp.g_varchar2_table(184) := '361C118B6FCBE47214732A0567FB9DE01E79A2F9E1C86E7FE98CCE63C210FEDA6EF4FCD3DF61E4A5E7912A9791F75C6428003A7C2344A1004480C71E003BF0D803101FD77A9FE487C0501060D80FE075CDC3B41FFE155A0E3D068E5277F1A67CF5F522F8';
wwv_flow_imp.g_varchar2_table(185) := 'E3DB085F7911E16B2F23F8F07D60681008FC8A088C7D9D567582AA37D48BA2C1D28DB78452DE3F34FF33CB2CE5876CC293499B097EEE3E07C2D9F72038BBEC01675697CE57FF1819BF8CC223F7A2FF67FF8EF2F24F90F53CE43D07298D9E8506A3DF6CD9';
wwv_flow_imp.g_varchar2_table(186) := 'A100D82931F6002873650F8032D088E182510128F801DC4C16D9AF1E8C19FFE73FC29D3E2362E4AD240F0284EBD720FCF803E0930F107CF00EB0E21384EBD722ECEB018687AB6F233CD6E8C9D7AEFC5A1A1F397CA8591B21DF1F7D0FF120B7FABB9806DF';
wwv_flow_imp.g_varchar2_table(187) := '05B239A0AD1DCECC4E380BB7378DBFB3E397E02CDE154ED73CFDF318E4C4C7FE5EF4FED3DF63F8C55F211C2A20E7B968711D78CDCA5EBF864F59440A801DF4140065AE140065A011C39995003211D00FCC47A5DB3E0DD3FFF2FF42CB214745DE2B7EC2AC';
wwv_flow_imp.g_varchar2_table(188) := 'C9B1B49F7E8C70E5A708D775033D1B80E12184B25D6D95770A4B2560B0DFA409D7AE46B86299496B24A0291A23D97C21308DB4B368319CB90B81191D70E4786633FF627C0252468E0880ECE3DF3EDD7CE54B37BFE9EAD7EEB5D9AC1C64E6FFF0B34FA0FF';
wwv_flow_imp.g_varchar2_table(189) := 'DA7F4679D572B861889CE7A0C575AB9657C42ACAE43510A000D400A98E5B280075409B2809054019A842B85210A21084900981D22865F6DA0FD3FFE4AF90DE75CF866D504D8F41F74A841FBD8FF0F7BF41F0EE1B151128151B36CFA6A846BBEC9D39F380';
wwv_flow_imp.g_varchar2_table(190) := '1D76867BE8B17077DBABF2D5DE3E5DA1342D84084394572C43EF7FFDCF28BEF10AC262119EEB22EF3A9C006801773D212900F550AB9E8602509DD1A4EEA0004C0A572C37FB32113008312CE301F28599CDA2EDE2EF227FDA37E0CD9E134B1E223D647000';
wwv_flow_imp.g_varchar2_table(191) := 'C10B4FC27FF45EC856C4280C36A60448E32FEBF277DE0DDE5127C339F20438B3E736665E372B90A06723861EBD0F7DD7FE33C2D19E968CE3981E807453F4B844AA5D4D91980260A7982800CA5C2900CA4015C249B32FFB010C8C0E034837BA376F21A67D';
wwv_flow_imp.g_varchar2_table(192) := 'E7CFD172F8B1FA130215F2FC85107E19E1B20FE15FF3DF11BCF4DCE85C826A83093632325E4C99AFE09975F9A93FFF3B388B7618DD74A991F2F8C5BC4BD7FFC84B2FA0F7C7FF37FC35AB37CDD190C97FD2FDCF1D00E2AC43E33F8B0260A71C2800CA5C29';
wwv_flow_imp.g_varchar2_table(193) := '00CA4095C2C972C0013F84FC5CE90670D072E01168BDE8DBC87EE5C0E658B12713D51EB907FE9D3F4528130C1BE988DAC087B3704778E75E0AF7B47301AF39F6CF2FBDFB26FA7FF66F187EE12940262C0266D6BF0880F402F06A0C0214003BE5400150E6';
wwv_flow_imp.g_varchar2_table(194) := '4A015006AA14CE9C0BE0CB50406532A07180541A2D479D80D6F32E4766F72F2B3DC97298A182D982D8BF77293032DC20DDEBF2F5EFC23DFC78A4FEEC6F0185C3782C5334E165DCBF70F7AD18BC6709A42760EC9299FF39D785C7F63F8E62A8E91914809A';
wwv_flow_imp.g_varchar2_table(195) := '304DFA260AC0A4914D9C8002A00C54319C4C02EC2F071019305710C06D6B47CB3127A3F5DCCB915EFC25C5A7D90B153CF510FC5BAF45F8C7B71AA317405636ECB80BBC732F837BCAD7ECBDB862647FF50A0CDEB314855FDE81404E751CFDDA9736BF9D9B';
wwv_flow_imp.g_varchar2_table(196) := 'FF2892D6094501D0E1F8F928140065AE140065A08AE1A4E197FD006459E0A66D684402A677989E80B6F32E476A879D159F682754F8CEEB9533089E7DAC32EB7EAAAF30847BC0E1F02EB90ACEDEFB4D756EAA3EDF5FF92906EF5D6A36FD09D6766FB1A780';
wwv_flow_imp.g_varchar2_table(197) := '6CFB9BE7D77F558671DF4001B0439C02A0CC9502A00C54319C34953207608B5E0089EF97E1CE9889DC31A7A0F5FC2B9092096C0D7C85AB9623B87709FC07EE040A03539F53992C77C299F02EFF6165B95F035FB2C35FE1BEA5283C7A3FFC35ABCC30D0D8';
wwv_flow_imp.g_varchar2_table(198) := '65BEFE53AE99F9CFDEFFC62A440A809DF2A0002873A5002803550E271220AB016455C016DFCE2201D33A903BF10CE44F3F17E99D776B90F1F52F0208D7AD41F0CBDB11DCB714A16C30349593D5A4072295867BF685487DEB47404B5EB9C4F4C299C65FBE';
wwv_flow_imp.g_varchar2_table(199) := 'FC1FBD17FEDA3570529F4D5494065F26FDB5A638F35F8FB85E240A801ECBCD23510094B9520094815A0827730106375F1130F60C19CB6E69313D01F933CF3712E0E41AAF41930D81FC7B6E41F0D05DC050C102A1C98494AD7B53704FFD3ABC2BFE14CE8C';
wwv_flow_imp.g_varchar2_table(200) := '9993491CCBBDB2AD6FE9A33F62E8895F62E891FB106C5CFF85AD8465C25F9BE79A1500FCFA8FA55826F5100AC0A470D57C3305A06654B5DD4801A88DD354DF35E487180E03C861415FB83CCF2C0D1409C8ECBD1F3C99D5EE79539DE54DCF0FDF7D03FE6D';
wwv_flow_imp.g_varchar2_table(201) := '372278F6D1CA96BB537DC91C80438F8177E90FE0ECB2E754E7E6B3E70701829EF528BEF92A06EFBF1DC5577E83702B2B2764AD7F5676FEF3D8F8374EE16D99130A809D92A1002873A5002803B5146E6C77C02D26046EFE2CD735730172479D8496A34F42';
wwv_flow_imp.g_varchar2_table(202) := '6AFBC595F1E2A9EC6E1FCD5FF09B672AAB005E7DA931C4C4F7E1ECBA17BCF3BF05F7D8532D95D824C2862142BF0C7FD5720C3FF338869E7C10A58FDE07CAE52F04315DFF9CF83709B853732B05C00E770A8032570A8032508BE16428407A028AE3CDA497';
wwv_flow_imp.g_varchar2_table(203) := '8360727964F6FC0AF2279D85EC0187C16D6DAFEC7037552210046605807FE74DC0C6291EFF1F2B1BE197CBC33DFE0C783FF8ABA9DD5931F011F4F7A3F8C6EF31F4F8FD6697BF400E561ADDE4E7F3D54926FCE55CC74800AFC6254001B05336140065AE14';
wwv_flow_imp.g_varchar2_table(204) := '0065A096C3490F806C0E549E60359D93CE983303D2BBEF8DECC147A1E590A3CDFE01E6D8DA98AFC2C3F720BCF367487DF8EE9439C8D65E594E39F477DC05CE05572277DC69F1F74CC857FFC808467EF702869F7E04C537FE007F7DB7F96FE32D9594717F';
wwv_flow_imp.g_varchar2_table(205) := 'D9F04796FEB1F98FB9224FF27114804902ABF1760A408DA06ABD8D02502BA9C6B86FECB8609180ADCE07906C8E9E51EFB4E4E0CD9A6D2607660F3C02D9830E87D73927B6DE80F2C71FA0F7DFFE11F8ED73C82144AA81BE5AFD20C0909B42B8D7BE98FEC3';
wwv_flow_imp.g_varchar2_table(206) := 'BF416AE75D63E162BAFABB57992FFE915F3F83D2FB6FC15FDB8DB050A8ECEB3F4E4F8DA89BECF52F07FEB0F16F8CBF8B13E5820260A78C2800CA5C2900CA40630827122027050EF99BED12B8D5CFDCD0C8801181B9F3E1CD5F84D4FC4548EFB10F327208';
wwv_flow_imp.g_varchar2_table(207) := 'CE8245664B5CF52B0CCD5EF5B271CDC8CB2FC0EBEF453E9D6AA8BDEA655965A1ECC3CFE5CC04CA96634F45CB91C7C3CDB7E9E3F07DC84E7EA5F7DE44E9EDD751FAF803F37B19F39719FFA6459FA01CC626FDC996BFDCEE57BD78AC04A40058C10A0A8032';
wwv_flow_imp.g_varchar2_table(208) := '570A8032D098C2C95C7A190E18A9321C60B2233D0272A680EC22D8DA066FD1F6486FBFB31926703B66C1EB9A0BB77D3A9CF6E9955F77CC84630EC7A971D73EE9CE1E1E82BF7E2DCACB97A1FCC1BB46008AEFBC6EBAB4539E0769BCE447A37CBD0ABB4199';
wwv_flow_imp.g_varchar2_table(209) := '752FAB121C17E99D764566FF4391D96D6FA4B6DB01DE9CF970DADAE1D43A6C22AE2527200E0CC05FBB1A415F0FE4D85EF3EBF56BE1AF5B83F2A71FA3BCE213047DBD7084AD1C8E54656E86749AB438956E7F36FE31FDE552780C054001E25642500094B9';
wwv_flow_imp.g_varchar2_table(210) := '52009481C6186EECD8E06A7302B6C8D2A80C8C8D333B22047317C09DD1616420B5603B23014EB6A5F637F165225B1FCAAB96A3FCD1FB287FF8BE69004DE32647198F765F1B01681003901E94C1B1E396E54D031F486791DE7E31528BBF84D4A21DE1CEEC';
wwv_flow_imp.g_varchar2_table(211) := '8493FE6CE7BD09818C8EE9CB32BEF2CAE50836AC334214AC5985A0BF1708E40022D4D4E88F3D47D6F8CB643FD3F8D75E1ABCB301085000EC14020540992B05401968CCE1C6E604C817AD6C1B5CE337FB67B91421185B55E07995DDE63299D12584350C0F';
wwv_flow_imp.g_varchar2_table(212) := '48A3E6FB08478A084B23669B62D3D26DD6D237E2E4351100396761CB5D09A4A744BECC5DC8444A279B35BB06D67409FB7209281511CAF23D99C52F5C4725A8A618A33709526FB3D9FE0DE24C937985C4DF4B01B053052800CA5C2900CA40A7289C2C0D14';
wwv_flow_imp.g_varchar2_table(213) := '0990A582D28635D2D588E7D59B3900A3D2D448AC44B9D2F2D5EF38E66736FE8D543AB5E78502503BABC9DC4901980CAD1AEEA500D400A9496E91867F64540464E3A046F180B18D6B520DD49AC90A0A193A919E8046B9A4A724E3B866AE04C7FB1BA554EA';
wwv_flow_imp.g_varchar2_table(214) := 'CB0705A03E6ED5525100AA119AE49F53002609AC096E975E00E90D905E81A96EDFA4CD97B5EB8DB67C6D6CE8648B79005354B632D14F7A4964AC5F0EF869204F9A2222CDFF580A809D32A4002873A50028036D9070D2F0CB9C80311198AAEF5C69D464E7';
wwv_flow_imp.g_varchar2_table(215) := '3A69E01AED123EB2B3A2F49A4CC535B6ADAF34FAC24744A0F1284D0599E67F2605C04E19520094B95200948136503869D68230840F98E384A56760DCCD832CE4BB11C7FE3FFF9AC2A4E057D8C47549432F5BFAB2E18F8B78FCCFA100D8614E0150E64A01';
wwv_flow_imp.g_varchar2_table(216) := '5006DAA0E1A4E1F7511912902F5FD94A58E609C82C78EDAFCEB12F5BF9FA97864E3BBE266269F6C77A4AC63D6829C20325BEBCBFCC7F102192D9FD32BEEF815FFC11B0367C520A809D22A2002873A50028036DE070D2104983240D7F45082A3D04220166';
wwv_flow_imp.g_varchar2_table(217) := '7B0054260E9A1FB23A70F45DAA7D1B9BE5ED0EE08E366AB285904CFC6BC46EFFF18A47788C6DAA34C64164A9DAE1C563726336F3931FA3DDF8A23D1526F2DF2AEBF8D9CDDFC07F3994B3460150063A1A8E02A0CC9502A00CB4C9C28D0D134843270D5EE5';
wwv_flow_imp.g_varchar2_table(218) := 'F7F2F3663250E59D2AEBD63FFBAA95AFDC1A7610683852C2C0F48A8C7230A254C3BB6F6AFCB768F42B8DBF3B3AF7A1917B411AAE20B6810C5100EC14220540992B054019689387DBFCCB7FEC55AA2D2894AFDDB12FDF267FFD4DD9FFAC1764E2FE8FCF0F';
wwv_flow_imp.g_varchar2_table(219) := '708CF5026C2B1CF81EF511A000D4C7AD5A2A0A40354293FC730AC02481F17612200112A8D633541CC1D0C95F47FF557F0DA754242F2502140025909BBEEE3259B4DE713D5A6FBE1A2203BC488004488004A211600F40347EE3A5A6002873650F80325086';
wwv_flow_imp.g_varchar2_table(220) := '230112483C010A809D2A400150E64A015006CA7024400289274001B053052800CA5C2900CA40198E044820F104280076AA000540992B05401928C3910009249E0005C04E15A0002873A50028036538122081C413A000D8A902140065AE140065A00C4702';
wwv_flow_imp.g_varchar2_table(221) := '2490780214003B558002A0CC9502A00C94E1488004124F800260A70A500094B952009481321C099040E2095000EC54010A8032570A80325086230112483C010A809D2A400150E64A015006CA7024400289274001B053052800CA5C2900CA40198E044820';
wwv_flow_imp.g_varchar2_table(222) := 'F104280076AA000540992B05401928C3910009249E0005C04E15A0002873A50028036538122081C413A000D8A902140065AE140065A00C47022490780214003B558002A0CC9502A00C94E1488004124F800260A70A500094B952009481321C099040E209';
wwv_flow_imp.g_varchar2_table(223) := '5000EC54010A8032570A80325086230112483C010A809D2A400150E64A015006CA7024400289274001B053052800CA5C2900CA40198E044820F104280076AA000540992B05401928C3910009249E0005C04E15A0002873A50028036538122081C413A000';
wwv_flow_imp.g_varchar2_table(224) := 'D8A902140065AE140065A00C47022490780214003B558002A0CC9502A00C94E1488004124F800260A70A500094B952009481321C099040E2095000EC54010A8032570A80325086230112483C010A809D2A400150E64A015006CA7024400289274001B053';
wwv_flow_imp.g_varchar2_table(225) := '052800CA5C2900CA40198E044820F104280076AA000540992B05401928C3910009249E0005C04E15A0002873A50028036538122081C413A000D8A902140065AE140065A00C47022490780214003B558002A0CC9502A00C94E1488004124F800260A70A50';
wwv_flow_imp.g_varchar2_table(226) := '0094B952009481321C099040E2095000EC54010A8032570A80325086230112483C010A809D2A400150E62A0290BFF346B4DE7235904A2B476738122001124820815209C3277F1DFDDFFB2B38A5620201D879650A8032D7309341EEDE5B90BFF5DFE10681';
wwv_flow_imp.g_varchar2_table(227) := '7274862301122081E411081C0743A77C034397FF19502A250F80A537A60068834D67907EF46EE4965E8B4C7F0FE038DA4F603C12200112480E81304429DF86A153CF45F1BC6F03650A8056E15300B4488EC549A5E1BCF0045AEEBC09ADCB3FA40068F365';
wwv_flow_imp.g_varchar2_table(228) := '3C122081441170820085390B5138FD0284279D03F8E544BDBFCD97A50068D3F55228BFF50764EFBD05337FFF0242D7D57E02E39100099040620838BE8FDEDDBE82C1B32E467AFF4301DF4FCCBBDB7E510A803261C77531D0BD1AE987EEC0820796224CA5';
wwv_flow_imp.g_varchar2_table(229) := '949FC07024400224901C026EA988EE234FC5C0D72EC3B485DB21E4DC2AB5C2A700A8A1AC04721C07BD0303C0F34F60E1FDB720B3618DF213188E04488004124240C6FFA7CFC4AA13BE8691E3CEC0CC1933108661425EDEFE6B5200941957046010237F7C';
wwv_flow_imp.g_varchar2_table(230) := '075DCF3D84CEE71EE53080326386230112480601A75CC6C6FD8F40F7D1A7C3DD756FCC9C3E8D02A058F414004598633D007DFDFDE85BBF0ED3DE7F030BEEFD19321BD62A3F85E148800448601B271086284FEBC0AA53CEC3C67D0E467E46073A3A3A2800';
wwv_flow_imp.g_varchar2_table(231) := '8AC54E015084B94900FAFAD0DBDF8F747F2F3A7FFD243A9F7910DE7041F9490C4702244002DB2E81209DC6FA438EC7BA434FC470E71CB4E7721400E5E2A6006803751CF44B0F405F2F42B848F7ACC3827B6EC2B4F75E87C30D2C9469331C0990C0B64820';
wwv_flow_imp.g_varchar2_table(232) := '743D0C2EDE152BCEBC1443F3B78713F8686B6BC30CCE01502D6E0A802ACECA24C0C18101F4F5F5C10F02387E19F9E51F63E13D3721BB7AB9F93D2F122001122081AD1390C6BF347336569C75290616EF8E209D81EB3A4600A64DE31C00CD7A4301D0A439';
wwv_flow_imp.g_varchar2_table(233) := 'BA0A606868C8F402148B953DABDD7209AD1FBD87790F2D45CBCA65C666799100099000096C4960ACF15F79DA85E8DF794F04D91673433A95425B7B3BF2ADAD005701A8551B0A801ACACF02954A25230022026397AC65CD2FFFC8CC0768FFE31B708787B9';
wwv_flow_imp.g_varchar2_table(234) := '4BA005F60C490224D08404C210412683C2F65FC2DAA34EC7C00EBB6C6AFC65D95F4B4B0BDADBDB91CD669BF0E51A37CB14000B65130401060707D1DBDB6B8604C62EE9FECF6C5C878E3FBC888E979F4176CD2A849E4711B050060C490224D00404C210B2';
wwv_flow_imp.g_varchar2_table(235) := 'D35FA9A3131BF73D041BF63F0AC55973201300C72E1180B1EE7F973BABAA162A054015E767C1868787D1D3D3037FF36D2B1DC7EC0990D9B81E6D1FBD83B6F75E43DB07EF20BB6605E0B84604421106E30C3C44C852D1302C0990C0541190065FBAF0E5E7';
wwv_flow_imp.g_varchar2_table(236) := 'C0C7C8AC39185CBC1BFA77D9DB8CF78F74CE8513065B74F37B9E67BEFE5BA5FB9F972A010A802ACECF8295CB650C0C0C989E80CF5F32CE254302D9F5DDC82DFF10B9151F23BBAEDBF40EA4FA7BCC9241B738023904831709900009343B81D0714D17BFDF';
wwv_flow_imp.g_varchar2_table(237) := '9247B96D3A4A336661A4738E99E13FB468314666CF839F69F9C2FC28F9FACFE7F34600D29BF50A343B8F46C93F05C0524948C51D1919416F6F0FCAE5AD4DFAABF4060021BCC22072DD2B9059DF8D74DF4678857E78232380992CC89E004B45C4B0244002';
wwv_flow_imp.g_varchar2_table(238) := 'B11008015704208B72AE0DA5691D28CEEAC2F09C0528B74E333D9F9FFFEA1FCB96E7B998366D3A72B9DC16C3A9B1643B010FA100582CE4B1B900D21320BF1EF7DAD4F52F8D3D87002C1609439300094C1901E9FA97878F0E018C0E058C971D993FD5D6D6';
wwv_flow_imp.g_varchar2_table(239) := '6ABAFE3D8F87AAD928360A800DAA9BC59439003217407A0378888565D80C4F0224B0CD109019FFB2F18F74FDF3DF4E3BC54A01B0C3F5B3A8729A55A9849EDE1EF33397B0DA06CEF8244002CD4E2095F23063FA0C64B25976FD5B2C4C0A8045B863A1C55E';
wwv_flow_imp.g_varchar2_table(240) := '655320D91E98121003703E820448A0690948E33F7DFA0CB3E67FF365D44DFB420D9C710A404C852312502A16CDCA80610E07C4449D8F210112681602D2D8673219B4B7B5F1CB3FA642A300C404DA3C468EB7F47DB34360A1308852A94CC38D933F9F4502';
wwv_flow_imp.g_varchar2_table(241) := '24D07004E4E348BEFA65B95F3E2F13FE3CFEBB185329510062023DF618B15CD92340860464B320991C28BF978BDD5D3117061F470224302504C626F5A55229F3D52F5BFD66B319A4529CF01767815000E2A4BDD9B3E42F80AC1010119079012201F27BF9';
wwv_flow_imp.g_varchar2_table(242) := '11060102CE16FCFFDBB9639586A2208AA292F7FF9F1C911BD046B00866E714AB106CCC0C6B8AEC88BE375DC65802045E21703EE09C47F95EB7DBC7EDBA3ECE9BFFF90BFF1300E77B1F805EA1FEF76B0A80DEFCD7C4F38C801300E7EBF37E7F3C3340000C';
wwv_flow_imp.g_varchar2_table(243) := '1CC60A0408FC9BC04F005CD7E3D7FCE7CDDFB3FDFF8DF7A91712004FB1BDEE8754F0EB6CBD320102EF17F03FFDEFBFC1F7060260E71636214080000102998000C8A80D2240800001023B020260E71636214080000102998000C8A80D2240800001023B02';
wwv_flow_imp.g_varchar2_table(244) := '0260E71636214080000102998000C8A80D2240800001023B020260E71636214080000102998000C8A80D2240800001023B020260E71636214080000102998000C8A80D2240800001023B020260E71636214080000102998000C8A80D2240800001023B02';
wwv_flow_imp.g_varchar2_table(245) := '0260E71636214080000102998000C8A80D2240800001023B020260E71636214080000102998000C8A80D2240800001023B020260E71636214080000102998000C8A80D2240800001023B020260E71636214080000102998000C8A80D2240800001023B02';
wwv_flow_imp.g_varchar2_table(246) := '0260E71636214080000102998000C8A80D2240800001023B020260E71636214080000102998000C8A80D2240800001023B020260E71636214080000102998000C8A80D2240800001023B020260E71636214080000102998000C8A80D2240800001023B02';
wwv_flow_imp.g_varchar2_table(247) := '0260E71636214080000102998000C8A80D2240800001023B020260E71636214080000102998000C8A80D2240800001023B020260E7169D1800400000020E4944415436214080000102998000C8A80D2240800001023B020260E716362140800001029980';
wwv_flow_imp.g_varchar2_table(248) := '00C8A80D2240800001023B020260E71636214080000102998000C8A80D2240800001023B020260E71636214080000102998000C8A80D2240800001023B020260E71636214080000102998000C8A80D2240800001023B020260E716362140800001029980';
wwv_flow_imp.g_varchar2_table(249) := '00C8A80D2240800001023B020260E71636214080000102998000C8A80D2240800001023B020260E71636214080000102998000C8A80D2240800001023B020260E71636214080000102998000C8A80D2240800001023B020260E716362140800001029980';
wwv_flow_imp.g_varchar2_table(250) := '00C8A80D2240800001023B020260E71636214080000102998000C8A80D2240800001023B020260E71636214080000102998000C8A80D2240800001023B020260E71636214080000102998000C8A80D2240800001023B020260E716362140800001029980';
wwv_flow_imp.g_varchar2_table(251) := '00C8A80D2240800001023B020260E71636214080000102998000C8A80D2240800001023B020260E71636214080000102998000C8A80D2240800001023B020260E71636214080000102998000C8A80D2240800001023B020260E716362140800001029980';
wwv_flow_imp.g_varchar2_table(252) := '00C8A80D2240800001023B020260E71636214080000102998000C8A80D2240800001023B020260E71636214080000102998000C8A80D2240800001023B020260E71636214080000102998000C8A80D2240800001023B025F3C6052FEE8CD86BB00000000';
wwv_flow_imp.g_varchar2_table(253) := '49454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(94278421349483503)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(94269728272483472)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>3433272
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(94270001866483473)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>3433272
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(94270228809483473)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>3433272
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(94270581660483473)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>3433272
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(94270881882483473)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>3433272
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(94271220496483473)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>3433272
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(94271511603483473)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>3433272
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(94271758241483473)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>3433272
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(94272055246483473)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>3433272
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(94272396743483473)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>3433272
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(94272686882483474)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>3433272
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(94272931873483474)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>3433272
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(94273316803483474)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>3433272
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(94273538123483474)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>3433272
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(94280170220483504)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>3433348
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_items/remote_server
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(97788196434683801)
,p_name=>'REMOTE_SERVER'
,p_protection_level=>'S'
,p_version_scn=>26329235
);
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(16056156358774255)
,p_name=>'TMDB_APIKEY'
,p_value=>'NO'
,p_is_required=>'N'
,p_valid_values=>'YES,NO'
,p_version_scn=>51369826
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(97765075833099294)
,p_name=>'REMOTE_SERVER_INITIALIZED'
,p_value=>'NO'
,p_is_required=>'N'
,p_valid_values=>'YES,NO'
,p_version_scn=>75158722
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(100923862693099487)
,p_name=>'ODATA_URL'
,p_is_required=>'N'
,p_on_upgrade_keep_value=>true
,p_version_scn=>75144753
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(100924061009101832)
,p_name=>'REMOTE_SERVER_BASE_URL'
,p_is_required=>'N'
,p_on_upgrade_keep_value=>true
,p_version_scn=>75158687
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(100924261443103367)
,p_name=>'REMOTE_SERVER_SCHEMA_ALIAS'
,p_is_required=>'N'
,p_version_scn=>75158655
);
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(94291948878483532)
,p_lov_name=>'DESKTOP THEME STYLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>3433399
);
end;
/
prompt --application/shared_components/user_interface/lovs/employee_popup_lov
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(16523375231754759)
,p_lov_name=>'EMPLOYEE_POPUP_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ename as employee,',
'       empno as return_value,',
'       sal   as old_salary',
'  from eba_demo_rest_employee',
' order by ename',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN_VALUE'
,p_display_column_name=>'EMPLOYEE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>21437050
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(16524410162758781)
,p_query_column_name=>'EMPLOYEE'
,p_heading=>'Employee'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(16523997436758781)
,p_query_column_name=>'OLD_SALARY'
,p_heading=>'Old Salary'
,p_display_sequence=>20
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(16524846251758781)
,p_query_column_name=>'RETURN_VALUE'
,p_display_sequence=>30
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(94292673326483541)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_lov_query=>'.'||wwv_flow_imp.id(94292673326483541)||'.'
,p_location=>'STATIC'
,p_version_scn=>3433405
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(94292965925483541)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allow End Users to choose Theme Style'
,p_lov_return_value=>'Yes'
);
end;
/
prompt --application/shared_components/user_interface/lovs/workflow_console_lov_initiated
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(99817589791496374)
,p_lov_name=>'WORKFLOW_CONSOLE.LOV.INITIATED'
,p_lov_query=>'.'||wwv_flow_imp.id(99817589791496374)||'.'
,p_location=>'STATIC'
,p_version_scn=>15347693
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(99817867054496374)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Last hour'
,p_lov_return_value=>'|1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(99818294483496376)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Last 24 hours'
,p_lov_return_value=>'1|24'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(99818683091496376)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Last 7 days'
,p_lov_return_value=>'24|168'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(99819022106496376)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Last 30 days'
,p_lov_return_value=>'168|720'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(99819438246496376)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Older than 30 days'
,p_lov_return_value=>'720|'
);
end;
/
prompt --application/shared_components/user_interface/lovs/workflow_console_lov_workflow_state
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(99816093619496372)
,p_lov_name=>'WORKFLOW_CONSOLE.LOV.WORKFLOW_STATE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_workflow.get_lov_workflow_state )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'VAL'
,p_display_column_name=>'DISP'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15347688
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(94280443732483505)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(94274508379483476)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(94274711691483476)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99193552569940316)
,p_parent_id=>wwv_flow_imp.id(99223375373168752)
,p_short_name=>'Simple HTTP'
,p_link=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.:::'
,p_page_id=>101
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99223375373168752)
,p_short_name=>'REST Data Sources'
,p_link=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:::'
,p_page_id=>100
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99246960689753650)
,p_short_name=>'Combine with Relational Data'
,p_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_page_id=>200
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99254258889915499)
,p_parent_id=>wwv_flow_imp.id(99246960689753650)
,p_short_name=>'Post Processing SQL'
,p_link=>'f?p=&APP_ID.:201:&SESSION.::&DEBUG.:::'
,p_page_id=>201
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99263254363974812)
,p_parent_id=>wwv_flow_imp.id(99246960689753650)
,p_short_name=>'Derived Columns'
,p_link=>'f?p=&APP_ID.:202:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>202
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99282093413574858)
,p_short_name=>'Data Display Options'
,p_link=>'f?p=&APP_ID.:300:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>300
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99291947858608144)
,p_parent_id=>wwv_flow_imp.id(99282093413574858)
,p_short_name=>'Simple Report'
,p_link=>'f?p=&APP_ID.:301:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>301
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99298053526656475)
,p_parent_id=>wwv_flow_imp.id(99282093413574858)
,p_short_name=>'Report with Pagination'
,p_link=>'f?p=&APP_ID.:302:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>302
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99307136641665844)
,p_parent_id=>wwv_flow_imp.id(99282093413574858)
,p_short_name=>'Report with Query'
,p_link=>'f?p=&APP_ID.:303:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>303
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99314572783674626)
,p_parent_id=>wwv_flow_imp.id(99282093413574858)
,p_short_name=>'Cards Layout'
,p_link=>'f?p=&APP_ID.:304:&SESSION.::&DEBUG.:::'
,p_page_id=>304
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99322776181682205)
,p_parent_id=>wwv_flow_imp.id(99282093413574858)
,p_short_name=>'Oracle JET Charts'
,p_link=>'f?p=&APP_ID.:305:&SESSION.::&DEBUG.:::'
,p_page_id=>305
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99339883964692131)
,p_parent_id=>wwv_flow_imp.id(99282093413574858)
,p_short_name=>'Faceted Search on REST'
,p_link=>'f?p=&APP_ID.:306:&SESSION.::&DEBUG.:::'
,p_page_id=>306
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99352372688715665)
,p_parent_id=>wwv_flow_imp.id(99282093413574858)
,p_short_name=>'Map'
,p_link=>'f?p=&APP_ID.:307:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>307
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99356594651744653)
,p_parent_id=>wwv_flow_imp.id(99282093413574858)
,p_short_name=>'Calendar'
,p_link=>'f?p=&APP_ID.:308:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>308
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99374730706812417)
,p_short_name=>'Advanced Features'
,p_link=>'f?p=&APP_ID.:400:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>400
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99393247651460890)
,p_parent_id=>wwv_flow_imp.id(99374730706812417)
,p_short_name=>'REST  Synchronization'
,p_link=>'f?p=&APP_ID.:401:&SESSION.::&DEBUG.:::'
,p_page_id=>401
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99399533682485072)
,p_parent_id=>wwv_flow_imp.id(99374730706812417)
,p_short_name=>'Invoke API Process'
,p_link=>'f?p=&APP_ID.:402:&SESSION.::&DEBUG.:::'
,p_page_id=>402
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99419029910706668)
,p_parent_id=>wwv_flow_imp.id(99374730706812417)
,p_short_name=>'REST Data and PL/SQL'
,p_link=>'f?p=&APP_ID.:404:&SESSION.::&DEBUG.:::'
,p_page_id=>404
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99493451054808236)
,p_parent_id=>wwv_flow_imp.id(99374730706812417)
,p_short_name=>'Nested JSON and Dynamic Actions'
,p_link=>'f?p=&APP_ID.:405:&SESSION.::&DEBUG.:::'
,p_page_id=>405
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99506416023825086)
,p_parent_id=>wwv_flow_imp.id(99374730706812417)
,p_short_name=>'REST Data Source Plugins'
,p_link=>'f?p=&APP_ID.:406:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>406
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99515872798924010)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:500:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>500
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99521379343941921)
,p_parent_id=>wwv_flow_imp.id(99515872798924010)
,p_short_name=>'Application Appearance'
,p_link=>'f?p=&APP_ID.:501:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>501
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99527409956960384)
,p_parent_id=>wwv_flow_imp.id(99515872798924010)
,p_short_name=>'Reset Data'
,p_link=>'f?p=&APP_ID.:502:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>502
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99534121465989346)
,p_parent_id=>wwv_flow_imp.id(99515872798924010)
,p_short_name=>'Web Credentials'
,p_link=>'f?p=&APP_ID.:503:&SESSION.::&DEBUG.:::'
,p_page_id=>503
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99540426257010096)
,p_parent_id=>wwv_flow_imp.id(99515872798924010)
,p_short_name=>'Network Setup'
,p_link=>'f?p=&APP_ID.:504:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>504
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99779449966901397)
,p_parent_id=>wwv_flow_imp.id(99374730706812417)
,p_short_name=>'REST and Workflow'
,p_link=>'f?p=&APP_ID.:407:&SESSION.::&DEBUG.:::'
,p_page_id=>407
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99814185767496368)
,p_parent_id=>wwv_flow_imp.id(99779449966901397)
,p_short_name=>'Workflow Console'
,p_link=>'f?p=&APP_ID.:408:&SESSION.::&DEBUG.:::'
,p_page_id=>408
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99201612077956751)
,p_parent_id=>wwv_flow_imp.id(99223375373168752)
,p_option_sequence=>11
,p_short_name=>'Oracle REST Data Services (ORDS)'
,p_link=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.:::'
,p_page_id=>102
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99210809370976285)
,p_parent_id=>wwv_flow_imp.id(99223375373168752)
,p_option_sequence=>12
,p_short_name=>'OData'
,p_link=>'f?p=&APP_ID.:103:&SESSION.::&DEBUG.:::'
,p_page_id=>103
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(94275339920483479)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>2721322117358710262
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_tabform_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>1609121967514267634
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>1609121967514267634
,p_default_required_label=>1609122147107268652
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(94273827209483474)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>3433272
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(94279328512483503)
,p_build_option_name=>'Feature: About Page'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>3433332
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(94279434483483503)
,p_build_option_name=>'Feature: Theme Style Selection'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>3433333
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>'Allow administrators to select a default color scheme (theme style) for the application. Administrators can also choose to allow end users to choose their own theme style. '
);
end;
/
prompt --application/shared_components/globalization/messages
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(15720191198008927)
,p_name=>'P303.PROCESS.SUCCESS'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Debug enabled. On the Developer Toolbar, click the Debug Button to see more details.',
''))
,p_is_js_message=>true
,p_version_scn=>20416583
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(15718695122879636)
,p_name=>'P402.DA.ERROR.MSG'
,p_message_text=>'Error parsing JSON: %0'
,p_is_js_message=>true
,p_version_scn=>19579011
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(15732786332283577)
,p_name=>'P402.DA.FORBIDDEN.MSG'
,p_message_text=>'Forbidden: You don''t have permission to access this resource.'
,p_is_js_message=>true
,p_version_scn=>20164254
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(15732957025288884)
,p_name=>'P402.DA.NOTFOUND.MSG'
,p_message_text=>'Resource not found.'
,p_is_js_message=>true
,p_version_scn=>20164321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(15738724256078812)
,p_name=>'P402.DA.ORDS.RESPONSE'
,p_message_text=>'Response from REST API: %0'
,p_is_js_message=>true
,p_version_scn=>20281844
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(15733132883304261)
,p_name=>'P402.DA.SERVEREERR.MSG'
,p_message_text=>'Internal server error. Please try again later.'
,p_is_js_message=>true
,p_version_scn=>20169624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(15732428967275858)
,p_name=>'P402.DA.UNAUTHORIZED.MSG'
,p_message_text=>'Unauthorized access. Please log in.'
,p_is_js_message=>true
,p_version_scn=>20164153
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(15733379387308625)
,p_name=>'P402.DA.UNEXPECTEDERR.MSG'
,p_message_text=>'An unexpected error occurred.'
,p_is_js_message=>true
,p_version_scn=>20169704
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(15719212456932368)
,p_name=>'P404.PROCESS.SUCCESS'
,p_message_text=>'Store and Orders data processed, summary report email sent successfully.'
,p_is_js_message=>true
,p_version_scn=>19579611
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(15730542314205839)
,p_name=>'P405.DA.REFRESH.MSG'
,p_message_text=>'Chart refreshed'
,p_is_js_message=>true
,p_version_scn=>20157551
);
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/email/templates/store_order_summary
begin
wwv_flow_imp_shared.create_email_template(
 p_id=>wwv_flow_imp.id(16530337508010610)
,p_name=>'STORE ORDER SUMMARY'
,p_static_id=>'STORE_ORDER_SUMMARY'
,p_version_number=>2
,p_subject=>'Store Order Summary Report'
,p_html_body=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <body>',
'    <h2>Store Order Summary Report</h2>',
'    <p>Dear User,</p>',
'    <p>The ETL process has completed successfully. Below is the summary of orders per store:</p>',
'        #ORDER_SUMMARY_TABLE!RAW#',
'    <p>Thank you</p>',
'  </body>'))
,p_html_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html>',
'  <head>',
'    <style>',
'      body { font-family: arial, sans-serif; font-size: 14px; }',
'      table { border-collapse: collapse; width: 100%; }',
'      th, td { border: 1px solid #dddddd; padding: 8px; text-align: left; }',
'      th { background-color: #f2f2f2; }',
'    </style>',
'  </head>'))
,p_html_footer=>'</html>'
,p_version_scn=>75083861
);
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(94274128250483475)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>3433273
);
end;
/
prompt --application/shared_components/plugins/web_source_type/com_oracle_apex_restsource_fixedpagesize
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(1152862869655946722)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_name=>'COM.ORACLE.APEX.RESTSOURCE.FIXEDPAGESIZE'
,p_display_name=>'Fixed Page Size Plug-In for api.themoviedb.org'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('WEB SOURCE TYPE','COM.ORACLE.APEX.RESTSOURCE.FIXEDPAGESIZE'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--==============================================================================',
'type t_summary is record(',
'    page          number,',
'    total_results number,',
'    total_pages   number );',
'',
'--==============================================================================',
'-- this function extracts result set information from the response JSON received',
'-- from the "themoviedb.org" REST API. Each JSON response contains information',
'-- about the total amount of pages, the page returned and the total amount of ',
'-- results.',
'--',
'-- {"page":1,"total_results":84,"total_pages":5,"results":[{ ... }]}',
'--==============================================================================',
'function get_summary( p_response clob ) return t_summary ',
'is',
'    l_summary t_summary;',
'begin',
'    select page,',
'           total_results,',
'           total_pages',
'      into l_summary.page,',
'           l_summary.total_results,',
'           l_summary.total_pages',
'      from json_table( p_response,',
'                       ''$''',
'                       columns ( ',
'                           page          number path ''$.page'',',
'                           total_results number path ''$.total_results'',',
'                           total_pages   number path ''$.total_pages'' ) );',
'    return l_summary;',
'end get_summary;',
'',
'--==============================================================================',
'-- REST Source Capabilities Procedure',
'--',
'-- This procedure tells APEX whether the Plug-In (and the REST API) supports',
'-- pagination (large result sets come as multiple pages), server-side filtering',
'-- and server-side ordering. ',
'--',
'-- The procedure implementation simply sets the "filtering", "pagination" or',
'-- "order_by" members of the apex_plugin.t_web_source_capabilities record type',
'-- to either true or false.',
'--',
'-- This plug-in supports the "themoviedb.org" pagination logic. Server Side ',
'-- filtering or ordering are not supported.',
'--==============================================================================',
'procedure capabilities_themoviedb (',
'    p_plugin         in            apex_plugin.t_plugin,',
'    p_result         in out nocopy apex_plugin.t_web_source_capabilities )',
'is',
'begin',
'    p_result.filtering            := false;',
'    p_result.pagination           := true;',
'    p_result.order_by             := false;',
'end capabilities_themoviedb;',
'',
'--==============================================================================',
'-- REST Source Discovery Procedure',
'--',
'-- This procedure is called by APEX during the REST Data Source creation, when ',
'-- the "Discover" button is clicked. This procedure can:',
'-- * return structured information about the columns, data types and ',
'--   JSON or XML selectors',
'-- * return a JSON example which APEX then will sample to derive columns and',
'--   data types',
'--==============================================================================',
'procedure discover_themoviedb (',
'    p_plugin         in            wwv_flow_plugin_api.t_plugin,',
'    p_web_source     in            wwv_flow_plugin_api.t_web_source,',
'    p_params         in            wwv_flow_plugin_api.t_web_source_discover_params,',
'    p_result         in out nocopy wwv_flow_plugin_api.t_web_source_discover_result )',
'is',
'    l_web_source_operation          apex_plugin.t_web_source_operation;',
'    l_dummy_parameters              apex_plugin.t_web_source_parameters;',
'    l_in_parameters                 apex_plugin.t_web_source_parameters;',
'    l_time_budget                   number;',
'',
'    l_param_idx                     pls_integer;',
'    ',
'    c_query_param_name     constant varchar2(5)   := ''query'';',
'    -- the default query to perform discovery is "star trek"',
'    l_query_param_value             varchar2(255) := ''star trek'';',
'    l_has_query_param               boolean       := false;',
'begin',
'    --',
'    -- discovery is based on the "fetch rows" operation of a REST Data Source; this is typically',
'    -- a GET operation. POST is also possible, but that must be configured in Shared Components',
'    -- REST Data Sources, Operations, Fetch Rows.',
'    --',
'    -- This gets all meta data on the REST Operation as an instance of APEX_PLUGIN.T_WEB_SOURCE_OPERATION.',
'    -- The P_PERFORM_INIT parameter determines whether APEX should compute the URL and initialize all ',
'    -- HTTP Headers and parameters with their default values. The "l_web_source_operation" represents',
'    -- all attributes of the HTTP operation to be made.',
'    -- ',
'    l_web_source_operation := apex_plugin_util.get_web_source_operation(',
'        p_web_source   => p_web_source,',
'        p_db_operation => apex_plugin.c_db_operation_fetch_rows,',
'        p_perform_init => true );',
'',
'    --',
'    -- This section copies the parameters, which we receive from the Create REST data source',
'    -- wizard, to the "l_in_parameters" array. If a "query" parameter has been defined, we''ll',
'    -- memorize the value and we''ll use the default if no value was provided.',
'    -- ',
'    for i in 1 .. l_web_source_operation.parameters.count loop',
'        l_in_parameters( l_in_parameters.count + 1 ) := l_web_source_operation.parameters( i );',
'        if l_web_source_operation.parameters( i ).name = c_query_param_name then',
'            l_query_param_value := nvl( l_web_source_operation.parameters( i ).value, l_query_param_value );',
'            l_has_query_param   := true;',
'        end if;',
'    end loop;',
'',
'    --',
'    -- if the "query" parameter was provided by the developer, add it.',
'    --',
'    if not l_has_query_param then',
'        l_param_idx := l_in_parameters.count + 1;',
'        l_in_parameters( l_param_idx ).name       := c_query_param_name;',
'        l_in_parameters( l_param_idx ).param_type := wwv_flow_plugin_api.c_web_src_param_query;',
'    end if;',
'',
'    --',
'    -- adjust the query string attribute of the REST operation to use the computed query parameter',
'    --',
'    l_web_source_operation.query_string := c_query_param_name || ''='' || sys.utl_url.escape( l_query_param_value );',
'',
'    --',
'    -- perform the REST request. We''ll receive the JSON response in the "p_result.sample_response" ',
'    -- variable.',
'    --',
'    apex_plugin_util.make_rest_request(',
'        p_web_source_operation => l_web_source_operation,',
'        p_bypass_cache         => false,',
'        --',
'        p_time_budget          => l_time_budget,',
'        --',
'        p_response             => p_result.sample_response,',
'        p_response_parameters  => l_dummy_parameters );',
'',
'    -- set the response headers received by the REST API for display in the Discovery Results screen',
'    p_result.response_headers      := apex_web_service.g_headers;',
'    -- "api.themoviedb.org" uses a fixed page size of 20 results',
'    p_result.fixed_page_size       := 20;',
'    -- the "query" parameter can also be used for "row searches" (see REST Data Source Parameters)',
'    p_result.row_search_param_name := ''query'';',
'    -- Computed Parameters to pass back to APEX',
'    p_result.parameters            := l_in_parameters;',
'end discover_themoviedb;',
'',
'--==============================================================================',
'-- REST Source Fetch Procedure',
'--',
'-- This procedure does the actual "Fetch" operation when rows are being ',
'-- requested from the REST Data Source. When an APEX component is about to',
'-- render, APEX computes the first row and the amount of rows required. This',
'-- and all dynamic filter and order by information is passed to the ',
'-- procedure as the "p_params" parameter. ',
'--==============================================================================',
'procedure fetch_themoviedb (',
'    p_plugin     in            apex_plugin.t_plugin,',
'    p_web_source in            apex_plugin.t_web_source,',
'    p_params     in            apex_plugin.t_web_source_fetch_params,',
'    p_result     in out nocopy apex_plugin.t_web_source_fetch_result )',
'is',
'    l_web_source_operation apex_plugin.t_web_source_operation;',
'',
'    l_time_budget          number;',
'    l_summary              t_summary;',
'    l_page_id              pls_integer;',
'    l_start_page_id        pls_integer;',
'    l_continue_fetching    boolean     := true;',
'    l_page_to_fetch        pls_integer := 0;',
'',
'    c_page_size            pls_integer := coalesce( p_params.fixed_page_size, 20 );',
'',
'    l_query_string         varchar2(32767);',
'begin',
'    --',
'    -- This gets all meta data on the REST Operation as an instance of APEX_PLUGIN.T_WEB_SOURCE_OPERATION.',
'    -- The P_PERFORM_INIT parameter determines whether APEX should compute the URL and initialize all ',
'    -- HTTP Headers and parameters with their default values, from the REST Data Source configuration.',
'    -- The "l_web_source_operation" thus represents all attributes of the HTTP operation to be made.',
'    -- ',
'    l_web_source_operation := apex_plugin_util.get_web_source_operation(',
'        p_web_source   => p_web_source,',
'        p_db_operation => apex_plugin.c_db_operation_fetch_rows,',
'        p_perform_init => true );',
'',
'    -- Initialize the response output. An invocation of the "Fetch" procedure can also return multiple',
'    -- JSON or XML documents, so responses are maintained as an instance of the APEX_T_CLOB (array of CLOB) type',
'    p_result.responses := apex_t_clob();',
'',
'    -- compute the first page to be fetched, based on the "first" row information which we receive',
'    -- from APEX. The page size is contained in the "fixed_page_size" attribute of "p_params". Discovery',
'    -- sets this to 20. For the case that developers clear this value in REST Data Source operation settings,',
'    -- we use "20" when NULL.',
'    l_start_page_id := case when p_params.fetch_all_rows then 1 else floor( ( p_params.first_row - 1 ) / c_page_size ) + 1 end;',
'    ',
'    -- start fetching with the first page to be fetched',
'    l_page_id      := l_start_page_id;',
'    -- memorize the query string from default REST Data Source settings',
'    l_query_string := l_web_source_operation.query_string; ',
'    ',
'',
'    if INSTR(l_query_string, ''include_adult'') = 0 then',
'      ',
'       ',
'       if INSTR(l_query_string, ''?'') > 0 then',
'          l_query_string := l_query_string || ''&include_adult=false&'';',
'       else',
'          l_query_string := l_query_string || ''?include_adult=false&'';',
'       end if;',
'    end if ;',
'    --',
'    -- check whether the "query" parameter has a value. If not (empty query), we do not reach out to the',
'    -- REST API at all. For an empty query, api.themoviedb.org would return an error response; so it does',
'    -- not make any sense to perform the call. Instead, we simply return an empty JSON response ({}).',
'    --',
'    for i in 1 .. l_web_source_operation.parameters.count loop',
'        if l_web_source_operation.parameters( i ).name = ''query'' and l_web_source_operation.parameters( i ).value is null then',
'            p_result.has_more_rows       := false;',
'            p_result.response_row_count  := 0;',
'            p_result.response_first_row  := 0;',
'            p_result.responses.extend( 1 );',
'            p_result.responses( 1 ) := to_clob( ''{}'');',
'            return;',
'        end if;',
'    end loop;',
'',
'    --',
'    -- if we are fetching all rows, fetch until the time budget is exhausted',
'    --',
'    while l_continue_fetching and coalesce( l_time_budget, 1 ) > 0 loop',
'',
'        -- add a new member to the array of CLOB responses',
'        p_result.responses.extend( 1 );',
'        l_page_to_fetch := l_page_to_fetch + 1;',
'',
'        --',
'        -- build the query string by using the operation attribute and appending the page to fetch',
'        -- query string example is: "query=star%20trek&page=2"',
'        --',
'        l_web_source_operation.query_string := l_query_string || ''page='' || l_page_id ;',
'',
'        --',
'        -- perform the REST request. We''ll receive the JSON response in the "p_result.sample_response" ',
'        -- variable. ',
'        --',
'        apex_plugin_util.make_rest_request(',
'            p_web_source_operation => l_web_source_operation,',
'            p_bypass_cache         => false,',
'            --',
'            p_time_budget          => l_time_budget,',
'            --',
'            p_response             => p_result.responses( l_page_to_fetch ),',
'            p_response_parameters  => p_result.out_parameters );',
'',
'        --',
'        -- call "get_summary" in order to retrieve the total amount of pages and the total amount',
'        -- of results, so that we know whether there are more pages ot not.',
'        --',
'        l_summary := get_summary( p_result.responses( l_page_to_fetch ) );',
'',
'        --',
'        -- if APEX requested "all rows" from the REST API and there are more rows to fetch,',
'        -- then continue fetching the next page ',
'        --',
'        l_continue_fetching := p_params.fetch_all_rows and l_summary.page < l_summary.total_pages;',
'',
'        -- increase the page ID counter',
'        if l_continue_fetching then',
'            l_page_id := l_page_id + 1;',
'        end if;',
'    end loop;',
'',
'    --',
'    if p_params.fetch_all_rows then',
'        ',
'        -- if APEX requested (and our logic fetched) all rows, then there are no more rows to fetch',
'        p_result.has_more_rows       := false;',
'        -- the JSON responses contains the total amount of rows',
'        p_result.response_row_count  := l_summary.total_results;',
'        -- the first row in the JSON responses is "1"',
'        p_result.response_first_row  := 1;',
'    else',
'        -- APEX did _not_ request all rows, so there might be another page. If the current page number is',
'        -- below the amount of total pages, then there are more rows to fetch',
'        p_result.has_more_rows       := l_summary.page < l_summary.total_pages;',
'        ',
'        -- The JSON responses contain 20 rows (fixed page size) if there are more pages to fetch. If ',
'        -- we fetched the last page, we need to compute the amount of rows on that page.',
'        p_result.response_row_count  := case when l_summary.page < l_summary.total_pages ',
'                                            then c_page_size ',
'                                            else l_summary.total_results - ( ( l_summary.page - 1 ) * c_page_size )',
'                                        end;',
'',
'        -- the first row in the JSON response depends on the page we started fetching with. ',
'        p_result.response_first_row  := ( l_start_page_id - 1 ) * c_page_size + 1;',
'    end if;',
'end fetch_themoviedb;',
''))
,p_api_version=>1
,p_wsm_capabilities_function=>'capabilities_themoviedb'
,p_wsm_fetch_function=>'fetch_themoviedb'
,p_wsm_discover_function=>'discover_themoviedb'
,p_standard_attributes=>'ENDPOINT_HINT'
,p_substitute_attributes=>true
,p_version_scn=>8499855
,p_subscribe_plugin_settings=>true
,p_help_text=>'This REST Data Source Plug-In implements pagination for a REST API using a fixed page size and a page number parameter. The plug-in can be used to access the "themoviedb.org" REST API (api.themoviedb.org) as an example.'
,p_version_identifier=>'1.0'
);
wwv_flow_imp_shared.create_plugin_std_attribute(
 p_id=>wwv_flow_imp.id(1149877713793640133)
,p_plugin_id=>wwv_flow_imp.id(1152862869655946722)
,p_name=>'ENDPOINT_HINT'
,p_is_required=>false
,p_default_value=>'http://api.themoviedb.org/3/search/movie'
,p_depending_on_has_to_exist=>true
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'14'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(97638388919448646)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_05'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Sample REST Services'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_browser_cache=>'N'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(94288087504483523)
,p_plug_name=>'Sample REST Services'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Access and use external <strong>REST services</strong> in your applications.</p>',
''))
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(94647255575290927)
,p_plug_name=>'About'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'The <strong>Sample REST Services</strong> application is a comprehensive Oracle APEX REST Data integration and visualization demo, showcasing how APEX can efficiently consume, manipulate, and display data from <strong>RESTful services</strong>. It se'
||'rves as a reference application for exploring various techniques for integrating external REST APIs with Oracle APEX, handling data dynamically, and enhancing user experience with different presentation formats.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(94647364914290928)
,p_plug_name=>'Rest Data Source Use Cases'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:t-MediaList--iconsRounded'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_list_id=>wwv_flow_imp.id(94302958188495697)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_landmark_type=>'navigation'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(94645985550290914)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(94288087504483523)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(97636793599448630)
,p_branch_name=>'go welcome page '
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>'apex_app_setting.get_Value(''REMOTE_SERVER_INITIALIZED'') = ''NO'''
,p_branch_condition_text=>'PLSQL'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Connection Setup'
,p_alias=>'CONNECTION-SETUP'
,p_step_title=>'Connection Setup'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2979075366320325194
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_comment=>'Use this items on this page to configure the app.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98354529967089852)
,p_plug_name=>'3. Proxy Setup'
,p_title=>'Proxy Setup'
,p_icon_css_classes=>'fa-number-3'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info:margin-bottom-md'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'not apex_application_global.g_cloud'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(105148837260543437)
,p_plug_name=>'1. Remote Server Setup'
,p_title=>'Remote Server Setup'
,p_icon_css_classes=>'fa-number-1'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info:margin-bottom-md'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br/>',
'<p>Enter here your remote server Base URL and Schema Alias </p>'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(105150824400543457)
,p_plug_name=>'Remote Server Setup Guide'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(105863336262184626)
,p_plug_name=>'Welcome to Sample REST Services'
,p_parent_plug_id=>wwv_flow_imp.id(105150824400543457)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Please take a moment to complete this first time setup.',
''))
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(105863391727184627)
,p_plug_name=>'Guide'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'The Sample REST Services application is a comprehensive Oracle APEX REST Data integration and visualization demo, showcasing how APEX can efficiently consume, manipulate, and display data from RESTful services using components like Reports, Forms, Ch'
||'arts, Maps or others. It serves as a reference application for exploring various techniques for integrating external REST APIs with Oracle APEX, handling data dynamically, and enhancing user experience with different presentation formats.',
'</p><p>To  get started, please configure the following settings.</p>'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(105863460360184628)
,p_plug_name=>'Button Remote Server'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>60
,p_location=>null
,p_landmark_type=>'exclude_landmark'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(105863858365184631)
,p_plug_name=>'2. OData URL Setup'
,p_title=>'OData URL Setup'
,p_icon_css_classes=>'fa-number-2'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info:margin-bottom-md'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'BELOW'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br/>',
'<p>Enter the URL of a working OData endpoint returning "Northwind" data</p>',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99581510773267925)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(105863460360184628)
,p_button_name=>'Complete_Setup'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Complete Setup'
,p_button_position=>'CHANGE'
,p_icon_css_classes=>'fa-check-circle'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(99586265981267930)
,p_branch_name=>'Move to home page'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'REMOTE_SERVER'
,p_branch_condition_text=>'YES'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98354633060089853)
,p_name=>'P2_PROXY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(98354529967089852)
,p_prompt=>'Proxy  Server'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_protection_level=>'S'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <p>',
'    Use this field to specify a proxy server to be used by the application.',
'    Using a proxy server may be required for REST requests done by the application, for instance when REST Data Sources or the APEX_WEB_SERVICE package is used.',
'    ',
'    </p>',
'',
'    <p>',
'        Example: http://www-proxy.example.com',
'    </p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105152308574543444)
,p_name=>'P2_BASE_URL'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(105148837260543437)
,p_item_default=>'apex_util.host_url(''APEX_PATH'');'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Base URL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--indicatorAsterisk:t-Form-fieldContainer--xlarge'
,p_protection_level=>'S'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   <p>The <strong>Base URL</strong> is the portion of your ORDS URL that includes the protocol, host, port (if applicable), and the path up to (and including) <code>/ords/</code>. It does not include the schema or workspace name.</p>',
'   <p>Examples:</p>',
'   <ul>',
'      <li><strong>Dev Instance:</strong> For example: <code>http://yourserver.example.com:8084/ords/</code></li>',
'      <li><strong>apex.oracle.com:</strong> For example: <code>https://apex.oracle.com/pls/apex/</code></li>',
'   </ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105152396687543445)
,p_name=>'P2_SCHEMA'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(105148837260543437)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lower(path_prefix)',
'  from apex_workspaces',
' where workspace_id = v(''workspace_id'');'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Schema Alias '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--indicatorAsterisk:t-Form-fieldContainer--xlarge'
,p_protection_level=>'S'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   <p>The <strong>Schema</strong> is the workspace or schema name that appears in your ORDS URL immediately after <code>/ords/</code>. Examples:</p>',
'   <ul>',
unistr('      <li><strong>Internal Instance:</strong> If your full URL is: <code>http://yourserver.example.com:8084/ords/r/myworkspace/\2026</code>, then the Schema is <em>myworkspace</em>.</li>'),
'      <li><strong>apex.oracle.com:</strong> If your URL is: <code>https://apex.oracle.com/pls/apex/workspace/</code>, then the Schema is <em>workspace</em>.</li>',
'   </ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105866509430184636)
,p_name=>'P2_ODATA_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(105863858365184631)
,p_item_default=>'apex_app_setting.get_value(p_name =>''ODATA_URL'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'OData Endpoint URL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_protection_level=>'S'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Please enter the URL of a valid OData endpoint that provides "Northwind" data</p> </br>',
'Example: <em>https://ODataBaseUrl/version/Northwind/</em>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(99584691230267929)
,p_validation_name=>'P2_BASE_URL not null'
,p_validation_sequence=>10
,p_validation=>'P2_BASE_URL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have a value.'
,p_associated_item=>wwv_flow_imp.id(105152308574543444)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(99585032531267929)
,p_validation_name=>'P2_SCHEMA is not null'
,p_validation_sequence=>20
,p_validation=>'P2_SCHEMA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have a value.'
,p_associated_item=>wwv_flow_imp.id(105152396687543445)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99585817529267929)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Persist User Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    apex_app_setting.set_value(''REMOTE_SERVER_BASE_URL'', :P2_BASE_URL);',
'    apex_app_setting.set_value(''REMOTE_SERVER_SCHEMA_ALIAS'', :P2_SCHEMA);',
'    apex_app_setting.set_value(''ODATA_URL'', :P2_ODATA_URL);',
'    apex_app_setting.set_value(''REMOTE_SERVER_INITIALIZED'', ''YES'');',
'    :REMOTE_SERVER := ''YES'';',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error while setup the connection.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(99581510773267925)
,p_process_success_message=>'Connection setup successfully.'
,p_internal_uid=>7518197002094822
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(98354791771089854)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Proxy'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   if :P2_PROXY is not null and not apex_application_global.g_cloud then',
'      apex_application_admin.set_proxy_server(',
'         p_application_id => v(''app_id''),',
'         p_proxy_server   => :P2_PROXY',
'      );',
'   end if;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6287171243916747
);
end;
/
prompt --application/pages/page_00100
begin
wwv_flow_imp_page.create_page(
 p_id=>100
,p_name=>'REST Integrations '
,p_alias=>'REST-INTEGRATIONS1'
,p_step_title=>'REST Integrations'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98351239873089819)
,p_plug_name=>'Breadcrumb'
,p_title=>'Rest Data Sources'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101791554622165327)
,p_plug_name=>'REST Integration List'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_list_id=>wwv_flow_imp.id(94308748506666992)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_landmark_type=>'navigation'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(98351586058089822)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(98351239873089819)
,p_button_name=>'Next'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(98351426407089821)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(98351239873089819)
,p_button_name=>'Previous'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_imp_page.create_page(
 p_id=>101
,p_name=>'Simple HTTP'
,p_alias=>'SIMPLE-HTTP'
,p_step_title=>'Simple HTTP'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108540236944152633)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108558205904657412)
,p_plug_name=>'Employees Data'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(94522571563963393)
,p_query_type=>'SQL'
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(108558306501657413)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AHMAMED'
,p_internal_uid=>16490685974484306
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108558942658657419)
,p_db_column_name=>'EMPNO'
,p_display_order=>10
,p_column_identifier=>'F'
,p_column_label=>'Empno'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108558995413657420)
,p_db_column_name=>'ENAME'
,p_display_order=>20
,p_column_identifier=>'G'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108558548463657415)
,p_db_column_name=>'JOB'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Job'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108558576530657416)
,p_db_column_name=>'MGR'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Manager'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108558664126657417)
,p_db_column_name=>'SAL'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108558771112657418)
,p_db_column_name=>'COMM'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Commission'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108559359674657423)
,p_db_column_name=>'HIREDATE'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Hire Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108559184664657422)
,p_db_column_name=>'DEPTNO'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Department Number'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(108575967741922997)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'22760'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ENAME:JOB:SAL:HIREDATE:MGR:COMM:DEPTNO:'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(100238973002737338)
,p_page_id=>101
,p_web_src_param_id=>wwv_flow_imp.id(96691874295807534)
,p_page_plug_id=>wwv_flow_imp.id(108558205904657412)
,p_value_type=>'NULL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108879214767783925)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'  <p>',
'    This page demonstrates the <strong>Simple HTTP</strong> REST Data Source type in Oracle APEX. It consumes data',
'    from the REST Data Source named <strong>EBA_REST_DATA_EMPLOYEE</strong>, fetching the entire dataset in a single',
'    request with no server side filtering.',
'  </p>',
'',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99192944062940315)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(108540236944152633)
,p_button_name=>'previous'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99192522922940315)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(108540236944152633)
,p_button_name=>'Next'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
end;
/
prompt --application/pages/page_00102
begin
wwv_flow_imp_page.create_page(
 p_id=>102
,p_name=>'ORDS'
,p_alias=>'ORDS1'
,p_step_title=>'ORDS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101716264049949653)
,p_plug_name=>'Employees Data'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(94522571563963393)
,p_query_type=>'SQL'
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'ORDS'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(101716308470949653)
,p_name=>'ORDS'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:104:&SESSION.::&DEBUG.:RP,:P104_EMPNO:\#EMPNO#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'AHMAMED'
,p_internal_uid=>9648687943776546
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101717025616949655)
,p_db_column_name=>'EMPNO'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Empno'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101717419947949655)
,p_db_column_name=>'ENAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101717852964949655)
,p_db_column_name=>'JOB'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Job'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101718278254949655)
,p_db_column_name=>'MGR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Manager'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101718687227949655)
,p_db_column_name=>'HIREDATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Hire Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101719102550949656)
,p_db_column_name=>'SAL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101719430121949656)
,p_db_column_name=>'COMM'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Commission'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101719816810949656)
,p_db_column_name=>'DEPTNO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Department Number'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(101722307033950890)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'25270'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ENAME:JOB:SAL:HIREDATE:MGR:COMM:DEPTNO:'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(99196356274956748)
,p_page_id=>102
,p_web_src_param_id=>wwv_flow_imp.id(96691874295807534)
,p_page_plug_id=>wwv_flow_imp.id(101716264049949653)
,p_value_type=>'NULL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101721674672949658)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101774550922074563)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
' This page consumes a REST Data Source <strong>EBA_REST_DATA_EMPLOYEE</strong> of the <strong>ORDS</strong> type, to present live employee records in an interactive report. All create, update, and delete operations run through <strong>ORDS</strong> h'
||unistr('andlers, while filtering, ordering and pagination are pushed down to the REST service. The page\2019s purpose is to provide a seamless CRUD and reporting interface for employee data, ensuring that any change is immediately reflected in the UI so informat')
||'ion remains current and accurate.',
'</p>',
'',
'',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99200991766956751)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(101721674672949658)
,p_button_name=>'Previous'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99200610491956750)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(101721674672949658)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:103:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99199766096956750)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(101716264049949653)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:104:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99201841321956751)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(101716264049949653)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99202407379956753)
,p_event_id=>wwv_flow_imp.id(99201841321956751)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(101716264049949653)
);
end;
/
prompt --application/pages/page_00103
begin
wwv_flow_imp_page.create_page(
 p_id=>103
,p_name=>'OData'
,p_alias=>'ODATA1'
,p_step_title=>'OData'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98351711529089823)
,p_plug_name=>'OData URL Not Provided'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'  This page requires a valid OData service URL to function correctly.  ',
'  To enable OData features, use the <strong>Set OData URL</strong> button in order to navigate to the <strong>Administration</strong> page, where the OData endpoint can be configured.',
'</p>',
'',
'',
''))
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'apex_app_setting.get_value(''ODATA_URL'') is null'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101451378747680323)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101783664125094098)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'This page demonstrates the <strong>OData</strong> protocol by consuming the Northwind Products OData service. It shows how <strong> OData</strong> standardizes data queries and updates with built in options like $filter, $orderby, $select, and $top f'
||unistr('or pagination. In this page, APEX automatically converts the JSON response from the external <strong>OData</strong> service into APEX components, allowing you to view and interact with the returned product data\2014such as Product ID, Product Name, Unit ')
||unistr('Price, and more\2014in an Interactive Report.'),
'',
'',
'</p>'))
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'apex_app_setting.get_value(''ODATA_URL'') is not null'
,p_plug_display_when_cond2=>'PLSQL'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(102509137250539285)
,p_plug_name=>'Northwind OData Products'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(95470832101104479)
,p_query_type=>'SQL'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'apex_app_setting.get_value(''ODATA_URL'') is not null'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(102584045178775591)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AHMAMED'
,p_internal_uid=>10516424651602484
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102584071332775592)
,p_db_column_name=>'PRODUCTID'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Product ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102584257724775593)
,p_db_column_name=>'PRODUCTNAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102584310149775594)
,p_db_column_name=>'SUPPLIERID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Supplier ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102584360651775595)
,p_db_column_name=>'CATEGORYID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Category ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102584525644775596)
,p_db_column_name=>'QUANTITYPERUNIT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Quantity Per Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102584588701775597)
,p_db_column_name=>'UNITPRICE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Unit Price'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102584746076775598)
,p_db_column_name=>'UNITSINSTOCK'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Units In Stock'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102584819149775599)
,p_db_column_name=>'UNITSONORDER'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Units On Order'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102584918321775600)
,p_db_column_name=>'REORDERLEVEL'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Reorder Level'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102585048958775601)
,p_db_column_name=>'DISCONTINUED'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Discontinued'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(102602311466790951)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'33981'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCTID:PRODUCTNAME:SUPPLIERID:CATEGORYID:QUANTITYPERUNIT:UNITPRICE:UNITSINSTOCK:UNITSONORDER:REORDERLEVEL:DISCONTINUED'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(98351819389089824)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(98351711529089823)
,p_button_name=>'Set_OData_URL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Set OData URL'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:504:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99209722998976284)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(101451378747680323)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99209356104976284)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(101451378747680323)
,p_button_name=>'Previous'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
end;
/
prompt --application/pages/page_00104
begin
wwv_flow_imp_page.create_page(
 p_id=>104
,p_name=>'Employee'
,p_alias=>'EMPLOYEE'
,p_page_mode=>'MODAL'
,p_step_title=>'Create / Edit Employee'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(102056844348046997)
,p_plug_name=>'EMPLOYEE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(94522571563963393)
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ai_enabled=>false
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(99546948687054103)
,p_page_id=>104
,p_web_src_param_id=>wwv_flow_imp.id(96691874295807534)
,p_page_plug_id=>wwv_flow_imp.id(102056844348046997)
,p_value_type=>'NULL'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(99547463528054104)
,p_page_id=>104
,p_web_src_param_id=>wwv_flow_imp.id(95986552749280915)
,p_page_plug_id=>wwv_flow_imp.id(102056844348046997)
,p_value_type=>'ITEM'
,p_value=>'P104_EMPNO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(102062846301047004)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99553882857054107)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(102062846301047004)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99554238690054107)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(102062846301047004)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P104_EMPNO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99554625121054108)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(102062846301047004)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P104_EMPNO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99555039629054108)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(102062846301047004)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P104_EMPNO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16295221453182933)
,p_name=>'P104_REQ_LC'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(102058834027047000)
,p_name=>'P104_EMPNO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(102056844348046997)
,p_item_source_plug_id=>wwv_flow_imp.id(102056844348046997)
,p_source=>'EMPNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(102059243782047002)
,p_name=>'P104_ENAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(102056844348046997)
,p_item_source_plug_id=>wwv_flow_imp.id(102056844348046997)
,p_prompt=>'Employee'
,p_source=>'ENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>4000
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(102059579978047003)
,p_name=>'P104_JOB'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(102056844348046997)
,p_item_source_plug_id=>wwv_flow_imp.id(102056844348046997)
,p_prompt=>'Job'
,p_source=>'JOB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct job as display_value,',
'                job as return_value',
'  from eba_demo_rest_employee',
' where job is not null',
' order by job;',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(102060029964047004)
,p_name=>'P104_MGR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(102056844348046997)
,p_item_source_plug_id=>wwv_flow_imp.id(102056844348046997)
,p_prompt=>'Manager'
,p_source=>'MGR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ename as d,',
'       mgr   as r',
'  from eba_demo_rest_employee',
' order by mgr;',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(102060400990047004)
,p_name=>'P104_HIREDATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(102056844348046997)
,p_item_source_plug_id=>wwv_flow_imp.id(102056844348046997)
,p_prompt=>'Hire Date'
,p_source=>'HIREDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>4000
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(102060763362047004)
,p_name=>'P104_SAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(102056844348046997)
,p_item_source_plug_id=>wwv_flow_imp.id(102056844348046997)
,p_prompt=>'Salary'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'SAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(102061254336047004)
,p_name=>'P104_COMM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(102056844348046997)
,p_item_source_plug_id=>wwv_flow_imp.id(102056844348046997)
,p_prompt=>'Commission'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'COMM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(102061591610047004)
,p_name=>'P104_DEPTNO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(102056844348046997)
,p_item_source_plug_id=>wwv_flow_imp.id(102056844348046997)
,p_item_default=>'--select--'
,p_prompt=>'Department'
,p_source=>'DEPTNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dname   as d,',
'       deptno  as r',
'  from eba_demo_rest_department',
' order by dname;',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(16294988905182931)
,p_computation_sequence=>10
,p_computation_item=>'P104_REQ_LC'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'LOWER(:REQUEST)',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99556064879054108)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(99553882857054107)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99556573070054108)
,p_event_id=>wwv_flow_imp.id(99556064879054108)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99553183428054107)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(102056844348046997)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form EMPLOYEE'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Employee &P104_REQ_LC.d'
,p_internal_uid=>7485562900881000
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99555639741054108)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>7488019213881001
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99552727335054107)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(102056844348046997)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form EMPLOYEE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7485106807881000
);
end;
/
prompt --application/pages/page_00200
begin
wwv_flow_imp_page.create_page(
 p_id=>200
,p_name=>'Combine with Relational Data'
,p_alias=>'COMBINE-WITH-RELATIONAL-DATA'
,p_step_title=>'Combine with Relational Data'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101822769820871450)
,p_plug_name=>'Data Enrichment List'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_list_id=>wwv_flow_imp.id(94317290780924273)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_landmark_type=>'navigation'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101829836024905137)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99246402046753650)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(101829836024905137)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:201:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99245933859753649)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(101829836024905137)
,p_button_name=>'Previous'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:103:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
end;
/
prompt --application/pages/page_00201
begin
wwv_flow_imp_page.create_page(
 p_id=>201
,p_name=>'Post Processing SQL'
,p_alias=>'POST-PROCESSING-SQL'
,p_step_title=>'Post Processing SQL'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15500660349539305)
,p_plug_name=>'Post Processing SQL Results'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(96330562230973675)
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n.empno,',
'       n.emp_name          as ename,',
'       n.role_desc         as empRole,  ',
'       n.hourly_rate       as hourlyRate,  ',
'       n.bonus_eligibility as Bonus,',
'       n.deptno,',
'       dept.dname          as dname,',
'       dept.loc            as loc',
'  from #APEX$SOURCE_DATA# dept',
'  join eba_demo_rest_employeecustom  n',
'    on n.deptno = dept.deptno'))
,p_source_post_processing=>'SQL'
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(15500561598539304)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AHMAMED'
,p_internal_uid=>9486652586416939
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15500472516539303)
,p_db_column_name=>'DEPTNO'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Deptno'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15500122892539300)
,p_db_column_name=>'EMPNO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Employee ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15500092870539299)
,p_db_column_name=>'ENAME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15499986514539298)
,p_db_column_name=>'EMPROLE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Role'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15499849085539297)
,p_db_column_name=>'HOURLYRATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15499732166539296)
,p_db_column_name=>'BONUS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Bonus'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15500346603539302)
,p_db_column_name=>'DNAME'
,p_display_order=>90
,p_column_identifier=>'B'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15500280644539301)
,p_db_column_name=>'LOC'
,p_display_order=>100
,p_column_identifier=>'C'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(16418694884030378)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'107064'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPNO:ENAME:EMPROLE:HOURLYRATE:BONUS:DNAME:LOC:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(16453588011236297)
,p_report_id=>wwv_flow_imp.id(16418694884030378)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DNAME'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("DNAME" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#fff5ce'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(16454052780236298)
,p_report_id=>wwv_flow_imp.id(16418694884030378)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'LOC'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("LOC" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#fff5ce'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16433766208414711)
,p_plug_name=>'Post Processing SQL Query'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre><code>',
'    select n.empno,',
'           n.emp_name          as ename,',
'           n.role_desc         as emp_role,  ',
'           n.hourly_rate       as hourly_rate,  ',
'           n.bonus_eligibility as bonus,',
'           n.deptno,',
'           dept.dname          as dname,',
'           dept.loc            as loc',
'      from #APEX$SOURCE_DATA#           dept',
'      join eba_demo_rest_employeecustom n',
'        on n.deptno = dept.deptno',
'',
'</code></pre>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101497109930622907)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101828366134033314)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page uses the <strong>Post Processing SQL</strong> to combine data from the <strong>EBA_REST_DEPARTMENT</strong> REST Data Source with data from the local <strong>EBA_DEMO_REST_EMPLOYEECUSTOM</strong> table.</p>',
'',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99253711519915499)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(101497109930622907)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:202:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99253238302915499)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(101497109930622907)
,p_button_name=>'Previous'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
end;
/
prompt --application/pages/page_00202
begin
wwv_flow_imp_page.create_page(
 p_id=>202
,p_name=>'Derived Columns'
,p_alias=>'DERIVED-COLUMNS1'
,p_step_title=>'Derived Columns'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_browser_cache=>'N'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15499521449539294)
,p_plug_name=>'Derived Column Results'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(100017857832004397)
,p_query_type=>'SQL'
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(15499508598539293)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AHMAMED'
,p_internal_uid=>9487705586416950
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16432693274414700)
,p_db_column_name=>'JOB'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Job'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16432786991414701)
,p_db_column_name=>'MGR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Manager'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16432863047414702)
,p_db_column_name=>'SAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16433013732414703)
,p_db_column_name=>'COMM'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Commission'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16433147608414704)
,p_db_column_name=>'EMPNO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Employee ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16433258711414705)
,p_db_column_name=>'ENAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16433272357414706)
,p_db_column_name=>'DEPTNO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Department'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16433400466414707)
,p_db_column_name=>'HIREDATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Hiredate'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16433541867414708)
,p_db_column_name=>'Full Salary'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Full Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(16443346799416027)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'107310'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPNO:ENAME:JOB:MGR:HIREDATE:SAL:COMM:DEPTNO:Full Salary:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(15767190497656048)
,p_report_id=>wwv_flow_imp.id(16443346799416027)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'Full Salary'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("Full Salary" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#fff5ce'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(102639401386774132)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'  This page shows how to use <em>derived columns</em> in the <strong>Data Profile</strong> of the REST Data Source to enrich the response from the REST service. Such derived columns are available to all components using the REST Data Source. Using <e'
||'m>SQL expressions</em>, we use existing columns <strong>SAL</strong> and <strong>COMM</strong> to derive a new column <strong>Full Salary</strong> that doesn''t exist in the original payload.',
'</p>',
'',
'',
'',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(102689805013991276)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(98352729855089834)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(102689805013991276)
,p_button_name=>'Next'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:300:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(98352706410089833)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(102689805013991276)
,p_button_name=>'Previous'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:201:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
end;
/
prompt --application/pages/page_00300
begin
wwv_flow_imp_page.create_page(
 p_id=>300
,p_name=>'Data Display Options'
,p_alias=>'DATA-DISPLAY-OPTIONS'
,p_step_title=>'Data Display Options'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101858078011692643)
,p_plug_name=>'Data Display Options List'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_list_id=>wwv_flow_imp.id(94619572120533775)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_landmark_type=>'navigation'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101871065319055062)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99281119653574852)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(101871065319055062)
,p_button_name=>'Next'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:301:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99280626134574852)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(101871065319055062)
,p_button_name=>'previous'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:202:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
end;
/
prompt --application/pages/page_00301
begin
wwv_flow_imp_page.create_page(
 p_id=>301
,p_name=>'Simple Report'
,p_alias=>'SIMPLE-REPORT1'
,p_step_title=>'Simple Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101838815959986100)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101839481674986103)
,p_plug_name=>'Simple  Employees Report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(94522571563963393)
,p_query_type=>'SQL'
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Simple Report'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(101839604687986103)
,p_name=>'Simple Report'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AHMAMED'
,p_internal_uid=>9771984160812996
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101840373472986106)
,p_db_column_name=>'EMPNO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Empno'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101840735452986106)
,p_db_column_name=>'ENAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101841139092986107)
,p_db_column_name=>'JOB'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Job'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101841937038986107)
,p_db_column_name=>'HIREDATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Hiredate'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101842323226986107)
,p_db_column_name=>'SAL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101841498479986107)
,p_db_column_name=>'MGR'
,p_display_order=>16
,p_column_identifier=>'D'
,p_column_label=>'Manager'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101842766292986107)
,p_db_column_name=>'COMM'
,p_display_order=>26
,p_column_identifier=>'G'
,p_column_label=>'Commission'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101843158661986107)
,p_db_column_name=>'DEPTNO'
,p_display_order=>36
,p_column_identifier=>'H'
,p_column_label=>'Department'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(101845230311002826)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'25592'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ENAME:JOB:SAL:HIREDATE:MGR:COMM:DEPTNO:'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(99286730346608136)
,p_page_id=>301
,p_web_src_param_id=>wwv_flow_imp.id(96691874295807534)
,p_page_plug_id=>wwv_flow_imp.id(101839481674986103)
,p_value_type=>'NULL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101865951426725956)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'     This page that uses an Interactive Report region to display REST data in a straightforward and read-only format, it demonstrates how to consume a REST endpoint with automatic JSON conversion to present data without advanced features ideal for qu'
||'ick and basic data views.',
'</p>'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99291008569608143)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(101838815959986100)
,p_button_name=>'Next'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:302:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99290542411608143)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(101838815959986100)
,p_button_name=>'Previous'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:300:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
end;
/
prompt --application/pages/page_00302
begin
wwv_flow_imp_page.create_page(
 p_id=>302
,p_name=>'Report with Pagination'
,p_alias=>'REPORT-WITH-PAGINATION1'
,p_step_title=>'Report with Pagination'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(100040366765162519)
,p_plug_name=>'Pagination Results'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(97134193668595595)
,p_query_type=>'SQL'
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(100040429375162520)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AHMAMED'
,p_internal_uid=>7972808847989413
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100040612436162521)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100040826957162524)
,p_db_column_name=>'NAME'
,p_display_order=>20
,p_column_identifier=>'D'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100040677778162522)
,p_db_column_name=>'SAL'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100040744901162523)
,p_db_column_name=>'DEPT'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100040959948162525)
,p_db_column_name=>'RNUM'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Rnum'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100041092412162526)
,p_db_column_name=>'BONUS'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Bonus'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100041187117162527)
,p_db_column_name=>'STATUS'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(100068690599187392)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'80011'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:NAME:STATUS:SAL:BONUS:DEPT:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101853611462072584)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101873255269774294)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'    This report demonstrates how to efficiently display a large dataset from a REST Data Source by using pagination. ',
'    Oracle APEX will use pagination parameters to fetch only needed rows from the REST endpoint.  ',
'    Oracle APEX supports four pagination types.',
'</p>',
'<ul>',
'    <li>Page Size and Fetch Offset</li>',
'    <li>Page Size and Page Number</li>',
'    <li>Page Number</li>',
'    <li>Page Size and Page Token</li>',
'</ul>',
'<p>',
'    The example used on this page uses <strong>Page Size and Fetch Offset</strong> pagination, with <code>limit</code>',
'    being the <strong>Page Size</strong> and <code>offset</code> being the <strong>Fetch Offset</strong> URL parameters.',
'    To fetch rows for <em>the second page</em> of this Interactive Report, the following URL is invoked:',
'</p>',
'<pre>',
'    https://example.com/ords/schema/rest/?limit=50&offset=50',
'</pre>',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99297116991656475)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(101853611462072584)
,p_button_name=>'Next'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:303:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99296692730656474)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(101853611462072584)
,p_button_name=>'Previous'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:301:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
end;
/
prompt --application/pages/page_00303
begin
wwv_flow_imp_page.create_page(
 p_id=>303
,p_name=>'Report with Query'
,p_alias=>'REPORT-WITH-QUERY1'
,p_step_title=>'Report with Query'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101861825166084173)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101879435896783653)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'    This Interactive Report displays employee data from a REST Data Source of the ',
'    <strong>Oracle REST Data Services</strong> type. ORDS supports server-side filtering,',
'    so when a search term is entered, Oracle APEX generates a filter in JSON format and sends',
'    it to the REST endpoint. ',
'</p>',
'<p>',
'    The filter syntax depends on the REST Source type being used. While ORDS uses a JSON format,',
'    other REST Source types use different query syntaxes and formats.',
'    The following example filters for rows having <strong>10</strong> as the <strong>deptno</strong> attribute,',
'    and a value greater than <strong>2000</strong> as the <strong>sal</strong> attribute.',
'</p>',
'<pre>',
'{',
'    "$and": [',
'        { "deptno": 10 },',
'        { "sal":    {"$gt": 2000} } ',
'    ]',
'}',
'</pre>',
'<p>',
'    To see the actual request being made, turn on debug and review debug output. The <strong>Enable IR Debug</strong> ',
'    button on this page helps with this.',
'</p>',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(102941523537816658)
,p_plug_name=>'Query Filter Results'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>40
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(96716525393489468)
,p_query_type=>'SQL'
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(102941666352816659)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AHMAMED'
,p_internal_uid=>10874045825643552
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102941754931816660)
,p_db_column_name=>'EMPNO'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Employee Number'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102941832359816661)
,p_db_column_name=>'ENAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102941944146816662)
,p_db_column_name=>'JOB'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Job'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102942084690816663)
,p_db_column_name=>'MGR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Manager'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102942153971816664)
,p_db_column_name=>'HIREDATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Hiredate'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102942265983816665)
,p_db_column_name=>'SAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102942373958816666)
,p_db_column_name=>'COMM'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Commission'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102942449464816667)
,p_db_column_name=>'DEPTNO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Department'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103861147112844478)
,p_db_column_name=>'RN'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Rn'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103861213556844479)
,p_db_column_name=>'LINKS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Links'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(103210991061482490)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'39106'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ENAME:JOB:SAL:HIREDATE:MGR:COMM:DEPTNO:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99301378232665840)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(101861825166084173)
,p_button_name=>'Next'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:304:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99301009586665840)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(101861825166084173)
,p_button_name=>'Previous'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:302:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99302133383665841)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(102941523537816658)
,p_button_name=>'Enable_IR_Debug'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enable IR Debug'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa-bug'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99307469357665844)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Enable Debug Process'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  apex_debug.enable(p_level => apex_debug.c_log_level_info);',
'  apex_application.g_print_success_message := apex_lang.get_message(''P303.PROCESS.SUCCESS'')',
';',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(99302133383665841)
,p_internal_uid=>7239848830492737
);
end;
/
prompt --application/pages/page_00304
begin
wwv_flow_imp_page.create_page(
 p_id=>304
,p_name=>'Cards Layout'
,p_alias=>'CARDS-LAYOUT1'
,p_step_title=>'Cards Layout'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101873255977095333)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101890883397792447)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'This page demonstrates displaying data in a card-based layout. It demonstrates how visual card regions can be utilized to present REST data in a mobile-friendly, visually appealing manner, which presents an alternative presentation style to tradition'
||'al reports. The cards region shows data from the <code>themoviedb.org</code> <strong>Popular Movies</strong> REST Endpoint.',
'',
'</p>'))
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'apex_app_setting.get_value(''TMDB_APIKEY'') = ''YES'''
,p_plug_display_when_cond2=>'PLSQL'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103518335558685433)
,p_plug_name=>'Movies'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(96297614377875508)
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'apex_app_setting.get_value(''TMDB_APIKEY'') = ''YES'''
,p_plug_display_when_cond2=>'PLSQL'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(99311465886674624)
,p_region_id=>wwv_flow_imp.id(103518335558685433)
,p_layout_type=>'GRID'
,p_grid_column_count=>5
,p_title_adv_formatting=>false
,p_title_column_name=>'TITLE'
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="movie-rating">',
'<span class="fa fa-star"> &VOTE_AVG_ROUNDED.</span></div>'))
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'STATIC_URL'
,p_media_url=>'https://image.tmdb.org/t/p/w500&POSTER_PATH.'
,p_media_display_position=>'FIRST'
,p_media_appearance=>'SQUARE'
,p_media_sizing=>'COVER'
,p_media_description=>'Image Poster'
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(105593522310591325)
,p_plug_name=>'Web Credentials not provided'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This page relies on a REST Data Source, which requires a valid API key. ',
'Please provide an API key to access <strong>themoviedb.org</strong>, by navigating ',
'to <strong>Administration > Web Credentials</strong>.',
''))
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'apex_app_setting.get_value(''TMDB_APIKEY'') = ''NO'''
,p_plug_display_when_cond2=>'PLSQL'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99312412428674625)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(105593522310591325)
,p_button_name=>'Set_Credentials'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Set Credentials'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:503:&SESSION.::&DEBUG.::P304_SOURCE:304'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99313554942674625)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(101873255977095333)
,p_button_name=>'Next'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:305:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99313143804674625)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(101873255977095333)
,p_button_name=>'Previous'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:303:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
end;
/
prompt --application/pages/page_00305
begin
wwv_flow_imp_page.create_page(
 p_id=>305
,p_name=>'Oracle JET Charts'
,p_alias=>'ORACLE-JET-CHARTS1'
,p_step_title=>'Oracle JET Charts'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101880761870107036)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103524189506693012)
,p_plug_name=>'Project Task Count'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(99320253932682204)
,p_region_id=>wwv_flow_imp.id(103524189506693012)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(99321941161682205)
,p_chart_id=>wwv_flow_imp.id(99320253932682204)
,p_seq=>10
,p_name=>'Series'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select  project    as label,',
'        count(*)   as value',
'  from  #APEX$SOURCE_DATA#',
' group  by project',
' order  by value desc'))
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(99362981613770433)
,p_source_post_processing=>'SQL'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(99321382881682205)
,p_chart_id=>wwv_flow_imp.id(99320253932682204)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(99320745615682204)
,p_chart_id=>wwv_flow_imp.id(99320253932682204)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103525593361693026)
,p_plug_name=>'Order Status Distribution'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(99317204301682201)
,p_region_id=>wwv_flow_imp.id(103525593361693026)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_fill_multi_series_gaps=>false
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>false
,p_show_value=>true
,p_show_label=>false
,p_show_row=>false
,p_show_start=>false
,p_show_end=>false
,p_show_progress=>false
,p_show_baseline=>false
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>false
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(99317661723682202)
,p_chart_id=>wwv_flow_imp.id(99317204301682201)
,p_seq=>10
,p_name=>'Series'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select order_status   as label, ',
'       count(*)       as value',
'  from #APEX$SOURCE_DATA#',
' group by order_status',
' order by value desc',
''))
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(97410732940480092)
,p_source_post_processing=>'SQL'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103526115687693031)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>',
'',
'  <p>',
'',
'    This page demonstrates how REST data can be seamlessly integrated with Oracle APEX and visualized using Oracle JET charts. The underlying data is coming from our REST data source.',
'  <ul>',
'    <li>',
'      <strong>Project Task Count (Bar Chart):</strong>  ',
'        Displays the number of tasks per project using data from <code>EBA_REST_TASKS</code> REST Data Source.',
'    </li>',
'',
'    <li>',
'      <strong>Order Status Distribution (Pie Chart):</strong>  ',
'      Uses data from <code>EBA_REST_ORDERS</code> REST Data Source to show the proportion of orders by status.',
'    </li>',
'',
'   ',
'',
'  </ul>',
' ',
'  <p>',
'    This page leverages Oracle APEX''s REST integration and Oracle JET''s advanced visualization capabilities to deliver an interactive and responsive dashboard for data driven decision making.',
'  </p>',
'',
'</div>',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99319429240682204)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(101880761870107036)
,p_button_name=>'Next'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:306:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99319057158682204)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(101880761870107036)
,p_button_name=>'previous'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:304:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
end;
/
prompt --application/pages/page_00306
begin
wwv_flow_imp_page.create_page(
 p_id=>306
,p_name=>'Faceted Search'
,p_alias=>'FACETED-SEARCH1'
,p_step_title=>'Faceted Search'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'22'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101956669943428050)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(101957402878428056)
,p_name=>'Search Results'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(94522571563963393)
,p_query_type=>'SQL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99334432356692127)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Empno'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99334829334692127)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Employee'
,p_use_as_row_header=>'Y'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99335236207692127)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'Job'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99335659659692127)
,p_query_column_id=>4
,p_column_alias=>'MGR'
,p_column_display_sequence=>33
,p_column_heading=>'Manager'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99336083902692127)
,p_query_column_id=>5
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>23
,p_column_heading=>'Hiredate'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99336493316692127)
,p_query_column_id=>6
,p_column_alias=>'SAL'
,p_column_display_sequence=>13
,p_column_heading=>'Salary'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99336881319692128)
,p_query_column_id=>7
,p_column_alias=>'COMM'
,p_column_display_sequence=>53
,p_column_heading=>'Commission'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99337282517692128)
,p_query_column_id=>8
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>63
,p_column_heading=>'Department'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(99334066009692126)
,p_page_id=>306
,p_web_src_param_id=>wwv_flow_imp.id(96691874295807534)
,p_page_plug_id=>wwv_flow_imp.id(101957402878428056)
,p_value_type=>'NULL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101957486570428056)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(101957402878428056)
,p_landmark_label=>'Filters'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'current_facets_selector', '#active_facets',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'E',
  'show_total_row_count', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101959134727428061)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>'<div id="active_facets"></div>'
,p_plug_query_num_rows=>15
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(98352992855089836)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(101956669943428050)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:307:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99333149336692125)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(101959134727428061)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:306:&SESSION.::&DEBUG.:RR,::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(98352874795089835)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(101956669943428050)
,p_button_name=>'previous'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:305:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(101963915876428064)
,p_name=>'P306_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(101957486570428056)
,p_prompt=>'Search'
,p_source=>'ENAME,JOB'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'collapsed_search_field', 'N',
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_show_chart=>false
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(101964727545428066)
,p_name=>'P306_JOB'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(101957486570428056)
,p_prompt=>'Job'
,p_source=>'JOB'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(102981264283842967)
,p_name=>'P306_SAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(101957486570428056)
,p_prompt=>'Salary'
,p_source=>'SAL'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>'STATIC2:less than  1#G#000;|1000,1#G#000 to  2#G#000;1000|2000,2#G#000  to 3#G#000;2000|3000,3#G#000  to 4#G#000;3000|4000,more than 4#G#000;4000|'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103545282137702935)
,p_name=>'P306_COMM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(101957486570428056)
,p_prompt=>'Commission'
,p_source=>'COMM'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>'STATIC2:less than 500;|500,500 to 1#G#000;500|1000,more then 1#G#000;1000|'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
,p_ai_enabled=>false
);
end;
/
prompt --application/pages/page_00307
begin
wwv_flow_imp_page.create_page(
 p_id=>307
,p_name=>'Map'
,p_alias=>'MAP1'
,p_step_title=>'Map'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16296974488182951)
,p_plug_name=>'Stores Data'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(97416571925508069)
,p_query_type=>'SQL'
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(16296924691182950)
,p_max_rows_per_page=>'14'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AHMAMED'
,p_internal_uid=>2802417557477103
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16296824606182949)
,p_db_column_name=>'STORE_ID'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Store Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16296733418182948)
,p_db_column_name=>'STORE_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Store Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16296467883182946)
,p_db_column_name=>'PHYSICAL_ADDRESS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Physical Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16296416625182945)
,p_db_column_name=>'LATITUDE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Latitude'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G990D0'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16296292380182944)
,p_db_column_name=>'LONGITUDE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Longitude'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G990D0'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(16356467723210503)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'47563'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STORE_ID:STORE_NAME:PHYSICAL_ADDRESS:LATITUDE:LONGITUDE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101982245698491749)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101982939824491753)
,p_plug_name=>'Stores Map'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(99351075829715663)
,p_region_id=>wwv_flow_imp.id(101982939824491753)
,p_height=>640
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'RECTANGLE_ZOOM:SCALE_BAR'
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(99351529893715664)
,p_map_region_id=>wwv_flow_imp.id(99351075829715663)
,p_name=>'Stores'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(97416571925508069)
,p_geometry_column_data_type=>'LONLAT_COLUMNS'
,p_longitude_column=>'LONGITUDE'
,p_latitude_column=>'LATITUDE'
,p_stroke_color=>'#fef6f6'
,p_fill_color=>'#bc1c1c'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Home'
,p_point_svg_shape_scale=>'2'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>true
,p_tooltip_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<strong>&STORE_NAME.</strong><br>',
'&PHYSICAL_ADDRESS.<br>'))
,p_info_window_adv_formatting=>false
,p_allow_hide=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(102992941161866501)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'    This page visualizes data from the REST data source on a <em>map</em>. The map region can display',
'    latitude and longitude data, as well as GeoJSON data, coming from the REST Data Source. In this example,',
'    each row from the REST Data Source is represented by a marker on the map, additional information is shown as',
'    <em>Tool Tip</em> when hovering over a marker on the map.',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(98353197766089838)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(101982245698491749)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:308:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(98353063478089837)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(101982245698491749)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:306:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
end;
/
prompt --application/pages/page_00308
begin
wwv_flow_imp_page.create_page(
 p_id=>308
,p_name=>'Calendar'
,p_alias=>'CALENDAR1'
,p_step_title=>'Calendar'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101990232968535006)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101990989165535006)
,p_plug_name=>'Projects Calendar'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(99362981613770433)
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'',
'select  id,',
'        project,',
'        task_name,',
'        status,',
'        assigned_to,',
'        cost,',
'        start_date,',
'        end_date,',
' case',
' when   status = ''Pending'' then ''apex-cal-blue''',
' when   status = ''Open'' then ''apex-cal-green''',
' when   status = ''Closed'' then ''apex-cal-gray''',
' when   status = ''On-Hold'' then ''apex-cal-orange''',
'  end   as css_class,',
'        ''Project: '' || project || ''<br>Status: '' || status AS supplemental_info',
' from   #APEX$SOURCE_DATA#',
''))
,p_source_post_processing=>'SQL'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'calendar_views_and_navigation', 'month:week:day:list:navigation',
  'css_class', 'CSS_CLASS',
  'display_column', 'TASK_NAME',
  'drag_and_drop', 'N',
  'end_date_column', 'END_DATE',
  'event_sorting', 'AUTOMATIC',
  'first_hour', '9',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'primary_key_column', 'ID',
  'show_time', 'Y',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'START_DATE',
  'supplemental_information', '&SUPPLEMENTAL_INFO.',
  'time_format', '00')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104361046493136152)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'    On this page we present task entries from the <strong>EBA_REST_TASKS</strong> REST Data Source in a calendar layout rather than a Classic or Interactive Report. Each record from the <code>EBA_TASKS_SS</code> table appears as a dated event, displa'
||'ying its title and scheduled dates. Filtering and pagination are driven by the REST service to keep the display efficient.',
'  </p>'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(98353341741089840)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(101990232968535006)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:400:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(98353275064089839)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(101990232968535006)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:307:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
end;
/
prompt --application/pages/page_00400
begin
wwv_flow_imp_page.create_page(
 p_id=>400
,p_name=>'Advanced Features'
,p_alias=>'ADVANCED-FEATURES1'
,p_step_title=>'Advanced Features'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101950655082930218)
,p_plug_name=>'Advanced Features List'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_list_id=>wwv_flow_imp.id(94322544283999405)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_landmark_type=>'navigation'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101961366253194426)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99374139177812417)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(101961366253194426)
,p_button_name=>'Next'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:401:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99373789192812417)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(101961366253194426)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:308:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
end;
/
prompt --application/pages/page_00401
begin
wwv_flow_imp_page.create_page(
 p_id=>401
,p_name=>'REST Synchronization'
,p_alias=>'REST-SYNCHRONIZATION'
,p_step_title=>'REST Synchronization'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16434744680414720)
,p_plug_name=>'API key Not  Provided'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_source=>'This page relies on a REST Data Source. You need to provide your own API key for <strong>themoviedb.org</strong>. Go to administration and set your own api key in the Manage web credentials page'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'apex_app_setting.get_value(''TMDB_APIKEY'') = ''NO'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99392747446460888)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99735585516397715)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div >',
'  <p>',
'    This page demonstrates the integration of external RESTful data with local database tables, emphasizing the efficiency and flexibility of data synchronization.    The page utilizes a REST Data Source named <strong>EBA_REST_MOVIE_SYNCHRONIZATION</'
||'strong> to fetch data from an external movie database API.',
'',
'  </p>',
'  <p>',
'    This data is synchronized into a local table, <strong>EBA_DEMO_REST_MOVIES_SYNC</strong>, ensuring that the application benefits from faster data access and reduced latency.    By configuring the interactive report to use the synchronized table, '
||'the application achieves improved performance, especially when handling large datasets.',
'',
'  </p>',
'',
'  <p>',
'    <strong>Note: </strong> The <strong>Synchronize Data</strong> button on the page invokes the <strong>APEX_REST_SOURCE_SYNC.SYNCHRONIZE_DATA</strong> API, allowing users to refresh the local data on-demand.',
'    This approach ensures that the interactive report always displays the most up-to-date information without relying solely on scheduled synchronizations.',
'  </p>',
'</div>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99735673039397716)
,p_plug_name=>'Synchronization Results'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(99758843148949282)
,p_use_local_sync_table=>true
,p_query_type=>'SQL'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_app_setting.get_value(''TMDB_APIKEY'') =  ''YES''',
'and exists (',
'  select 1',
'    from sys.user_tables',
'   where table_name = ''EBA_DEMO_REST_MOVIES_SYNC''',
');'))
,p_plug_display_when_cond2=>'SQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(99735734420397717)
,p_no_data_found_message=>'Table contains no data yet. Please click the Synchronize Data button.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AHMAMED'
,p_internal_uid=>7668113893224610
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99735884586397718)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99735923602397719)
,p_db_column_name=>'ADULT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Adult'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99736084203397720)
,p_db_column_name=>'TITLE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Title'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99736166980397721)
,p_db_column_name=>'VIDEO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Video'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99736240856397722)
,p_db_column_name=>'OVERVIEW'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Overview'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99736356300397723)
,p_db_column_name=>'GENRE_IDS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Genre Ids'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99736505262397724)
,p_db_column_name=>'POPULARITY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Popularity'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99736603710397725)
,p_db_column_name=>'VOTE_COUNT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Vote Count'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99736712148397726)
,p_db_column_name=>'POSTER_PATH'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Poster Path'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99736721834397727)
,p_db_column_name=>'RELEASE_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Release Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99736832293397728)
,p_db_column_name=>'VOTE_AVERAGE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Vote Average'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99736941869397729)
,p_db_column_name=>'BACKDROP_PATH'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Backdrop Path'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99737097177397730)
,p_db_column_name=>'ORIGINAL_TITLE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Original Title'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99737140489397731)
,p_db_column_name=>'ORIGINAL_LANGUAGE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Original Language'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(99769911647035059)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'77023'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:ADULT:TITLE:VIDEO:OVERVIEW:GENRE_IDS:POPULARITY:VOTE_COUNT:POSTER_PATH:RELEASE_DATE:VOTE_AVERAGE:BACKDROP_PATH:ORIGINAL_TITLE:ORIGINAL_LANGUAGE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(100799219846345241)
,p_plug_name=>'Synchronization Table Doesnt Exists'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--info:t-Alert--accessibleHeading'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>'REST Synchronization requires a local table to exist, so please click the <strong>Create Table</strong> button to create it.'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_app_setting.get_value(''TMDB_APIKEY'') =  ''YES''',
'and not exists (',
'  select 1',
'    from sys.user_tables',
'   where table_name = ''EBA_DEMO_REST_MOVIES_SYNC''',
')'))
,p_plug_display_when_cond2=>'SQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16434789932414721)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(16434744680414720)
,p_button_name=>'Set_API_Key'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Set API Key'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:503:&SESSION.::&DEBUG.::P304_SOURCE:401'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(100799247267345242)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(100799219846345241)
,p_button_name=>'Create_Table'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Table'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(98353643487089843)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(99392747446460888)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:402:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(98353555743089842)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(99392747446460888)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:400:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99737377839397733)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(99735673039397716)
,p_button_name=>'Synchronize_Data'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Synchronize Data'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99737468115397734)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Trigger Synchronization'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    apex_rest_source_sync.synchronize_data(',
'        p_module_static_id   => ''eba_rest_movie_synchronization'',',
'        p_run_in_background  => false,',
'        p_application_id     => :APP_ID',
'    );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error while triggering synchronization.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(99737377839397733)
,p_process_success_message=>'Data synchronized successfully.'
,p_internal_uid=>7669847588224627
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(100799080480345240)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Table Synchronization definiton'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'apex_rest_source_sync.synchronize_table_definition(',
'        p_module_static_id     => ''eba_rest_movie_synchronization'',',
'        p_drop_unused_columns  => true ',
');',
'  ',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Sync table is not created.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(100799247267345242)
,p_process_success_message=>'Table created successfully.'
,p_internal_uid=>8731459953172133
);
end;
/
prompt --application/pages/page_00402
begin
wwv_flow_imp_page.create_page(
 p_id=>402
,p_name=>'Invoke API Process'
,p_alias=>'INVOKE-API-PROCESS1'
,p_step_title=>'Invoke API Process'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103034668051635879)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'    This page demonstrates how to use the <strong>Invoke API</strong> page process with the  ',
'    <strong>PUT</strong> operation of a REST Data Source. Clicking the <strong>Raise Salary</strong> ',
'    button will open a dialog which allows to enter a new <em>Salary</em> value; and to submit',
'    the change to a REST API.',
'</p>',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103296719754565764)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103951476716663671)
,p_plug_name=>'Employees Data'
,p_region_name=>'empIR'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(96620419708252440)
,p_query_type=>'SQL'
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(103951592012663672)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AHMAMED'
,p_internal_uid=>11883971485490565
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103952098817663677)
,p_db_column_name=>'EMPNO'
,p_display_order=>10
,p_column_identifier=>'E'
,p_column_label=>'Employee Number'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103952207605663678)
,p_db_column_name=>'ENAME'
,p_display_order=>20
,p_column_identifier=>'F'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103951680544663673)
,p_db_column_name=>'JOB'
,p_display_order=>30
,p_column_identifier=>'A'
,p_column_label=>'Job'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103951750258663674)
,p_db_column_name=>'MGR'
,p_display_order=>40
,p_column_identifier=>'B'
,p_column_label=>'Manager'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103951878746663675)
,p_db_column_name=>'SAL'
,p_display_order=>50
,p_column_identifier=>'C'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103951977021663676)
,p_db_column_name=>'COMM'
,p_display_order=>60
,p_column_identifier=>'D'
,p_column_label=>'Commission'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103952384647663680)
,p_db_column_name=>'HIREDATE'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Hiredate'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103952298608663679)
,p_db_column_name=>'DEPTNO'
,p_display_order=>100
,p_column_identifier=>'G'
,p_column_label=>'Department'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(103969868354206691)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'45757'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPNO:ENAME:JOB:SAL:HIREDATE:MGR:COMM:DEPTNO:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(98353879174089845)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(103296719754565764)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:404:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(98353723211089844)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(103296719754565764)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:401:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99398131456485071)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(103951476716663671)
,p_button_name=>'Raise_Salary'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Raise Salary'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:403:&SESSION.::&DEBUG.:403::'
,p_icon_css_classes=>'fa-compass'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104068008580777300)
,p_name=>'P402_STATUS'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104623145748123301)
,p_name=>'P402_MESSAGE'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99400496705485073)
,p_name=>'Capture Status Value '
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99401012456485073)
,p_event_id=>wwv_flow_imp.id(99400496705485073)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P402_STATUS'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P403_STATUS'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99402252544485074)
,p_name=>'Capture Message Value'
,p_event_sequence=>30
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99402781078485074)
,p_event_id=>wwv_flow_imp.id(99402252544485074)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P402_MESSAGE'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P403_MESSAGE'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99401396878485073)
,p_name=>'Success Message Display'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P402_MESSAGE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99401865729485074)
,p_event_id=>wwv_flow_imp.id(99401396878485073)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ordsStatus   = apex.item("P402_STATUS").getValue(),',
'    ordsResponse = apex.item("P402_MESSAGE").getValue();',
'',
'',
'try {',
' ',
'  switch (parseInt(ordsStatus)) {',
'    case 200:',
'      apex.message.showPageSuccess(apex.lang.formatMessage(''P402.DA.ORDS.RESPONSE'', ordsResponse));  ',
'      apex.region("empIR").refresh();',
'      break;',
'',
'    case 400:',
'      apex.message.showErrors([',
'        {',
'          type: "error",',
'          location: ["inline", "page"],',
'          message: apex.lang.formatMessage(''P402.DA.ORDS.RESPONSE'', ordsResponse) ,',
'          unsafe: false',
'        }',
'      ]);',
'      break;',
'    case 401:',
'      apex.debug.error(ordsResponse);',
'      apex.message.showErrors([',
'        {',
'          type: "error",',
'          location: ["inline", "page"],',
'          message: apex.lang.formatMessage(''P402.DA.UNAUTHORIZED.MSG''),',
'          unsafe: false',
'        }',
'      ]);',
'      break;',
'    case 403:',
'      apex.debug.error(ordsResponse);',
'      apex.message.showErrors([',
'        {',
'          type: "error",',
'          location: ["inline", "page"],',
'          message: apex.lang.formatMessage(''P402.DA.FORBIDDEN.MSG''),',
'          unsafe: false',
'        }',
'      ]);',
'      break;',
'    case 404:',
'      apex.debug.error(ordsResponse);',
'      apex.message.showErrors([',
'        {',
'          type: "error",',
'          location: ["inline", "page"],',
'          message: apex.lang.formatMessage(''P402.DA.NOTFOUND.MSG''),',
'          unsafe: false',
'        }',
'      ]);',
'      break;',
'    case 500:',
'      apex.debug.error(ordsResponse);',
'      apex.message.showErrors([',
'        {',
'          type: "error",',
'          location: ["inline", "page"],',
'          message: apex.lang.formatMessage(''P402.DA.SERVEREERR.MSG''),',
'          unsafe: false',
'        }',
'      ]);',
'      break;',
'    default:',
'      apex.debug.error(ordsResponse);',
'      apex.message.showErrors([',
'        {',
'          type: "error",',
'          location: ["inline", "page"],',
'          message: apex.lang.formatMessage(''P402.DA.UNEXPECTEDERR.MSG''),',
'          unsafe: false',
'        }',
'      ]);',
'      break;',
'  }',
'} catch (e) {',
'  apex.message.showErrors([',
'    {',
'      type: "error",',
'      location: ["inline", "page"],',
'      message: apex.lang.formatMessage("P402.DA.ERROR.MSG", e.message),',
'      unsafe: false',
'    }',
'  ]);',
'}',
''))
);
end;
/
prompt --application/pages/page_00403
begin
wwv_flow_imp_page.create_page(
 p_id=>403
,p_name=>'Raise Salary'
,p_alias=>'RAISE-EMPLOYEE-SALARY'
,p_page_mode=>'MODAL'
,p_step_title=>'Raise Salary'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(100041367784162529)
,p_plug_name=>'Button'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16435617401414729)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(100041367784162529)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99421588280721618)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(100041367784162529)
,p_button_name=>'Apply_Changes'
,p_button_static_id=>'send_raise'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103873276050873442)
,p_name=>'P_DIALOG_EMP_NO'
,p_is_required=>true
,p_item_sequence=>10
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'EMPLOYEE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ename as employee,',
'       empno as return_value,',
'       sal   as old_salary',
'  from eba_demo_rest_employee',
' order by ename',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cSize=>30
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'additional_outputs', 'OLD_SALARY:P_DIALOG_NEW_SALARY',
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103873473774873444)
,p_name=>'P_DIALOG_NEW_SALARY'
,p_is_required=>true
,p_item_sequence=>20
,p_prompt=>'New Salary'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104089940062013843)
,p_name=>'P403_STATUS'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104090122678013845)
,p_name=>'P403_MESSAGE'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104490148384146030)
,p_name=>'P403_RESPONSE'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16435744701414730)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(16435617401414729)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16435800695414731)
,p_event_id=>wwv_flow_imp.id(16435744701414730)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99423594763721620)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'raise salary'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(97619078723198491)
,p_web_src_operation_id=>wwv_flow_imp.id(97619766522213729)
,p_attribute_01=>'WEB_SOURCE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(99421588280721618)
,p_internal_uid=>7355974236548513
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(99424086089721620)
,p_page_id=>403
,p_web_src_param_id=>wwv_flow_imp.id(97620067503219840)
,p_page_process_id=>wwv_flow_imp.id(99423594763721620)
,p_value_type=>'ITEM'
,p_value=>'P_DIALOG_EMP_NO'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(99424582115721621)
,p_page_id=>403
,p_web_src_param_id=>wwv_flow_imp.id(97622332785247158)
,p_page_process_id=>wwv_flow_imp.id(99423594763721620)
,p_value_type=>'ITEM'
,p_value=>'P403_MESSAGE'
,p_ignore_output=>false
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(99425082739721621)
,p_page_id=>403
,p_web_src_param_id=>wwv_flow_imp.id(97620428822226096)
,p_page_process_id=>wwv_flow_imp.id(99423594763721620)
,p_value_type=>'ITEM'
,p_value=>'P_DIALOG_NEW_SALARY'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(99425527236721621)
,p_page_id=>403
,p_web_src_param_id=>wwv_flow_imp.id(97621987270246159)
,p_page_process_id=>wwv_flow_imp.id(99423594763721620)
,p_value_type=>'ITEM'
,p_value=>'P403_STATUS'
,p_ignore_output=>false
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(99426062814721622)
,p_page_id=>403
,p_web_src_param_id=>wwv_flow_imp.id(97643187924517376)
,p_page_process_id=>wwv_flow_imp.id(99423594763721620)
,p_value_type=>'DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99426463805721622)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'return back'
,p_attribute_01=>'P403_STATUS,P403_MESSAGE'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7358843278548515
);
end;
/
prompt --application/pages/page_00404
begin
wwv_flow_imp_page.create_page(
 p_id=>404
,p_name=>'REST Data & PL/SQL'
,p_alias=>'REST-DATA-PL-SQL2'
,p_step_title=>'REST Data & PL/SQL'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108995404117767715)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109330291782323331)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>',
'  <p>',
' This page demonstrates an ETL process within Oracle APEX by dynamically retrieving and aggregating data from two external REST Data Sources.',
'  </p>',
'  <p>',
'    <strong>Data Source Calls:</strong>',
'  </p>',
'  <ul>',
'    <li>',
'      <strong>Stores Data:</strong> Fetches key store details such as <strong>STORE_ID</strong> and <strong>STORE_NAME</strong> from the <strong>EBA_REST_STORES</strong> REST Data Source.',
'    </li>',
'    <li>',
'      <strong>Orders Data:</strong> Retrieves order records  <strong>STORE_ID</strong> and <strong>ORDER_DATETIME</strong>  from the <strong>EBA_REST_ORDERS</strong> REST Data Source.',
'    </li>',
'  </ul>',
'  <p>',
unistr('    <strong>Data Processing and Transformation:</strong> The PL/SQL code uses the <strong>APEX_EXEC</strong> package to process JSON responses row-by-row. Order datetime strings are converted to dates and the data is aggregated per store\2014calculating ')
||unistr('total orders and the latest order date/time\2014using PL/SQL collections.'),
'  </p>',
'  <p>',
'    <strong>Data Storage and Display:</strong> Aggregated results (store ID, store name, total orders, and latest order datetime) are inserted into the local summary table <strong>STORE_ORDER_SUMMARY</strong>. An Interactive Report then queries this '
||'table to provide users with an up-to-date summary of store performance. Users can refresh the data or schedule the process to run at intervals.',
'  </p>',
'    <strong>Note:</strong> The PL/SQL code for this ETL can be viewed in the <em>Process_ETL</em> process in Page Designer.',
'</div>',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111246004768637620)
,p_plug_name=>'Actions'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul>',
'    <li>',
'      <strong>Start process & send report:</strong> the button initiates the entire ETL process. When clicked, it triggers a PL/SQL process that retrieves and aggregates data from two REST Data Sources and then sends a summary report via email. Pleas'
||'e ensure you enter a valid email address to receive the report.',
'    </li>',
'   ',
'  </ul>'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112068432997377035)
,p_plug_name=>'ETL Order Summary Results'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>50
,p_query_type=>'TABLE'
,p_query_table=>'EBA_DEMO_REST_STOREORDERSUMMARY'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(112068520495377036)
,p_no_data_found_message=>'No data found. Use the Process Data & Send Report button to generate data.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AHMAMED'
,p_internal_uid=>20000899968203929
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112068636172377037)
,p_db_column_name=>'STORE_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Store Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112068727934377038)
,p_db_column_name=>'STORE_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Store Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112068797014377039)
,p_db_column_name=>'TOTAL_ORDERS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Total Orders'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112068957369377040)
,p_db_column_name=>'LAST_ORDER_DATETIME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Last Order Datetime'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112069047271377041)
,p_db_column_name=>'LOAD_TIMESTAMP'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Load Timestamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(112112156752984330)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'53612'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STORE_ID:STORE_NAME:TOTAL_ORDERS:LAST_ORDER_DATETIME:LOAD_TIMESTAMP'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99413714373706664)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(111246004768637620)
,p_button_name=>'Download'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--pill:t-Button--gapTop:t-Button--padBottom'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Process Data & Send report'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99415216075706666)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(108995404117767715)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:402:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99415562069706666)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(108995404117767715)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:405:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111423175658497727)
,p_name=>'P404_EMAIL'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(111246004768637620)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15711475915912857)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Truncate Table Before Processing'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    execute immediate ''truncate table eba_demo_rest_storeordersummary'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7784579219706901
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99419388537706668)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process_ETL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    eba_demo_rest_etl_pkg.process_store_order_summary(',
'        p_email => :P404_EMAIL',
'    );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(99413714373706664)
,p_internal_uid=>7351768010533561
);
end;
/
prompt --application/pages/page_00405
begin
wwv_flow_imp_page.create_page(
 p_id=>405
,p_name=>'Nested JSON & Dynamic Actions'
,p_alias=>'NESTED-JSON-DYNAMIC-ACTIONS'
,p_step_title=>'Nested JSON & Dynamic Actions'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104553307121232662)
,p_plug_name=>'Parent Nested JSON'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(97228724484071495)
,p_query_type=>'SQL'
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(104553396880232663)
,p_max_rows_per_page=>'10'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AHMAMED'
,p_internal_uid=>12485776353059556
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104553502970232664)
,p_db_column_name=>'PO_USER'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Ordered By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104553613495232665)
,p_db_column_name=>'PO_PONUMBER'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Purchase Order Number'
,p_column_link=>'#'
,p_column_linktext=>'<span class="t-Button-label">PO - #PO_PONUMBER#</span>'
,p_column_link_attr=>'class="po-link t-Button t-Button--hot t-Button--small t-Button--primary t-Button--simple t-Button--gapLeft" data-po-number="#PO_PONUMBER#"'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104553817009232667)
,p_db_column_name=>'PO_REFERENCE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Order Reference'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104553956673232668)
,p_db_column_name=>'PO_REQUESTOR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Requestor Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(104650581533717023)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'51674'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PO_USER:PO_PONUMBER:PO_REFERENCE:PO_REQUESTOR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104627477254638190)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104703870940446431)
,p_plug_name=>'Number of Line Items per Product in Selected Purchase Order'
,p_region_name=>'chart-region'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(97228724484071495)
,p_array_column_id=>wwv_flow_imp.id(97221072508071491)
,p_query_type=>'SQL'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'PO_P_NUMBER'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(99484143515808232)
,p_region_id=>wwv_flow_imp.id(104703870940446431)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>false
,p_show_row=>false
,p_show_start=>false
,p_show_end=>false
,p_show_progress=>false
,p_show_baseline=>false
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>false
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(99486466940808233)
,p_chart_id=>wwv_flow_imp.id(99484143515808232)
,p_static_id=>'chart-region'
,p_seq=>10
,p_name=>'Series'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select part_description as label,',
'       quantity         as value,',
'       ''Product: '' || part_description || ''<br/>Quantity: '' || quantity as custom_tooltip',
'  from #APEX$SOURCE_DATA#',
' where po_ponumber = :PO_P_NUMBER'))
,p_ajax_items_to_submit=>'PO_P_NUMBER'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(97228724484071495)
,p_array_column_id=>wwv_flow_imp.id(97221072508071491)
,p_source_post_processing=>'SQL'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_short_desc_column_name=>'CUSTOM_TOOLTIP'
,p_custom_column_name=>'VALUE'
,p_color=>'#34aadc'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(99484673207808232)
,p_chart_id=>wwv_flow_imp.id(99484143515808232)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Product'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(99485317179808232)
,p_chart_id=>wwv_flow_imp.id(99484143515808232)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Quantity'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(99485889437808232)
,p_chart_id=>wwv_flow_imp.id(99484143515808232)
,p_axis=>'y2'
,p_is_rendered=>'off'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'off'
,p_split_dual_y=>'auto'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104704346773446436)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>',
'  <p>',
'    This page demonstrates how to consume nested data from the ',
'    <strong>EBA_REST_PURCHASE_ORDER</strong> REST Data Source. ',
'    By configuring a Data Profile that maps the parent purchase order details ',
'    and nested line items, we can display a two-tier layout:',
'  </p>',
'  <ul>',
'    <li>',
'      <strong>Parent Region</strong>: Shows general purchase order information ',
'      (PO number, shipping instructions).',
'    </li>',
'    <li>',
'      <strong>Child Region</strong>: Displays the associated line items ',
'      (part details, quantity, etc.) for the selected PO.',
'    </li>',
'  </ul>',
'  <p>',
'    A dynamic action triggers when you click a PO number in the parent region, ',
'    updating the child region to show only the nested data (line items) for ',
'    that specific purchase order. This highlights the power of Oracle APEX in ',
'    handling nested JSON responses and binding them to interactive reports or ',
'    charts through Data Profiles.',
'  </p>',
'</div>',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(98354074307089847)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(104627477254638190)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:406:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(98354006823089846)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(104627477254638190)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:404:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104665104889724973)
,p_name=>'PO_P_NUMBER'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99494103287808237)
,p_name=>'Set Page Item'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.po-link'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99494561514808237)
,p_event_id=>wwv_flow_imp.id(99494103287808237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var poNumber = $(this.triggeringElement).attr("data-po-number");',
'apex.item(''PO_P_NUMBER'').setValue(poNumber);',
'apex.region(''chart-region'').refresh();',
'apex.message.ariaMessage(apex.lang.formatMessage(''P303.PROCESS.SUCCESS''));',
'',
'',
''))
);
end;
/
prompt --application/pages/page_00406
begin
wwv_flow_imp_page.create_page(
 p_id=>406
,p_name=>'REST Data Source Plugins'
,p_alias=>'REST-DATA-SOURCE-PLUGINS1'
,p_step_title=>'REST Data Source Plugins'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(102078941990942903)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <p>',
'    This page integrates a custom <strong>REST Data Source Plugin</strong> the invoke',
'    REST APIs of <strong>The Movie Database (TMDb) API</strong>. To start searching,',
'    type keywords into the Interactive Report search bar.',
'',
'    This approach highlights how a <strong>REST Source Plugin</strong> can provide ',
'    an implementation for specific behavior of a REST API, like pagination,',
'    filtering or behavior for specific parameter values.',
'  </p>',
''))
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'apex_app_setting.get_value(''TMDB_APIKEY'') = ''YES'''
,p_plug_display_when_cond2=>'PLSQL'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(102300415572769474)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103027066189139213)
,p_plug_name=>'Rest Data Source Plugins Results'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>40
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(96609545478449030)
,p_query_type=>'SQL'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'apex_app_setting.get_value(''TMDB_APIKEY'') = ''YES'''
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(103027168461139214)
,p_no_data_found_message=>'Please enter keywords to search for movies.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AHMAMED'
,p_internal_uid=>10959547933966107
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103027239650139215)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103027385480139216)
,p_db_column_name=>'ADULT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Adult'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103027508472139217)
,p_db_column_name=>'TITLE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Title'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103027596167139218)
,p_db_column_name=>'VIDEO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Video'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103027665970139219)
,p_db_column_name=>'OVERVIEW'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Overview'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103027930085139221)
,p_db_column_name=>'POPULARITY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Popularity'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103027991373139222)
,p_db_column_name=>'VOTE_COUNT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Vote Count'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103028078798139223)
,p_db_column_name=>'POSTER_PATH'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Poster Path'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img src="https://image.tmdb.org/t/p/w45#POSTER_PATH#" alt="Movie Poster" onerror="this.outerHTML=''No image available'';" />',
''))
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103028169919139224)
,p_db_column_name=>'RELEASE_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Release Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103028302213139225)
,p_db_column_name=>'VOTE_AVERAGE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Vote Average'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if #VOTE_AVERAGE# >= 4/}',
unistr('  \2605\2605\2605\2605\2605'),
'{else/}',
unistr('  \2605\2605\2605\2606\2606'),
'{endif/}',
''))
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103028363203139226)
,p_db_column_name=>'BACKDROP_PATH'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Backdrop Path'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>',
'  {if BACKDROP_PATH  /}',
'      <img src="https://image.tmdb.org/t/p/w45#BACKDROP_PATH#" alt="Movie Backdrop" />',
'  {else/}',
'      <p>No Backdrop</p>',
'  {endif/}',
'</div>',
'',
'',
'',
''))
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103055862964351877)
,p_db_column_name=>'ORIGINAL_TITLE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Original Title'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103055984635351878)
,p_db_column_name=>'ORIGINAL_LANGUAGE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Original Language'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16434086302414714)
,p_db_column_name=>'GENRE_IDS'
,p_display_order=>150
,p_column_identifier=>'Q'
,p_column_label=>'Genre Ids'
,p_column_type=>'CLOB'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(103071467241352237)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'35729'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:ADULT:TITLE:VIDEO:OVERVIEW:POPULARITY:VOTE_COUNT:POSTER_PATH:RELEASE_DATE:VOTE_AVERAGE:BACKDROP_PATH:ORIGINAL_TITLE:ORIGINAL_LANGUAGE'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(99500994680825082)
,p_page_id=>406
,p_web_src_param_id=>wwv_flow_imp.id(96610132248449032)
,p_page_plug_id=>wwv_flow_imp.id(103027066189139213)
,p_value_type=>'NULL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(105069100299100612)
,p_plug_name=>'Web Credentials Not provided'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_source=>'This page relies on a REST Data Source. You need to provide your own API key for <strong>themoviedb.org</strong>. Go to administration and set your own api key in the Manage web credentials page'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'apex_app_setting.get_value(''TMDB_APIKEY'') = ''NO'''
,p_plug_display_when_cond2=>'PLSQL'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99499291449825079)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(105069100299100612)
,p_button_name=>'Set_API_Key'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Set API Key'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:503:&SESSION.::&DEBUG.::P304_SOURCE:406'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(98354246018089849)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(102300415572769474)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:407:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(98354162723089848)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(102300415572769474)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:405:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103068011526351929)
,p_name=>'P406_MOVIE'
,p_item_sequence=>20
,p_item_default=>'batman'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
end;
/
prompt --application/pages/page_00407
begin
wwv_flow_imp_page.create_page(
 p_id=>407
,p_name=>'REST and Workflow'
,p_alias=>'REST-AND-WORKFLOW'
,p_step_title=>'REST and Workflow'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99778944743901395)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99783829587280127)
,p_plug_name=>'Start Workflow'
,p_title=>'1. Start Workflow'
,p_icon_css_classes=>'fa-number-1'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info:t-Alert--accessibleHeading:js-headingLevel-2:t-Form--standardPadding:margin-bottom-sm'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_location=>null
,p_plug_source=>'Please choose a product and launch the workflow'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(100041994919162535)
,p_plug_name=>'Button'
,p_parent_plug_id=>wwv_flow_imp.id(99783829587280127)
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_landmark_type=>'exclude_landmark'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99784673227280135)
,p_plug_name=>'Workflow Console'
,p_title=>'2. Workflow Console'
,p_icon_css_classes=>'fa-number-2'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info:t-Alert--accessibleHeading:js-headingLevel-2:t-Form--standardPadding:margin-bottom-md'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'After launching the process you can open the workflow console for more details about the workflow </br>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(100041679067162532)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page demonstrates how to seamlessly integrate Oracle APEX REST Data Sources with Workflow Designer to orchestrate  business processes. ',
' By leveraging the <strong>EBA_REST_PRODUCT_WORKFLOW </strong> REST Data Source, the workflow fetches product details in a GET step and then uses those details to create a new order via a POST step into the <strong>EBA_DEMO_REST_ORDER_WORKFLOW</stron'
||'g> table. ',
'</p>',
' <p>Once the order is successfully created, the workflow sends an email notification to the user and flags the process as Creating Order, showcasing how external APIs can enrich workflow steps without writing low-level integration code. ',
' </p>',
'<strong>Note: </strong> you can inspect each step''s status and payloads by clicking the <strong>Open Workflow Console</strong> button below, illustrating  visibility and control.',
'  '))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99783995581280128)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(100041994919162535)
,p_button_name=>'START_WORKFLOW'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Start Workflow'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99784786868280136)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(99784673227280135)
,p_button_name=>'Open_Workflow_Console'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Open Workflow Console'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:408:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(100041589721162531)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(99778944743901395)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:500:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(100041426913162530)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(99778944743901395)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:406:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99784049899280129)
,p_name=>'P407_WF_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(99783829587280127)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99784586871280134)
,p_name=>'P407_PRODUCT_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(99783829587280127)
,p_prompt=>'Product Name'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select product_name ',
'  from eba_demo_rest_producttable'))
,p_source_type=>'QUERY_COLON'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct product_name as display_value,',
'                product_id   as return_value',
'  from eba_demo_rest_producttable',
' where product_name is not null',
' order by product_name;',
''))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99784217521280130)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'Start a new workflow'
,p_attribute_01=>'START'
,p_attribute_02=>wwv_flow_imp.id(99739218066397751)
,p_attribute_04=>'P407_WF_ID'
,p_process_error_message=>'Error'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Workflow started'
,p_internal_uid=>7716596994107023
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(99784272109280131)
,p_page_process_id=>wwv_flow_imp.id(99784217521280130)
,p_workflow_variable_id=>wwv_flow_imp.id(99782119840280109)
,p_page_id=>407
,p_value_type=>'ITEM'
,p_value=>'P407_PRODUCT_ID'
);
end;
/
prompt --application/pages/page_00408
begin
wwv_flow_imp_page.create_page(
 p_id=>408
,p_name=>'Workflow Console'
,p_alias=>'WORKFLOW-CONSOLE'
,p_step_title=>'Workflow Console'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'24'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99813720102496368)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99814745906496370)
,p_plug_name=>'My Workflows - Smart Filters'
,p_parent_plug_id=>wwv_flow_imp.id(99813720102496368)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_display_point=>'SMART_FILTERS'
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(99814837721496370)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'compact_numbers_threshold', '10000',
  'more_filters_suggestion_chip', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99814837721496370)
,p_plug_name=>'My Workflows - Report'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select workflow_id,',
'       workflow_def_name,',
'       workflow_def_app_name,',
'       title,',
'       initiator,',
'       state_code,',
'       created_on,',
'       created_ago,',
'       created_ago_hours,',
'       last_updated_on,',
'       badge_text,',
'       badge_state',
'  from table ( apex_workflow.get_workflows (',
'                   p_context => ''MY_WORKFLOWS''',
'                   ) )'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'    "orderBys": [',
'        {',
'            "key": "CREATED_ON",',
'            "expr": "created_on desc"',
'        },',
'        {',
'            "key": "LAST_UPDATED_ON",',
'            "expr": "last_updated_on desc"',
'        }',
'    ],',
'    "itemName": "P408_SORT_BY"',
'}'))
,p_optimizer_hint=>'APEX$USE_NO_GROUPING_SETS'
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_no_data_found=>'No Workflows'
,p_no_data_found_icon_classes=>'fa-workflow fa-lg'
,p_show_total_row_count=>false
,p_entity_title_singular=>'workflow'
,p_entity_title_plural=>'workflows'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'BADGE_COL_WIDTH', 't-ContentRow-badge--md',
  'BADGE_LABEL', 'State',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_STATE', 'BADGE_STATE',
  'BADGE_VALUE', 'BADGE_TEXT',
  'DESCRIPTION', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<strong>&WORKFLOW_DEF_NAME!HTML.</strong>',
    '{if INITIATOR/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.WORKFLOW.INITIATED_BY_USER_SINCE 0=&INITIATOR!HTML. 1=&CREATED_AGO.}.',
    '{endif/}')),
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'Y',
  'TITLE', '&TITLE.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99820471875496379)
,p_name=>'WORKFLOW_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99820999551496380)
,p_name=>'WORKFLOW_DEF_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_DEF_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99821488593496381)
,p_name=>'WORKFLOW_DEF_APP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_DEF_APP_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99822020494496381)
,p_name=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99822505495496381)
,p_name=>'INITIATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INITIATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99822991694496381)
,p_name=>'STATE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99823455446496381)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99823996851496382)
,p_name=>'CREATED_AGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99824449353496382)
,p_name=>'CREATED_AGO_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO_HOURS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99824933120496382)
,p_name=>'LAST_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99825430122496382)
,p_name=>'BADGE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99825944015496383)
,p_name=>'BADGE_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(100041840892162534)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(99813720102496368)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:500:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(100041731910162533)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(99813720102496368)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:407:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99814403299496368)
,p_name=>'P408_WORKFLOW_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99815147550496372)
,p_name=>'P408_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(99814745906496370)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'collapsed_search_field', 'N',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99815592687496372)
,p_name=>'P408_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(99814745906496370)
,p_prompt=>'Type'
,p_source=>'WORKFLOW_DEF_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99815966518496372)
,p_name=>'P408_STATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(99814745906496370)
,p_prompt=>'State'
,p_source=>'STATE_CODE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'WORKFLOW_CONSOLE.LOV.WORKFLOW_STATE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_workflow.get_lov_workflow_state )',
' order by insert_order'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99816686074496374)
,p_name=>'P408_APPLICATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(99814745906496370)
,p_prompt=>'Application'
,p_source=>'WORKFLOW_DEF_APP_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99817086455496374)
,p_name=>'P408_INITIATOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(99814745906496370)
,p_prompt=>'Initiator'
,p_source=>'INITIATOR'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99817446467496374)
,p_name=>'P408_INITIATED'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(99814745906496370)
,p_prompt=>'Initiated'
,p_source=>'CREATED_AGO_HOURS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_named_lov=>'WORKFLOW_CONSOLE.LOV.INITIATED'
,p_lov=>'.'||wwv_flow_imp.id(99817589791496374)||'.'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99827464352496385)
,p_name=>'P408_SORT_BY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(99814837721496370)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_prompt=>'Sort By'
,p_source=>'LAST_UPDATED_ON'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Create Date;CREATED_ON,Last Update;LAST_UPDATED_ON'
,p_cHeight=>1
,p_tag_css_classes=>'mnw160'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-sort-amount-desc'
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'U'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99830741784496389)
,p_name=>'Refresh - My Workflows - Report'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(99814837721496370)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99831145635496389)
,p_event_id=>wwv_flow_imp.id(99830741784496389)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(99814837721496370)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99831686704496389)
,p_event_id=>wwv_flow_imp.id(99830741784496389)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(99814745906496370)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99827893595496386)
,p_name=>'Terminate'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.terminate'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'body'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99828275769496387)
,p_event_id=>wwv_flow_imp.id(99827893595496386)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P408_WORKFLOW_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.dataset.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99828820220496388)
,p_event_id=>wwv_flow_imp.id(99827893595496386)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.terminate (',
'    p_instance_id => :P408_WORKFLOW_ID );'))
,p_attribute_02=>'P408_WORKFLOW_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99829268505496388)
,p_event_id=>wwv_flow_imp.id(99827893595496386)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Workflow terminated'');'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99829767637496388)
,p_event_id=>wwv_flow_imp.id(99827893595496386)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(99814745906496370)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99830267624496389)
,p_event_id=>wwv_flow_imp.id(99827893595496386)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(99814837721496370)
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(99826461857496383)
,p_region_id=>wwv_flow_imp.id(99814837721496370)
,p_position_id=>348722977165395441
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:409:&SESSION.::&DEBUG.:RP,:P409_WORKFLOW_ID:&WORKFLOW_ID.'
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(99827001261496384)
,p_region_id=>wwv_flow_imp.id(99814837721496370)
,p_position_id=>362316004162771045
,p_display_sequence=>40
,p_template_id=>362316605839802174
,p_label=>'Terminate'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'data-id="&WORKFLOW_ID."'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-times u-danger-text'
,p_action_css_classes=>'terminate'
,p_is_hot=>false
,p_show_as_disabled=>false
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':state_code in (''ACTIVE'',''FAULTED'',''SUSPENDED'')'
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
end;
/
prompt --application/pages/page_00409
begin
wwv_flow_imp_page.create_page(
 p_id=>409
,p_name=>'Workflow Details'
,p_page_mode=>'MODAL'
,p_step_title=>'Workflow Details'
,p_allow_duplicate_submissions=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'27'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99834117358496392)
,p_plug_name=>'Subject'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select title,',
'       workflow_def_name,',
'       initiator,',
'       created_ago,',
'       badge_text,',
'       badge_state',
'  from table ( apex_workflow.get_workflows (',
'                   p_context     => ''SINGLE_WORKFLOW'',',
'                   p_workflow_id => :P409_WORKFLOW_ID ) );'))
,p_template_component_type=>'PARTIAL'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'BADGE_COL_WIDTH', 't-ContentRow-badge--auto',
  'BADGE_LABEL', 'State',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_SIZE', 't-Badge--md',
  'BADGE_STATE', 'BADGE_STATE',
  'BADGE_VALUE', 'BADGE_TEXT',
  'DESCRIPTION', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<strong>&WORKFLOW_DEF_NAME!HTML.</strong>',
    '{if INITIATOR/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.WORKFLOW.INITIATED_BY_USER_SINCE 0=&INITIATOR!HTML. 1=&CREATED_AGO.}.',
    '{endif/}')),
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'Y',
  'TITLE', '&TITLE.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99834491575496393)
,p_name=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99834962145496393)
,p_name=>'WORKFLOW_DEF_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_DEF_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99835519773496393)
,p_name=>'INITIATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INITIATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99835921648496393)
,p_name=>'CREATED_AGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99836518340496393)
,p_name=>'BADGE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99836928475496394)
,p_name=>'BADGE_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99837513075496394)
,p_plug_name=>'Activities'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select activity_id,',
'       type,',
'       name,',
'       state,',
'       error_message,',
'       due_on,',
'       retry_count,',
'       start_time,',
'       end_time,',
'       initcap(state) as badge_text,',
'       case state',
'           when ''WAITING''    then ''danger''',
'           when ''COMPLETED''  then ''success''',
'           when ''TERMINATED'' then ''warning''',
'           when ''FAULTED''    then ''danger''',
'       end as badge_state,',
'       ( select max(workflow_id)',
'           from apex_workflows w',
'          where w.parent_workflow_id = :P409_WORKFLOW_ID',
'            and w.parent_activity_id = a.activity_id ) as invoked_workflow_id',
'  from apex_workflow_activities a',
' where workflow_id = :P409_WORKFLOW_ID',
' order by start_time'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_ajax_items_to_submit=>'P409_WORKFLOW_ID'
,p_plug_query_num_rows=>10
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'BADGE_COL_WIDTH', 't-ContentRow-badge--md',
  'BADGE_LABEL', 'Status',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_STATE', 'BADGE_STATE',
  'BADGE_STYLE', 't-Badge--outline',
  'BADGE_VALUE', 'BADGE_TEXT',
  'DESCRIPTION', '&ERROR_MESSAGE.',
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'Y',
  'MISC', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{case STATE/}',
    '    {when COMPLETED/}',
    '        &{APEX.WORKFLOW.COMPLETED_SINCE 0=&END_TIME.}.',
    '    {otherwise/}',
    '        &{APEX.WORKFLOW.STARTED_SINCE 0=&START_TIME.}.',
    '{endcase/}',
    '{if DUE_ON/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.WORKFLOW.DUE_SINCE 0=&DUE_ON.}.',
    '{endif/}',
    '{if RETRY_COUNT/}',
    '    {case RETRY_COUNT/}',
    '        {when 0/}',
    '        {when 1/}',
    '        <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            &{APEX.WORKFLOW.RETRY_COUNT.EQUALS_ONE 0=&RETRY_COUNT.}.',
    '        {otherwise/}',
    '        <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            &{APEX.WORKFLOW.RETRY_COUNT.NOT_EQUALS_ONE 0=&RETRY_COUNT.}.',
    '    {endcase/}',
    '{endif/}')),
  'TITLE', '&NAME.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99837891201496394)
,p_name=>'ACTIVITY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVITY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99838382436496394)
,p_name=>'TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99838900378496395)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99839374908496395)
,p_name=>'STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99839916530496395)
,p_name=>'ERROR_MESSAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ERROR_MESSAGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99840323861496395)
,p_name=>'DUE_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99840843164496395)
,p_name=>'RETRY_COUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RETRY_COUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99841380578496396)
,p_name=>'START_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_TIME'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99841909956496396)
,p_name=>'END_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_TIME'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99842397307496396)
,p_name=>'BADGE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99842895503496396)
,p_name=>'BADGE_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99843368418496396)
,p_name=>'INVOKED_WORKFLOW_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOKED_WORKFLOW_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99844883425496397)
,p_plug_name=>'Activity Audit'
,p_parent_plug_id=>wwv_flow_imp.id(99837513075496394)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>80
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select created_by,',
'       created_on,',
'       action,',
'       display_msg',
'  from apex_workflow_audit',
' where workflow_id         = :P409_WORKFLOW_ID',
'   and current_activity_id = :P409_ACTIVITY_ID',
' order by audit_id'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_ajax_items_to_submit=>'P409_WORKFLOW_ID,P409_ACTIVITY_ID'
,p_plug_query_num_rows=>5
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'COMMENT_DATE', 'CREATED_ON',
  'COMMENT_TEXT', 'DISPLAY_MSG',
  'DISPLAY_AVATAR', 'N',
  'STYLE', 't-Comments--basic',
  'USER_NAME', 'CREATED_BY')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99845262644496398)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99845777038496399)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99846221163496399)
,p_name=>'ACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99846798408496399)
,p_name=>'DISPLAY_MSG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_MSG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99847627382496399)
,p_plug_name=>'Variables'
,p_region_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>90
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select static_id,',
'       label,',
'       display_value',
'  from apex_workflow_variables',
' where workflow_id = :P409_WORKFLOW_ID',
'   and variable_type = ''VARIABLE''',
' order by label'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_ajax_items_to_submit=>'P409_WORKFLOW_ID'
,p_plug_query_num_rows=>10
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N',
  'OVERLINE', '&LABEL.',
  'TITLE', '&DISPLAY_VALUE.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99848040432496399)
,p_name=>'STATIC_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATIC_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99848544034496400)
,p_name=>'LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99849068286496400)
,p_name=>'DISPLAY_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99850039775496400)
,p_plug_name=>'Edit Variable'
,p_parent_plug_id=>wwv_flow_imp.id(99847627382496399)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99852879543496402)
,p_plug_name=>'Parameters'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>110
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select label,',
'       display_value',
'  from apex_workflow_variables',
' where workflow_id = :P409_WORKFLOW_ID',
'   and variable_type = ''PARAMETER''',
' order by label'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_ajax_items_to_submit=>'P409_WORKFLOW_ID'
,p_plug_query_num_rows=>10
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N',
  'OVERLINE', '&LABEL.',
  'TITLE', '&DISPLAY_VALUE.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99853279023496402)
,p_name=>'LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99853738626496402)
,p_name=>'DISPLAY_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99854262838496402)
,p_plug_name=>'History'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>120
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select display_msg,',
'       created_by,',
'       created_on',
'  from apex_workflow_audit',
' where workflow_id = :P409_WORKFLOW_ID',
'   and current_activity_id is null',
' order by audit_id desc'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_ajax_items_to_submit=>'P409_WORKFLOW_ID'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'COMMENT_DATE', 'CREATED_ON',
  'COMMENT_TEXT', 'DISPLAY_MSG',
  'DISPLAY_AVATAR', 'N',
  'STYLE', 't-Comments--basic',
  'USER_NAME', 'CREATED_BY')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99854633350496403)
,p_name=>'DISPLAY_MSG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_MSG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99855202272496403)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99855681767496403)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_format_mask=>'SINCE'
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99856203552496403)
,p_plug_name=>'Workflow Diagram'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>130
,p_plug_source_type=>'NATIVE_WORKFLOW_DIAGRAM'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_navigator', 'Y',
  'initial_zoom', '0',
  'workflow_id', 'P409_WORKFLOW_ID')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99856556534496403)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--stickToBottom:t-ButtonRegion--slimPadding:margin-bottom-none'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>200
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99833631133496391)
,p_button_sequence=>50
,p_button_name=>'TO_PARENT_WORKFLOW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'To Parent Workflow'
,p_button_redirect_url=>'f?p=&APP_ID.:409:&SESSION.::&DEBUG.:RP,409:P409_WORKFLOW_ID:&P409_PARENT_WORKFLOW_ID.'
,p_button_condition=>'P409_PARENT_WORKFLOW_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-arrow-left-alt'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99847246926496399)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(99844883425496397)
,p_button_name=>'CANCEL_ACTIVITY_AUDIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99852110110496401)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(99850039775496400)
,p_button_name=>'CANCEL_EDIT_VARIABLE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99856965417496404)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(99856556534496403)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99857394728496404)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(99856556534496403)
,p_button_name=>'SUSPEND'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Suspend'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.is_allowed (',
'    p_instance_id => :P409_WORKFLOW_ID,',
'    p_operation   => apex_workflow.c_workflow$_op_suspend )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-pause-circle u-warning-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99857811452496404)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(99856556534496403)
,p_button_name=>'RESUME'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Resume'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.is_allowed (',
'    p_instance_id => :P409_WORKFLOW_ID,',
'    p_operation   => apex_workflow.c_workflow$_op_resume )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-play-circle u-success-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99858198526496404)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(99856556534496403)
,p_button_name=>'TERMINATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terminate'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.is_allowed (',
'    p_instance_id => :P409_WORKFLOW_ID,',
'    p_operation   => apex_workflow.c_workflow$_op_terminate )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-times u-danger-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99858546623496404)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(99856556534496403)
,p_button_name=>'RETRY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Retry'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.is_allowed (',
'    p_instance_id => :P409_WORKFLOW_ID,',
'    p_operation   => apex_workflow.c_workflow$_op_retry )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-redo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99852495326496402)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(99850039775496400)
,p_button_name=>'UPDATE_VARIABLE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99832475923496390)
,p_name=>'P409_WORKFLOW_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99832903761496390)
,p_name=>'P409_ACTIVITY_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99833283245496390)
,p_name=>'P409_PARENT_WORKFLOW_ID'
,p_item_sequence=>30
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select parent_workflow_id ',
'  from apex_workflows ',
' where workflow_id = :P409_WORKFLOW_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99850505927496401)
,p_name=>'P409_VARIABLE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(99850039775496400)
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99850879260496401)
,p_name=>'P409_VARIABLE_LABEL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(99850039775496400)
,p_prompt=>'Variable'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99851286480496401)
,p_name=>'P409_CURRENT_VALUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(99850039775496400)
,p_prompt=>'Current Value'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99851716526496401)
,p_name=>'P409_NEW_VALUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(99850039775496400)
,p_prompt=>'New Value'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>3
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99858976098496405)
,p_name=>'Activity Audit'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.audit'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99859417123496405)
,p_event_id=>wwv_flow_imp.id(99858976098496405)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(99844883425496397)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99859884690496405)
,p_event_id=>wwv_flow_imp.id(99858976098496405)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P409_ACTIVITY_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-id")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99860370530496405)
,p_event_id=>wwv_flow_imp.id(99858976098496405)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(99844883425496397)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99860884072496405)
,p_name=>'Cancel Activity Audit'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(99847246926496399)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99861273345496405)
,p_event_id=>wwv_flow_imp.id(99860884072496405)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(99844883425496397)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99861785766496405)
,p_name=>'Edit Variable'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.variable'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#VARIABLES'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99862129183496406)
,p_event_id=>wwv_flow_imp.id(99861785766496405)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(99850039775496400)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99862636093496406)
,p_event_id=>wwv_flow_imp.id(99861785766496405)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(99852495326496402)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99863146743496406)
,p_event_id=>wwv_flow_imp.id(99861785766496405)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P409_VARIABLE_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-id")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99863706686496407)
,p_event_id=>wwv_flow_imp.id(99861785766496405)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P409_VARIABLE_LABEL'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-label")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99864188595496407)
,p_event_id=>wwv_flow_imp.id(99861785766496405)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P409_CURRENT_VALUE,P409_NEW_VALUE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-value")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99864624098496407)
,p_event_id=>wwv_flow_imp.id(99861785766496405)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P409_NEW_VALUE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99865157094496407)
,p_name=>'Cancel Edit Variable'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(99852110110496401)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99865605081496407)
,p_event_id=>wwv_flow_imp.id(99865157094496407)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P409_NEW_VALUE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99866072492496407)
,p_event_id=>wwv_flow_imp.id(99865157094496407)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(99850039775496400)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99866533704496408)
,p_name=>'Cancel Dialog'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(99856965417496404)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99866983051496408)
,p_event_id=>wwv_flow_imp.id(99866533704496408)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99867502011496408)
,p_name=>'Disable/Enable Update Button'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P409_NEW_VALUE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.items.P409_NEW_VALUE.value != apex.items.P409_CURRENT_VALUE.value'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99867832949496408)
,p_event_id=>wwv_flow_imp.id(99867502011496408)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(99852495326496402)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99868369373496408)
,p_event_id=>wwv_flow_imp.id(99867502011496408)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(99852495326496402)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99868914828496408)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Variable'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.update_variables (',
'    p_instance_id    => :P409_WORKFLOW_ID,',
'    p_changed_params => apex_workflow.t_workflow_parameters (',
'        1 => apex_workflow.t_workflow_parameter (',
'                static_id    => :P409_VARIABLE_ID,',
'                string_value => :P409_NEW_VALUE ) ) );'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(99852495326496402)
,p_process_success_message=>'Variable updated'
,p_internal_uid=>7801294301323301
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99869245902496409)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'Suspend'
,p_attribute_01=>'SUSPEND'
,p_attribute_04=>'P409_WORKFLOW_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(99857394728496404)
,p_process_success_message=>'Workflow suspended'
,p_internal_uid=>7801625375323302
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99869695137496409)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'Resume'
,p_attribute_01=>'RESUME'
,p_attribute_04=>'P409_WORKFLOW_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(99857811452496404)
,p_process_success_message=>'Workflow resumed'
,p_internal_uid=>7802074610323302
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99870101787496409)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'Terminate'
,p_attribute_01=>'TERMINATE'
,p_attribute_04=>'P409_WORKFLOW_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(99858198526496404)
,p_process_success_message=>'Workflow terminated'
,p_internal_uid=>7802481260323302
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99870513985496409)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'Retry'
,p_attribute_01=>'RETRY'
,p_attribute_04=>'P409_WORKFLOW_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(99858546623496404)
,p_process_success_message=>'Workflow retried'
,p_internal_uid=>7802893458323302
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99870830862496409)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'UPDATE_VARIABLE'
,p_process_when_type=>'REQUEST_NOT_IN_CONDITION'
,p_internal_uid=>7803210335323302
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(99843886888496397)
,p_region_id=>wwv_flow_imp.id(99837513075496394)
,p_position_id=>348722977165395441
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'class="audit" data-id="&ACTIVITY_ID." aria-haspopup="dialog"'
,p_condition_type=>'ITEM_IS_NULL'
,p_condition_expr1=>'INVOKED_WORKFLOW_ID'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(99844392546496397)
,p_region_id=>wwv_flow_imp.id(99837513075496394)
,p_position_id=>348722977165395441
,p_display_sequence=>20
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:409:&SESSION.::&DEBUG.:RP,409:P409_WORKFLOW_ID:&INVOKED_WORKFLOW_ID.'
,p_condition_type=>'ITEM_IS_NOT_NULL'
,p_condition_expr1=>'INVOKED_WORKFLOW_ID'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(99849522539496400)
,p_region_id=>wwv_flow_imp.id(99847627382496399)
,p_position_id=>362316004162771045
,p_display_sequence=>10
,p_template_id=>362316605839802174
,p_label=>'Edit'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'class="variable" data-id="&STATIC_ID!ATTR." data-label="&LABEL!ATTR." data-value="&DISPLAY_VALUE!ATTR." aria-haspopup="dialog"'
,p_button_display_type=>'TEXT'
,p_is_hot=>false
,p_show_as_disabled=>false
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.is_allowed (',
'    p_instance_id => :P409_WORKFLOW_ID,',
'    p_operation   => apex_workflow.c_workflow$_op_update_var )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>false
);
end;
/
prompt --application/pages/page_00500
begin
wwv_flow_imp_page.create_page(
 p_id=>500
,p_name=>'Administration'
,p_alias=>'ADMINISTRATION1'
,p_step_title=>'Administration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(94280443732483505)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(94280170220483504)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101746603860234449)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101747996208234451)
,p_plug_name=>'Column 1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101748422257234451)
,p_plug_name=>'Administration Settings'
,p_parent_plug_id=>wwv_flow_imp.id(101747996208234451)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_location=>null
,p_list_id=>wwv_flow_imp.id(94300678338483549)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(94279434483483503)
,p_landmark_type=>'navigation'
,p_ai_enabled=>false
);
end;
/
prompt --application/pages/page_00501
begin
wwv_flow_imp_page.create_page(
 p_id=>501
,p_name=>'Application Appearance'
,p_alias=>'APPLICATION-APPEARANCE1'
,p_step_title=>'Application Appearance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(94280443732483505)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(94280170220483504)
,p_required_patch=>wwv_flow_imp.id(94279434483483503)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the default color scheme used to display the application.</p>',
'<p>If <strong>Allow End Users to choose Theme Style</strong> is checked, then each end user can select from the available theme styles by clicking the <em>Customize</em> link in the bottom left corner of the Home page.</p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99520894300941920)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101739505978252338)
,p_plug_name=>'Configure Appearance'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_query_num_rows=>15
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99519371497941918)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(99520894300941920)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(99523493263941923)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:500:&SESSION.::&DEBUG.:RP,::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(101744432592252343)
,p_name=>'P501_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(101739505978252338)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Desktop Theme Style'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'from apex_application_theme_styles s,',
'    apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and s.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DESKTOP THEME STYLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_cHeight=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = t.application_id',
'   and s.theme_number   = t.theme_number',
'   and s.application_id = :app_id'))
,p_display_when_type=>'EXISTS'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_restricted_characters=>'WEB_SAFE'
,p_inline_help_text=>'The default Theme Style applies to all users.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99521695543941922)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Theme Style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P501_DESKTOP_THEME_STYLE_ID is not null then',
'    for l_theme in (select theme_number',
'                      from apex_application_themes',
'                     where application_id = :app_id',
'                       and is_current     = ''Yes'')',
'    loop',
'        apex_util.set_current_theme_style (',
'            p_theme_number   => l_theme.theme_number,',
'            p_theme_style_id => :P501_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application appearance settings saved.'
,p_internal_uid=>7454075016768815
);
end;
/
prompt --application/pages/page_00502
begin
wwv_flow_imp_page.create_page(
 p_id=>502
,p_name=>'Reset Data'
,p_alias=>'RESET-DATA1'
,p_step_title=>'Reset Data'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(94280170220483504)
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(102739860525993517)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(102762464906753684)
,p_plug_name=>'Reset Data'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Click the <strong>Reset Data</strong> button to reset data used in this application to its initial defaults.</p>',
'<p>This action is irreversible, so please proceed with caution.</p>'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99526336452960383)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(102739860525993517)
,p_button_name=>'Reset_Data'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset Data'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(99528175737960385)
,p_branch_name=>'go back to administration'
,p_branch_action=>'f?p=&APP_ID.:500:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99527702533960384)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reset Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'       eba_demo_rest_data_pkg.reset_data;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error while resetting the data. Please try again.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(99526336452960383)
,p_process_success_message=>'The sample data used in this application has been reset successfully.'
,p_internal_uid=>7460082006787277
);
end;
/
prompt --application/pages/page_00503
begin
wwv_flow_imp_page.create_page(
 p_id=>503
,p_name=>'Web Credentials Settings'
,p_alias=>'WEB-CREDENTIALS-SETTINGS1'
,p_step_title=>'Web Credentials Settings'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(94280170220483504)
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103093149823516190)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>'<p>The <strong>Cards Layout</strong> page in the <strong>Data Display Options</strong> section, and the <strong>REST Data Source Plugins</strong> page in the <strong>Advanced Features</strong> section both rely on <a title="Movie Database API" href="'
||'https://www.themoviedb.org/documentation/api" target="_blank">The Movie Database (TMDb) API</a>. To run these pages without error, you will need to get your own API key from <a title="Movie Database API" href="https://www.themoviedb.org/documentation'
||'/api" target="_blank">The Movie Database (TMDb) API</a>, then configure the Web Credential using the API Key field below.</p>'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103093222541516191)
,p_plug_name=>'Web Credential'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103169340088129379)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99532604600989345)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(103169340088129379)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(99535321553989346)
,p_branch_name=>'goback'
,p_branch_action=>'f?p=&APP_ID.:&P304_SOURCE.:&SESSION.:&SESSION.:&DEBUG.:&DEBUG.::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(99532604600989345)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100041290752162528)
,p_name=>'P304_SOURCE'
,p_item_sequence=>30
,p_item_default=>'500'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103172849934140147)
,p_name=>'P3_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(103093222541516191)
,p_prompt=>'Credentials Name'
,p_source=>'MovieDb API Key'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103172881949140148)
,p_name=>'P3_API_KEY'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(103093222541516191)
,p_prompt=>'API Key'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>80
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--indicatorAsterisk:t-Form-fieldContainer--xlarge'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99534474080989346)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Web Credentials'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    apex_credential.set_persistent_credentials(',
'        p_credential_static_id => ''moviedb_api_key'',',
'        p_username             => ''api_key'',',
'        p_password             => :P3_API_KEY',
'    );',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'error  while setting Web Credentials , please try again'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(99532604600989345)
,p_process_success_message=>'Web Credentials set successfully'
,p_internal_uid=>7466853553816239
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99534882468989346)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Mark As Provided'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P3_API_KEY is not null then ',
'        apex_app_setting.set_value(''TMDB_APIKEY'', ''YES'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(99532604600989345)
,p_internal_uid=>7467261941816239
);
end;
/
prompt --application/pages/page_00504
begin
wwv_flow_imp_page.create_page(
 p_id=>504
,p_name=>'Network Setup'
,p_alias=>'NETWORK-SETUP1'
,p_step_title=>'Network Setup'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(94280170220483504)
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(100799418520345243)
,p_plug_name=>'Update OData Base URL'
,p_icon_css_classes=>'fa-number-2'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--noIcon:t-Alert--info:t-Alert--accessibleHeading'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br/>',
'<p>Enter the URL of a working OData endpoint returning "Northwind" data</p>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(100799432348345244)
,p_plug_name=>'Update Or Set Proxy Server'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--noIcon:t-Alert--info:t-Alert--accessibleHeading'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'BELOW'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br/>',
'<p>',
'    Use this field to specify a proxy server to be used by the application.',
'    Using a proxy server may be required for REST requests done by the application, for instance when REST Data Sources or the APEX_WEB_SERVICE package is used.',
'</p>',
'',
'<br/>',
'<p>',
'    Example: http://www-proxy.example.com',
'</p>',
''))
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'not apex_application_global.g_cloud'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(105104955293285599)
,p_plug_name=>'Update Remote Server'
,p_icon_css_classes=>'fa-number-1'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--noIcon:t-Alert--info:t-Alert--accessibleHeading'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br/>',
'<p>Enter the remote server Base URL and Schema Alias (follow the guide above to ensure remote server is properly set up)</p>'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(105150503538623895)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(94274508379483476)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(105819974020926794)
,p_plug_name=>'General Guide'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="margin-bottom: 1em; padding: 10px;">',
'  <strong>Remote Server Update Guide:</strong>',
'  <p style="margin: 5px 0;">',
'    1. Enter the base portion of your ORDS URL  into the first field.  ',
'    <em>Example:</em> https://apex.oracle.com/pls/apex/',
'  </p>',
'  <p style="margin: 5px 0;">',
'    2. In the second field, enter the  schema name that appears in the URL path.  ',
'    <em>Example:</em> trainingworkspace or whatever',
'  </p>',
'  <p style="margin: 5px 0;">',
'    3. Click <strong>Save</strong> to save the changes. The application will use this configuration to construct REST endpoints for data retrieval and updates.',
'  </p>',
'</div>',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99539844423010096)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(105150503538623895)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(99541661480010097)
,p_branch_name=>'Go To Page 500'
,p_branch_action=>'f?p=&APP_ID.:500:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100799546219345245)
,p_name=>'P504_ODATA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(100799418520345243)
,p_item_default=>'apex_app_setting.get_value(p_name =>''ODATA_URL'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'OData Endpoint URL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_protection_level=>'S'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Please enter the URL of a valid OData endpoint that provides "Northwind" data</p> </br>',
'Example: <em>https://ODataBaseUrl/version/Northwind/</em>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100799713647345246)
,p_name=>'P504_PROXY_SERVER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(100799432348345244)
,p_prompt=>'Proxy Server'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105105558000285601)
,p_name=>'P504_BASE_URL'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(105104955293285599)
,p_prompt=>'Base URL'
,p_source=>'apex_util.host_url(''APEX_PATH'');'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--indicatorAsterisk:t-Form-fieldContainer--xlarge:t-Form-fieldContainer--boldDisplay'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105108918455285634)
,p_name=>'P504_SCHEMA'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(105104955293285599)
,p_prompt=>'Schema Alias'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lower(path_prefix)',
'    from apex_workspaces',
'   where workspace_id = v(''workspace_id'');'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--indicatorAsterisk:t-Form-fieldContainer--xlarge:t-Form-fieldContainer--boldDisplay'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99540720962010097)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Remote Server'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    ',
'begin ',
'    apex_app_setting.set_value(''REMOTE_SERVER_BASE_URL'', :P504_BASE_URL);',
'    apex_app_setting.set_value(''REMOTE_SERVER_SCHEMA_ALIAS'', :P504_SCHEMA);',
'    apex_app_setting.set_value(''ODATA_URL'', :P504_ODATA);',
'    if :P504_PROXY_SERVER is not null and not apex_application_global.g_cloud then',
'      apex_application_admin.set_proxy_server(',
'         p_application_id => v(''APP_ID''),',
'         p_proxy_server   => :P504_PROXY_SERVER',
'      );',
'    end if;',
'    :REMOTE_SERVER := ''YES'';',
'    apex_app_setting.set_value(''REMOTE_SERVER_INITIALIZED'', ''YES'');',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'error while setting remote server'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(99539844423010096)
,p_process_success_message=>'Remote Server set successfully'
,p_internal_uid=>7473100434836990
);
end;
/
prompt --application/pages/page_00600
begin
wwv_flow_imp_page.create_page(
 p_id=>600
,p_name=>'Help'
,p_alias=>'HELP1'
,p_step_title=>'Help'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_required_patch=>wwv_flow_imp.id(94279328512483503)
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(105130608397418354)
,p_plug_name=>'Help Container'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(105130773792418355)
,p_plug_name=>'About this application'
,p_parent_plug_id=>wwv_flow_imp.id(105130608397418354)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>',
'  <h2>About This Application</h2>',
'  <p>',
'   This application demonstrates seamless integration of external REST services with Oracle APEX. It leverages diverse REST data sources, including ORDS, OData, simple HTTP, and custom plugins. Advanced PL/SQL processes handle data transformation, va'
||'lidation, and error management. Dynamic interactive reporting and Oracle JET visualizations display insights. The app synchronizes external data into local tables to ensure robust performance. Overall, it exemplifies a modern, scalable approach to in'
||'tegrating REST services within Oracle APEX.',
'  </p>',
'</div>',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(105130883971418356)
,p_plug_name=>'Quick Start'
,p_parent_plug_id=>wwv_flow_imp.id(105130608397418354)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<H2>Getting Started</h2>',
'<p>Make sure that the APEX engine can connect to the APEX server via HTTP. A <i>Network ACL</i> is needed. Have a look into the APEX Installation Guide - chapter "Enabling Network Services in Oracle Database 11g or Later" for more information.</p>',
'<p>Run the application as a developer; at the bottom of the page will be buttons for viewing the page in the APEX Application Builder. Click on the "Edit Page X" button to see how the pages are defined.</p>',
'',
'<p>If you have questions, ask them on the <a href="https://forums.oracle.com/ords/apexds/domain/dev-community/category/apex" target="_blank">Oracle APEX Forum</a>.</p>'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(105130936574418357)
,p_plug_name=>'Features'
,p_parent_plug_id=>wwv_flow_imp.id(105130608397418354)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2>Features</h2>',
'<p>',
'    <ul>',
'        <li><b>Multiple REST Data Source Types</b> Simple HTTP, ORDS, OData, Custom Plugin</li>',
'        <li><b>Data Profiles</b> Mapping JSON responses to columns & Handling nested JSON responses </li>',
'        <li><b>Data Synchronization</b> Importing and synchronizing external REST data into local Oracle tables </li>',
'        <li><b>Advanced PL/SQL Processing and Business Logic</b> Writing custom PL/SQL code for complex operations beyond simple declarative data binding </li>',
'        <li><b>Data Display Options</b> Interactive Reporting and Visualization</li>',
'        <li><b>Error Handling and Debugging </b>Robust Error Handling in PL/SQL,User-Friendly Notifications & Debug Mode Activation</li>',
'  </ul>',
'</p>'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(105131008687418358)
,p_name=>'Application information'
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'t-HeroRegion--featured'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_new_grid_row=>false
,p_grid_column_span=>3
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select aa.version app_version,',
'       to_char(aa.pages,''999G999G990'') pages,',
'       ''Oracle'' vendor',
'  from apex_applications aa',
' where aa.application_id = :APP_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515439059797523
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99560914552142814)
,p_query_column_id=>1
,p_column_alias=>'APP_VERSION'
,p_column_display_sequence=>10
,p_column_heading=>'App Version'
,p_use_as_row_header=>'Y'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99560097405142814)
,p_query_column_id=>2
,p_column_alias=>'PAGES'
,p_column_display_sequence=>20
,p_column_heading=>'Pages'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99560432640142814)
,p_query_column_id=>3
,p_column_alias=>'VENDOR'
,p_column_display_sequence=>30
,p_column_heading=>'Vendor'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Sample REST Services - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(94281027401483510)
,p_plug_name=>'Sample REST Services'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(94282725751483517)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(94281027401483510)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94281596764483515)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(94281027401483510)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94281985683483516)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(94281027401483510)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94282360808483516)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(94281027401483510)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(94284937806483519)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2217317279310412
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(94285432312483519)
,p_page_process_id=>wwv_flow_imp.id(94284937806483519)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(94286009845483519)
,p_page_process_id=>wwv_flow_imp.id(94284937806483519)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(94283040409483517)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2215419882310410
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(94283570573483518)
,p_page_process_id=>wwv_flow_imp.id(94283040409483517)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(94284075217483519)
,p_page_process_id=>wwv_flow_imp.id(94283040409483517)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(94284579860483519)
,p_page_process_id=>wwv_flow_imp.id(94283040409483517)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(94286894731483520)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2219274204310413
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(94286427480483519)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>2218806953310412
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(94382806445719195)
,p_welcome_message=>'This application installer will guide you through the process of creating your database objects and seed data.'
,p_configuration_message=>'You can configure the following attributes of your application.'
,p_build_options_message=>'You can choose to include the following build options.'
,p_validation_message=>'The following validations will be performed to ensure your system is compatible with this application.'
,p_install_message=>'Please confirm that you would like to install this application''s supporting objects.'
,p_upgrade_message=>'The application installer has detected that this application''s supporting objects were previously installed.  This wizard will guide you through the process of upgrading these supporting objects.'
,p_upgrade_confirm_message=>'Please confirm that you would like to install this application''s supporting objects.'
,p_upgrade_success_message=>'Your application''s supporting objects have been installed.'
,p_upgrade_failure_message=>'Installation of database objects and seed data has failed.'
,p_deinstall_success_message=>'Deinstallation complete.'
,p_deinstall_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- ===========================================================================',
'-- section: remove ORDS REST modules',
'-- ===========================================================================',
'',
'begin',
'    ords.drop_rest_for_object(p_object => ''EBA_DEMO_REST_TASKS'');',
'    ords.drop_rest_for_object(p_object => ''EBA_DEMO_REST_ORDERS'');',
'    ords.drop_rest_for_object(p_object => ''EBA_DEMO_REST_DEPARTMENT'');',
'    ords.drop_rest_for_object(p_object => ''EBA_DEMO_REST_EMPLOYEE'');',
'    ords.drop_rest_for_object(p_object => ''EBA_DEMO_REST_STORES'');',
'    ords.delete_module       (p_module_name => ''eba.rest.emp'');',
'    ords.delete_module       (p_module_name => ''eba.rest.orders'');',
'end;',
'/',
'  ',
'-- ===========================================================================',
'-- section: remove PL/SQL packages',
'-- ===========================================================================',
'',
'drop package eba_demo_rest_data_pkg;',
'drop package eba_demo_rest_etl_pkg;',
'',
'-- ===========================================================================',
'-- section: remove views',
'-- ===========================================================================',
'',
'drop view customer_order_products;',
'drop view product_orders;',
'drop view product_reviews;',
'drop view store_orders;',
'drop view store_orders_status;',
'',
'-- ===========================================================================',
'-- section: remove tables',
'-- ===========================================================================',
'',
'drop table eba_demo_rest_producttable           cascade constraints purge;',
'drop table eba_demo_rest_order_workflow         cascade constraints purge;',
'drop table eba_demo_rest_purchaseorders         cascade constraints purge;',
'drop table eba_demo_rest_stores                 cascade constraints purge;',
'drop table eba_demo_rest_assignees              cascade constraints purge;',
'drop table eba_demo_rest_customers              cascade constraints purge;',
'drop table eba_demo_rest_department             cascade constraints purge;',
'drop table eba_demo_rest_dept_local             cascade constraints purge;',
'drop table eba_demo_rest_employee               cascade constraints purge;',
'drop table eba_demo_rest_employeecustom         cascade constraints purge;',
'drop table eba_demo_rest_orderitems             cascade constraints purge;',
'drop table eba_demo_rest_orders                 cascade constraints purge;',
'drop table eba_demo_rest_storeordersummary      cascade constraints purge;',
'drop table eba_demo_rest_tasks                  cascade constraints purge;',
'',
'',
'',
'',
'-- ===========================================================================',
'-- section: remove sequence',
'-- ===========================================================================',
'',
'drop sequence dept_seq;',
'drop sequence eba_demo_emp_seq;',
'',
''))
,p_required_free_kb=>100
,p_required_sys_privs=>'CREATE PROCEDURE:CREATE TABLE:CREATE TRIGGER:CREATE VIEW'
);
end;
/
prompt --application/deployment/install/install_sequences_objects_definition
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(98535054195994084)
,p_install_id=>wwv_flow_imp.id(94382806445719195)
,p_name=>'Sequences Objects Definition'
,p_sequence=>49
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- ===========================================================================',
'--  Sequence Definitions',
'-- ===========================================================================',
'',
'begin',
'    execute immediate ''',
'        create sequence dept_seq',
'            minvalue 1',
'            maxvalue 9999999999999999999999999999',
'            increment by 1',
'            start with 50',
'            cache 20',
'            noorder',
'            nocycle',
'            nokeep',
'            noscale',
'            global',
'    '';',
'exception',
'    when others then',
'        if sqlcode = -955 then',
'            null; ',
'        else',
'            raise;',
'        end if;',
'end;',
'/',
'',
'begin',
'    execute immediate ''',
'        create sequence eba_demo_emp_seq',
'            minvalue 1',
'            maxvalue 9999999999999999999999999999',
'            increment by 1',
'            start with 21',
'            cache 20',
'            noorder',
'            nocycle',
'            nokeep',
'            noscale',
'            global',
'    '';',
'exception',
'    when others then',
'        if sqlcode = -955 then',
'            null; ',
'        else',
'            raise;',
'        end if;',
'end;',
'/',
''))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(98535168963994086)
,p_script_id=>wwv_flow_imp.id(98535054195994084)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'DEPT_SEQ'
);
end;
/
prompt --application/deployment/install/install_table_definition
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(98571459512689208)
,p_install_id=>wwv_flow_imp.id(94382806445719195)
,p_name=>'Table Definition'
,p_sequence=>50
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- ===========================================================================',
'-- table definitions',
'-- ===========================================================================',
'',
'create table eba_demo_rest_producttable (',
'    product_id         number             not null enable,',
'    product_name       varchar2(255)      not null enable,',
'    unit_price         number(10,2),',
'    product_details    blob,',
'    product_image      blob,',
'    image_mime_type    varchar2(512),',
'    image_filename     varchar2(512),',
'    image_charset      varchar2(512),',
'    image_last_updated date,',
'    constraint eba_demo_rest_producttable_pk',
'        primary key (product_id)',
'        using index enable,',
'    constraint eba_demo_rest_product_json_c',
'        check (product_details is json) enable',
');',
'',
'create table eba_demo_rest_order_workflow (',
'    id               number generated always as identity,',
'    user_id          varchar2(100),',
'    product_name     varchar2(255),',
'    product_details  clob,',
'    constraint eba_demo_rest_order_workflow_pk',
'        primary key (id)',
');',
'',
'create table eba_demo_rest_purchaseorders (',
'    id               number not null enable,',
'    po               clob,',
'    constraint eba_demo_rest_purchaseorders_pk ',
'        primary key (id) ',
');',
'',
'create table eba_demo_rest_stores (',
'    store_id                number           not null enable,',
'    store_name              varchar2(255)    not null enable,',
'    web_address             varchar2(100),',
'    physical_address        varchar2(512),',
'    latitude                number,',
'    longitude               number,',
'    logo                    blob,',
'    logo_mime_type          varchar2(512),',
'    logo_filename           varchar2(512),',
'    logo_charset            varchar2(512),',
'    logo_last_updated       date,',
'    constraint eba_demo_rest_stores_pk',
'        primary key (store_id)',
'        using index enable,',
'    constraint eba_demo_rest_store_name_u',
'        unique (store_name)',
'        using index enable,',
'    constraint eba_demo_rest_store_at_least_one_address_c',
'        check (coalesce(web_address, physical_address) is not null) enable',
');',
'',
'create table eba_demo_rest_assignees (',
'    id           number default on null to_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') not null enable,',
'    full_name    varchar2(255 char)                not null enable,',
'    email        varchar2(255 char),',
'    phone_number number,',
'    created      date                             not null enable,',
'    created_by   varchar2(255 char)                 ,',
'    updated      date                             not null enable,',
'    updated_by   varchar2(255 char)                 ,',
'    constraint eba_demo_rest_assignees_id_pk',
'        primary key (id)',
'        using index enable',
');',
'',
'create table eba_demo_rest_customers (',
'    customer_id   number         not null enable,',
'    full_name     varchar2(255)  not null enable,',
'    email_address varchar2(255)  not null enable,',
'    constraint eba_demo_rest_customers_pk',
'        primary key (customer_id)',
'        using index enable,',
'    constraint eba_demo_rest_customers_email_u',
'        unique (email_address)',
'        using index enable',
');',
'',
'create table eba_demo_rest_department (',
'    deptno                   number,',
'    dname                    varchar2(4000),',
'    loc                      varchar2(4000),',
'    constraint eba_demo_rest_department_pk',
'        primary key (deptno)',
'        using index enable',
');',
'',
'create table eba_demo_rest_dept_local (',
'    deptno number,',
'    dname  varchar2(4000),',
'    loc    varchar2(4000),',
'    primary key (deptno)',
'        using index enable',
');',
'',
'create table eba_demo_rest_employee (',
'    empno                      number,',
'    ename                      varchar2(4000),',
'    job                        varchar2(4000),',
'    mgr                        number,',
'    hiredate                   date,',
'    sal                        number,',
'    comm                       number,',
'    deptno                     number,',
'   ',
'    constraint eba_demo_rest_employee_pk',
'        primary key (empno)',
'        using index enable',
');',
'',
'create table eba_demo_rest_employeecustom (',
'    deptno            number,',
'    empno             number,',
'    emp_name          varchar2(50),',
'    role_desc         varchar2(50),',
'    hourly_rate       number(6,2),',
'    bonus_eligibility varchar2(3),',
'',
'    constraint eba_demo_rest_employeecustom_pk',
'        primary key (empno)',
'        using index enable',
');',
'',
'create table eba_demo_rest_orderitems (',
'    order_id     number           not null enable,',
'    line_item_id number           not null enable,',
'    product_id   number           not null,',
'    unit_price   number(10,2)     not null enable,',
'    quantity     number           not null enable,',
'    constraint eba_demo_rest_orderitems_pk',
'        primary key (order_id, line_item_id)',
'        using index enable,',
'    constraint eba_demo_rest_orderitems_product_u',
'        unique (product_id, order_id)',
'        using index enable',
');',
'',
'create table eba_demo_rest_orders (',
'    order_id       number             not null enable,',
'    order_datetime timestamp(6)       not null enable,',
'    customer_id    number             not null enable,',
'    order_status   varchar2(10)       not null,',
'    store_id       number             not null enable,',
'    constraint eba_demo_rest_orders_pk',
'        primary key (order_id)',
'        using index enable,',
'    constraint eba_demo_rest_order_status_c',
'        check (order_status in (''CANCELLED'',''COMPLETE'',''OPEN'',''PAID'',''REFUNDED'',''SHIPPED'')) enable',
');',
'',
'create table eba_demo_rest_storeordersummary (',
'    store_id            number,',
'    store_name          varchar2(255),',
'    total_orders        number,',
'    last_order_datetime date,',
'    load_timestamp      date default sysdate,',
'',
'    constraint eba_demo_rest_storeordersummary_pk',
'        primary key (store_id)',
'        using index enable',
');',
'',
'create table eba_demo_rest_tasks (',
'    id           number             not null enable,',
'    project      varchar2(30)       not null enable,',
'    task_name    varchar2(255),',
'    start_date   date               not null enable,',
'    end_date     date,',
'    status       varchar2(30)       not null enable,',
'    assigned_to  varchar2(30),',
'    cost         number,',
'    budget       number,',
'    created      timestamp(6) with time zone not null enable,',
'    created_by   varchar2(255)       ,',
'    updated      timestamp(6) with time zone not null enable,',
'    updated_by   varchar2(255)       ,',
'    constraint eba_demo_rest_tasks_pk',
'        primary key (id)',
'        using index enable,',
'    constraint eba_demo_rest_tasks_uk',
'        unique (project, task_name)',
'        using index enable',
');',
'',
'',
'',
'-- ===========================================================================',
'--  indexes & constraints',
'-- ===========================================================================',
'',
'create index eba_demo_rest_customers_name_idx',
'    on eba_demo_rest_customers (full_name);',
'',
'create index eba_demo_rest_orders_customer_idx',
'    on eba_demo_rest_orders (customer_id);',
'',
'create index eba_demo_rest_orders_store_idx',
'    on eba_demo_rest_orders (store_id);',
'create index eba_demo_rest_orderitems_productid_idx',
'    on eba_demo_rest_orderitems (product_id);',
'',
'',
'',
'alter table eba_demo_rest_orderitems',
'    add constraint eba_demo_rest_orderitems_order_id_fk',
'        foreign key (order_id)',
'        references eba_demo_rest_orders (order_id)',
'        on delete cascade enable;',
'',
'alter table eba_demo_rest_orderitems',
'    add constraint eba_demo_rest_orderitems_product_id_fk',
'        foreign key (product_id)',
'        references eba_demo_rest_producttable (product_id)',
'        on delete cascade enable;',
'',
'alter table eba_demo_rest_orders',
'    add constraint eba_demo_rest_orders_customer_id_fk',
'        foreign key (customer_id)',
'        references eba_demo_rest_customers (customer_id)',
'        on delete cascade enable;',
'',
'alter table eba_demo_rest_orders',
'    add constraint eba_demo_rest_orders_store_id_fk',
'        foreign key (store_id)',
'        references eba_demo_rest_stores (store_id)',
'        on delete cascade enable;',
'',
'',
'',
'',
'',
'',
'-- ===========================================================================',
'--  view definitions',
'-- ===========================================================================',
'',
'create or replace force editionable view customer_order_products (',
'    order_id,',
'    order_datetime,',
'    order_status,',
'    customer_id,',
'    email_address,',
'    full_name,',
'    order_total,',
'    items',
') as',
'    select',
'        o.order_id',
'      , o.order_datetime',
'      , o.order_status',
'      , c.customer_id',
'      , c.email_address',
'      , c.full_name',
'      , sum(oi.quantity * oi.unit_price) order_total',
'      , listagg(p.product_name, '', '' on overflow truncate ''...'' with count)',
'          within group (order by oi.line_item_id) items',
'    from eba_demo_rest_orders o',
'    join eba_demo_rest_orderitems oi',
'      on o.order_id = oi.order_id',
'    join eba_demo_rest_customers c',
'      on o.customer_id = c.customer_id',
'    join eba_demo_rest_producttable p',
'      on oi.product_id = p.product_id',
'    group by',
'        o.order_id',
'      , o.order_datetime',
'      , o.order_status',
'      , c.customer_id',
'      , c.email_address',
'      , c.full_name',
';',
'',
'create or replace force editionable view product_orders (',
'    product_name,',
'    order_status,',
'    total_sales,',
'    order_count',
') as',
'    select',
'        p.product_name',
'      , o.order_status',
'      , sum(oi.quantity * oi.unit_price) total_sales',
'      , count(*) order_count',
'    from eba_demo_rest_orders o',
'    join eba_demo_rest_orderitems oi',
'      on o.order_id = oi.order_id',
'    join eba_demo_rest_customers c',
'      on o.customer_id = c.customer_id',
'    join eba_demo_rest_producttable p',
'      on oi.product_id = p.product_id',
'    group by',
'        p.product_name',
'      , o.order_status',
';',
'',
'create or replace force editionable view product_reviews (',
'    product_name,',
'    rating,',
'    avg_rating,',
'    review',
') as',
'    select',
'        p.product_name',
'      , r.rating',
'      , round(avg(r.rating) over (partition by product_name), 2) avg_rating',
'      , r.review',
'    from eba_demo_rest_producttable p',
'    , json_table(',
'        p.product_details, ''$''',
'        columns nested path ''$.reviews[*]''',
'            columns (',
'                rating number path ''$.rating'',',
'                review varchar2(4000) path ''$.review''',
'            )',
'      ) r',
';',
'',
'create or replace force editionable view store_orders (',
'    total,',
'    store_name,',
'    address,',
'    latitude,',
'    longitude,',
'    order_status,',
'    order_count,',
'    total_sales',
') as',
'    select',
'        case grouping_id(store_name, order_status)',
'            when 1 then ''STORE TOTAL''',
'            when 2 then ''STATUS TOTAL''',
'            when 3 then ''GRAND TOTAL''',
'        end total',
'      , s.store_name',
'      , coalesce(s.web_address, s.physical_address) address',
'      , s.latitude',
'      , s.longitude',
'      , o.order_status',
'      , count(distinct o.order_id) order_count',
'      , sum(oi.quantity * oi.unit_price) total_sales',
'    from eba_demo_rest_stores s',
'    join eba_demo_rest_orders o',
'      on s.store_id = o.store_id',
'    join eba_demo_rest_orderitems oi',
'      on o.order_id = oi.order_id',
'    group by ',
'        grouping sets (',
'            (s.store_name, coalesce(s.web_address, s.physical_address), s.latitude, s.longitude),',
'            (s.store_name, coalesce(s.web_address, s.physical_address), s.latitude, s.longitude, o.order_status),',
'            o.order_status,',
'            ()',
'        )',
';',
'',
'create or replace force editionable view store_orders_status (',
'    store_name,',
'    address,',
'    latitude,',
'    longitude,',
'    order_status,',
'    order_count,',
'    total_sales',
') as',
'    select',
'        s.store_name',
'      , coalesce(s.web_address, s.physical_address) address',
'      , s.latitude',
'      , s.longitude',
'      , o.order_status',
'      , count(distinct o.order_id) order_count',
'      , sum(oi.quantity * oi.unit_price) total_sales',
'    from eba_demo_rest_stores s',
'    join eba_demo_rest_orders o',
'      on s.store_id = o.store_id',
'    join eba_demo_rest_orderitems oi',
'      on o.order_id = oi.order_id',
'    group by',
'        s.store_name',
'      , coalesce(s.web_address, s.physical_address)',
'      , s.latitude',
'      , s.longitude',
'      , o.order_status',
';',
'',
'',
'-- ===========================================================================',
'--  triggers',
'-- ===========================================================================',
'',
'create or replace trigger eba_demo_rest_employee_t',
'before insert on eba_demo_rest_employee',
'for each row',
'begin',
'    if :new.empno is null then',
'        select eba_demo_emp_seq.nextval into :new.empno from sys.dual;',
'    end if;',
'end;'))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(98571549692689208)
,p_script_id=>wwv_flow_imp.id(98571459512689208)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'EBA_DEMO_REST_ASSIGNEES'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(98571784955689209)
,p_script_id=>wwv_flow_imp.id(98571459512689208)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'EBA_DEMO_REST_CUSTOMERS'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(98571954211689209)
,p_script_id=>wwv_flow_imp.id(98571459512689208)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'EBA_DEMO_REST_DEPARTMENT'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(98572219961689209)
,p_script_id=>wwv_flow_imp.id(98571459512689208)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'EBA_DEMO_REST_DEPT_LOCAL'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(98572407575689209)
,p_script_id=>wwv_flow_imp.id(98571459512689208)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'EBA_DEMO_REST_EMPLOYEE'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(98572612565689209)
,p_script_id=>wwv_flow_imp.id(98571459512689208)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'EBA_DEMO_REST_EMPLOYEECUSTOM'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(98572753200689209)
,p_script_id=>wwv_flow_imp.id(98571459512689208)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'EBA_DEMO_REST_ORDERITEMS'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(98572971952689209)
,p_script_id=>wwv_flow_imp.id(98571459512689208)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'EBA_DEMO_REST_ORDERS'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(98573127698689209)
,p_script_id=>wwv_flow_imp.id(98571459512689208)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'EBA_DEMO_REST_PRODUCTTABLE'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(98573409768689209)
,p_script_id=>wwv_flow_imp.id(98571459512689208)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'EBA_DEMO_REST_PURCHASEORDERS'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(98573814004689209)
,p_script_id=>wwv_flow_imp.id(98571459512689208)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'EBA_DEMO_REST_STOREORDERSUMMARY'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(98573926035689209)
,p_script_id=>wwv_flow_imp.id(98571459512689208)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'EBA_DEMO_REST_STORES'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(98574183217689209)
,p_script_id=>wwv_flow_imp.id(98571459512689208)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'EBA_DEMO_REST_TASKS'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(98574364560689209)
,p_script_id=>wwv_flow_imp.id(98571459512689208)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'EBA_DEMO_REST_TMDBCREDS'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(98574537417689209)
,p_script_id=>wwv_flow_imp.id(98571459512689208)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'EBA_DEMO_REST_TODOS'
);
end;
/
prompt --application/deployment/install/install_ords_definition
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(97677868630390769)
,p_install_id=>wwv_flow_imp.id(94382806445719195)
,p_name=>'ORDS Definition'
,p_sequence=>100
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- =========================================================================== ',
'-- RESTful Service Definitions ',
'-- ===========================================================================',
'',
'begin',
'  ords.enable_schema(',
'      p_enabled              => true,',
'      p_url_mapping_type     => ''BASE_PATH'',',
'      p_url_mapping_pattern  => :APP_USER,',
'      p_auto_rest_auth       => false',
'    );',
'',
'  ords.define_module(',
'      p_module_name          => ''eba.rest.emp'',',
'      p_base_path            => ''/data/'',',
'      p_items_per_page       => 25,',
'      p_status               => ''PUBLISHED'',',
'      p_comments             => null',
'    );',
'',
'  ords.define_template(',
'      p_module_name          => ''eba.rest.emp'',',
'      p_pattern              => ''emp'',',
'      p_priority             => 0,',
'      p_etag_type            => ''HASH'',',
'      p_etag_query           => null,',
'      p_comments             => null',
'    );',
'',
'  ords.define_handler(',
'      p_module_name          => ''eba.rest.emp'',',
'      p_pattern              => ''emp'',',
'      p_method               => ''GET'',',
'      p_source_type          => ''json/collection'',',
'      p_mimes_allowed        => null,',
'      p_comments             => null,',
'      p_source               => ',
'        ''select * from  eba_demo_rest_employee''',
'    );',
'',
'  ords.define_template(',
'      p_module_name          => ''eba.rest.emp'',',
'      p_pattern              => ''emp/:id'',',
'      p_priority             => 0,',
'      p_etag_type            => ''HASH'',',
'      p_etag_query           => null,',
'      p_comments             => null',
'    );',
'',
'  ords.define_handler(',
'      p_module_name          => ''eba.rest.emp'',',
'      p_pattern              => ''emp/:id'',',
'      p_method               => ''PUT'',',
'      p_source_type          => ''plsql/block'',',
'      p_mimes_allowed        => ''application/json'',',
'      p_comments             => null,',
'      p_source               => ',
'            ''declare',
'                current_salary  eba_demo_rest_employee.sal%type;',
'                dept_name       eba_demo_rest_department.dname%type;',
'            begin',
'                select',
'                    e.sal,',
'                    d.dname',
'                into',
'                    current_salary,',
'                    dept_name',
'                from',
'                    eba_demo_rest_employee e',
'                    join eba_demo_rest_department d',
'                        on e.deptno = d.deptno',
'                where',
'                    e.empno = :id;',
'',
'                if :sal < 0 then',
'                    htp.p(',
'                        ''''{"status":400,"message":"New salary must be positive value."}''''',
'                    );',
'                    return;',
'                end if;',
'',
'                if current_salary >= 6000 then',
'                    htp.p(',
'                        ''''{"status":400,"message":"No Update: Employee with salary.''''',
'                        || current_salary',
'                        || '''' is not authorized for a raise."}''''',
'                    );',
'                    return;',
'                end if;',
'',
'                if upper(dept_name) = ''''RESEARCH'''' then',
'                    htp.p(',
'                        ''''{"status":400,"message":"No Update: Employees in research department are not eligible for a raise."}''''',
'                    );',
'                    return;',
'                end if;',
'',
'                update',
'                    eba_demo_rest_employee',
'                set',
'                    sal = :sal',
'                where',
'                    empno = :id;',
'',
'                commit;',
'',
'                htp.p(',
'                    ''''{"status":200,"location":''''',
'                    || :id',
'                    || '''',"message":"Salary updated successfully."}''''',
'                );',
'            exception',
'                when no_data_found then',
'                    htp.p(',
'                        ''''{"status":404,"message":"Employee not found."}''''',
'                    );',
'                when others then',
'                    rollback;',
'                    htp.p(',
'                        ''''{"status":400,"message":"''''',
'                        || sys.htf.escape_sc(sqlerrm)',
'                        || ''''"}''''',
'                    );',
'            end;',
'            '');',
'',
'  ords.define_parameter(',
'      p_module_name          => ''eba.rest.emp'',',
'      p_pattern              => ''emp/:id'',',
'      p_method               => ''PUT'',',
'      p_name                 => ''id'',',
'      p_bind_variable_name   => ''id'',',
'      p_source_type          => ''URI'',',
'      p_param_type           => ''INT'',',
'      p_access_method        => ''IN'',',
'      p_comments             => null',
'    );',
'',
'  ords.define_parameter(',
'      p_module_name          => ''eba.rest.emp'',',
'      p_pattern              => ''emp/:id'',',
'      p_method               => ''PUT'',',
'      p_name                 => ''res'',',
'      p_bind_variable_name   => ''res'',',
'      p_source_type          => ''RESPONSE'',',
'      p_param_type           => ''STRING'',',
'      p_access_method        => ''OUT'',',
'      p_comments             => null',
'    );',
'',
'  ords.define_handler(',
'      p_module_name          => ''eba.rest.emp'',',
'      p_pattern              => ''emp/:id'',',
'      p_method               => ''GET'',',
'      p_source_type          => ''json/collection'',',
'      p_mimes_allowed        => null,',
'      p_comments             => null,',
'      p_source               => ',
'        ''select * ',
'            from eba_demo_rest_employee ''',
'    );',
'',
'  ords.define_parameter(',
'      p_module_name          => ''eba.rest.emp'',',
'      p_pattern              => ''emp/:id'',',
'      p_method               => ''GET'',',
'      p_name                 => ''id'',',
'      p_bind_variable_name   => ''id'',',
'      p_source_type          => ''URI'',',
'      p_param_type           => ''INT'',',
'      p_access_method        => ''IN'',',
'      p_comments             => null',
'    );',
'',
'  ords.define_template(',
'      p_module_name          => ''eba.rest.emp'',',
'      p_pattern              => ''Pagination'',',
'      p_priority             => 0,',
'      p_etag_type            => ''HASH'',',
'      p_etag_query           => null,',
'      p_comments             => null',
'    );',
'',
'  ords.define_handler(',
'      p_module_name          => ''eba.rest.emp'',',
'      p_pattern              => ''Pagination'',',
'      p_method               => ''GET'',',
'      p_source_type          => ''json/collection'',',
'      p_mimes_allowed        => null,',
'      p_comments             => null,',
'      p_source               => ',
'            ''select',
'                level         as id,    ',
'                case ora_hash(level, 3) + 1',
'                    when 1 then ''''HR''''',
'                    when 2 then ''''SALES''''',
'                    when 3 then ''''DEVELOPMENT''''',
'                    when 4 then ''''QA''''',
'                end           as dept,',
'                case ora_hash(level, 9) + 1',
'                    when 1 then 1500',
'                    when 2 then 2600',
'                    when 3 then 500',
'                    else 2000',
'                end           as sal,',
'                level         as rnum,',
'                round(dbms_random.value(100, 500), 0) as bonus,',
'                case mod(level, 5)',
'                    when 0 then ''''Alvaro''''',
'                    when 1 then ''''Morata''''',
'                    when 2 then ''''Junior''''',
'                    when 3 then ''''Pathe''''',
'                    when 4 then ''''Antonyo''''',
'                end           as name,',
'                case mod(level, 3)',
'                    when 0 then ''''Active''''',
'                    when 1 then ''''On Leave''''',
'                    when 2 then ''''Retired''''',
'                end           as status',
'             from sys.dual connect by level < 1000',
'            ''',
'    );',
'',
'  ords.define_module(',
'      p_module_name          => ''eba.rest.orders'',',
'      p_base_path            => ''/orders/'',',
'      p_items_per_page       => 25,',
'      p_status               => ''PUBLISHED'',',
'      p_comments             => null',
'    );',
'',
'  ords.define_template(',
'      p_module_name          => ''eba.rest.orders'',',
'      p_pattern              => ''purchaseorders/'',',
'      p_priority             => 0,',
'      p_etag_type            => ''HASH'',',
'      p_etag_query           => null,',
'      p_comments             => null',
'    );',
'',
'  ords.define_handler(',
'      p_module_name          => ''eba.rest.orders'',',
'      p_pattern              => ''purchaseorders/'',',
'      p_method               => ''GET'',',
'      p_source_type          => ''json/collection'',',
'      p_mimes_allowed        => null,',
'      p_comments             => null,',
'      p_source               => ',
'        ''select po ',
'            as "{}po" ',
'           from eba_demo_rest_purchaseorders ''',
'    );',
'',
'  ords.define_template(',
'      p_module_name          => ''eba.rest.orders'',',
'      p_pattern              => ''product/:id'',',
'      p_priority             => 0,',
'      p_etag_type            => ''HASH'',',
'      p_etag_query           => null,',
'      p_comments             => null',
'    );',
'',
'  ords.define_handler(',
'      p_module_name          => ''eba.rest.orders'',',
'      p_pattern              => ''product/:id'',',
'      p_method               => ''GET'',',
'      p_source_type          => ''json/item'',',
'      p_mimes_allowed        => null,',
'      p_comments             => null,',
'      p_source               => ',
'        ''select * ',
'            from eba_demo_rest_producttable ',
'            where product_id = :id',
'        ''',
'    );',
'',
'  ords.define_parameter(',
'      p_module_name          => ''eba.rest.orders'',',
'      p_pattern              => ''product/:id'',',
'      p_method               => ''GET'',',
'      p_name                 => ''id'',',
'      p_bind_variable_name   => ''id'',',
'      p_source_type          => ''URI'',',
'      p_param_type           => ''INT'',',
'      p_access_method        => ''IN'',',
'      p_comments             => null',
'    );',
'',
'  ords.define_template(',
'      p_module_name          => ''eba.rest.orders'',',
'      p_pattern              => ''product_post'',',
'      p_priority             => 0,',
'      p_etag_type            => ''HASH'',',
'      p_etag_query           => null,',
'      p_comments             => null',
'    );',
'',
'  ords.define_handler(',
'      p_module_name          => ''eba.rest.orders'',',
'      p_pattern              => ''product_post'',',
'      p_method               => ''POST'',',
'      p_source_type          => ''plsql/block'',',
'      p_mimes_allowed        => ''application/json'',',
'      p_comments             => null,',
'      p_source               => ',
'        ''insert into eba_demo_rest_order_workflow (',
'            user_id,',
'            product_name,',
'            product_details',
'        ) values (',
'            :USER_ID,',
'            :PRODUCT_NAME,',
'            :PRODUCT_DETAILS',
'        )',
'        ''',
'    );',
'',
'  ords.define_handler(',
'      p_module_name          => ''eba.rest.orders'',',
'      p_pattern              => ''product_post'',',
'      p_method               => ''GET'',',
'      p_source_type          => ''json/item'',',
'      p_mimes_allowed        => null,',
'      p_comments             => null,',
'      p_source               => ',
'        ''select * ',
'            from eba_demo_rest_order_workflow',
'        ''',
'    );',
'',
'  ords_metadata.ords.enable_object(',
'      p_enabled              => true, ',
'      p_object               => ''EBA_DEMO_REST_EMPLOYEE'',',
'      p_object_type          => ''TABLE'',',
'      p_object_alias         => ''employee'',',
'      p_auto_rest_auth       => false',
'    );',
'',
'  ords_metadata.ords.enable_object(',
'      p_enabled              => true, ',
'      p_object               => ''EBA_DEMO_REST_ORDERS'',',
'      p_object_type          => ''TABLE'',',
'      p_object_alias         => ''orders'',',
'      p_auto_rest_auth       => false',
'    );',
'',
'  ords_metadata.ords.enable_object(',
'      p_enabled              => true, ',
'      p_object               => ''EBA_DEMO_REST_TASKS'',',
'      p_object_type          => ''TABLE'',',
'      p_object_alias         => ''tasks'',',
'      p_auto_rest_auth       => false',
'    );',
'',
'  ords_metadata.ords.enable_object(',
'      p_enabled              => true, ',
'      p_object               => ''EBA_DEMO_REST_DEPARTMENT'',',
'      p_object_type          => ''TABLE'',',
'      p_object_alias         => ''departments'',',
'      p_auto_rest_auth       => false',
'    );',
'',
'  ords_metadata.ords.enable_object(',
'      p_enabled              => true, ',
'      p_object               => ''EBA_DEMO_REST_STORES'',',
'      p_object_type          => ''TABLE'',',
'      p_object_alias         => ''stores'',',
'      p_auto_rest_auth       => false',
'    );',
'',
'  commit;',
'end;',
''))
);
end;
/
prompt --application/deployment/install/install_data_installation
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(101142335494412475)
,p_install_id=>wwv_flow_imp.id(94382806445719195)
,p_name=>'Data installation'
,p_sequence=>120
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-------------------------------------------------------------------------------------------------------',
'-- Reset And Load Data Package ',
'-------------------------------------------------------------------------------------------------------',
'',
'',
'create or replace package eba_demo_rest_data_pkg as',
'',
'    procedure clear_data;',
'    -- clears all the data in the database tables',
'',
'    procedure load_data;',
'    -- loads data into the database tables',
'    procedure reset_data;',
'',
'end eba_demo_rest_data_pkg;',
'/',
'create or replace package body eba_demo_rest_data_pkg as',
'',
'    procedure clear_data is',
'        begin',
'            delete from eba_demo_rest_assignees;',
'            delete from eba_demo_rest_customers;',
'            delete from eba_demo_rest_department;',
'            delete from eba_demo_rest_employee;',
'            delete from eba_demo_rest_employeecustom;',
'            delete from eba_demo_rest_orderitems;',
'            delete from eba_demo_rest_orders;',
'            delete from eba_demo_rest_producttable;',
'            delete from eba_demo_rest_purchaseorders;',
'            delete from eba_demo_rest_stores;',
'            delete from eba_demo_rest_tasks;',
'            delete from eba_demo_rest_dept_local;',
'        end clear_data;',
'',
'',
'    procedure load_data is',
'        begin',
'',
'',
'            -- department data ',
'',
'            insert into eba_demo_rest_department (deptno, dname, loc) values (10, ''ACCOUNTING'', ''NEW YORK'');',
'            insert into eba_demo_rest_department (deptno, dname, loc) values (20, ''RESEARCH'',   ''DALLAS'');',
'            insert into eba_demo_rest_department (deptno, dname, loc) values (30, ''SALES'',      ''CHICAGO'');',
'            insert into eba_demo_rest_department (deptno, dname, loc) values (40, ''OPERATIONS'', ''BOSTON'');',
'',
'            -- dept local ',
'',
'            insert into eba_demo_rest_dept_local (deptno, dname, loc) values (10, ''ACCOUNTING'', ''NEW YORK'');',
'            insert into eba_demo_rest_dept_local (deptno, dname, loc) values (20, ''RESEARCH'',   ''DALLAS'');',
'            insert into eba_demo_rest_dept_local (deptno, dname, loc) values (30, ''SALES'',      ''CHICAGO'');',
'            insert into eba_demo_rest_dept_local (deptno, dname, loc) values (40, ''OPERATIONS'', ''BOSTON'');',
'',
'',
'            -- assignes Data ',
'            insert into eba_demo_rest_assignees (id, full_name, email, phone_number, created, created_by, updated, updated_by) values (1,''Landon Glover'',''wubju@example.com'',70,sysdate,null,sysdate,null);',
'            insert into eba_demo_rest_assignees (id, full_name, email, phone_number, created, created_by, updated, updated_by) values (2,''Jack Jackson'',''buoki@example.com'',97,sysdate,null,sysdate,null);',
'            insert into eba_demo_rest_assignees (id, full_name, email, phone_number, created, created_by, updated, updated_by) values (3,''Grace Dennis'',''wudi@example.com'',20,sysdate,null,sysdate,null);',
'            insert into eba_demo_rest_assignees (id, full_name, email, phone_number, created, created_by, updated, updated_by) values (4,''Cecelia Jennings'',''razworgaz@example.com'',97,sysdate,null,sysdate,null);',
'            insert into eba_demo_rest_assignees (id, full_name, email, phone_number, created, created_by, updated, updated_by) values (5,''George Klein'',''it@example.com'',75,sysdate,null,sysdate,null);',
'            insert into eba_demo_rest_assignees (id, full_name, email, phone_number, created, created_by, updated, updated_by) values (6,''Elnora Payne'',''ketbeun@example.com'',84,sysdate,null,sysdate,null);',
'            insert into eba_demo_rest_assignees (id, full_name, email, phone_number, created, created_by, updated, updated_by) values (7,''Aaron Erickson'',''ze@example.com'',86,sysdate,null,sysdate,null);',
'            insert into eba_demo_rest_assignees (id, full_name, email, phone_number, created, created_by, updated, updated_by) values (8,''Elizabeth Wilkins'',''uglitma@example.com'',58,sysdate,null,sysdate,null);',
'            insert into eba_demo_rest_assignees (id, full_name, email, phone_number, created, created_by, updated, updated_by) values (9,''Philip Brewer'',''pi@example.com'',18,sysdate,null,sysdate,null);',
'            insert into eba_demo_rest_assignees (id, full_name, email, phone_number, created, created_by, updated, updated_by) values (10,''Katie Anderson'',''binotse@example.com'',78,sysdate,null,sysdate,null);',
'',
'            -- customers DAta ',
'            insert into eba_demo_rest_customers (customer_id, full_name, email_address) values (1,  ''Tammy Bryant'',      ''tammy.bryant@example.com'');',
'            insert into eba_demo_rest_customers (customer_id, full_name, email_address) values (2,  ''Roy White'',         ''roy.white@example.com'');',
'            insert into eba_demo_rest_customers (customer_id, full_name, email_address) values (3,  ''Gary Jenkins'',      ''gary.jenkins@example.com'');',
'            insert into eba_demo_rest_customers (customer_id, full_name, email_address) values (4,  ''Victor Morris'',     ''victor.morris@example.com'');',
'            insert into eba_demo_rest_customers (customer_id, full_name, email_address) values (5,  ''Beverly Hughes'',    ''beverly.hughes@example.com'');',
'            insert into eba_demo_rest_customers (customer_id, full_name, email_address) values (6,  ''Evelyn Torres'',     ''evelyn.torres@example.com'');',
'            insert into eba_demo_rest_customers (customer_id, full_name, email_address) values (7,  ''Carl Lee'',          ''carl.lee@example.com'');',
'            insert into eba_demo_rest_customers (customer_id, full_name, email_address) values (8,  ''Douglas Flores'',    ''douglas.flores@example.com'');',
'            insert into eba_demo_rest_customers (customer_id, full_name, email_address) values (9,  ''Norma Robinson'',    ''norma.robinson@example.com'');',
'            insert into eba_demo_rest_customers (customer_id, full_name, email_address) values (10, ''Gregory Sanchez'',   ''gregory.sanchez@example.com'');',
'            insert into eba_demo_rest_customers (customer_id, full_name, email_address) values (11, ''Judy Evans'',        ''judy.evans@example.com'');',
'            insert into eba_demo_rest_customers (customer_id, full_name, email_address) values (12, ''Jean Patterson'',    ''jean.patterson@example.com'');',
'            insert into eba_demo_rest_customers (customer_id, full_name, email_address) values (13, ''Michelle Ramirez'',  ''michelle.ramirez@example.com'');',
'            insert into eba_demo_rest_customers (customer_id, full_name, email_address) values (14, ''Elizabeth Martinez'',''elizabeth.martinez@example.com'');',
'            insert into eba_demo_rest_customers (customer_id, full_name, email_address) values (15, ''Walter Rogers'',     ''walter.rogers@example.com'');',
'            insert into eba_demo_rest_customers (customer_id, full_name, email_address) values (16, ''Ralph Foster'',      ''ralph.foster@example.com'');',
'            insert into eba_demo_rest_customers (customer_id, full_name, email_address) values (17, ''Tina Simmons'',      ''tina.simmons@example.com'');',
'            insert into eba_demo_rest_customers (customer_id, full_name, email_address) values (18, ''Peter Jones'',       ''peter.jones@example.com'');',
'            insert into eba_demo_rest_customers (customer_id, full_name, email_address) values (19, ''Kathryn Rogers'',    ''kathryn.rogers@example.com'');',
'            insert into eba_demo_rest_customers (customer_id, full_name, email_address) values (20, ''Dennis Lopez'',      ''dennis.lopez@example.com'');',
'',
'',
'',
'            -- employee data ',
'            insert into eba_demo_rest_employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) values (8839, ''MARTIN'', null, 8902, to_date(''2022-11-17'',''YYYY-MM-DD''), 5000, 500, 10);',
'            insert into eba_demo_rest_employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) values (8698, ''BERNARD'', ''DIRECTEUR'', 8839, to_date(''2023-05-01'',''YYYY-MM-DD''), 2000, 285, 30);',
'            insert into eba_demo_rest_employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) values (8782, ''PETIT'', ''DIRECTEUR'', 8839, to_date(''2023-06-09'',''YYYY-MM-DD''), 2450, 245, 10);',
'            insert into eba_demo_rest_employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) values (8566, ''DUBOIS'', ''DIRECTEUR'', 8839, to_date(''2022-04-02'',''YYYY-MM-DD''), 2975, 298, 20);',
'            insert into eba_demo_rest_employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) values (8788, ''ROUX'', ''ANALYSTE'', 8566, to_date(''2023-12-09'',''YYYY-MM-DD''), 3000, 300, 20);',
'            insert into eba_demo_rest_employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) values (8902, ''DUPONT'', ''ANALYSTE'', 8566, to_date(''2022-12-05'',''YYYY-MM-DD''), 3000, 300, 20);',
unistr('            insert into eba_demo_rest_employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) values (8369, ''VINCENT'', ''EMPLOY\00C9'', 8902, to_date(''2022-12-17'',''YYYY-MM-DD''), 800, null, 20);'),
'            insert into eba_demo_rest_employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) values (8499, ''LEFEVRE'', ''VENDEUR'', 8698, to_date(''2023-02-20'',''YYYY-MM-DD''), 1600, 300, 30);',
'            insert into eba_demo_rest_employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) values (8521, ''LAMBERT'', ''VENDEUR'', 8698, to_date(''2023-02-22'',''YYYY-MM-DD''), 1250, 500, 30);',
'            insert into eba_demo_rest_employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) values (8654, ''GARNIER'', ''VENDEUR'', 8698, to_date(''2023-09-28'',''YYYY-MM-DD''), 1250, 1400, 30);',
'            insert into eba_demo_rest_employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) values (8844, ''MORIN'', ''VENDEUR'', 8698, to_date(''2023-09-08'',''YYYY-MM-DD''), 1500, 0, 30);',
unistr('            insert into eba_demo_rest_employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) values (8876, ''CL\00C9MENT'', ''EMPLOY\00C9'', 8788, to_date(''2024-01-02'',''YYYY-MM-DD''), 1100, 110, 20);'),
unistr('            insert into eba_demo_rest_employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) values (8900, ''SIMON'', ''EMPLOY\00C9'', 8698, to_date(''2022-12-05'',''YYYY-MM-DD''), 950, null, 30);'),
unistr('            insert into eba_demo_rest_employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) values (8934, ''LAURENT'', ''EMPLOY\00C9'', 8782, to_date(''2023-01-23'',''YYYY-MM-DD''), 1500, null, 10);'),
'',
'',
'',
'            -- employee custom ',
'            insert into eba_demo_rest_employeecustom (deptno, empno, emp_name, role_desc, hourly_rate, bonus_eligibility) values (20, 7369, ''SMITH'',              ''Junior Clerk'',        15.5,  ''Yes'');',
'            insert into eba_demo_rest_employeecustom (deptno, empno, emp_name, role_desc, hourly_rate, bonus_eligibility) values (30, 7499, ''ALLEN'',              ''Sales Associate'',     18,    ''Yes'');',
'            insert into eba_demo_rest_employeecustom (deptno, empno, emp_name, role_desc, hourly_rate, bonus_eligibility) values (30, 7521, ''WARD'',               ''Sales Associate'',     18.5,  ''Yes'');',
'            insert into eba_demo_rest_employeecustom (deptno, empno, emp_name, role_desc, hourly_rate, bonus_eligibility) values (20, 7566, ''JONES'',              ''Operations Manager'',  25,    ''Yes'');',
'            insert into eba_demo_rest_employeecustom (deptno, empno, emp_name, role_desc, hourly_rate, bonus_eligibility) values (30, 7654, ''MARTIN'',             ''Sales Representative'',19,    ''Yes'');',
'            insert into eba_demo_rest_employeecustom (deptno, empno, emp_name, role_desc, hourly_rate, bonus_eligibility) values (30, 7698, ''BLAKE'',              ''Senior Manager'',      28,    ''Yes'');',
'            insert into eba_demo_rest_employeecustom (deptno, empno, emp_name, role_desc, hourly_rate, bonus_eligibility) values (10, 7782, ''CLARK'',              ''Admin Manager'',       23,    ''Yes'');',
'            insert into eba_demo_rest_employeecustom (deptno, empno, emp_name, role_desc, hourly_rate, bonus_eligibility) values (20, 7788, ''SCOTT'',              ''Senior Analyst'',      27,    ''Yes'');',
'            insert into eba_demo_rest_employeecustom (deptno, empno, emp_name, role_desc, hourly_rate, bonus_eligibility) values (10, 7839, ''KING'',               ''Executive Director'',  35,    ''Yes'');',
'            insert into eba_demo_rest_employeecustom (deptno, empno, emp_name, role_desc, hourly_rate, bonus_eligibility) values (30, 7844, ''TURNER'',             ''Sales Representative'',18.75,''Yes'');',
'            insert into eba_demo_rest_employeecustom (deptno, empno, emp_name, role_desc, hourly_rate, bonus_eligibility) values (20, 7876, ''ADAMS'',              ''Junior Clerk'',        15.75,''No'');',
'            insert into eba_demo_rest_employeecustom (deptno, empno, emp_name, role_desc, hourly_rate, bonus_eligibility) values (30, 7900, ''JAMES'',              ''Junior Clerk'',        16,    ''No'');',
'            insert into eba_demo_rest_employeecustom (deptno, empno, emp_name, role_desc, hourly_rate, bonus_eligibility) values (20, 7902, ''FORD'',               ''Senior Analyst'',      28,    ''Yes'');',
'            insert into eba_demo_rest_employeecustom (deptno, empno, emp_name, role_desc, hourly_rate, bonus_eligibility) values (10, 7934, ''MILLER'',             ''Junior Clerk'',        16.5,  ''No'');',
'',
'',
'        -- stores Data ',
'            insert into eba_demo_rest_stores (store_id,store_name,web_address,physical_address,latitude,longitude) values (1,''Online'',''https://www.example.com'',''Redwood Shores 500 Oracle Parkway'',39.529395,-112.267237);',
'            insert into eba_demo_rest_stores (store_id,store_name,web_address,physical_address,latitude,longitude) values (2,''San Francisco'',null,''Redwood Shores 500 Oracle Parkway Redwood Shores, CA 94065'',37.529395,-122.267237);',
'            insert into eba_demo_rest_stores (store_id,store_name,web_address,physical_address,latitude,longitude) values (3,''Seattle'',null,''1501 Fourth Avenue Suite 1800 Seattle, WA 98101'',47.6053,-122.33221);',
'            insert into eba_demo_rest_stores (store_id,store_name,web_address,physical_address,latitude,longitude) values (4,''New York City'',null,''205 Lexington Ave7th Floor New York, NY 10016'',40.745216,-73.980518);',
'            insert into eba_demo_rest_stores (store_id,store_name,web_address,physical_address,latitude,longitude) values (5,''Chicago'',null,''233 South Wacker Dr. 45th Floor Chicago, IL 60606'',41.878751,-87.636675);',
'            insert into eba_demo_rest_stores (store_id,store_name,web_address,physical_address,latitude,longitude) values (6,''London'',null,''One South Place London EC2M 2RB'',51.519281,-0.087296);',
'            insert into eba_demo_rest_stores (store_id,store_name,web_address,physical_address,latitude,longitude) values (7,''Bucharest'',null,''Floreasca Park43 Soseaua Pipera, corp B.Sector 2 Bucharest , 014254 RO'',44.43225,26.10626);',
'            insert into eba_demo_rest_stores (store_id,store_name,web_address,physical_address,latitude,longitude) values (8,''Berlin'',null,''Behrenstrabe 42 (Humboldt Carre) 10117 Berlin'',52.5161,13.3873);',
'            insert into eba_demo_rest_stores (store_id,store_name,web_address,physical_address,latitude,longitude) values (9,''Utrecht'',null,''Hertogswetering 163-167, 3543 AS Utrecht, Netherlands'',52.103263,5.061644);',
'            insert into eba_demo_rest_stores (store_id,store_name,web_address,physical_address,latitude,longitude) values (10,''Madrid'',null,''C/ Jose Echegaray 6BLas Rozas28230 Madrid'',40.4929,-3.8737);',
'            insert into eba_demo_rest_stores (store_id,store_name,web_address,physical_address,latitude,longitude) values (11,''Johannesburg'',null,''Woodmead North Office Park 54 Maxwell Drive Jukskeiview, Sandton, 2196'',-26.044222,28.094662);',
'            insert into eba_demo_rest_stores (store_id,store_name,web_address,physical_address,latitude,longitude) values (12,''Lagos'',null,''1391 Tiamiyu Savage St, Victoria Island, Lagos, Nigeria'',6.42806,3.42199);',
'            insert into eba_demo_rest_stores (store_id,store_name,web_address,physical_address,latitude,longitude) values (13,''Bengaluru'',null,''193, Bannerghatta Main Rd, Industrial Area, Stage 2, BTM Layout, Bengaluru, Karnataka 560076, India'',12.89'
||'39,77.5978);',
'            insert into eba_demo_rest_stores (store_id,store_name,web_address,physical_address,latitude,longitude) values (14,''Mumbai'',null,''First International Financial Center Unit No. 501, Level 5 No. C54 & 55, G Block Bandra Kurla Complex CTS No.'
||' 4207, Kolekalyan Village Mumbai - 400 051 India'',19.069405,72.870143);',
'            insert into eba_demo_rest_stores (store_id,store_name,web_address,physical_address,latitude,longitude) values (15,''New Dehli'',null,''F-01/02, First Floor Salcon Rasvillas D-1, District Centre, Saket, New Delhi - 110017 India'',28.527693,77.'
||'220135);',
'            insert into eba_demo_rest_stores (store_id,store_name,web_address,physical_address,latitude,longitude) values (16,''Sydney'',null,''Riverside Corporate Park 4 Julius Avenue North Ryde NSW 2113'',-33.797279,151.143826);',
'            insert into eba_demo_rest_stores (store_id,store_name,web_address,physical_address,latitude,longitude) values (17,''Perth'',null,''Level 9 225 St Georges Terrace Perth WA 6000'',-31.953715,115.851645);',
'            insert into eba_demo_rest_stores (store_id,store_name,web_address,physical_address,latitude,longitude) values (18,''Sao Paulo'',null,''Rua Dr. Jose Aureo Bustamante, 455 - Vila Cordeiro, CEP 04710-090 Sao Paulo'',-23.5475,-46.63611);',
'            insert into eba_demo_rest_stores (store_id,store_name,web_address,physical_address,latitude,longitude) values (19,''Buenos Aires'',null,''Juana Manso 1069, Buenos Aires, Argentina'',-34.61016,-58.362867);',
'            insert into eba_demo_rest_stores (store_id,store_name,web_address,physical_address,latitude,longitude) values (20,''Mexico City'',null,''Montes Urales # 470 P3 Col. Lomas de Chapultepec Delegacion Miguel Hidalgo - C.P. 11000'',19.428489,-99.2'
||'05745);',
'            insert into eba_demo_rest_stores (store_id,store_name,web_address,physical_address,latitude,longitude) values (21,''Bejing'',null,''China, Beijing Shi, Haidian Qu, Dongbeiwang W Rd, 8, 100085'',40.0572,116.290061);',
'            insert into eba_demo_rest_stores (store_id,store_name,web_address,physical_address,latitude,longitude) values (22,''Tokyo'',null,''2 Chome-5-? Kitaaoyama, Minato City, Tokyo 107-0061, Japan'',35.671534,139.718584);',
'            insert into eba_demo_rest_stores (store_id,store_name,web_address,physical_address,latitude,longitude) values (23,''Tel Aviv'',null,''B, Aharon Bart St 18, Petah Tikva, 4951400, Israel'',32.100664,34.862138);',
'',
'            -- Orders data',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (453,to_timestamp(''2022-07-23 12.13.03'',''YYYY-MM-DD HH24.MI.SS''),4,''COMPLETE'',4);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (506,to_timestamp(''2022-08-07 10.56.44'',''YYYY-MM-DD HH24.MI.SS''),4,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (513,to_timestamp(''2022-08-09 08.00.22'',''YYYY-MM-DD HH24.MI.SS''),15,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (544,to_timestamp(''2022-08-16 18.32.10'',''YYYY-MM-DD HH24.MI.SS''),3,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (585,to_timestamp(''2022-08-26 11.02.38'',''YYYY-MM-DD HH24.MI.SS''),4,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (608,to_timestamp(''2022-09-01 08.01.41'',''YYYY-MM-DD HH24.MI.SS''),3,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (672,to_timestamp(''2022-09-13 01.37.34'',''YYYY-MM-DD HH24.MI.SS''),4,''COMPLETE'',4);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (687,to_timestamp(''2022-09-17 00.09.10'',''YYYY-MM-DD HH24.MI.SS''),16,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (707,to_timestamp(''2022-09-20 18.12.35'',''YYYY-MM-DD HH24.MI.SS''),5,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (760,to_timestamp(''2022-09-29 07.19.53'',''YYYY-MM-DD HH24.MI.SS''),19,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (761,to_timestamp(''2022-09-29 08.35.11'',''YYYY-MM-DD HH24.MI.SS''),11,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (765,to_timestamp(''2022-09-29 21.36.52'',''YYYY-MM-DD HH24.MI.SS''),2,''COMPLETE'',2);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (766,to_timestamp(''2022-09-30 00.38.08'',''YYYY-MM-DD HH24.MI.SS''),3,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (769,to_timestamp(''2022-09-30 02.49.28'',''YYYY-MM-DD HH24.MI.SS''),6,''REFUNDED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (808,to_timestamp(''2022-10-08 04.06.33'',''YYYY-MM-DD HH24.MI.SS''),14,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (832,to_timestamp(''2022-10-12 23.16.40'',''YYYY-MM-DD HH24.MI.SS''),3,''COMPLETE'',3);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (839,to_timestamp(''2022-10-14 13.59.20'',''YYYY-MM-DD HH24.MI.SS''),12,''COMPLETE'',12);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (862,to_timestamp(''2022-10-19 14.34.20'',''YYYY-MM-DD HH24.MI.SS''),7,''COMPLETE'',7);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (899,to_timestamp(''2022-10-27 09.42.00'',''YYYY-MM-DD HH24.MI.SS''),17,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (920,to_timestamp(''2022-10-30 17.59.30'',''YYYY-MM-DD HH24.MI.SS''),4,''COMPLETE'',4);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (928,to_timestamp(''2022-10-31 17.07.56'',''YYYY-MM-DD HH24.MI.SS''),9,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (943,to_timestamp(''2022-11-03 16.41.53'',''YYYY-MM-DD HH24.MI.SS''),10,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (950,to_timestamp(''2022-11-05 07.02.43'',''YYYY-MM-DD HH24.MI.SS''),7,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (960,to_timestamp(''2022-11-06 21.18.36'',''YYYY-MM-DD HH24.MI.SS''),11,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (968,to_timestamp(''2022-11-08 00.30.18'',''YYYY-MM-DD HH24.MI.SS''),9,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (972,to_timestamp(''2022-11-09 02.12.47'',''YYYY-MM-DD HH24.MI.SS''),6,''COMPLETE'',6);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (986,to_timestamp(''2022-11-11 19.03.57'',''YYYY-MM-DD HH24.MI.SS''),10,''CANCELLED'',10);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (993,to_timestamp(''2022-11-13 10.16.45'',''YYYY-MM-DD HH24.MI.SS''),8,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1052,to_timestamp(''2022-11-22 17.14.32'',''YYYY-MM-DD HH24.MI.SS''),13,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1058,to_timestamp(''2022-11-24 03.58.10'',''YYYY-MM-DD HH24.MI.SS''),6,''CANCELLED'',6);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1082,to_timestamp(''2022-11-28 05.29.33'',''YYYY-MM-DD HH24.MI.SS''),8,''CANCELLED'',8);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1102,to_timestamp(''2022-12-01 22.25.32'',''YYYY-MM-DD HH24.MI.SS''),9,''COMPLETE'',9);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1,to_timestamp(''2022-02-25 02.24.33'',''YYYY-MM-DD HH24.MI.SS''),3,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (3,to_timestamp(''2022-03-02 12.21.18'',''YYYY-MM-DD HH24.MI.SS''),18,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (5,to_timestamp(''2022-03-04 07.05.41'',''YYYY-MM-DD HH24.MI.SS''),2,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (7,to_timestamp(''2022-03-14 14.01.22'',''YYYY-MM-DD HH24.MI.SS''),9,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (17,to_timestamp(''2022-03-19 20.51.57'',''YYYY-MM-DD HH24.MI.SS''),16,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (20,to_timestamp(''2022-03-21 23.11.43'',''YYYY-MM-DD HH24.MI.SS''),3,''COMPLETE'',3);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (63,to_timestamp(''2022-04-11 19.21.35'',''YYYY-MM-DD HH24.MI.SS''),3,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (78,to_timestamp(''2022-04-17 23.00.11'',''YYYY-MM-DD HH24.MI.SS''),20,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (79,to_timestamp(''2022-04-18 16.39.13'',''YYYY-MM-DD HH24.MI.SS''),14,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (82,to_timestamp(''2022-04-19 13.24.05'',''YYYY-MM-DD HH24.MI.SS''),13,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (92,to_timestamp(''2022-04-21 21.25.03'',''YYYY-MM-DD HH24.MI.SS''),17,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (125,to_timestamp(''2022-05-01 01.45.50'',''YYYY-MM-DD HH24.MI.SS''),12,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (132,to_timestamp(''2022-05-02 14.19.08'',''YYYY-MM-DD HH24.MI.SS''),17,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (159,to_timestamp(''2022-05-11 01.56.08'',''YYYY-MM-DD HH24.MI.SS''),1,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (182,to_timestamp(''2022-05-16 17.00.13'',''YYYY-MM-DD HH24.MI.SS''),1,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (196,to_timestamp(''2022-05-19 05.57.59'',''YYYY-MM-DD HH24.MI.SS''),8,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (201,to_timestamp(''2022-05-20 00.52.12'',''YYYY-MM-DD HH24.MI.SS''),1,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (204,to_timestamp(''2022-05-21 00.43.26'',''YYYY-MM-DD HH24.MI.SS''),6,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (240,to_timestamp(''2022-05-28 13.31.20'',''YYYY-MM-DD HH24.MI.SS''),8,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (290,to_timestamp(''2022-06-13 02.12.59'',''YYYY-MM-DD HH24.MI.SS''),15,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (298,to_timestamp(''2022-06-14 09.34.20'',''YYYY-MM-DD HH24.MI.SS''),3,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (306,to_timestamp(''2022-06-16 16.24.36'',''YYYY-MM-DD HH24.MI.SS''),5,''COMPLETE'',5);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (307,to_timestamp(''2022-06-16 17.31.39'',''YYYY-MM-DD HH24.MI.SS''),3,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (331,to_timestamp(''2022-06-24 02.29.17'',''YYYY-MM-DD HH24.MI.SS''),5,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (349,to_timestamp(''2022-06-29 20.24.23'',''YYYY-MM-DD HH24.MI.SS''),14,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (401,to_timestamp(''2022-07-11 22.55.57'',''YYYY-MM-DD HH24.MI.SS''),16,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (430,to_timestamp(''2022-07-17 08.56.02'',''YYYY-MM-DD HH24.MI.SS''),8,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (437,to_timestamp(''2022-07-18 18.41.45'',''YYYY-MM-DD HH24.MI.SS''),10,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values '))
);
wwv_flow_imp_shared.append_to_install_script(
 p_id=>wwv_flow_imp.id(101142335494412475)
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(1111,to_timestamp(''2022-12-03 12.42.17'',''YYYY-MM-DD HH24.MI.SS''),6,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1119,to_timestamp(''2022-12-05 21.35.51'',''YYYY-MM-DD HH24.MI.SS''),14,''CANCELLED'',14);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1121,to_timestamp(''2022-12-05 23.25.14'',''YYYY-MM-DD HH24.MI.SS''),7,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1169,to_timestamp(''2022-12-15 04.16.06'',''YYYY-MM-DD HH24.MI.SS''),14,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1191,to_timestamp(''2022-12-20 15.12.50'',''YYYY-MM-DD HH24.MI.SS''),14,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1195,to_timestamp(''2022-12-21 06.46.35'',''YYYY-MM-DD HH24.MI.SS''),15,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1200,to_timestamp(''2022-12-21 12.24.05'',''YYYY-MM-DD HH24.MI.SS''),17,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1260,to_timestamp(''2022-12-30 13.21.21'',''YYYY-MM-DD HH24.MI.SS''),9,''CANCELLED'',9);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1321,to_timestamp(''2023-01-09 06.32.45'',''YYYY-MM-DD HH24.MI.SS''),11,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1348,to_timestamp(''2023-01-13 20.57.23'',''YYYY-MM-DD HH24.MI.SS''),18,''COMPLETE'',18);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1363,to_timestamp(''2023-01-16 22.00.07'',''YYYY-MM-DD HH24.MI.SS''),19,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1373,to_timestamp(''2023-01-18 15.27.07'',''YYYY-MM-DD HH24.MI.SS''),16,''CANCELLED'',16);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1390,to_timestamp(''2023-01-21 04.51.37'',''YYYY-MM-DD HH24.MI.SS''),1,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1400,to_timestamp(''2023-01-22 18.52.24'',''YYYY-MM-DD HH24.MI.SS''),15,''COMPLETE'',15);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1418,to_timestamp(''2023-01-25 17.30.59'',''YYYY-MM-DD HH24.MI.SS''),13,''CANCELLED'',13);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1437,to_timestamp(''2023-01-28 21.08.42'',''YYYY-MM-DD HH24.MI.SS''),16,''CANCELLED'',16);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1439,to_timestamp(''2023-01-29 04.52.36'',''YYYY-MM-DD HH24.MI.SS''),16,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1448,to_timestamp(''2023-01-31 07.09.51'',''YYYY-MM-DD HH24.MI.SS''),16,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1450,to_timestamp(''2023-01-31 07.56.41'',''YYYY-MM-DD HH24.MI.SS''),6,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1451,to_timestamp(''2023-01-31 08.10.59'',''YYYY-MM-DD HH24.MI.SS''),16,''CANCELLED'',16);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1455,to_timestamp(''2023-02-01 03.40.10'',''YYYY-MM-DD HH24.MI.SS''),4,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1468,to_timestamp(''2023-02-02 14.27.01'',''YYYY-MM-DD HH24.MI.SS''),4,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1471,to_timestamp(''2023-02-02 19.29.40'',''YYYY-MM-DD HH24.MI.SS''),14,''CANCELLED'',14);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1483,to_timestamp(''2023-02-04 08.09.09'',''YYYY-MM-DD HH24.MI.SS''),14,''COMPLETE'',14);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1486,to_timestamp(''2023-02-05 04.35.40'',''YYYY-MM-DD HH24.MI.SS''),15,''COMPLETE'',15);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1491,to_timestamp(''2023-02-05 21.16.42'',''YYYY-MM-DD HH24.MI.SS''),1,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1498,to_timestamp(''2023-02-06 18.40.27'',''YYYY-MM-DD HH24.MI.SS''),13,''COMPLETE'',13);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1513,to_timestamp(''2023-02-09 17.17.37'',''YYYY-MM-DD HH24.MI.SS''),20,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1520,to_timestamp(''2023-02-10 12.46.23'',''YYYY-MM-DD HH24.MI.SS''),3,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1525,to_timestamp(''2023-02-11 02.22.05'',''YYYY-MM-DD HH24.MI.SS''),10,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1543,to_timestamp(''2023-02-13 00.54.09'',''YYYY-MM-DD HH24.MI.SS''),8,''CANCELLED'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1549,to_timestamp(''2023-02-13 17.28.26'',''YYYY-MM-DD HH24.MI.SS''),19,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1552,to_timestamp(''2023-02-14 01.13.25'',''YYYY-MM-DD HH24.MI.SS''),17,''CANCELLED'',17);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1555,to_timestamp(''2023-02-14 04.22.00'',''YYYY-MM-DD HH24.MI.SS''),7,''CANCELLED'',7);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1560,to_timestamp(''2023-02-14 18.38.06'',''YYYY-MM-DD HH24.MI.SS''),14,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1561,to_timestamp(''2023-02-14 21.01.04'',''YYYY-MM-DD HH24.MI.SS''),8,''COMPLETE'',8);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1635,to_timestamp(''2023-02-26 02.22.36'',''YYYY-MM-DD HH24.MI.SS''),11,''CANCELLED'',11);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1637,to_timestamp(''2023-02-26 15.21.00'',''YYYY-MM-DD HH24.MI.SS''),12,''COMPLETE'',1);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1659,to_timestamp(''2023-03-02 14.20.04'',''YYYY-MM-DD HH24.MI.SS''),18,''CANCELLED'',18);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1730,to_timestamp(''2023-03-15 15.38.39'',''YYYY-MM-DD HH24.MI.SS''),10,''COMPLETE'',10);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1731,to_timestamp(''2023-03-16 09.57.43'',''YYYY-MM-DD HH24.MI.SS''),19,''CANCELLED'',19);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1776,to_timestamp(''2023-03-24 12.05.43'',''YYYY-MM-DD HH24.MI.SS''),20,''COMPLETE'',20);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1808,to_timestamp(''2023-03-29 23.37.35'',''YYYY-MM-DD HH24.MI.SS''),20,''CANCELLED'',20);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1817,to_timestamp(''2023-03-31 10.58.36'',''YYYY-MM-DD HH24.MI.SS''),8,''CANCELLED'',8);',
'            insert into eba_demo_rest_orders (order_id,order_datetime,customer_id,order_status,store_id) values (1890,to_timestamp(''2023-04-15 12.36.09'',''YYYY-MM-DD HH24.MI.SS''),7,''CANCELLED'',7);',
'',
'',
'     -- Products data',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (16,''Women''''s Socks (Grey)'',39.89,null);',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (17,''Women''''s Sweater (Brown)'',24.46,utl_raw.cast_to_raw(''{"colour":"brown","gender":"Women''''s","brand":"KLUGGER","description":"Dolore '
||'adipisicing commodo consequat Lorem ut incididunt. Ullamco nulla qui qui pariatur qui officia adipisicing magna aliqua ex qui incididunt.","sizes":[0,2,4,6,8,10,12,14,16,18,20],"reviews":[{"rating":7,"review":"Fugiat cillum anim in qui laborum velit '
||'eu consectetur ad fugiat."},{"rating":6,"review":"Elit duis nostrud ad non enim elit mollit deserunt."},{"rating":2,"review":"Amet anim mollit laboris deserunt deserunt laboris anim ad commodo dolor."},{"rating":7,"review":"Labore nulla ullamco aute '
||'labore esse do proident sit."},{"rating":5,"review":"Non amet cillum eu cillum cupidatat occaecat excepteur ad voluptate culpa id."},{"rating":4,"review":"Non aliqua nisi anim qui consectetur id dolore duis sint aliqua ea tempor laborum."},{"rating":'
||'5,"review":"Elit ea Lorem duis amet."},{"rating":10,"review":"Aliqua velit nulla exercitation dolor minim ipsum culpa nostrud occaecat proident voluptate."},{"rating":3,"review":"Exercitation anim eu et veniam tempor ea."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (18,''Women''''s Jacket (Black)'',14.34,null);',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (19,''Men''''s Coat (Red)'',28.21,utl_raw.cast_to_raw(''{"colour":"red","gender":"Men''''s","brand":"VELOS","description":"Sint quis dolor in d'
||'olore sint elit ullamco ex magna laborum id eu. Magna fugiat qui pariatur dolore ex est esse minim elit velit.","sizes":["XS","S","M","L","XL","XXL"],"reviews":[{"rating":7,"review":"Esse velit est cupidatat ea labore cupidatat ipsum ullamco cupidata'
||'t Lorem."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (20,''Girl''''s Shorts (Green)'',38.34,utl_raw.cast_to_raw(''{"colour":"green","gender":"Girl''''s","brand":"TRASOLA","description":"These shor'
||'ts are perfect for a day out at sea. Made with quick-drying and breathable materials, they are comfortable to wear even in hot and humid conditions.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":7,"review":"Veniam'
||' consectetur ea nisi irure aute cillum."},{"rating":8,"review":"Consequat ex incididunt pariatur mollit magna incididunt veniam pariatur aliqua ex exercitation aute mollit ullamco."},{"rating":4,"review":"Proident tempor cupidatat ut cillum nisi sunt'
||' consectetur veniam dolore est ut."},{"rating":8,"review":"Deserunt amet quis do duis nulla officia anim sint do eiusmod exercitation."},{"rating":5,"review":"Anim magna incididunt mollit deserunt proident veniam occaecat ex ut ex incididunt."},{"rat'
||'ing":4,"review":"Consectetur cillum minim dolore cupidatat esse."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (21,''Girl''''s Pyjamas (White)'',39.78,utl_raw.cast_to_raw(''{"colour":"black","gender":"Girl''''s","brand":"UTARIAN","description":"Fugiat ad'
||'ipisicing sunt ullamco est ea. Dolor excepteur sit ad eu.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":7,"review":"Proident consequat consequat eu enim Lorem incididunt ad amet excepteur tempor aliquip ad aliquip'
||' ea."},{"rating":7,"review":"Nulla sint anim aliqua laboris sint eu adipisicing incididunt."},{"rating":10,"review":"Aliqua aliquip non commodo duis consequat ad nisi et magna."},{"rating":9,"review":"Tempor consequat Lorem ipsum proident do nisi est'
||' dolore."},{"rating":7,"review":"Pariatur amet laborum dolor dolore incididunt sint labore."},{"rating":10,"review":"Eu exercitation incididunt et est."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (22,''Men''''s Shorts (Black)'',10.33,utl_raw.cast_to_raw(''{"colour":"black","gender":"Men''''s","brand":"TERSANKI","description":"Occaecat ve'
||'niam do aliqua irure consectetur ea fugiat aliqua qui ea veniam officia. Culpa officia Lorem dolor ullamco culpa adipisicing qui exercitation labore minim exercitation sunt.","sizes":["XS","S","M","L","XL","XXL"],"reviews":[{"rating":3,"review":"Cons'
||'equat anim reprehenderit commodo non aliqua laborum aute."},{"rating":6,"review":"Labore cillum do qui magna culpa ea excepteur quis."},{"rating":1,"review":"Dolor amet quis ea magna."},{"rating":7,"review":"Minim sit nostrud anim nostrud excepteur n'
||'ostrud ea ex veniam consectetur elit."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (23,''Men''''s Pyjamas (Blue)'',48.39,utl_raw.cast_to_raw(''{"colour":"blue","gender":"Men''''s","brand":"ADORNICA","description":"Irure amet L'
||'orem consequat aliquip officia dolore amet officia. Do elit laboris non dolore nostrud dolore cupidatat ea quis aliquip ex aliquip non ex.","sizes":["XS","S","M","L","XL","XXL"],"reviews":[{"rating":3,"review":"Laboris elit pariatur labore duis fugia'
||'t ad in nulla tempor."},{"rating":5,"review":"Voluptate minim officia id excepteur."},{"rating":8,"review":"Eiusmod cupidatat et nisi ipsum non aliqua."},{"rating":1,"review":"Aute veniam irure dolor laborum esse ut ex tempor non velit."},{"rating":2'
||',"review":"Nostrud nostrud mollit incididunt et tempor excepteur sit ut id exercitation."},{"rating":6,"review":"Labore tempor cillum laborum commodo et sit est qui aute enim id aute."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (24,''Boy''''s Sweater (Red)'',9.8,utl_raw.cast_to_raw(''{"colour":"red","gender":"Boy''''s","brand":"PHARMEX","description":"Ex occaecat nulla'
||' esse duis nulla laboris aute. Commodo magna Lorem exercitation occaecat do anim minim non ad non ex do nulla ad.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":7,"review":"Ea reprehenderit occaecat commodo exercit'
||'ation ut adipisicing laboris adipisicing ex aute reprehenderit nisi sint qui."},{"rating":8,"review":"Qui anim sint dolore id dolor proident occaecat."},{"rating":5,"review":"Dolore fugiat mollit Lorem aliqua id consequat irure veniam."},{"rating":2,'
||'"review":"Esse dolore occaecat consectetur sit sit labore exercitation sint occaecat quis enim occaecat."},{"rating":4,"review":"Do commodo do laboris qui minim fugiat nisi nostrud elit."},{"rating":7,"review":"Pariatur eu non eiusmod ex dolor veniam'
||'."},{"rating":3,"review":"Magna aliqua dolor sint anim aliquip officia officia esse labore do."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (25,''Girl''''s Jeans (Grey)'',48.75,utl_raw.cast_to_raw(''{"colour":"grey","gender":"Girl''''s","brand":"KINETICUT","description":"Ut aliqua n'
||'ostrud exercitation cupidatat cupidatat in. Sit tempor eu cillum quis incididunt consectetur quis amet.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":2,"review":"Id consectetur minim anim nisi occaecat elit labore'
||' duis."},{"rating":5,"review":"Ut fugiat qui velit fugiat nostrud ea dolor amet magna id pariatur."},{"rating":3,"review":"Labore laborum eiusmod qui minim exercitation."},{"rating":4,"review":"Excepteur ea mollit ad pariatur mollit veniam."},{"ratin'
||'g":9,"review":"Consectetur aliquip deserunt fugiat excepteur elit occaecat culpa fugiat dolor in."},{"rating":1,"review":"Adipisicing adipisicing mollit reprehenderit ex nulla in ea ad exercitation irure ullamco."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (26,''Girl''''s Hoodie (White)'',39.91,utl_raw.cast_to_raw(''{"colour":"white","gender":"Girl''''s","brand":"PROXSOFT","description":"Aliquip c'
||'ulpa eu deserunt ex culpa in laborum adipisicing. Amet et id minim esse ea non qui veniam.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":6,"review":"Commodo ut fugiat voluptate adipisicing deserunt."},{"rating":4,'
||'"review":"Fugiat cupidatat amet fugiat cupidatat ea ea."},{"rating":7,"review":"Incididunt ex enim commodo sit consequat enim."},{"rating":3,"review":"Ullamco in et aute laboris cillum."},{"rating":3,"review":"Reprehenderit Lorem proident sit deserun'
||'t do tempor commodo velit velit nulla ipsum."},{"rating":10,"review":"Dolore pariatur velit enim est culpa eiusmod cupidatat deserunt esse elit exercitation sunt proident exercitation."},{"rating":2,"review":"Minim fugiat elit aliquip nostrud velit r'
||'eprehenderit cillum."},{"rating":4,"review":"Sint Lorem est laborum consectetur pariatur minim tempor ullamco Lorem est."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (27,''Boy''''s Coat (Blue)'',10.24,utl_raw.cast_to_raw(''{"colour":"brown","gender":"Boy''''s","brand":"GRONK","description":"Quis aliquip fugi'
||'at sunt qui eu velit aliqua sint eiusmod mollit id ad. Anim anim ipsum in reprehenderit amet amet consectetur incididunt qui cillum Lorem.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":8,"review":"Sit id elit cupi'
||'datat aute consectetur esse proident aliqua ad voluptate cillum Lorem."},{"rating":6,"review":"Enim enim fugiat consectetur ut sunt veniam ad sit minim amet Lorem veniam mollit."},{"rating":5,"review":"Dolor ipsum consectetur nostrud ex Lorem pariatu'
||'r voluptate."},{"rating":8,"review":"Commodo magna sint sint dolore aute anim laborum."},{"rating":4,"review":"Laboris amet proident occaecat dolore labore exercitation dolore sunt Lorem sunt anim."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (28,''Men''''s Hoodie (Red)'',24.71,utl_raw.cast_to_raw(''{"colour":"red","gender":"Men''''s","brand":"FANGOLD","description":"Dolor irure dolo'
||'re est ipsum nisi incididunt laboris culpa. Ullamco ad cupidatat sint culpa adipisicing pariatur.","sizes":["XS","S","M","L","XL","XXL"],"reviews":[{"rating":3,"review":"Proident aliqua aliquip aute quis cillum."},{"rating":5,"review":"Pariatur enim '
||'ipsum aliqua Lorem eiusmod consequat cupidatat irure nulla sint fugiat veniam amet ipsum."},{"rating":10,"review":"Sint duis ipsum reprehenderit Lorem aute pariatur elit."},{"rating":4,"review":"Enim qui qui consequat culpa ex velit sint excepteur ip'
||'sum in amet mollit mollit."},{"rating":10,"review":"Qui velit reprehenderit fugiat adipisicing anim incididunt anim commodo occaecat consectetur in aute."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (29,''Boy''''s Shirt (Black)'',37.34,utl_raw.cast_to_raw(''{"colour":"black","gender":"Boy''''s","brand":"SQUISH","description":"Pariatur nulla'
||' elit pariatur excepteur ullamco officia incididunt. Aliquip quis aliquip cupidatat magna fugiat eiusmod pariatur excepteur tempor officia voluptate fugiat.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":5,"review"'
||':"Non esse labore ullamco laboris irure cupidatat ex proident eiusmod."},{"rating":10,"review":"Ea velit et mollit labore consequat."},{"rating":6,"review":"Labore sit pariatur Lorem ad sint consectetur incididunt deserunt eiusmod sit nostrud dolore '
||'eiusmod sint."},{"rating":1,"review":"Id voluptate sunt amet laboris laborum ad dolor aliqua ipsum sint qui aute eu esse."},{"rating":5,"review":"Sint Lorem dolore do ea."},{"rating":9,"review":"Quis pariatur consequat nisi labore Lorem elit in qui L'
||'orem."},{"rating":2,"review":"Consectetur voluptate tempor ullamco voluptate labore sint."},{"rating":9,"review":"Qui laboris tempor ullamco ullamco commodo sint occaecat Lorem."},{"rating":1,"review":"Laborum eu sit duis et culpa eu duis irure incid'
||'idunt amet."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (30,''Women''''s Pyjamas (Grey)'',28.59,utl_raw.cast_to_raw(''{"colour":"grey","gender":"Women''''s","brand":"THREDZ","description":"Quis aliqu'
||'a eiusmod incididunt quis ut ea aliqua sunt veniam ut et cupidatat eiusmod. Sunt sunt duis excepteur excepteur do exercitation.","sizes":[0,2,4,6,8,10,12,14,16,18,20],"reviews":[{"rating":1,"review":"Et anim culpa voluptate pariatur ullamco dolore ad'
||' aliquip."},{"rating":4,"review":"Nulla non ea nisi nulla elit veniam duis."},{"rating":4,"review":"Lorem adipisicing deserunt duis id sint aliquip minim deserunt magna sunt magna laborum dolore."},{"rating":3,"review":"Officia amet magna eu nulla do'
||'lore magna pariatur deserunt amet reprehenderit."},{"rating":3,"review":"Ad aliqua ex eu cillum labore elit mollit reprehenderit anim."},{"rating":1,"review":"Duis excepteur magna aliqua qui officia ipsum sunt."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (31,''Women''''s Skirt (Green)'',5.65,utl_raw.cast_to_raw(''{"colour":"green","gender":"Women''''s","brand":"ZIDANT","description":"Et est offi'
||'cia est amet est nisi sit veniam proident. Ullamco proident culpa velit proident quis dolore occaecat proident Lorem tempor.","sizes":[0,2,4,6,8,10,12,14,16,18,20],"reviews":[]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (32,''Women''''s Jacket (Blue)'',37,utl_raw.cast_to_raw(''{"colour":"blue","gender":"Women''''s","brand":"ZOGAK","description":"Tempor ipsum du'
||'is aliqua veniam qui laboris et ut officia. Fugiat fugiat nisi labore excepteur ullamco excepteur veniam in in et adipisicing sint.","sizes":[0,2,4,6,8,10,12,14,16,18,20],"reviews":[{"rating":9,"review":"Sit amet id ut laborum in exercitation laborum'
||' Lorem fugiat ex."},{"rating":7,"review":"Nisi non mollit dolore id aute velit laboris consequat voluptate id."},{"rating":1,"review":"Nisi nisi fugiat non nisi amet esse."},{"rating":1,"review":"Laborum eiusmod id ipsum aliqua adipisicing cillum eni'
||'m."},{"rating":8,"review":"Duis aliqua ut nulla proident voluptate incididunt elit est exercitation id aute."},{"rating":4,"review":"Veniam labore exercitation eiusmod nisi mollit anim eu."},{"rating":6,"review":"Exercitation eu est irure velit paria'
||'tur."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (33,''Boy''''s Pyjamas (Grey)'',23.32,utl_raw.cast_to_raw(''{"colour":"grey","gender":"Boy''''s","brand":"RETRACK","description":"Sit consectet'
||'ur Lorem culpa ipsum ad ullamco ea aute qui ea. Laboris ipsum enim enim veniam.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":7,"review":"Ut incididunt veniam ullamco voluptate occaecat velit."},{"rating":5,"revie'
||'w":"Consectetur cupidatat voluptate dolore velit culpa est id enim aute."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (34,''Women''''s Jeans (Red)'',7.18,utl_raw.cast_to_raw(''{"colour":"red","gender":"Women''''s","brand":"PANZENT","description":"Eiusmod culpa '
||'dolore occaecat excepteur esse magna fugiat dolore cupidatat laboris mollit culpa. Consequat dolor qui tempor sit minim sit excepteur enim excepteur aute minim.","sizes":[0,2,4,6,8,10,12,14,16,18,20],"reviews":[{"rating":10,"review":"Nulla enim cillu'
||'m pariatur do consectetur et Lorem."},{"rating":1,"review":"Cupidatat fugiat incididunt fugiat eu."},{"rating":1,"review":"Ullamco eiusmod adipisicing fugiat reprehenderit mollit aliquip."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (35,''Girl''''s Dress (Red)'',49.12,utl_raw.cast_to_raw(''{"colour":"red","gender":"Girl''''s","brand":"NIXELT","description":"Ipsum pariatur l'
||'aborum nulla pariatur consequat consequat amet nisi. Ut in quis officia excepteur.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":10,"review":"Ut est anim sit nulla commodo velit occaecat amet mollit fugiat id."},{'
||'"rating":2,"review":"Eu quis ea anim incididunt nisi nisi velit velit labore do."},{"rating":9,"review":"Eu laborum laborum reprehenderit minim officia anim."},{"rating":8,"review":"Et consectetur labore ullamco occaecat cupidatat magna pariatur esse'
||' qui ut mollit ea cillum."},{"rating":4,"review":"Dolore culpa magna commodo aute do culpa non commodo qui id commodo consectetur exercitation."},{"rating":6,"review":"Adipisicing laborum tempor sunt laboris et sint aute pariatur."},{"rating":9,"revi'
||'ew":"Excepteur voluptate qui magna in cillum aliqua."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (36,''Women''''s Trousers (Blue)'',29.51,utl_raw.cast_to_raw(''{"colour":"blue","gender":"Women''''s","brand":"TROLLERY","description":"Proiden'
||'t sunt ipsum pariatur duis dolor eu dolore culpa ad aliquip elit. Mollit Lorem et aliquip commodo est anim amet eiusmod amet dolore laborum tempor officia.","sizes":[0,2,4,6,8,10,12,14,16,18,20],"reviews":[{"rating":10,"review":"Consequat ut commodo '
||'irure sit elit anim amet eu est sunt tempor non."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (37,''Boy''''s Jeans (Blue)'',22.98,utl_raw.cast_to_raw(''{"colour":"blue","gender":"Boy''''s","brand":"AVIT","description":"Velit velit esse n'
||'ulla minim minim laborum esse. Sint minim id aliquip amet fugiat dolor aliqua.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (38,''Girl''''s Pyjamas (Red)'',11,utl_raw.cast_to_raw(''{"colour":"red","gender":"Girl''''s","brand":"EMTRAK","description":"Magna est occaeca'
||'t consectetur ullamco mollit dolore aute irure consectetur nulla ipsum id elit occaecat. Amet Lorem sint nulla eiusmod commodo aliqua cillum anim tempor tempor pariatur do nostrud minim.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"'
||'reviews":[{"rating":4,"review":"Consectetur velit adipisicing excepteur in excepteur sit excepteur irure veniam velit."},{"rating":4,"review":"Consectetur exercitation exercitation irure commodo officia do adipisicing ullamco sit anim consequat."},{"'
||'rating":9,"review":"Minim occaecat sunt laborum voluptate culpa enim elit."},{"rating":2,"review":"Reprehenderit labore incididunt ex ullamco nostrud cillum irure mollit dolore aliqua enim tempor aliquip laborum."},{"rating":2,"review":"Enim commodo '
||'adipisicing consequat commodo."},{"rating":8,"review":"Sint ut cillum Lorem ut ad aliquip elit sunt labore laboris consequat Lorem aliqua occaecat."},{"rating":2,"review":"Et consectetur in officia ullamco labore ea duis amet."},{"rating":8,"review":'
||'"Reprehenderit enim tempor proident commodo ex eu fugiat cupidatat exercitation culpa id adipisicing deserunt officia."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (39,''Boy''''s Trousers (Blue)'',34.06,utl_raw.cast_to_raw(''{"colour":"blue","gender":"Boy''''s","brand":"DIGINETIC","description":"Dolor aliq'
||'ua minim nostrud non labore in ullamco mollit mollit sit non. Duis nulla exercitation et adipisicing nostrud voluptate cupidatat eu reprehenderit.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":6,"review":"Culpa id'
||' consequat cillum dolor."},{"rating":8,"review":"Qui do quis magna nostrud exercitation enim aute dolore proident ipsum sint nostrud deserunt."},{"rating":9,"review":"Excepteur fugiat adipisicing laboris ea culpa cupidatat laborum occaecat nostrud."}'
||']}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (40,''Girl''''s Pyjamas (Black)'',8.66,utl_raw.cast_to_raw(''{"colour":"black","gender":"Girl''''s","brand":"ISOLOGICS","description":"Ex exerc'
||'itation aliquip cillum adipisicing cupidatat. Culpa labore eiusmod do ut ipsum incididunt ipsum labore.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":6,"review":"Duis minim duis dolor laboris eiusmod consequat fug'
||'iat adipisicing ex non culpa Lorem proident qui."},{"rating":4,"review":"Veniam tempor commodo aliqua sit ex mollit cillum aute officia fugiat tempor sunt nulla elit."},{"rating":10,"review":"Dolore officia aute magna eiusmod exercitation esse amet t'
||'empor."},{"rating":7,"review":"Proident nisi voluptate ea esse exercitation ullamco consequat consectetur in enim amet adipisicing commodo nulla."},{"rating":4,"review":"Irure ullamco id adipisicing fugiat Lorem do non officia nisi sunt esse mollit c'
||'onsectetur."},{"rating":9,"review":"Laboris do elit dolor officia irure esse incididunt pariatur elit."},{"rating":1,"review":"Aliqua Lorem nostrud et reprehenderit exercitation exercitation nostrud consectetur dolor."}]}''));',
'            insert into eba_demo_rest_pr'))
);
wwv_flow_imp_shared.append_to_install_script(
 p_id=>wwv_flow_imp.id(101142335494412475)
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'oducttable (product_id, product_name, unit_price, product_details) values (41,''Women''''s Dress (Black)'',10.11,utl_raw.cast_to_raw(''{"colour":"black","gender":"Women''''s","brand":"NEOCENT","description":"Eu enim aliquip deserunt est duis do sunt consequ'
||'at sit sit labore nisi. Culpa mollit cupidatat Lorem et minim sit.","sizes":[0,2,4,6,8,10,12,14,16,18,20],"reviews":[{"rating":4,"review":"Ex culpa sint ad eu quis."},{"rating":4,"review":"Irure labore adipisicing velit sint sint."},{"rating":4,"revi'
||'ew":"Ullamco dolore ad qui consequat labore do cillum velit."},{"rating":5,"review":"Velit officia eiusmod proident dolore occaecat eu eiusmod."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (1,''Boy''''s Shirt (White)'',29.55,utl_raw.cast_to_raw(''{"colour":"white","gender":"Boy''''s","brand":"COMTOURS","description":"Labore commod'
||'o velit cupidatat ullamco ea proident velit sunt adipisicing. Esse tempor exercitation reprehenderit ullamco esse incididunt dolore laboris Lorem ipsum fugiat ea.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (2,''Women''''s Shirt (Green)'',16.67,utl_raw.cast_to_raw(''{"colour":"green","gender":"Women''''s","brand":"NIKE","description":"Excepteur ani'
||'m adipisicing aliqua ad. Ex aliquip ad tempor cupidatat dolore ipsum ex anim Lorem aute amet.","sizes":[0,2,4,6,8,10,12,14,16,18,20],"reviews":[{"rating":8,"review":"Laborum ipsum adipisicing magna nulla tempor incididunt."},{"rating":10,"review":"Cu'
||'pidatat dolore nulla pariatur quis quis."},{"rating":9,"review":"Pariatur mollit dolor in deserunt cillum consectetur."},{"rating":3,"review":"Dolore occaecat mollit id ad aliqua irure reprehenderit amet eiusmod pariatur."},{"rating":10,"review":"Est'
||' pariatur et qui minim velit non consectetur sint fugiat ad."},{"rating":6,"review":"Et pariatur ipsum eu qui."},{"rating":6,"review":"Voluptate labore irure cupidatat mollit irure quis fugiat enim laborum consectetur officia sunt."},{"rating":8,"rev'
||'iew":"Irure elit do et elit aute veniam proident sunt."},{"rating":8,"review":"Aute mollit proident id veniam occaecat dolore mollit dolore nostrud."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (3,''Boy''''s Sweater (Green)'',44.17,utl_raw.cast_to_raw(''{"colour":"green","gender":"Boy''''s","brand":"KINETICA","description":"Occaecat do'
||'lore in ut et ad pariatur laborum mollit nulla exercitation. Laboris esse tempor quis velit nostrud exercitation veniam reprehenderit minim minim exercitation.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":5,"revi'
||'ew":"Sunt ad proident excepteur laboris officia eu reprehenderit dolor nostrud elit nulla pariatur incididunt Lorem."},{"rating":2,"review":"Ullamco ad amet fugiat adipisicing."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (4,''Boy''''s Trousers (White)'',43.71,utl_raw.cast_to_raw(''{"colour":"white","gender":"Boy''''s","brand":"INTERLOO","description":"Nostrud es'
||'se velit incididunt occaecat ullamco dolor quis reprehenderit proident dolore deserunt tempor qui proident. Magna deserunt sit minim eu commodo minim labore occaecat ea id sint laborum.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"r'
||'eviews":[{"rating":7,"review":"Anim culpa qui est adipisicing qui dolore enim. Sint duis aute laborum nisi ut elit Lorem nisi proident consectetur."},{"rating":6,"review":"Reprehenderit ad ipsum sint mollit aliqua."},{"rating":4,"review":"Enim culpa '
||'reprehenderit non ullamco non ex veniam. Sit do incididunt ullamco ad et et aliquip deserunt dolor officia nostrud ipsum officia nostrud. Lorem esse tempor aliqua ut quis occaecat."},{"rating":9,"review":"Pariatur sit dolor dolor tempor commodo aute '
||'culpa sit."},{"rating":2,"review":"Sunt enim sunt occaecat exercitation deserunt nisi anim mollit deserunt non laboris cillum."},{"rating":8,"review":"Exercitation et duis quis minim id duis veniam occaecat amet cillum velit pariatur tempor. Culpa al'
||'iquip adipisicing aliquip non minim occaecat eu nisi esse veniam eu aliqua."},{"rating":5,"review":"Culpa elit nulla dolore mollit tempor mollit in. Voluptate deserunt eiusmod sint id excepteur eiusmod excepteur qui enim cupidatat. Nostrud enim anim '
||'commodo adipisicing nisi dolore commodo elit commodo aliqua aliquip laborum."},{"rating":4,"review":"Exercitation sunt consequat anim nisi sunt cillum esse amet ut reprehenderit ea. Laborum labore ipsum consectetur ad excepteur proident fugiat consec'
||'tetur eiusmod incididunt officia enim ullamco."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (5,''Girl''''s Shorts (Red)'',38.28,utl_raw.cast_to_raw(''{"colour":"red","gender":"Girl''''s","brand":"OZEAN","description":"These sea shorts '
||'are designed with quick-drying and breathable materials, making them the perfect choice for a day out on the water.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (6,''Boy''''s Socks (Grey)'',19.16,utl_raw.cast_to_raw(''{"colour":"grey","gender":"Boy''''s","brand":"GROK","description":"Pariatur elit adipi'
||'sicing aute dolor sunt laborum ullamco aliqua exercitation consectetur. Lorem qui sint ullamco sint commodo anim.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":5,"review":"Ea eu sit est consectetur quis in dolor u'
||'t."},{"rating":6,"review":"In do cillum occaecat minim."},{"rating":6,"review":"Laborum laborum excepteur ipsum aliquip reprehenderit cillum irure proident voluptate eiusmod in culpa."},{"rating":9,"review":"Exercitation magna proident non deserunt c'
||'onsectetur consectetur do ex sint id irure ipsum voluptate."},{"rating":7,"review":"Aliquip irure minim quis quis voluptate reprehenderit mollit dolore."},{"rating":1,"review":"Duis mollit aute cillum aute culpa magna."},{"rating":9,"review":"Magna e'
||'xercitation exercitation sit commodo proident fugiat occaecat ullamco voluptate do consectetur officia velit."},{"rating":7,"review":"Laboris nostrud et nulla tempor commodo non aute ipsum excepteur qui dolore enim."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (7,''Boy''''s Socks (Black)'',19.58,utl_raw.cast_to_raw(''{"colour":"black","gender":"Boy''''s","brand":"ENERVATE","description":"Sit minim sun'
||'t nulla proident velit Lorem dolor. Aute reprehenderit laborum labore proident non esse nisi ex magna consectetur minim ex est.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":8,"review":"Laborum laboris eu occaecat'
||' amet adipisicing consequat veniam velit."},{"rating":2,"review":"Mollit fugiat commodo minim sint do irure duis quis ex minim ad."},{"rating":2,"review":"Sit duis aliquip proident et nostrud enim anim amet dolor consequat tempor culpa."},{"rating":3'
||',"review":"Proident aute voluptate aute irure."},{"rating":2,"review":"Ex excepteur duis irure veniam elit occaecat sit Lorem labore id minim tempor dolore officia."},{"rating":2,"review":"Amet fugiat commodo qui eiusmod dolore sint fugiat commodo el'
||'it qui esse in officia."},{"rating":2,"review":"Dolor proident proident ad officia cillum dolor aute officia enim exercitation."},{"rating":4,"review":"Dolor esse cupidatat eiusmod non veniam elit nostrud aliquip eu elit."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (8,''Boy''''s Coat (Brown)'',21.16,utl_raw.cast_to_raw(''{"colour":"brown","gender":"Boy''''s","brand":"KOFFEE","description":"Voluptate quis e'
||'xcepteur mollit id dolore. Sunt aliquip in magna ut irure nostrud duis officia fugiat aute.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (9,''Women''''s Jeans (Brown)'',29.49,utl_raw.cast_to_raw(''{"colour":"brown","gender":"Women''''s","brand":"PROTODYNE","description":"Est dolo'
||'r tempor sint commodo irure sint ut dolor proident enim Lorem. Pariatur deserunt nostrud quis minim non.","sizes":[0,2,4,6,8,10,12,14,16,18,20],"reviews":[{"rating":2,"review":"Occaecat cupidatat in id elit magna Lorem esse ad magna labore non qui ma'
||'gna."},{"rating":8,"review":"Cupidatat cupidatat laboris consectetur labore veniam aliqua et incididunt duis sunt proident."},{"rating":2,"review":"Esse ipsum veniam ullamco irure ad minim mollit consequat non dolor labore."},{"rating":1,"review":"Ci'
||'llum ea minim voluptate id ut consectetur commodo nostrud cillum eiusmod eiusmod dolore cillum veniam."},{"rating":5,"review":"Excepteur adipisicing culpa dolor id et irure sint ex non nostrud velit pariatur esse quis."},{"rating":9,"review":"Do fugi'
||'at aliqua sunt quis proident fugiat."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (10,''Women''''s Skirt (Red)'',30.69,utl_raw.cast_to_raw(''{"colour":"green","gender":"Women''''s","brand":"FLYBOYZ","description":"Qui aliquip'
||' dolor aute labore amet nostrud deserunt nulla ut veniam id. Ut aute velit tempor anim ex sit nisi.","sizes":[0,2,4,6,8,10,12,14,16,18,20],"reviews":[{"rating":7,"review":"Mollit consequat minim sit consequat deserunt duis."},{"rating":8,"review":"Qu'
||'is eu esse proident elit eu aliqua magna voluptate labore adipisicing voluptate ex do."},{"rating":6,"review":"Laborum nulla aliquip nulla adipisicing aliquip qui cupidatat aliquip in."},{"rating":3,"review":"Exercitation aute voluptate voluptate tem'
||'por sit enim ut veniam do."},{"rating":8,"review":"Cillum cillum anim aliqua eu deserunt amet eu ut veniam in qui."},{"rating":7,"review":"Nostrud aliqua ullamco irure consectetur elit nisi eu elit reprehenderit ut."},{"rating":5,"review":"Irure nisi'
||' dolore dolore ut non ad minim pariatur."},{"rating":2,"review":"Laboris aliqua sint est incididunt sunt non tempor irure reprehenderit labore."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (11,''Boy''''s Shorts (Blue)'',10.48,utl_raw.cast_to_raw(''{"colour":"blue","gender":"Boy''''s","brand":"WRAPTURE","description":"Id sit adipis'
||'icing ea dolore fugiat laborum ut dolore. Reprehenderit aliqua non adipisicing aliqua adipisicing aute ullamco consectetur est aliqua.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":7,"review":"Laborum labore exerc'
||'itation culpa sint cillum aute duis labore do excepteur."},{"rating":10,"review":"Do velit laborum adipisicing velit."},{"rating":6,"review":"Culpa dolor aute adipisicing ad."},{"rating":6,"review":"Sit sunt elit proident fugiat consectetur id incidi'
||'dunt nulla nulla magna consectetur."},{"rating":6,"review":"Adipisicing ipsum eiusmod sint ullamco dolor irure qui officia."},{"rating":4,"review":"Ipsum commodo amet non ut labore."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (12,''Boy''''s Socks (White)'',12.64,utl_raw.cast_to_raw(''{"colour":"grey","gender":"Boy''''s","brand":"HANDSHAKE","description":"Tempor labor'
||'um voluptate mollit aliquip et tempor nostrud Lorem. Nostrud anim exercitation est fugiat elit est deserunt mollit exercitation.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":8,"review":"Quis culpa laborum ex magn'
||'a."},{"rating":3,"review":"Culpa ullamco deserunt ex ea."},{"rating":3,"review":"Fugiat ullamco reprehenderit tempor nulla ad fugiat qui excepteur sunt officia deserunt nulla."},{"rating":2,"review":"Mollit dolore magna magna veniam culpa ullamco tem'
||'por esse id in occaecat excepteur ullamco ea."},{"rating":10,"review":"Culpa dolore enim consequat aliquip nulla ipsum."},{"rating":2,"review":"Excepteur aliqua sunt exercitation mollit pariatur anim tempor."},{"rating":8,"review":"Proident culpa tem'
||'por dolore deserunt anim ea deserunt quis duis."},{"rating":8,"review":"Reprehenderit est do quis quis reprehenderit adipisicing qui Lorem mollit sit labore veniam."},{"rating":1,"review":"Mollit dolore ad laboris ut cillum velit in sint labore nulla'
||' Lorem minim."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (13,''Boy''''s Hoodie (Grey)'',26.14,utl_raw.cast_to_raw(''{"colour":"grey","gender":"Boy''''s","brand":"SUNCLIPSE","description":"Voluptate ir'
||'ure voluptate labore sint amet occaecat elit ea incididunt aliquip. Tempor laboris tempor tempor magna officia in aliqua consequat elit occaecat.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":7,"review":"Fugiat of'
||'ficia nostrud cillum duis consequat sunt culpa duis laborum reprehenderit laborum."},{"rating":10,"review":"Et do reprehenderit do irure tempor id aliquip voluptate anim consequat amet sunt."},{"rating":3,"review":"Minim adipisicing dolore eiusmod la'
||'borum aliqua non Lorem laboris minim est cillum qui qui Lorem."},{"rating":4,"review":"Esse Lorem aute deserunt quis."},{"rating":1,"review":"Ex deserunt aliqua consectetur elit cillum cillum ex et mollit sint."},{"rating":4,"review":"Magna esse ipsu'
||'m ipsum irure officia nostrud ad velit sit."},{"rating":8,"review":"Mollit et tempor esse fugiat fugiat ad voluptate irure est sunt proident magna anim ex."},{"rating":4,"review":"Nulla nisi esse ut exercitation commodo irure non amet labore mollit e'
||'t elit."},{"rating":1,"review":"Enim officia anim proident consequat."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (14,''Women''''s Skirt (Brown)'',13.97,utl_raw.cast_to_raw(''{"colour":"brown","gender":"Women''''s","brand":"ISOTRONIC","description":"Magna L'
||'orem do ad incididunt qui magna irure commodo nisi. Dolore ipsum adipisicing magna ea ullamco Lorem officia culpa do laborum voluptate.","sizes":[0,2,4,6,8,10,12,14,16,18,20],"reviews":[{"rating":1,"review":"Officia occaecat laboris magna sint tempor'
||' officia deserunt proident eu excepteur."},{"rating":2,"review":"Aliqua nisi sint enim ad mollit qui."},{"rating":3,"review":"Fugiat excepteur eiusmod incididunt Lorem nostrud nostrud labore aute esse aliquip."},{"rating":8,"review":"Voluptate ad eni'
||'m anim culpa veniam amet."},{"rating":3,"review":"Do cillum quis cillum Lorem tempor labore laboris."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (15,''Girl''''s Coat (Blue)'',13.09,utl_raw.cast_to_raw(''{"colour":"blue","gender":"Girl''''s","brand":"DECRATEX","description":"Proident ut o'
||'fficia non duis est eu aliquip culpa cupidatat est incididunt amet ipsum veniam. Aliqua ea cupidatat incididunt ad excepteur irure ad pariatur occaecat duis incididunt excepteur amet.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"rev'
||'iews":[{"rating":8,"review":"Officia irure deserunt mollit Lorem dolor dolor minim deserunt."},{"rating":10,"review":"Aliqua nostrud dolore enim dolore reprehenderit officia quis aliquip irure occaecat et."},{"rating":2,"review":"Consectetur consequa'
||'t ut cupidatat et elit et cillum veniam exercitation Lorem culpa ipsum."},{"rating":9,"review":"Nisi tempor incididunt Lorem sit sit do mollit qui aliquip qui eu quis Lorem."},{"rating":9,"review":"Sunt nulla ad dolore fugiat cillum et."},{"rating":8'
||',"review":"Incididunt nostrud officia sunt cupidatat culpa ex id ut."},{"rating":1,"review":"Deserunt sit officia enim adipisicing exercitation velit ipsum dolore laboris officia mollit ex esse et."},{"rating":3,"review":"Aliqua nulla laborum id moll'
||'it irure incididunt aliqua mollit qui nostrud consectetur sint aliqua quis."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (42,''Boy''''s Jeans (Black)'',16.64,utl_raw.cast_to_raw(''{"colour":"black","gender":"Boy''''s","brand":"EARTHMARK","description":"Duis dolor '
||'est eu elit anim proident aliqua eu tempor. Est fugiat non ullamco et pariatur nulla exercitation eiusmod id officia minim.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":10,"review":"Anim aliquip id reprehenderit '
||'laboris."},{"rating":7,"review":"Nostrud non cupidatat id eiusmod aliquip anim ullamco aliquip cupidatat excepteur dolor reprehenderit."},{"rating":6,"review":"Veniam consequat deserunt nostrud sunt est commodo sint eu fugiat ipsum deserunt aute elit'
||' est."},{"rating":9,"review":"Eiusmod excepteur ut ullamco eiusmod labore deserunt."},{"rating":5,"review":"Aute deserunt eu voluptate id irure aliquip duis sint proident dolore dolor."},{"rating":5,"review":"Dolore mollit quis elit qui voluptate ad '
||'culpa voluptate elit consectetur."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (43,''Boy''''s Trousers (Black)'',39.32,utl_raw.cast_to_raw(''{"colour":"blue","gender":"Boy''''s","brand":"PHOLIO","description":"Voluptate ex'
||' mollit enim minim nulla proident dolor eu nostrud velit. Ex ullamco aute dolor duis elit elit.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":3,"review":"Labore non exercitation anim id deserunt excepteur dolore s'
||'unt deserunt dolor."},{"rating":5,"review":"Laborum eiusmod mollit amet nulla ex esse culpa ut elit reprehenderit labore ex Lorem cupidatat."},{"rating":7,"review":"Reprehenderit dolore aute consectetur voluptate excepteur veniam nulla ad."},{"rating'
||'":5,"review":"Reprehenderit proident in elit pariatur."},{"rating":8,"review":"Magna laborum ad deserunt voluptate enim excepteur enim dolore veniam consequat officia anim dolore mollit."},{"rating":3,"review":"Elit et reprehenderit amet aute amet la'
||'boris minim irure sint."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (44,''Women''''s Coat (Black)'',31.68,utl_raw.cast_to_raw(''{"colour":"black","gender":"Women''''s","brand":"COMVEYOR","description":"Exercitat'
||'ion ut ad reprehenderit sunt eiusmod sit. Qui nisi ut esse mollit nisi.","sizes":[0,2,4,6,8,10,12,14,16,18,20],"reviews":[{"rating":7,"review":"Ad consequat nisi est tempor nisi nulla veniam consectetur ad ut laborum magna."},{"rating":8,"review":"In'
||'cididunt magna ipsum cupidatat elit eiusmod enim mollit eiusmod id esse sit elit irure Lorem."},{"rating":7,"review":"Aute aliquip et esse consequat reprehenderit ipsum ut."},{"rating":8,"review":"Consectetur commodo cupidatat nostrud qui labore magn'
||'a duis sit."},{"rating":8,"review":"Qui occaecat elit exercitation do est officia fugiat adipisicing velit occaecat deserunt Lorem ex adipisicing."},{"rating":6,"review":"Velit est commodo esse sint id ullamco aute ut ut officia laboris irure in."},{'
||'"rating":10,"review":"Ad nulla labore cupidatat do laboris do elit cupidatat excepteur occaecat cupidatat."},{"rating":5,"review":"Do esse magna occaecat non."},{"rating":10,"review":"Et sint qui tempor nostrud sunt sit duis dolor excepteur voluptate'
||'."}]}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (45,''Men''''s Jeans (Grey)'',27.64,utl_raw.cast_to_raw(''{"colour":"grey","gender":"Men''''s","brand":"QNEKT","description":"Dolore duis minim'
||' dolor est fugiat sit dolor nisi anim Lorem culpa id. Consequat labore et reprehenderit pariatur culpa minim laboris pariatur esse aliquip.","sizes":["XS","S","M","L","XL","XXL"],"reviews":[{"rating":7,"review":"Veniam qui ipsum consequat laboris ad '
||'aliquip est reprehenderit esse sint cupidatat tempor."},{"rating":8,"review":"Ut anim anim ipsum ipsum irure."},{"rating":9,"review":"Non qui sunt ullamco deserunt sint."},{"rating":10,"review":"Nostrud fugiat velit aliqua eu culpa do excepteur do."}'
||']}''));',
'            insert into eba_demo_rest_producttable (product_id, product_name, unit_price, product_details) values (46,''Girl''''s Trousers (Red)'',39.16,utl_raw.cast_to_raw(''{"colour":"red","gender":"Girl''''s","brand":"OTHERSIDE","description":"Lorem offi'
||'cia laborum deserunt veniam cillum anim adipisicing minim aute ad esse sint sit tempor. Magna enim proident eiusmod incididunt adipisicing duis deserunt pariatur sint officia occaecat est minim ipsum.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr'
||'","9-10 Yr"],"reviews":[{"rating":9,"review":"Magna magna ullamco ipsum pariatur occaecat eiusmod amet ea sunt reprehenderit dolore aute voluptate."},{"rating":7,"review":"Eiusmod cupidatat cillum qui dolor consequat."},{"rating":4,"review":"Do proid'
||'ent cillum cupidatat laboris in cillum."},{"rating":5,"review":"Sunt eiusmod ea labore est sint adipisicing velit duis."},{"rating":6,"review":"Ut consectetur ad magna officia ut aliqua deserunt magna."}]}''));',
'           -- tasks data ',
'',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (1, ''ACME Web Express'', ''Identify server requirements'', to_date(''2024-02-23'
||' 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2024-02-24 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''John Watson'', 200, 500, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (2, ''ACME Web Express'', ''Determine Web listener configuration(s)'', to_date('
||'''2025-02-25 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-25 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''James Cassidy'', 600, 500, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (3, ''ACME Web Express'', ''Run installation'', to_date(''2025-02-28 14:34:02'','''
||'YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-28 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''James Cassidy'', 200, 200, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (4, ''ACME Web Express'', ''Create pilot workspace'', to_date(''2025-03-02 14:34'
||':02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-02 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''John Watson'', 100, 100, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (5, ''ACME Web Express'', ''Specify security authentication scheme(s)'', to_dat'
||'e(''2025-03-07 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-07 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Open'', ''John Watson'', 200, 300, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (6, ''ACME Web Express'', ''Configure Workspace provisioning'', to_date(''2025-0'
||'3-08 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-08 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Open'', ''John Watson'', 200, 100, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (7, ''ACME Web Express'', ''Select servers for Development, Test, Production'','
||' to_date(''2025-03-11 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-13 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Open'', ''James Cassidy'', 200, 600, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (8, ''Bug Tracker'', ''Document quality assurance procedures'', to_date(''2025-0'
||'1-09 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-01-12 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''Myra Sutcliff'', 3000, 2000, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (9, ''Bug Tracker'', ''Review automated testing tools'', to_date(''2025-01-13 14'
||':34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-01-15 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''Myra Sutcliff'', 750, 1500, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (10, ''Bug Tracker'', ''Implement bug tracking software'', to_date(''2025-01-28 '
||'14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-01-28 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''Myra Sutcliff'', 100, 100, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (11, ''Bug Tracker'', ''Train developers on tracking bugs'', to_date(''2025-02-0'
||'4 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-09 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''On-Hold'', ''Myra Sutcliff'', 1000, 2000, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (12, ''Bug Tracker'', ''Measure effectiveness of improved QA'', to_date(''2025-0'
||'2-16 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-16 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Pending'', ''Myra Sutcliff'', 0, 500, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (13, ''Convert Spreadsheets'', ''Collect mission-critical spreadsheets'', to_da'
||'te(''2025-02-22 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-23 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''Pam King'', 2500, 4000, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (14, ''Convert Spreadsheets'', ''Lock spreadsheets'', to_date(''2025-02-25 14:34'
||':02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-25 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''Pam King'', 300, 800, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (15, ''Convert Spreadsheets'', ''Create ACME Web Express applications from spr'
||'eadsheets'', to_date(''2025-03-05 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-09 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Open'', ''Pam King'', 6000, 10000, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (16, ''Convert Spreadsheets'', ''Send links to previous spreadsheet owners'', t'
||'o_date(''2025-03-11 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-11 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Pending'', ''Pam King'', 0, 500, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (17, ''Discussion Forum'', ''Identify owners'', to_date(''2025-01-29 14:34:02'','''
||'YYYY-MM-DD HH24:MI:SS''), to_date(''2025-01-29 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''Hank Davis'', 250, 300, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (18, ''Discussion Forum'', ''Install ACME Web Express application on internet '
||'server'', to_date(''2025-02-04 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-04 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''Hank Davis'', 100, 100, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (19, ''Discussion Forum'', ''Monitor participation'', to_date(''2025-03-06 14:34'
||':02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-07 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Open'', ''Hank Davis'', 450, 500, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (20, ''Email Integration'', ''Complete plan'', to_date(''2025-02-15 14:34:02'',''Y'
||'YYY-MM-DD HH24:MI:SS''), to_date(''2025-02-16 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''Bob Nile'', 3000, 1500, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (21, ''Email Integration'', ''Check software licenses'', to_date(''2025-02-18 14'
||':34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-18 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''Bob Nile'', 200, 200, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (22, ''Email Integration'', ''Get R'))
);
wwv_flow_imp_shared.append_to_install_script(
 p_id=>wwv_flow_imp.id(101142335494412475)
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FPs for new server'', to_date(''2025-03-04 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-05 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''Bob Nile'', 2000, 1000, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (23, ''Email Integration'', ''Purchase backup server'', to_date(''2025-03-21 14:'
||'34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-23 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Pending'', ''Bob Nile'', 0, 3000, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (24, ''Employee Satisfaction Survey'', ''Complete questionnaire'', to_date(''202'
||'5-02-08 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-09 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''Irene Jones'', 1200, 800, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (25, ''Employee Satisfaction Survey'', ''Review with legal'', to_date(''2025-02-'
||'10 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-10 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''On-Hold'', ''Irene Jones'', 200, 400, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (26, ''Employee Satisfaction Survey'', ''Plan rollout schedule'', to_date(''2025'
||'-02-11 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-11 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''On-Hold'', ''Irene Jones'', 0, 750, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (27, ''Client Server Conversion'', ''Identify pilot Client Server applications'
||''', to_date(''2025-02-20 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-20 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''Scott Spencer'', 200, 200, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (28, ''Client Server Conversion'', ''Migrate pilot Client Server to ACME Web E'
||'xpress'', to_date(''2025-02-22 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-25 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''Scott Spencer'', 4500, 5000, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (29, ''Client Server Conversion'', ''Post-migration review'', to_date(''2025-02-'
||'26 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-26 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''Pam King'', 500, 300, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (30, ''Client Server Conversion'', ''Plan migration schedule'', to_date(''2025-0'
||'3-01 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-01 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''Pam King'', 1000, 1000, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (31, ''Client Server Conversion'', ''Migrate Client Server applications'', to_d'
||'ate(''2025-03-06 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-09 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Open'', ''Pam King'', 300, 12000, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (32, ''Client Server Conversion'', ''Test migrated applications'', to_date(''202'
||'5-03-11 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-12 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Pending'', ''Russ Saunders'', 0, 6000, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (33, ''Client Server Conversion'', ''User acceptance testing'', to_date(''2025-0'
||'3-15 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-17 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Pending'', ''Russ Saunders'', 0, 2500, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (34, ''Client Server Conversion'', ''End-user Training'', to_date(''2025-03-21 1'
||'4:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-21 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Pending'', ''Myra Sutcliff'', 0, 2500, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (35, ''Client Server Conversion'', ''Rollout migrated Client Server in ACME We'
||'b Express'', to_date(''2025-03-22 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-22 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Pending'', ''Pam King'', 0, 200, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (36, ''Load Packaged Apps'', ''Identify point solutions required'', to_date(''20'
||'25-02-22 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-22 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''John Watson'', 200, 300, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (37, ''Load Packaged Apps'', ''Install in development'', to_date(''2025-02-23 14'
||':34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-23 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''John Watson'', 100, 100, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (38, ''Load Packaged Apps'', ''Customize solutions'', to_date(''2025-02-26 14:34'
||':02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-28 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Open'', ''John Watson'', 1500, 4000, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (39, ''Load Packaged Apps'', ''Implement in Production'', to_date(''2025-03-01 1'
||'4:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-01 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''On-Hold'', ''John Watson'', 200, 1500, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (40, ''Load Packaged Apps'', ''Train Administrators of Packaged Apps'', to_date'
||'(''2025-03-03 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-03 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Pending'', ''John Watson'', 0, 1000, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (41, ''Maintain Support Systems'', ''HR software upgrades'', to_date(''2025-02-0'
||'1 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-04 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''Pam King'', 8000, 7000, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (42, ''Maintain Support Systems'', ''Apply Billing System updates'', to_date(''2'
||'025-02-05 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-07 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''Russ Saunders'', 9500, 7000, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (43, ''Maintain Support Systems'', ''Arrange for vacation coverage'', to_date('''
||'2025-02-09 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-09 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Open'', ''Al Bines'', 300, 500, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (44, ''Maintain Support Systems'', ''Investigate new Virus Protection software'
||''', to_date(''2025-03-21 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-22 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Open'', ''Pam King'', 1700, 1500, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (45, ''Migrate Desktop Application'', ''Identify pilot desktop applications'', '
||'to_date(''2025-02-13 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-13 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''Bob Nile'', 300, 500, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (46, ''Migrate Desktop Application'', ''Migrate pilot applications to ACME Web'
||' Express'', to_date(''2025-02-15 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-16 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''Bob Nile'', 1250, 1500, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (47, ''Migrate Desktop Application'', ''Plan migration schedule'', to_date(''202'
||'5-02-19 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-19 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''Bob Nile'', 600, 200, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (48, ''Migrate Desktop Application'', ''Migrate desktop applications'', to_date'
||'(''2025-03-14 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-18 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Open'', ''Bob Nile'', 1000, 8000, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (49, ''Migrate Desktop Application'', ''User acceptance testing'', to_date(''202'
||'5-03-20 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-21 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Open'', ''Bob Nile'', 1500, 6000, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (50, ''Migrate Desktop Application'', ''End-user Training'', to_date(''2025-03-2'
||'4 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-25 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Open'', ''John Watson'', 0, 2000, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (51, ''Migrate Desktop Application'', ''Post-migration review'', to_date(''2025-'
||'04-07 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-04-08 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Pending'', ''Bob Nile'', 100, 100, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (52, ''Migrate from Legacy Server'', ''Obtain Legacy Server credentials'', to_d'
||'ate(''2025-03-26 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-26 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Pending'', ''James Cassidy'', 0, 500, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (53, ''Migrate from Legacy Server'', ''Map data usage'', to_date(''2025-03-28 14'
||':34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-30 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Pending'', ''Bob Nile'', 0, 8000, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (54, ''Migrate from Legacy Server'', ''Identify integration points'', to_date('''
||'2025-03-31 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-04-01 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Pending'', ''Bob Nile'', 0, 2000, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (55, ''Migrate from Legacy Server'', ''Create DB Connection to new server'', to'
||'_date(''2025-03-31 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-31 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Pending'', ''Scott Spencer'', 0, 100, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (56, ''Migrate from Legacy Server'', ''Migrate table structures'', to_date(''202'
||'5-03-25 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-26 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Pending'', ''John Watson'', 0, 2500, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (57, ''Migrate from Legacy Server'', ''Import data'', to_date(''2025-04-06 14:34'
||':02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-04-07 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Pending'', ''John Watson'', 0, 1000, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (58, ''Migrate from Legacy Server'', ''Convert processes'', to_date(''2025-04-06'
||' 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-04-08 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Pending'', ''Pam King'', 0, 3000, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (59, ''Migrate from Legacy Server'', ''Notify users'', to_date(''2025-04-11 14:3'
||'4:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-04-11 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Pending'', ''Bob Nile'', 0, 200, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (60, ''Migrate from Legacy Server'', ''Cut over to new database'', to_date(''202'
||'5-04-12 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-04-12 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Pending'', ''Bob Nile'', 0, 1500, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (61, ''Migrate from Legacy Server'', ''Decommission Legacy Server'', to_date(''2'
||'025-04-26 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-04-26 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Pending'', ''Al Bines'', 0, 500, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (62, ''Public Website'', ''Determine host server'', to_date(''2025-02-08 14:34:0'
||'2'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-08 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''Tiger Scott'', 200, 200, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (63, ''Public Website'', ''Check software licenses'', to_date(''2025-02-08 14:34'
||':02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-08 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''Tom Suess'', 100, 100, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (64, ''Public Website'', ''Purchase additional software licenses, if needed'', '
||'to_date(''2025-02-09 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-10 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''On-Hold'', ''Al Bines'', 300, 1000, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (65, ''Public Website'', ''Develop web pages'', sysdate, to_date(''2025-03-08 14'
||':34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Open'', ''Tiger Scott'', 0, 2000, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (66, ''Public Website'', ''Plan rollout schedule'', to_date(''2025-03-09 14:34:0'
||'2'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-09 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Open'', ''Tom Suess'', 0, 100, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (67, ''Software Project Tracking'', ''Conduct project kickoff meeting'', to_dat'
||'e(''2025-03-03 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-03 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''Pam King'', 100, 100, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (68, ''Software Project Tracking'', ''Customize Software Projects software'', t'
||'o_date(''2025-03-06 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), sysdate, ''Open'', ''Tom Suess'', 600, 1000, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (69, ''Software Project Tracking'', ''Enter base data (Projects, Milestones, e'
||'tc.)'', to_date(''2025-03-08 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-08 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Open'', ''Tom Suess'', 200, 200, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (70, ''Software Project Tracking'', ''Load current tasks and enhancements'', to'
||'_date(''2025-03-10 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-03-10 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Open'', ''Tom Suess'', 400, 500, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (71, ''Training for ACME Web Express'', ''Create training workspace'', to_date('
||'''2025-02-20 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-21 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''James Cassidy'', 500, 700, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (72, ''Training for ACME Web Express'', ''Publish links to self-study courses'''
||', to_date(''2025-02-22 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-22 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''Closed'', ''John Watson'', 100, 100, sysdate, null, sysdate, null);',
'            insert into eba_demo_rest_tasks (id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, created, created_by, updated, updated_by) values (73, ''Training for ACME Web Express'', ''Publish development standards'', to_d'
||'ate(''2025-02-22 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), to_date(''2025-02-23 14:34:02'',''YYYY-MM-DD HH24:MI:SS''), ''On-Hold'', ''John Watson'', 1000, 2000, sysdate, null, sysdate, null);',
'',
'        -- update tasks to current time ',
'            update eba_demo_rest_tasks',
'               set start_date = start_date + (SYSDATE - TO_DATE(''05052025'',''MMDDYYYY'')),',
'                   end_date = end_date + (SYSDATE - TO_DATE(''05052025'',''MMDDYYYY''));',
'      ',
'        -- Order items data',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (349,1,11,30.69,5);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (349,2,12,10.48,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (401,1,28,10.24,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (401,2,12,10.48,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (430,1,18,24.46,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (430,2,15,13.97,5);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (437,1,37,29.51,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (437,2,20,28.21,5);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (453,1,43,16.64,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (453,2,2,29.55,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (506,1,18,24.46,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (506,2,21,38.34,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (513,1,11,30.69,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (513,2,4,44.17,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (513,3,19,14.34,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (544,1,37,29.51,5);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (544,2,6,38.28,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (544,3,27,39.91,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (585,1,29,24.71,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (585,2,31,28.59,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (585,3,37,29.51,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (608,1,15,13.97,5);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (608,2,23,10.33,5);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (608,3,35,7.18,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (672,1,46,39.16,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (687,1,42,10.11,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (687,2,13,12.64,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (707,1,18,24.46,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (760,1,46,39.16,5);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (760,2,20,28.21,1);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (761,1,33,37,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (761,2,2,29.55,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (765,1,34,23.32,5);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (765,2,13,12.64,5);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (766,1,12,10.48,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (769,1,42,10.11,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (808,1,39,11,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (808,2,13,12.64,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1,1,33,37,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1,2,11,30.69,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (3,1,41,8.66,5);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (5,1,40,34.06,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (5,2,32,5.65,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (7,1,36,49.12,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (7,2,29,24.71,1);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (17,1,46,39.16,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (17,2,26,48.75,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (20,1,27,39.91,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (20,2,9,21.16,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (20,3,32,5.65,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (63,1,7,19.16,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (63,2,24,48.39,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (78,1,3,16.67,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (78,2,35,7.18,1);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (78,3,9,21.16,5);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (79,1,34,23.32,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (79,2,8,19.58,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (79,3,4,44.17,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (82,1,21,38.34,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (82,2,10,29.49,1);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (92,1,15,13.97,1);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (125,1,22,39.78,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product'))
);
wwv_flow_imp_shared.append_to_install_script(
 p_id=>wwv_flow_imp.id(101142335494412475)
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'_id, unit_price, quantity) values (125,2,39,11,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (132,1,11,30.69,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (132,2,31,28.59,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (132,3,10,29.49,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (159,1,8,19.58,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (182,1,23,10.33,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (182,2,20,28.21,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (196,1,3,16.67,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (196,2,23,10.33,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (201,1,19,14.34,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (201,2,36,49.12,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (204,1,33,37,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (204,2,12,10.48,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (240,1,12,10.48,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (240,2,17,39.89,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (290,1,11,30.69,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (290,2,27,39.91,5);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (290,3,38,22.98,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (298,1,9,21.16,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (298,2,43,16.64,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (306,1,28,10.24,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (307,1,38,22.98,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (307,2,19,14.34,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (331,1,34,23.32,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1483,1,46,39.16,5);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1483,2,23,10.33,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1483,3,14,26.14,1);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1486,1,44,39.32,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1486,2,36,49.12,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1486,3,14,26.14,5);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1491,1,12,10.48,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1498,1,16,13.09,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1498,2,5,43.71,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1513,1,36,49.12,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1513,2,5,43.71,1);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1513,3,44,39.32,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1520,1,13,12.64,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1520,2,46,27.64,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1520,3,33,37,1);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1525,1,40,34.06,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1525,2,17,39.89,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1543,1,21,38.34,1);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1543,2,26,48.75,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1543,3,11,30.69,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1549,1,14,26.14,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1549,2,43,16.64,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1552,1,34,23.32,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1555,1,17,39.89,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1555,2,34,23.32,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1560,1,8,19.58,5);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1560,2,21,38.34,1);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1561,1,43,16.64,1);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1561,2,7,19.16,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1635,1,15,13.97,1);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1635,2,4,44.17,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1635,3,36,49.12,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1637,1,25,9.8,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1659,1,14,26.14,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1730,1,20,28.21,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1730,2,11,30.69,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1731,1,39,11,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1731,2,21,38.34,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1776,1,34,23.32,1);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1776,2,25,9.8,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1776,3,20,28.21,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1808,1,14,26.14,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1817,1,34,23.32,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1817,2,42,10.11,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1817,3,22,39.78,1);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1890,1,2,29.55,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1890,2,46,39.16,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (832,1,10,29.49,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (832,2,9,21.16,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (839,1,38,22.98,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (839,2,7,19.16,5);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (862,1,23,10.33,1);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (862,2,33,37,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (899,1,31,28.59,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (920,1,41,8.66,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (920,2,4,44.17,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (928,1,3,16.67,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (928,2,12,10.48,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (928,3,35,7.18,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (943,1,6,38.28,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (950,1,22,39.78,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (950,2,23,10.33,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (960,1,26,48.75,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (960,2,43,16.64,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (960,3,24,48.39,1);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (968,1,30,37.34,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (968,2,13,12.64,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (968,3,35,7.18,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (972,1,27,39.91,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (972,2,23,10.33,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (986,1,12,10.48,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (986,2,14,26.14,5);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (993,1,35,7.18,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (993,2,14,26.14,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (993,3,19,14.34,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1052,1,36,49.12,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1052,2,33,37,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1052,3,44,39.32,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1058,1,16,13.09,5);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1058,2,34,23.32,1);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1058,3,2,29.55,1);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1082,1,22,39.78,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1082,2,20,28.21,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1102,1,10,29.49,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1102,2,39,11,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1102,3,14,26.14,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1111,1,41,8.66,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1111,2,13,12.64,1);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1119,1,25,9.8,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1119,2,9,21.16,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1119,3,45,31.68,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1121,1,27,39.91,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1169,1,9,21.16,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1169,2,22,39.78,5);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1191,1,33,37,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1191,2,40,34.06,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1191,3,14,26.14,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1195,1,13,12.64,1);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1200,1,19,14.34,5);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1200,2,27,39.91,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1200,3,7,19.16,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1260,1,30,37.34,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1260,2,5,43.71,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1321,1,43,16.64,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1321,2,37,29.51,1);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1321,3,46,39.16,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1348,1,31,28.59,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1348,2,23,10.33,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1348,3,3,16.67,5);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1363,1,11,30.69,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1363,2,14,26.14,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1373,1,17,39.89,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1373,2,29,24.71,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1390,1,12,10.48,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1390,2,28,10.24,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1390,3,9,21.16,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1400,1,11,30.69,5);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1400,2,6,38.28,5);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1418,1,31,28.59,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1418,2,45,31.68,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1437,1,3,16.67,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1439,1,46,27.64,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1439,2,9,21.16,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1448,1,2,29.55,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1450,1,4,44.17,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1451,1,10,29.49,5);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1451,2,35,7.18,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1455,1,45,31.68,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1455,2,23,10.33,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1468,1,2,29.55,3);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1468,2,45,31.68,4);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1471,1,14,26.14,2);',
'            insert into eba_demo_rest_orderitems (order_id, line_item_id, product_id, unit_price, quantity) values (1471,2,6,38.28,3);',
'',
'',
'        -- purchase order ',
'',
'',
'            insert into eba_demo_rest_purchaseorders (id,po) values (81,''{"PONumber":9,"Reference":"AHUNOLD-20141130","Requestor":"Alexander Hunold","User":"AHUNOLD","Special Instructions":"Counter to Counter","LineItems":[{"ItemNumber":1,"Part":{"De'
||'scription":"Fatal Fury Ova"},"Quantity":7.0}]}'');',
'            insert into eba_demo_rest_purchaseorders (id,po) values (82,''{"PONumber":10,"Reference":"STOBIAS-20140515","Requestor":"Sigal Tobias","User":"STOBIAS","Special Instructions":"Surface Mail","LineItems":[{"ItemNumber":1,"Part":{"Description'
||'":"The Manchurian Candidate"},"Quantity":3.0},{"ItemNumber":2,"Part":{"Description":"The Great Santini"},"Quantity":5.0}]}'');',
'            insert into eba_demo_rest_purchaseorders (id,po) values (83,''{"PONumber":11,"Reference":"STOBIAS-20140516","Requestor":"Sigal Tobias","User":"STOBIAS","Special Instructions":"Courier","LineItems":[{"ItemNumber":1,"Part":{"Description":"Sh'
||'anghai Triad"},"Quantity":7.0},{"ItemNumber":2,"Part":{"Description":"Hanover Street"},"Quantity":1.0},{"ItemNumber":3,"Part":{"Description":"Dr. Seuss'''' How the Grinch Stole Christmas"},"Quantity":5.0}]}'');',
'            insert into eba_demo_rest_purchaseorders (id,po) values (84,''{"PONumber":12,"Reference":"SVOLLMAN-20140502","Requestor":"Shanta Vollman","User":"SVOLLMAN","Special Instructions":"Ground","LineItems":[{"ItemNumber":1,"Part":{"Description":'
||'"Dakota"},"Quantity":7.0}]}'');',
'            insert into eba_demo_rest_purchaseorders (id,po) values (85,''{"PONumber":13,"Reference":"SVOLLMAN-20140524","Requestor":"Shanta Vollman","User":"SVOLLMAN","Special Instructions":"Air Mail","LineItems":[{"ItemNumber":1,"Part":{"Description'
||'":"Enemy Mine"},"Quantity":7.0},{"ItemNumber":2,"Part":{"Description":"The Pink Panther"},"Quantity":5.0}]}'');',
'            insert into eba_demo_rest_purchaseorders (id,po) values (86,''{"PONumber":14,"Reference":"SVOLLMAN-20140525","Requestor":"Shanta Vollman","User":"SVOLLMAN","Special Instructions":"Counter to Counter","LineItems":[{"ItemNumber":1,"Part":{"D'
||'escription":"Mr. Mom"},"Quantity":8.0},{"ItemNumber":2,"Part":{"Description":"Confessions of Sorority Girls"},"Quantity":4.0},{"ItemNumber":3,"Part":{"Description":"Attraction"},"Quantity":3.0}]}'');',
'            insert into eba_demo_rest_purchaseorders (id,po) values (87,''{"PONumber":15,"Reference":"SVOLLMAN-20140506","Requestor":"Shanta Vollman","User":"SVOLLMAN","Special Instructions":"COD","LineItems":[{"ItemNumber":1,"Part":{"Description":"Tr'
||'ue Crime"},"Quantity":7.0}]}'');',
'            insert into eba_demo_rest_purchaseorders (id,po) values (88,''{"PONumber":16,"Reference":"SVOLLMAN-20140531","Requestor":"Shanta Vollman","User":"SVOLLMAN","Special Instructions":"Courier","LineItems":[{"ItemNumber":1,"Part":{"Description"'
||':"Karaoke Favorites Vol. 3"},"Quantity":1.0},{"ItemNumber":2,"Part":{"Description":"Traveller"},"Quantity":9.0}]}'');',
'            insert into eba_demo_rest_purchaseorders (id,po) values (89,''{"PONumber":17,"Reference":"TFOX-20140511","Requestor":"Tayler Fox","User":"TFOX","Special Instructions":"Ground","LineItems":[{"ItemNumber":1,"Part":{"Description":"Circuit 5"}'
||',"Quantity":3.0},{"ItemNumber":2,"Part":{"Description":"Eric Clapton: July 1986"},"Quantity":2.0},{"ItemNumber":3,"Part":{"Description":"Adventures of the Old West: The 49ers and the California Gold Rush"},"Quantity":3.0}]}'');',
'            insert into eba_demo_rest_purchaseorders (id,po) values (90,''{"PONumber":18,"Reference":"GGEONI-20141114","Requestor":"Girard Geoni","User":"GGEONI","Special Instructions":"Courier","LineItems":[{"ItemNumber":1,"Part":{"Description":"Gene'
||'si: La Creazione e il Diluvio"},"Quantity":6.0}]}'');',
'            insert into eba_demo_rest_purchaseorders (id,po) values (91,''{"PONumber":1,"Reference":"MSULLIVA-20141102","Requestor":"Martha Sullivan","User":"MSULLIVA","Special Instructions":"Surface Mail","LineItems":[{"ItemNumber":1,"Part":{"Descrip'
||'tion":"Run Lola Run"},"Quantity":7.0},{"ItemNumber":2,"Part":{"Description":"Felicia''''s Journey"},"Quantity":1.0}]}'');',
'            insert into eba_demo_rest_purchaseorders (id,po) values (92,''{"PONumber":2,"Reference":"MSULLIVA(-20141113","Requestor":"Martha Sullivan","User":"MSULLIVA","Special Instructions":"Next Day Air","LineItems":[{"ItemNumber":1,"Part":{"Descri'
||'ption":"Menace II Society"},"Quantity":3.0},{"ItemNumber":2,"Part":{"Description":"Best of Musikladen Live: Procol Harum"},"Quantity":5.0},{"ItemNumber":3,"Part":{"Description":"Anywhere But Here"},"Quantity":9.0}]}'');',
'            insert into eba_demo_rest_purchaseorders (id,po) values (93,''{"PONumber":3,"Reference":"TRAJS-20140518","Requestor":"Trenna Rajs","User":"TRAJS","Special Instructions":"Courier","LineItems":[{"ItemNumber":1,"Part":{"Description":"Tora! To'
||'ra! Tora!"},"Quantity":2.0}]}'');',
'            insert into eba_demo_rest_purchaseorders (id,po) values (94,''{"PONumber":4,"Reference":"TRAJS-20140520","Requestor":"Trenna Rajs","User":"TRAJS","Special Instructions":"Ground","LineItems":[{"ItemNumber":1,"Part":{"Description":"Mistress"'
||'},"Quantity":6.0},{"ItemNumber":2,"Part":{"Description":"Haunted"},"Quantity":6.0}]}'');',
'            insert into eba_demo_rest_purchaseorders (id,po) values (95,''{"PONumber":5,"Reference":"MSULLIVA-20141121","Requestor":"Martha Sullivan","User":"MSULLIVA","Special Instructions":"Air Mail","LineItems":[{"ItemNumber":1,"Part":{"Description'
||'":"Anaconda"},"Quantity":9.0},{"ItemNumber":2,"Part":{"Description":"Tron"},"Quantity":2.0},{"ItemNumber":3,"Part":{"Description":"The Evening Star"},"Quantity":6.0}]}'');',
'            insert into eba_demo_rest_purchaseorders (id,po) values (96,''{"PONumber":6,"Reference":"TRAJS-20140530","Requestor":"Trenna Rajs","User":"TRAJS","Special Instructions":"Next Day Air","LineItems":[{"ItemNumber":1,"Part":{"Description":"La '
||'Cucaracha"},"Quantity":8.0}]}'');',
'            insert into eba_demo_rest_purchaseorders (id,po) values (97,''{"PONumber":7,"Reference":"VJONES-20140503","Requestor":"Vance Jones","User":"VJONES","Special Instructions":"Hand Carry","LineItems":[{"ItemNumber":1,"Part":{"Description":"The'
||' Kentucky Fried Movie"},"Quantity":3.0},{"ItemNumber":2,"Part":{"Description":"The Loves of Carmen"},"Quantity":4.0}]}'');',
'            insert into eba_demo_rest_purchaseorders (id,po) values (98,''{"PONumber":8,"Reference":"VJONES-20140504","Requestor":"Vance Jones","User":"VJONES","Special Instructions":"Counter to Counter","LineItems":[{"ItemNumber":1,"Part":{"Descripti'
||'on":"Digimon: The Movie"},"Quantity":4.0},{"ItemNumber":2,"Part":{"Description":"Fair Game"},"Quantity":8.0},{"ItemNumber":3,"Part":{"Description":"Barbra Streisand: Timeless- Live In Concert"},"Quantity":2.0}]}'');',
'            insert into eba_demo_rest_purchaseorders (id,po) values (99,''{"PONumber":19,"Reference":"IMIKKILI-20141114","Requestor":"Irene Mikkilineni","User":"IMIKKILI","Special Instructions":"Hand Carry","LineItems":[{"ItemNumber":1,"Part":{"Descri'
||'ption":"Best of Musikladen Live: Ladies of Rock"},"Quantity":3.0},{"ItemNumber":2,"Part":{"Description":"Dangerous Minds"},"Quantity":7.0}]}'');',
'            insert into eba_demo_rest_purchaseorders (id,po) values (100,''{"PONumber":20,"Reference":"IMIKKILI-20141115","Requestor":"Irene Mikkilineni","User":"IMIKKILI","Special Instructions":"Courier","LineItems":[{"ItemNumber":1,"Part":{"Descript'
||'ion":"Offspring: Huck It"},"Quantity":5.0},{"ItemNumber":2,"Part":{"Description":"Alice"},"Quantity":2.0},{"ItemNumber":3,"Part":{"Description":"The Reptile"},"Quantity":3.0}]}'');',
'               ',
'        end load_data;',
'    ',
'    procedure reset_data is',
'        begin',
'            clear_data;',
'            load_data;',
'        end reset_data;',
'',
'end eba_demo_rest_data_pkg;',
'/',
'',
'begin',
'    eba_demo_rest_data_pkg.reset_data;',
'end;',
'/'))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(101142456661412478)
,p_script_id=>wwv_flow_imp.id(101142335494412475)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'EBA_DEMO_REST_DATA_PKG'
);
end;
/
prompt --application/deployment/install/install_etlprocess
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(16909641997831357)
,p_install_id=>wwv_flow_imp.id(94382806445719195)
,p_name=>'ETLProcess'
,p_sequence=>130
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-------------------------------------------------------------------------------------------------------',
'-- REST Data Source and PLSQL ETL Process Package ',
'-------------------------------------------------------------------------------------------------------',
'',
'',
'create or replace package eba_demo_rest_etl_pkg as',
'    ',
'    procedure process_store_order_summary(',
'        p_email in varchar2',
'    );',
'    ',
'end eba_demo_rest_etl_pkg;',
'/',
'',
'create or replace package body eba_demo_rest_etl_pkg as',
'',
'   procedure process_store_order_summary( p_email in varchar2 ) as',
'',
'        l_store_context apex_exec.t_context;',
'        l_store_columns apex_exec.t_columns;',
'        l_store_id_idx pls_integer;',
'        l_store_name_idx pls_integer;',
'        l_order_context apex_exec.t_context;',
'        l_order_columns apex_exec.t_columns;',
'        l_order_store_id_idx pls_integer;',
'        l_order_datetime_idx pls_integer;',
'',
'        type t_store_rec is record (',
'            store_id number,',
'            store_name varchar2(255));',
'',
'        type t_store_tab is table of t_store_rec index by pls_integer;',
'        l_stores t_store_tab;',
'        l_store_count pls_integer := 0;',
'',
'        type t_order_rec is record (',
'            store_id number,',
'            order_datetime date);',
'',
'        type t_order_tab is table of t_order_rec index by pls_integer;',
'',
'        l_orders t_order_tab;',
'        l_order_count pls_integer := 0;',
'        l_order_datetime_str varchar2(50);',
'        l_html_table clob;',
'        l_report_line clob;',
'        l_placeholders clob;',
'',
'    begin',
'        apex_exec.add_column(p_columns => l_store_columns, p_column_name => ''STORE_ID'');',
'        apex_exec.add_column(p_columns => l_store_columns, p_column_name => ''STORE_NAME'');',
'',
'        l_store_context := apex_exec.open_web_source_query(',
'            p_module_static_id => ''eba_rest_stores'',',
'            p_columns => l_store_columns,',
'            p_max_rows => 1000 );',
'        l_store_id_idx := apex_exec.get_column_position(l_store_context, ''STORE_ID'');',
'        l_store_name_idx := apex_exec.get_column_position(l_store_context, ''STORE_NAME'');',
'',
'        while apex_exec.next_row(l_store_context) loop',
'            l_store_count := l_store_count + 1;',
'            l_stores(l_store_count).store_id := apex_exec.get_number(l_store_context, l_store_id_idx);',
'            l_stores(l_store_count).store_name := apex_exec.get_varchar2(l_store_context, l_store_name_idx);',
'        end loop;',
'',
'        apex_exec.close(l_store_context);',
'        apex_exec.add_column(p_columns => l_order_columns, p_column_name => ''STORE_ID'');',
'        apex_exec.add_column(p_columns => l_order_columns, p_column_name => ''ORDER_DATETIME'');',
'',
'        l_order_context := apex_exec.open_web_source_query(',
'            p_module_static_id => ''eba_rest_orders'',',
'            p_columns => l_order_columns,',
'            p_max_rows => 1000 );',
'        l_order_store_id_idx := apex_exec.get_column_position(l_order_context, ''STORE_ID'');',
'        l_order_datetime_idx := apex_exec.get_column_position(l_order_context, ''ORDER_DATETIME'');',
'',
'        while apex_exec.next_row(l_order_context) loop',
'            l_order_count := l_order_count + 1;',
'            l_orders(l_order_count).store_id := apex_exec.get_number(l_order_context, l_order_store_id_idx);',
'            l_order_datetime_str := apex_exec.get_varchar2(l_order_context, l_order_datetime_idx);',
'            l_orders(l_order_count).order_datetime := to_date(l_order_datetime_str, ''yyyy-mm-dd"t"hh24:mi:ss"z"'');',
'        end loop;',
'',
'        apex_exec.close(l_order_context);',
'',
'        for l_i in 1 .. l_store_count loop',
'            declare',
'                l_total_orders number := 0;',
'                l_last_order_datetime date := null;',
'            begin',
'                for l_j in 1 .. l_order_count loop',
'                    if l_orders(l_j).store_id = l_stores(l_i).store_id then',
'                        l_total_orders := l_total_orders + 1;',
'                        if l_last_order_datetime is null or l_orders(l_j).order_datetime > l_last_order_datetime then',
'                            l_last_order_datetime := l_orders(l_j).order_datetime;',
'                        end if;',
'                    end if;',
'                end loop;',
'                insert into eba_demo_rest_storeordersummary (',
'                    store_id,',
'                    store_name,',
'                    total_orders,',
'                    last_order_datetime,',
'                    load_timestamp)',
'                values (',
'                    l_stores(l_i).store_id,',
'                    l_stores(l_i).store_name,',
'                    l_total_orders,',
'                    l_last_order_datetime,',
'                    sysdate );',
'            end;',
'        end loop;',
'        commit;',
'        l_html_table := ''',
'                <table>',
'                <tr>',
'                <th>Store Name</th>',
'                <th>Total Orders</th>',
'                </tr>',
'                '';',
'        for l_rec in (',
'            select store_name,',
'                   total_orders',
'            from eba_demo_rest_storeordersummary',
'            order by store_name',
'        ) loop',
'            l_report_line := ''<tr>',
'                        <td>'' || apex_escape.html(l_rec.store_name) || ''</td>',
'                        <td>'' || apex_escape.html(l_rec.total_orders) || ''</td>',
'                    </tr>',
'                    '';',
'            l_html_table := l_html_table || l_report_line;',
'        end loop;',
'',
'        l_html_table := l_html_table || ''</table>'';',
'        apex_json.initialize_clob_output;',
'        apex_json.open_object;',
'        apex_json.write(''ORDER_SUMMARY_TABLE'', l_html_table);',
'        apex_json.close_object;',
'        l_placeholders := apex_json.get_clob_output;',
'        apex_json.free_output;',
'',
'        apex_mail.send(',
'            p_from => p_email,',
'            p_to => p_email,',
'            p_template_static_id => ''STORE_ORDER_SUMMARY'',',
'            p_placeholders => l_placeholders',
'        );',
'        ',
'        apex_mail.push_queue;',
'        apex_application.g_print_success_message := apex_lang.get_message(''P404.PROCESS.SUCCESS'');',
'    exception',
'        when others then',
'            apex_exec.close(l_store_context);',
'            apex_exec.close(l_order_context);',
'            raise;',
'    end process_store_order_summary;',
'    ',
'',
'',
'end eba_demo_rest_etl_pkg;',
'/ '))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(16909741988831362)
,p_script_id=>wwv_flow_imp.id(16909641997831357)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'EBA_DEMO_REST_ETL_PKG'
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
