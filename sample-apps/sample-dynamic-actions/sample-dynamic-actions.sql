--------------------------------------------------------------------------------
-- Name: Sample Dynamic Actions
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
,p_default_application_id=>7840
,p_default_id_offset=>1555159707774264
,p_default_owner=>'ORACLE'
);
end;
/
 
prompt APPLICATION 7840 - Sample Dynamic Actions
--
-- Application Export:
--   Application:     7840
--   Name:            Sample Dynamic Actions
--   Exported By:     ORACLE
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     27
--       Items:                   80
--       Processes:               27
--       Regions:                102
--       Buttons:                 33
--       Dynamic Actions:         24
--     Shared Components:
--       Logic:
--         Processes:              1
--       Navigation:
--         Lists:                  4
--         Breadcrumbs:            1
--           Entries:             26
--         NavBar Entries:         3
--       Security:
--         Authentication:         1
--       User Interface:
--         Themes:                 1
--         Templates:
--           Region:               1
--         LOVs:                  18
--         Shortcuts:              1
--         Plug-ins:               6
--       PWA:
--       Globalization:
--         Messages:               3
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--       Install scripts:          4
--   Version:         24.2.0
--   Instance ID:     743312968839308
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
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Sample Dynamic Actions')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'SAMPLE-DYNAMIC-ACTIONS')
,p_application_group=>wwv_flow_imp.id(4851185638549144)
,p_application_group_name=>'Sample Apps'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'8B6494283EF1119D1F36668439AA03D243AF5FE0FE734B7F3F17325D350A55E5'
,p_checksum_salt_last_reset=>'19990804000000'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>wwv_flow_string.join(wwv_flow_t_varchar2(
'1.0.6 -> 1.0.7: Added "SQL Source" show/hide regions to "Standard", "Style", "Server Side", and "Complex" pages.',
'1.0.7 -> 1.0.8: Changed Authentication scheme to use new "ORA_WWV_PACKAGED_APPLICATIONS" cookie'))
,p_authentication_id=>wwv_flow_imp.id(8199704187097627935)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'Sample Dynamic Actions'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'24.2.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'S'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T'
,p_pass_ecid=>'N'
,p_authorize_public_pages_yn=>'Y'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_tokenize_row_search=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Sample Dynamic Actions'
,p_substitution_string_02=>'GETTING_STARTED_URL'
,p_substitution_value_02=>'http://www.oracle.com/technetwork/developer-tools/apex/index.html'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>4
,p_version_scn=>186610701
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'N'
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
 p_id=>wwv_flow_imp.id(7840)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_navigation_list_id=>wwv_flow_imp.id(1866143231875553822)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_css_file_urls=>'#IMAGE_PREFIX#pkgapp_ui/css/5.0#MIN#.css'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(1866144266195562303)
,p_nav_bar_list_template_id=>2847543055748234966
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1866143231875553822)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>162635853
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915158854912115202)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1,25'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915159154623115205)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Simple'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,RIR:::'
,p_list_item_icon=>'fa-calculator'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915159490674115206)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Disable/Enable'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,RIR:::'
,p_parent_list_item_id=>wwv_flow_imp.id(1915159154623115205)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,3'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915159923653115206)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Hide/Show'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP,RIR:::'
,p_parent_list_item_id=>wwv_flow_imp.id(1915159154623115205)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4,5'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915160294082115206)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Style'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP,RIR:::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915160688614115207)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Add/Remove Class (Error)'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP,RIR:::'
,p_parent_list_item_id=>wwv_flow_imp.id(1915160294082115206)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6,7'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915195801121126319)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Add/Remove Class (Focus)'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:RP,RIR:::'
,p_parent_list_item_id=>wwv_flow_imp.id(1915160294082115206)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8,9'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915198973940137914)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Stripe Report'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,RIR:::'
,p_parent_list_item_id=>wwv_flow_imp.id(1915160294082115206)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915229320427154489)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Server Side'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,RIR:::'
,p_list_item_icon=>'fa-database'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915277902943164694)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Execute PL/SQL Code'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,RIR:::'
,p_parent_list_item_id=>wwv_flow_imp.id(1915229320427154489)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915301432811167455)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Set Values (SQL)'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP,RIR:::'
,p_parent_list_item_id=>wwv_flow_imp.id(1915229320427154489)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12,13'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915302361307170731)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Set Values (PL/SQL)'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:RP,RIR:::'
,p_parent_list_item_id=>wwv_flow_imp.id(1915229320427154489)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14,15'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915326666561174444)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Timer'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:RP,RIR:::'
,p_parent_list_item_id=>wwv_flow_imp.id(1915229320427154489)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915327180878176877)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Refresh'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP,RIR:::'
,p_parent_list_item_id=>wwv_flow_imp.id(1915229320427154489)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915329203141181361)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Filter and Refresh'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RP,RIR:::'
,p_parent_list_item_id=>wwv_flow_imp.id(1915229320427154489)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915329803200183568)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Shuttle Refresh'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP,RIR:::'
,p_parent_list_item_id=>wwv_flow_imp.id(1915229320427154489)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1866143758711553824)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Complex'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RP,RIR:::'
,p_list_item_icon=>'fa-cogs'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915328078062179217)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Delete and Refresh'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RP,RIR:::'
,p_parent_list_item_id=>wwv_flow_imp.id(1866143758711553824)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6595181130734958)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Debounce and Throttle'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(1866143758711553824)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'21'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2177341661827308163)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-wrench'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'26,23,24'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar_top
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1866144266195562303)
,p_name=>'Navigation Bar (Top)'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078642
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1866144388936562305)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Help'
,p_list_item_link_target=>'f?p=&APP_ID.:HELP:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1866144841247562314)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1866145178360562314)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_parent_list_item_id=>wwv_flow_imp.id(1866144841247562314)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/dynamic_actions
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1915342362128208296)
,p_name=>'Dynamic Actions'
,p_list_status=>'PUBLIC'
,p_version_scn=>162636231
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915345347077208299)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Disable/Enable'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,RIR:::'
,p_list_item_icon=>'fa-table-ban'
,p_list_text_01=>'Disable and enable items automatically'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,3'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915345722657208300)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Hide/Show'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP,RIR:::'
,p_list_item_icon=>'fa-eye-slash'
,p_list_text_01=>'Declaratively hide and show items based on user input'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4,5'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915346094777208300)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Add/Remove Class (Error)'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP,RIR:::'
,p_list_item_icon=>'fa-exclamation-triangle-o'
,p_list_text_01=>'Using the Add and Remove Class actions to highlight errors'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6,7'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915346498662208300)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Add/Remove Class (Focus)'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:RP,RIR:::'
,p_list_item_icon=>'fa-info-circle-o'
,p_list_text_01=>'Using the Add and Remove Class actions to show focus'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8,9'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915346917523208300)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Stripe Report'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,RIR:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Using a dynamic action plug-in to enhance a report'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915347325897208301)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Execute PL/SQL Code'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,RIR:::'
,p_list_item_icon=>'fa-code'
,p_list_text_01=>'Executing PL/SQL as part of a dynamic action'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915347715717208301)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Set Values (SQL)'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP,RIR:::'
,p_list_item_icon=>'fa-table-edit'
,p_list_text_01=>'Using a dynamic action to execute SQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12,13'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915348168214208301)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Set Values (PL/SQL)'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:RP,RIR:::'
,p_list_item_icon=>'fa-table-user'
,p_list_text_01=>'Automatically calculate values via PL/SQL based on user input'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14,15'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915348483485208301)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Timer'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:RP,RIR:::'
,p_list_item_icon=>'fa-table-clock'
,p_list_text_01=>'Utilize a timer for repeating dynamic actions'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915348948407208301)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Refresh'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP,RIR:::'
,p_list_item_icon=>'fa-refresh'
,p_list_text_01=>'Refresh a report based on user interactions with an interactive report'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915349763411208307)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Filter and Refresh'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RP,RIR:::'
,p_list_item_icon=>'fa-table-arrow-down'
,p_list_text_01=>'Use a dynamic action to filter a report'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915350082601208307)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Shuttle Refresh'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP,RIR:::'
,p_list_item_icon=>'fa-table-pointer'
,p_list_text_01=>'Use a dynamic action with a shuttle page item to control a report'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915349286885208301)
,p_list_item_display_sequence=>135
,p_list_item_link_text=>'Delete and Refresh'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RP,RIR:::'
,p_list_item_icon=>'fa-table-x'
,p_list_text_01=>'Use a multi-part dynamic action to confirm deletions and refresh a report'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6594845711744031)
,p_list_item_display_sequence=>145
,p_list_item_link_text=>'Debounce and Throttle'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clock-o'
,p_list_text_01=>'Execute dynamic actions immediately or after a delay'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/administration_options
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(2177343443554308181)
,p_name=>'Administration Options'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078642
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2177343722175308183)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Reset Data'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-database'
,p_list_text_01=>'Reset the sample data provided in this application to the default.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2177344102453308183)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Theme Style'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-laptop'
,p_list_text_01=>'Change user interface theme style for all users.'
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE90000042E494441545847ED556F5093751CFF3C108F818C4B86C58DC10B896D340E4AD802B3BA06688AA22339DF38A8CB3B4DB04BFBC7';
wwv_flow_imp.g_varchar2_table(2) := 'A0EB7C61CDB2A20B305FD8D9A01776240345CDF8E3552AB40D138EC518AD2B844589D831856B144FF77C77AC2D3760D05DD71DBF37DBF37D9EEFE7FBF97DFF7CBE8C54BF9BC37F789825024B19F8DF6520273E0D25A979308DD8F066D767343FE5E9DBA0';
wwv_flow_imp.g_varchar2_table(3) := '8895A0A6E70C5AAF75073553414F41897C03F6A6E763FCF709D45ADB2958914C85A86511A8EA3A851ACBB97F9740141B0E6D46210513B0112849D988874552BF41BE71F4A3A6F72C9CAE0922A533D763DC35392BA13933A0CBD2409DB4866ECCDFD2E99A';
wwv_flow_imp.g_varchar2_table(4) := '448BBD0B0DB64BF8E8C97D04FEECE79528903C82DCC47408D870CFB78681CBD076D42D8E8074792C3ED9FC0A011B87ADD8D37204B71817C030B0167D48E0B2DAE7008E4324C7E248EE1E28E3644474C7E9B7D17F7B64710494F725A176FD7EF48D0E626B';
wwv_flow_imp.g_varchar2_table(5) := 'D3413061A11E40C3462DFD579FD5796CDC1FD368CCAF40724C028ACEBF07E32F030B23C077BB2C5A0CC5CA243C109300D5893238E1F201ABCD79C1DD84ADEFFBD845CBEE4193FA757C373A08D3F50158C786024E47C01E68CC2B874C184FC0FA9E16E8AE';
wwv_flow_imp.g_varchar2_table(6) := '36F804E109BEA6DC4EB683C64FEF08A07DB000C5A9B9F49ECF9E7796BC810212284B53E3A9E447A9F69A33EFC074C3EEF1E383573FB1DB8750E985A33E2414C244D4E5BD44BD70B2EF6B1CEA36F82D45E029E038D0CC676C81F4F82E30A1211E00EDEA6D';
wwv_flow_imp.g_varchar2_table(7) := '284EC9467EFD01B29D2A3C007D6F1B7457DCC2C41F41C8DD30EDA84495B9C9AD0D0C132401C04D203D1FCA13FB7DE6F998AA146BC572A89BDF2050C3A60A5CBC66C1CE0BD53E41F829994B9C0266A05C5188ADAB3269F635E7DE85E9FAF7502766A13435';
wwv_flow_imp.g_varchar2_table(8) := '0F7102A1DFDB0C3B6FA0AAA7198DF64E2856DE8FBA0D2F922618EC1DD099FFCECEBC7A801F317E94F8F3E36F236043598804D154D357DB8E514A95B1127ADFFAD355F08AF956F64EEA1987738CD4502A142FBC0955F7CA215B2146A658860C91042ED714';
wwv_flow_imp.g_varchar2_table(9) := '2E0E5B50F6D5C7B8153245C0DC9FD3F43BD31F91D36138F4D8D3581B2707CB86C1ECB0A173C80AEBCD21B4FF6A09BE07780F45F42AD46D7A19C3E3A3509DACF069467F883CA94BDB0F2326220A9AE6C3308DFDE037F08C71CE5D90BC420CFDBA7DD40BC6';
wwv_flow_imp.g_varchar2_table(10) := '9F6D28FDF268C00513172944F5E3BB902C8CA7DA177F5189BE9B438B23A0CBD4402D5943B5A745E39A40DB60371AEC1D70DC1E2370D1F268142466213B210D51AC7B61F1DF1A6C97A1ED5CE432128085565108BDA51582B0703C9FB185968DBFC32FAB0F';
wwv_flow_imp.g_varchar2_table(11) := 'CC4D704E4DA2589E039DA9FE0EF9FEA7DF9C252087690E08710BC98C36F0B73CFEED79B23DF3D07ABAB1CFCC7BF9CC5683F911F04250C5A660EFEACD303AFA3DFB81D77DA5488AAA2BA7D13ED23B6BCD1796016F2F8E03BF72791D60EE72CB333D739CFB';
wwv_flow_imp.g_varchar2_table(12) := '3980E4066215740682BADE3C3E5E22B09481BF001CA6D010A61EEEEF0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(537126664149975879)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE900001FB449444154785EED5D0B7455C5B9FECF397940785815A514500B0A04AB3C43401454080F012170BDB7420960DB457817EC2DF2';
wwv_flow_imp.g_varchar2_table(2) := 'EA5AB70AD1DE8257DEB6B54828E85A168202CA5B0195478C82B626A0D00AA13E0A5A5E799C9CC75DDF24FB64E77072F6CC3E3B3B3B7366D67245D6F967F6CCFFCF37F3CFCCFF70755C9F1D24551407E294032E05803895BC1A36E38002809A0871CD0105';
wwv_flow_imp.g_varchar2_table(3) := '80B816BF1ABC02809A0371CD010580B816BF1ABC02809A0371CD010580B816BF1ABC02809A0371CD010580B816BF1ABC02809A0371CD010580B816BF1ABC02809A0371CD010580B816BF1ABC02809A0371CD010580B816BF1ABC02809A0371CD010580B8';
wwv_flow_imp.g_varchar2_table(4) := '16BF1ABC02809A0371CD010580B816BF1ABC02809A0371CD010580B816BF1ABC02809A0371CD010580B816BF1ABC02809A0371CD010580B816BF1ABC02809A0371CD010580B816BF1ABC02809A0371CD010580B816BF1ABC02809A0371CD010580B816BF';
wwv_flow_imp.g_varchar2_table(5) := '1ABC02809A0371CD010580B816BF1ABC02809A0371CD010580B816BF1ABC02800573A07952634A6BD981526F6A43BD5A76A0D64D6FA679EFE7D2B1AF4E59D03A51AFEF77A09CFBB2E8FCD58B74ECEB5354F86D31E57F7D8A2E7B4B2D693F9E1B51003029';
wwv_flow_imp.g_varchar2_table(6) := 'FDB49677D1C0DBBAB2098F891F5EF69D3B41D3DE5E6BB2F59AD5563D944D03DA76B9AE2D000180D87BF638E57FFD9925DF8AB746140004248E9538B37D6F1AD0B62B61D5372A03B62C64AB762C05BBC9BED1CF183681DD60DFB9E39477FA88653B8FE147';
wwv_flow_imp.g_varchar2_table(7) := '25205000E01422267FEEA0D99CD495642B4FECA09527B60BD509279E9FF61865A53E2CD446D6EEE715083839A600C0C9283300C0AADCEBD5399C5F884C76ECC7CBB8761B7D6D05007E962B0070F20A2A0F26A36899F75E2EE59D3E2C5A8DD167B6EF4339';
wwv_flow_imp.g_varchar2_table(8) := '7DB384EB76CA9D225C275E2B2800704A3EE80BD0C9275EE4A4AE26C34D10566433052A17761ED1D2F14F93C995E016AD1697F40A009C620700B63EBA80525BDCC659A39ACCCC6198F7F01BDE99C20B6769D41B8B150038A5A400C0C9280A062977E02FA8';
wwv_flow_imp.g_varchar2_table(9) := '57EB4EBC354274B985FB6949FE6BA17F439DEA78E3F557A7FAAB4C33875F7CE0D8F922CADAF782701FE3B582028080E4A7761C4C33D34709D4A824C561F88AB7843D90F116D4E1B96A0D6F6FF9D1ADB4FAE42EDECFC43D9D0280C01418DFAE1F2DB8FF71';
wwv_flow_imp.g_varchar2_table(10) := '811AF6932E7EF715DA70E6A0FD1F6EA05F540010105CCF1BEEA03F8F9C2B50C37ED29FBCFE1C7D70E91FF67FB8817E5101404070AD126FA0B71F7F56A086FDA40FBDF2147D5971C9FE0F37D02F4A0F005C234EBF7718E57CF01A3322335B46B5EF4D33EE';
wwv_flow_imp.g_varchar2_table(11) := '1D4EAD9BF1EBF166BF154BBDF3572ED2FAA2FDB4F5F461D3C672B06D9AD7F3B1987916CB38ECAA2B3500F40F493854E6E4BF26FC28C5267E97E1420758BB8417ED3B186F6EE13EC20D9488D52878362FEDB1D0013C96873C27F0C1A80FD202A0B65754BC';
wwv_flow_imp.g_varchar2_table(12) := 'CA02084693A2A14EFC7081639CB0470210A215DC3861E2836FE1456610480900087242140332A842F3DF5F1F5125C255256CEFCDBCC01AAD36F5F97BB43143E55972DF848866DD5A9F012218F7C956A40300EF031256C6F9EFADA7BDE74E84640AABCBE9';
wwv_flow_imp.g_varchar2_table(13) := '5D869BBA7F6F2813637DE17EB6036A6560DB2EB4A4EF04AE315B61DDEA343E49050033C66358D9E0BC62B402C622B8729F97125C1ED684DF1F88DA94C75369C3E30BFA2939212996CFD65A57DB0DE06403C08B14D9D42169006066F28B085E8416E60847';
wwv_flow_imp.g_varchar2_table(14) := '8A8B08763985FFFA822E955DA3833F592AD20475FBD3546AD3BC05A5DE723BB33FEADDA69329330CA18F7212CB0402290060C6569F53D6DC647BCF7C487B4E7F487BCE14D0E5F292EBEA7DF4C46AEEB64008008497E6C92994D1AE0765B4EF4E03DB7517';
wwv_flow_imp.g_varchar2_table(15) := '6ACF6AE2CCED8B63BA56B6BA3F66DB9302001B06CF21F8E8DA5DCE5FB940CB8F6CAD75D2EBFB0300B85C2E72BBABCD94357547AF16F9FD7E562D1200F4ED696098D97B14B56ED6C2EEA1331FE4F1BBC4FD236CEFA8C107A500006E317207CDA1661C7EBA';
wwv_flow_imp.g_varchar2_table(16) := '5608002ACEE64FDFA5CD85872236075B7C97C74DAE040FFB4B2E627EBDBC1315C01A90B7882810A4A03F50F99FCF4F30C98E54C6A43E407602E18AB794B2762F533B801593C98A36303146B54DA3E7327E664573B5B68189FFC2D13C3A5A5C741D8D2BD1';
wwv_flow_imp.g_varchar2_table(17) := '43EE440FE12FB95CD7FD9E3B6016B70E5FAB49733048C10A00C14F016FE54EA12FE96D3AD1ACF44CEEEF9865D6DC3D7FA4ADC5F995E06EE0458A1DC07FB58CAD8EBFCDF8398D4EBDDF729160C55B7E248FD61DAF6966EC72BBC8DD28B1D649AFEF882500';
wwv_flow_imp.g_varchar2_table(18) := 'D037180C321004CB2B281808D618F3A4AE836966EFCC3AD911B714BE4BBFDAF307E670E369DAC8725EDBDDA01400808A0010344F4AA18D63E699F2DAAA8DF1588D21F0E2CB17422410BE3BB96AE2734ACC7200E8BE0BF007CABC355424DC202DEC37CED2';
wwv_flow_imp.g_varchar2_table(19) := 'C3326EB5C66DCEA1CBDE1236F9D50EC0297C3BC8825E1FF94BBC947ACB6DB469CCFC98573FACFACF1CD85843CF672B7E4AB22977C369A9436846DA482E56ACC87F9D5615EEE4A2ADB129440002CE070BFB8FB3841F63372FA1C27F9D254F4A12B9921284';
wwv_flow_imp.g_varchar2_table(20) := 'FBE7C40A52EC001A630325E54C2DC868DF83D60C9B699ADF98FC9AB059232E2277A32472279B17BA1D0008F1A1DCC77604AAD28CB028AC1D3E8BFB101E897153762CA73DA70BC89DE4618B802C452A00C06FD77FB59CDD9ACC4CCF34E5BE18DAE6ABEEF2';
wwv_flow_imp.g_varchar2_table(21) := '71A8C58A17E9602B3209EC0400EB177851E2658766145C9B0204667C9AE166B9FC681E53793C4D9363E68508DFEA9A562E0040EE55E701BC9E6E7BFC6921FEE1310BFABEF690E56E1CDBAAAFFFF8A8DB7AD1B30F4EE2EACF53EFACA3AD678F71D11A1131';
wwv_flow_imp.g_varchar2_table(22) := 'D5B0B47A3730735130E29545EC555B16BD5FCF33E900C016BF0A3F6D7D74213B0FF016ED7683693CD0F59B245B7AC84BBBA91D6D18FEDF5CDD19BFFD7F29FFDB335CB43C44581402D7CA43B745A220C0B56FD6AE6595B75D92152901C06B11AAC912373D';
wwv_flow_imp.g_varchar2_table(23) := '6337E754AAFB75B4CDD72700422A51957A887F8B820016A4B02495AD480700BC0AE70D5FC02D27BDCE6F95BE1FE9E36937B7A70DC37EC9D5AFF13B7E47F9174F73D10A11E1EDA0D41B7A44DB36F669EE2B63988FC3FE27D668D742FDB581583A0060F247';
wwv_flow_imp.g_varchar2_table(24) := '8AD71F8997303918B16911D3F9EBFA764324B4625D8736D46ECB70300608784D346209F368C35C36F509A900002F307883F114FD55675D4F7E762E11882D5AD700407F341088BE9BC8640ACD54DE8EEBB36BBEA3F3CC1E07D2C0A775EFE8C55C9E4DE8FE';
wwv_flow_imp.g_varchar2_table(25) := 'E2839B9869435DE9FCE12C721A00F457C6782CE3B5A3820A8458A7B214690000CFA6E95D8671C9453BF4E2B6C7D3AC916DF7DAFB328DD58D902528D7486224D2BD9BE08D80D7C740A65D400A0088ACFE507D466C5A48C5572ED87EAFCD630F6477705BBD';
wwv_flow_imp.g_varchar2_table(26) := '1DD58149CBB84C2664DA051C0D00CDC9E5E477C551C39888E8FE9AEAE3C13DBFCDF7DA4E04003B9F54D95189A84246BB803E02B69313F839160091DC1CE1CC8D28CB85DF15B3EBB8C26FCFD13FAF7DCB7277F1445E0EA93EF564CAEB540000047E3C9455';
wwv_flow_imp.g_varchar2_table(27) := 'F8D9AD104F0E04F01F893F7ED0E4264ABDA92D3B7B216366B3A494EB6EE19CEC3EE958003CDB77022138959565DC961C3A7ABE88129A3526725FEFB462E5B722B5C5630F64D61234E6BE0783E4BB5C4AE9AD3BD1C6D1F3626E4EDFC0D6D347E8A9F7D65B';
wwv_flow_imp.g_varchar2_table(28) := 'DAA6558D3916006692C345638AB6FA5B69DF232A0447030057A3B0222DF5D2A631F34C19CDD5C60F2B92058AF29A97DE9100A88B280F58FDF190539F5E4C4E07005385AE9451AF561D2CDF059C9AB9D2910010B5E531423BCC1DF0E2CBAC19EB3179DCA8';
wwv_flow_imp.g_varchar2_table(29) := 'DBD2E8D9079F88DA5D2B2D418DF812E977BC57C0BBEEC0A4A5DC2FC43CDF094F13C553C70E1A470240C49C81874970E2DEF2D97BF5BAFAE390F8F89D0FD0EC9E9951BBFCFC0779F4CAE7870C83F7F28CDB2C0D0030FAAEBEDC8F633CDFC105060EC34E2B';
wwv_flow_imp.g_varchar2_table(30) := '8E0380D97CBCD118DBFDC529742D31502FAB3F6EA7F0401729EA72B43E238A356271D687F119768126156EE27D17E09DD4481A6E14959BB72DABE81C0700046B5DF950B655E323D8F9CFDDFF52E58BAF8D05409ED66578D428D53CDD8109F2AA13DB6D9F';
wwv_flow_imp.g_varchar2_table(31) := '38FECBA5B4E69199DCAFC33C6399FEF6DA1AC18879EAD4358DE3002062D2C0C31CF8B2EEFFF2135B9DB831F9D70F9AC36D956A340EA80F13762FB31504B811CABC23DD5235C889D1A51D07800D8367535A4BF1ECE8B54D22A83F258D82B6D9FBC0141B93';
wwv_flow_imp.g_varchar2_table(32) := 'DF4C8AD3684080EA0010C492E6C90868357E0F0629A5CC451F4E5E23542D1A71FED7A768FCAEE72D6BCF8A861C0780633F5ECAE2FB585170F73FEE8DDF12CC1EEC2822364966FA03100CDCB2C0B69D0026D37F1EF12BCBDE049C6843E43800C0757042E7';
wwv_flow_imp.g_varchar2_table(33) := '0196E89E8866B0EAAF6FDA62F363B5DA531B40EC5487602334ED9E61A6A26B84F71F0107D67FBACF525F67338B48781DC701400B7388C86613BB0EA6319D1FE0B2508CC40C3C7E155C3D6B059F0CDBB0FAED22DA076DD3A583417AA84567D331966079BB';
wwv_flow_imp.g_varchar2_table(34) := 'EEA35DB4A5F0108BACE7C4708A8E0380EF52298B69A32FB0521CD3F97EE1ADB8C74BD3D8F5675D175C7522FAB39D054E29765C9136F1BAA9E067AB8486565BF46CE67FD1BCB1505B754DEC3800B0389708F85A15D049CF00915D01AB4F8F9767B0E0B575';
wwv_flow_imp.g_varchar2_table(35) := '5DCC18EEC1F105610651E096C8EB97AB8DC52E03B3405905154C5C61B80B83DF9B3F3D442F1FDF55238EAAD65F163D1BF154EBF1253ED23C701C00429D0C041910025E5F28C49FF6DBE7338D2D0BB10A8DDF59F7B16C441FEE2205DBC5B8006E842A1189';
wwv_flow_imp.g_varchar2_table(36) := 'DC66C7C31216A20D43E618F64B1F5A26244384944C4E2437E288D683F52DCFC2E75C00E87A8FC31880A02588E001001EC0E61FFB739D5F7F8AE426D3420C46130C223A4FEC3A88477664CBC3522048B919BF3004003A7CE7F209ACDF2C7A765282AD6F2F';
wwv_flow_imp.g_varchar2_table(37) := '5C0C8B40D4200010BE2B9C9AFC92E17831D9569FAC19CFDFB09209025EF5277C85843E4C5A82096480D1C5F8E73547B64B0D9ADA7130D74D5087177FCA567CA7AEF60D4B058A32198BB28C1F67EC722CE17DB87BF0E527AB6F42105D395C250820986D39';
wwv_flow_imp.g_varchar2_table(38) := 'DBE5A00EBD33D138ABA45D0F4B3C66DC1057A7DC29269690FAADD2B0760022E6FAC873E362170058EEAFA6374795220EBCFDD73DC90EE44687721C3AF11F8F39B25D0F4B0A00F50BD21A5FE775965951F006ADFADB5B75DE739EDD088F405376AEE036C7';
wwv_flow_imp.g_varchar2_table(39) := 'C65BC8C69173B9F46E3B56DD69770FA5193D1E35E4A5539D5EA275BCC1ED000D1500D30FFE9E5F371638782A0018E2322A41830340F384C6746CAC717E5ABB76807D99487F6AA0025DBE4003B62E1292D4BE514F53EBE6D1F3FF9EBF729106E4D57D9436';
wwv_flow_imp.g_varchar2_table(40) := 'DE1DC08E6B5921267210373800F08618B40B003CA14E200791975BDE738E5D41B4780160474C538E392D44A20020C4AEEB899FEFF3040DBD2BCDB01591C8CA88730455CFA8BCF5593ECD3EFC2723B2987F57008899851636100C52D184B5860DEEFDC771';
wwv_flow_imp.g_varchar2_table(41) := '9A7EF045433AB3046D9AB6A0EC7B87D0E8F67DC8EDE24B18BDF2C476E6E618ADE4F4CDE2769FF40703B4E5F3C3F4E2273BA9F86A751A57B363AAADDECA7E9369E01D5D0D9BEDB43EBBCE1F1E0D3B2148D0E076008C8F47ED38F6E549CADAF37F82EC3026';
wwv_flow_imp.g_varchar2_table(42) := 'FF61F39634F5DE47E8911FF6240FE7C4D7B78A9D60DEFBB9D719B241EDC9B92F8B6BE50FEF2580B0E3EF1FD09A8FDFA4BF5FFEDA78108214EC25B855C7A8B5600B94F6EA1CC196EB9FBC41010093242BF561CA6CD79B653D8C5690CCB9D7AB4F5AC6E10E';
wwv_flow_imp.g_varchar2_table(43) := '37B6A6E9F70EA38CDBBB920B7953632C2CB4E377C5D43CB1317B47307A4BE0F95C2018A43D673FA2551FBF49A7BE3BCF53858B86C749094946F2CE1C21843FB1C34A95ABE31C440D02000891085583472FD68FD98A5B892E2D7EC8A23A3CD0FA6E0E763A';
wwv_flow_imp.g_varchar2_table(44) := '87E49DE24F68D5C73BE8930B5FC4D429DE0379F82EB7E5F46182A986D38B6301105AEDDBF731ED5F1B8BB118C036E59EA1D4A75527A7CB306AFFDEFFB288A946662334F3BEBB44EA045C3811DEC5C9BB82E300008643CD417894588B19CFA97EADEFA6EC';
wwv_flow_imp.g_varchar2_table(45) := '7B8652F75BDBC7FA7947D52FF8E6735AF3F15BF4EE3F3F15EA9755513AF69E3BC180803390938AE300B07FCC621672DB8A92FFD5291ABF9B2F0A41C66D5DD9C4BFFB66FEDCC256F4D1EE36FE7AF10B06847DE74E707D7AC3A0D994C67125CBD31842D93F';
wwv_flow_imp.g_varchar2_table(46) := 'BC993F83274F9BB1D2380E001B06CF212D3146AC8343FD68E700B7CB4543EFE849D9F70CA1BBBEF7032B3E47C78A8BA8F3ADB753D3246B5DFFAE7A4BE9E4C562EAD1EA2E4BFA8943F2DA4F76D2CE2F0A0887E74845D4D9C7A86350C3C6EF327EC5376AC7';
wwv_flow_imp.g_varchar2_table(47) := 'CADF1D0780E9F70CA3E9DD865B36C648994C707D39B27D3A4DFED110BABDF9AD967CEB52F935FA9F7736D01B270FB31BAA8D63E671259AE0F9B83E97F1C84EF7D1AFFBFF846E486EC253D59006D7A67847D876E618E13A555FAC8ED2B7F2A3EDB4F293E8';
wwv_flow_imp.g_varchar2_table(48) := 'EF20861DB698C0710078B8452AAD7E64A665C3D43B8D247912686CC7FEEC8C61959A858EBE77EE6FF4E4AE17E942C9A550BF018299E999DCDE5DB50D188E3DF0B3C535A3565AA4DC404B074FA6BE6DADBB99C243DA86C2B769E3C903E40BF8D9A7789D7D';
wwv_flow_imp.g_varchar2_table(49) := '788535F5CDE5B4FF42212FB92D748E030082B216FC542C0A41344EE13D60F4F62534BBCBA3F440CBCE949C94C4FEB3A2402D41CEB1D73E3D186A0ECEDF419F3FE4C70CE716006174EAFD429F844BE7F2A379D50EE62EB81A7A6A040BF8CFBBFBD38207C6';
wwv_flow_imp.g_varchar2_table(50) := '5293246BE29E96977BA9BCC24B07BFFA1B2D3BF106E13C6665B12B4A87489F1D07003883BC3EFAD796A90F6046697939F92A7C8C2F2E978B9A36893DF2DCD1E2229ABD6B0D7D73EDDF95FC8687634A55E23D5DFA514D18D811D2DBA45246BBEECCE30B96';
wwv_flow_imp.g_varchar2_table(51) := '9E5A240838CC9CBF7C814DF63D673EA4A3C58535567C7D2E6338A9C3738CAAD4F656CD6EA2DF654CA6F436B15FD75EBD5642C1AAF340626222354AB666A1000FA0C68DDCF21B43872091C96B05ADE3000001CFEBF11F31AB0E7AE6040241BA5652AD4234';
wwv_flow_imp.g_varchar2_table(52) := '4A4EA6C4C40453FC2BF757D09243AFD0C68FF7D558F53D2949D7D9C120DD1082CCC652227A91016025DE1ABB4156970C9A7BFF7F51B2C75C18988A0A1F95959787BADA24A531B9DD7C364E3CE37BF9F86ECA29F88B2D51FA78FAA3D1380E00088AD5A3D9';
wwv_flow_imp.g_varchar2_table(53) := 'ED96A7E829292D23BFBF52B775BB5DD424457C1728F8F2337A72D7DA1A6A4968D5AF8DEB08EF52E6A580B7F2DBBCC59DE42177A3A4A84E34E1BB01769617864CA52EDF177FC3B876AD24741BE4F17828A5B1356A9536DE11AF2CA2CFBCFF729CB19CF300';
wwv_flow_imp.g_varchar2_table(54) := '5095A7EAC39FAF360CC6C43B994087C90F1068A551A3644A4CE0DB05CA7C5E5A7AF82FF4F247BB2958A57B40D78FB4EAD7DAA7609039BC072B7C95112002C15024081621C2ED22FC75252654068F7271DA1B85ED06B8DA9DD46D08CDE933867B37A8F0F9';
wwv_flow_imp.g_varchar2_table(55) := 'A8ACAC7AF5C7E40708AC2A3094EBFE87A9B6E768E0E9BF230100D5E1D97E93840F8E4603AEB90BB809DBBC51F9EB37FFA0593B57D317FFAEB2B2D4EBFA46956DFC9D25BB2EF586CE06ED6E6C45CB0667D38F6EBDC3B017500FA126A2D4C5EA8F03FD5307';
wwv_flow_imp.g_varchar2_table(56) := 'D71132743AAD38120058297B7EEF8EEBD4201CA4AE9497D091E222F6F7D30B5FB0C323EEDC79420B060201BA56521A9241525262AD3742157E1FBD70348F7E5FB023A41AB0E0AE91429A3845AABAD02A4CD573B928BBE7089AD16B24257A22EF76B8F9F1';
wwv_flow_imp.g_varchar2_table(57) := '56548446C0BBFAE3E03E6E730E3BCC776E713B354B4EA1DE6D3AB1BFE189B6A1FE9C2AFB867098775A712400C024DFA51296B419053134F5F7E0E14C44F0DCE7327EC6C55B1CF470E0D34AA4C31E803667D75AFAEC6295493134944649E44EE65399B83A';
wwv_flow_imp.g_varchar2_table(58) := '5287442CDF6F59F56E70D7CDAD69F9906984BFFA72DD82909848C99C373FB8FE5D77BCF6C063B8F542CC5314969CFC06F133571DB228D4B4630180E40C2207479E383A1835AEF9B00B68D77D3810A7346ECCAE47FD013FADCADF46ABF2DF60FF8FE2F855';
wwv_flow_imp.g_varchar2_table(59) := 'BFB65912B61B24B83D34237D1465F718461EB7878DBFA4B434A4FAE8F96034F1A0D3F75F3727EAA2A46F831DE8B1733AB03816005ABE5A3DCFD8165AF520844322FE8D83234BEBD9F17EEE5DC0E7F3536959F581187AEF5765DFD1ACB756B3FBEACA99DF';
wwv_flow_imp.g_varchar2_table(60) := 'B056FD5A7110B61B403D7961E854FA7EA31B43B762A8CBABFA8016AFD32BF2B7B2384738D007FD0116D25E7B0064FFD615242874A2FAC3C4DC717D76644B2807A0550B86EBF260D6D77E2BC20E80255EAE686ADAB0F4AA104C85A7BEB582BCFE4A5DB8C1';
wwv_flow_imp.g_varchar2_table(61) := 'AEFA9CBB41922791D63E3293BADD52795D9A24A0FA68ABFF55B72FBA4A0840F82BA796D342A2D758549D0C00110C22ADA7C82E0015E06A4909CD7DFB25DA7DA620F429DC5434145D5F843FA0D5C22E6AF586DE99464B1E9C444D1BA7301590A720E9F8E6';
wwv_flow_imp.g_varchar2_table(62) := 'A243948044179C7578DAAD2F1A47EF00224CD17601DEC8CA68FB9F572ED2F04D0B992E8B2DDA9D92E4D8AD5A8417D168A19E04F08AEC0F30ABD5031397B29B1B9E02F570C4A6455C314E79DA73028D34000033B10BC09572DBD867B81FD170C33432CF79';
wwv_flow_imp.g_varchar2_table(63) := '362A753D399A061269C3B05F866E6A78BE87EB4C804096D5DFF167001EA1E869B45D6052D7C1B4A0DF58EEEAF05B85DF403C95BCE10B8412796BC93DF0FAED42C617498A543B00DB05AE963193836D639F16B2288D27108804DF024F35D58759A536B3D6';
wwv_flow_imp.g_varchar2_table(64) := '46A8BE71241D006063E3BB52CA26FFB6C79F16E2AFEC20808BE392BE1384030E68C93D9C7C9D2924681DB17C00C06D47B98F05B19A993E4A982F885A30FD9DB5B6656317EEA0C90AB124F286FA83B08E46C93D4C76AD5EAB490980587D5911D90C204056';
wwv_flow_imp.g_varchar2_table(65) := '76194AEA4D6D68FDA039A6E32B8107B1C45872320FA5038015C286C010D42927FF3516D8A92117F83F23B60F7680580AF83161F7326916058D17520120966DBEB6C981804E0042438A7789B1C4126CB7365E604704080006598A540010BDDDE01522040E';
wwv_flow_imp.g_varchar2_table(66) := '1D1891CD1A42B16AD58F3456D92E0AA4018048C26AB3931807E4F585FBB9A3AA99FD8ED97A082B89C3BF681061D1EF458AB524DA8653E8A50080557A3FAF50A00EAD38B1DD31D18F113D7B42EA00A1872DDEB146A293E93C200500AC0EA7C83B393420EC';
wwv_flow_imp.g_varchar2_table(67) := '3F77C276BD18E79D87DB76A1195D865B925B8077CC1A9D13C31C8A8E01F45200209610DE669816A90E0ECB7BCF1EA7BA048336E907DED655F831CBAA716AED646E5F2CC58D9014008065E3A8B669F4DC403EB748AB2743787B382B1CFBFA149B2045DF15';
wwv_flow_imp.g_varchar2_table(68) := '9BBE41C24D4EA71BDB30D5A657CB0E75AEDBF3F265EEDE3FD2D673F95258CE4A0100CDFE47C4375813365E39F79C29A0DF66FC5CC8768877B2800E3A73D1B7E7581500A3B6D22C2985526F6CC37EAECB832CD2AB3E7D702365B4EB21FC5ACEFC010A0F55';
wwv_flow_imp.g_varchar2_table(69) := '3A0D356DF876415200003B80FF4AA58BE3C27EE3B8A2CAC1B3E9577BFE407B4E573BC3F0D61599FC4EA2C598971FC9ABE1CC9ED1BE07037F338E8732CD22146392C52E480A0040209A29340F0860DD88C90F5F80F082480675B91BD41720B0EA63CC883F';
wwv_flow_imp.g_varchar2_table(70) := '6A66CC3526BF4426D1D200201C04B5A94308D2F4CCC18DA1880630F0429437CD4B4A9B1CF02998D93B936B65ACAF49CDF35DC4EF597E642B535BB402F505AE9F08AD08374914788761078C14C55A537BD8CA2FD1E4C778A4020006A4F77BD58300DBFF33';
wwv_flow_imp.g_varchar2_table(71) := '0736564F840811DEC27D66312926761D4C93BA0D6E70408834F12345BA088F2F0A9E2DEC3F2E345EFDE48F18A89707850EA6910E00E12040D8F059E999ECD0A7A93CD1FC7FF53EB39ADC00044C8C89DD067145A0AB4F79479CF806912EC2C70C357051BF';
wwv_flow_imp.g_varchar2_table(72) := '71357826E3E4977207D0269FFE4CA09F902C481362541A4434088FB58936107DF99D894BEB737E1B7E5B735E09A93B6E17B3E33774630C068985738F10C55A36B547CF44297780882080CAD358D09F15930281A5CA2B58D059EC261B47CF339C84F54930';
wwv_flow_imp.g_varchar2_table(73) := '6E4B0E2179070286714DFCB0CE86035FE6C92FF50E100201C280947AD9AA6F3A3A1980E0F5D38C2EC368462F712F333B01B1F8D026CA3DF9B6F18A1FA5534C258A9567760E3A866F49BD03C4C0978855E7F77C8CB23A3F2CDC2C0EE03CF7EC5AC3B8A66D';
wwv_flow_imp.g_varchar2_table(74) := 'D3FC16A13A5ADD95C7B7D3CA8F9D958951986136565000106076EEA0D9A65E68911E0857AF5A8994CF0B6A8BBE987D948319461667727081A14B4BAA002020DABC61F329F5E6B602352A49C30FA63C0D983D70175E3C47993B96F07C42D1C8F80E509752';
wwv_flow_imp.g_varchar2_table(75) := '2DCA5A23DC3C5E60C76EC909656EE1690067956020409B46CFA35E55391278EA69349D72A78890C735ADDA0138C50F53E4633F5EC6495D4D8687A4BC33876BA407D2A25EEB1B0B8FA08C436866BB3EDC21DFF56DF57A758EEDFE09C28C71480505004E41';
wwv_flow_imp.g_varchar2_table(76) := '98F139C0E1B7DBDAECCA589A4884275202414A2977D18149CB840FC33803E02CA08A310714008C79C428CC008025922878DDB4D930CCBC17DCF7389775AB7E180A009C425567007E4669F98B61120113629E6B4D1C7EBFF45D367D278F47A95609CDB95E';
wwv_flow_imp.g_varchar2_table(77) := '9FB1DBC0B41B79BB9C988F5780D3B692AA1D8093DDE1299B602F0330E04A333C2B229ADC7BE643CADEF1426CC9E18241F25D2EA5B5C366D1C076DDAFEB29DE0B707D0A4B4FBD69371C559C9C958593E5B690290070B23952CE32AD2A8CE5D2DBA4322020';
wwv_flow_imp.g_varchar2_table(78) := '55285287C2F63EFFC2E998E369E2309C76CB9DCC470129619122B672E217D69AA44E018053A84A05E267142859A6776F05052AFC5CD79AA60EBFE15D42B4EBCB1C91D890D42FD143AEE444F3261F62EC90825AED0026C5087B19E8E80C14615911D1249C';
wwv_flow_imp.g_varchar2_table(79) := '6C3C4DAC490DEABF56CE9C57C20BCB9299E066670CD3764E26C72F4B3505002B24C95284560281A50A0D04595E5CABF470B48DBCC9B84A7525782AD3C3262065ACE0D5AA156395AC0D0500C904AA8623C6010500317E296AC938A000209940D570C438A0';
wwv_flow_imp.g_varchar2_table(80) := '0020C62F452D190714002413A81A8E18071400C4F8A5A825E3800280640255C311E380028018BF14B5641C5000904CA06A38621C500010E397A2968C030A009209540D478C030A0062FC52D492714001403281AAE188714001408C5F8A5A320E28004826';
wwv_flow_imp.g_varchar2_table(81) := '50351C310E280088F14B514BC6010500C904AA8623C6010500317E296AC938A000209940D570C438A00020C62F452D190714002413A81A8E18071400C4F8A5A825E3800280640255C311E380028018BF14B5641C5000904CA06A38621C500010E397A296';
wwv_flow_imp.g_varchar2_table(82) := '8C030A009209540D478C030A0062FC52D492714001403281AAE188714001408C5F8A5A320E2800482650351C310E280088F14B514BC6010500C904AA8623C681FF07264BA3D314989F3D0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(537126830744975898)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EEC9D057C54D7F2C77FBB9B6C3CC121B83B0477778A6B05E82BB4450A142D52A0DED296D216874281E25A5C83';
wwv_flow_imp.g_varchar2_table(2) := 'BBBBBB070DC47577DF676E08259064EDDEBD77F7CEF97FF8F3DEE3DC3973BE73923BF79C39339A62FFF436811B1360024C8009300126A02A021A760054656F9E2C1360024C8009300181003B00BC1098001360024C8009A890003B002A343A4F99093001';
wwv_flow_imp.g_varchar2_table(3) := '26C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698';
wwv_flow_imp.g_varchar2_table(4) := '001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A89000';
wwv_flow_imp.g_varchar2_table(5) := '3B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F99093001';
wwv_flow_imp.g_varchar2_table(6) := '26C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698';
wwv_flow_imp.g_varchar2_table(7) := '001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A89000';
wwv_flow_imp.g_varchar2_table(8) := '3B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F99093001';
wwv_flow_imp.g_varchar2_table(9) := '26C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698';
wwv_flow_imp.g_varchar2_table(10) := '001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A89000';
wwv_flow_imp.g_varchar2_table(11) := '3B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F99093001';
wwv_flow_imp.g_varchar2_table(12) := '26C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698';
wwv_flow_imp.g_varchar2_table(13) := '001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A89000';
wwv_flow_imp.g_varchar2_table(14) := '3B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F99093001';
wwv_flow_imp.g_varchar2_table(15) := '26C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698';
wwv_flow_imp.g_varchar2_table(16) := '001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698001360024C8009A890003B002A343A4F9909300126C00498003B00BC0698800C04741A2D3C74EE08';
wwv_flow_imp.g_varchar2_table(17) := 'F0F04676EF8CC8E39705F9FDB3099A1C787009279F5C87D1649241336986CCE993093FD4E8866B2F1EE0F2F3FBB8FAE201EE463C4574621CE20D8930C175E62A0D4196CA04C427C00E80F84C59221348954056AF00D4082C8E2A398AA26C96FCA097A28F';
wwv_flow_imp.g_varchar2_table(18) := 'BBE75B7DAF3CBF8F6F0F2FC1F1C7D75C82645EBFACF8A7C94004FA644A311F83C988E7B191B815F118C71F5DC3D1475771E6E92D84C747BBC4BC79124C40E904D80150BA85583FA724E0A6D52140EF839CBE1951315B6154CC56088502028597BEA79BDE';
wwv_flow_imp.g_varchar2_table(19) := 'EC9C565E3B805107E69BEDE70C1DBEAAFA1E3E2856375D556907202C2E1A4F62C27027E209AE3C7F808BCFEFE2C2B3BB7818FD1C894683334C957564024E45801D00A732172BAB6402EE5A3794CF56100DF304A16EAE52C8EF9FDD6675E92BF89D35DFE2';
wwv_flow_imp.g_varchar2_table(20) := '694CB8CD3294F0A0BFDE1B9BDA7E83CC9E7E36A9438EC19DF02738F9E4060E865CC281904B8293C08D093001FB09B003603F4396A05202748E4F67F815B21642ED5CA55034632EE11C3FA387AF2844BED83707EB6E1C1145965C423A14AE811F6B741365';
wwv_flow_imp.g_varchar2_table(21) := 'F8D8C4786177E0D4939BD87AE724CE3EBB8D88F868978A951005140B610216126007C04250DC8D09241328912937DE2F561715B215427EBF6CA0ED7E295AF09D9318B87B16E8ACDC59DBBF2DBF44C94C7924519F8E052E84DEC58EBB67B0F3DE1921B890';
wwv_flow_imp.g_varchar2_table(22) := '1B13600296136007C07256DC53A504B41A8DF0555F397B1134C81384EA81C540017D52B7F0F8187CBE6B060E3DBC2CF55092C82F9FB520E6371D2C998394AC341D133C890EC7B1C757F1EFB583C271415442AC247362A14CC09508B003E04AD6E4B9884A';
wwv_flow_imp.g_varchar2_table(23) := 'C053E78EFF956C884679CAA164E63CA02D7F47B7D5D70F61C4FE7F1C3DACDDE391D334A16E4F34CE5BCE6E59D60AA09D81138FAF63ED8D2308BE7B0A617151D68AE0FE4C401504D8015085997992B6106857A83A7EA8D15596177FB2BE744FBEDE8A2F9D';
wwv_flow_imp.g_varchar2_table(24) := 'EE6A1CDD7C58D86C882DD8457B8602287F3DBE527004B8310126F036017600785530815408D0D7FE92E6C350264B3ED9F9FC726C25E65CD826BB1ED62830BE760FB42850D99A4724E9BBF9F6090CDC3D5312D92C9409383B0176009CDD82ACBF6404A637';
wwv_flow_imp.g_varchar2_table(25) := 'F80CF57297914CBEA582E94CBBCF8EA978E1245BD97A9D1BB6B6FB0E39BC335A3A45C9FAADB8B61FA30F2C904C3E0B6602CE4C801D0067B61EEB2E29813E659B6340B9D6928E6189704A953BF2C03C6CB879D492EEB2F7E95CB416BEADF60134D0C8AECB';
wwv_flow_imp.g_varchar2_table(26) := '1F27D760C6D9CDB2EBC10A300125126007408956619D144140290E00C1B811F610ADD67EAFF82B81F4F5BFB0E950451C9D10B7EF0E2FC1A2CBBB15B19E580926A03402EC0028CD22AC8F62080C2ADF06BDCA34538C3EBD774CC5AE7B6715A34F6A8A50DE';
wwv_flow_imp.g_varchar2_table(27) := 'FF2DEDBE55C4D73FE9473728E826053726C004DE26C00E00AF0A26900681B685AAE1E79AFF530C9FA557F6E29B438B155D39EFF372ADF059D97714C3ECDD4DBFE2F4939B8AD1871561024A22C00E8092ACC1BA288A00DD0058D46C2828C7BF12DAADF047';
wwv_flow_imp.g_varchar2_table(28) := 'F86CE774E13840898DF2FEAF6D3D5A11C17FC97C6A2E1B8E67B1CE5D4F4189B6669D5C83003B00AE61479E8504048AFAE6C0B2D6232DAADE27C1F0A98AFCF9D80ACCBDB0DD51C359354E97627531BAEABB8AD9FEA714CAD5160C468429CEAA79706726A0';
wwv_flow_imp.g_varchar2_table(29) := '1602EC00A8C5D23C4FEB08988002FA8C58D5E91B453900471E5EC1875BFFB06E2E0EE84DBB242B5A8C40B18CB91C309A6543C424C6A3DADC0188335F7DD93281DC8B09B8180176005CCCA03C1DF108F81BDCF1778B412893AD807842ED94445FB54D577D';
wwv_flow_imp.g_varchar2_table(30) := '8D7B914FED9424EEE3942F81F22628A9DD097B8CA6CB46C1E4A18C231C25B1615D980011600780D7011348838026DE20E401E85DA9A5A218D111001D0528A9FDD5B01FEAE42AA52495B0EBD669F4DC3A095A4F7745E9C5CA3001A5106007402996603D14';
wwv_flow_imp.g_varchar2_table(31) := '47801C008A68EF5FA5ADA274BB1DFE18BD764C0505052AA165F30EC0CA16231D5221D19AF92E39B70B5F1F5A088D9E7700ACE1C67DD543801D00F5D89A676A25816407E0B3CAAD652D08949ADA4AAA0FD0B5787D8CAAD24931C17FC9BC7E3FB812332E6E';
wwv_flow_imp.g_varchar2_table(32) := '81C64D67A5E5B93B135007017600D461679EA50D044CF189A890A100A6B71A80000F1F1B2448F7085D6DABBF7214284DB09CCD4FEF85B98D07A254E6BC72AAF1D6D82698302C7826D6DE3B0E8DCEF1659C1505839561026910600780970613488380C960';
wwv_flow_imp.g_varchar2_table(33) := '843ECE84D5EF7E8B42190315C7A9DFCEE9D876F7F42BBDB41A0DF42F731678BAE9852DF95CBE9941D9F97CDD3D6DD23F24EAB91070487F87C646C068320A72620D09C2DF0DF3046172FD5E8AFBFABFFDE21146EF988BA31137018DFC35096C82CF0F3101';
wwv_flow_imp.g_varchar2_table(34) := '8909B00320316016EFBC04C8014074025676FA0AA5B3E557DC448C2613CE3EBB8547512F84EC8059BCFCE1E5E621E8E9E5A6879FBB977085D15DAB135ED046980093C9A2796834F4844678E1C71B131195108BF0F89857B5086213E3119D18871A812540';
wwv_flow_imp.g_varchar2_table(35) := '8E87D2DAA987D7313C78266E1B5FB003A034E3B03E8A21C00E80624CC18A288D003900C6C8382C6C3F02557215579A7AAC4F3A04B6DF3889E1DB6721526F84028A12B2AD98802209B003A048B3B0528A206034C110158B710D3F45DBE23515A1122B6119';
wwv_flow_imp.g_varchar2_table(36) := '81C5E776E2ABDDFF40E7E765D903DC8B09A890003B002A343A4FD9420226C01813878115DB826E0270731E02130EADC2E493EBA0F3493A12E1C60498C0DB04D801E055C104D221608C894797E2F5F075DD6ECCC989080CDA3C0D1B6E1F83D68BF3003B91';
wwv_flow_imp.g_varchar2_table(37) := 'D9585507136007C0C1C07938E722608C4D40D33CE531A9795FE7525CE5DA7658FA2DCE86DDE52C802A5F073CFDF409B003C02B8409A4438002012B0514100201B9390701BA11516BF6203C3546711640E730196B29130176006402CFC33A09011350509F';
wwv_flow_imp.g_varchar2_table(38) := '09FF76FA5A5155019D849E2C6AC624C4A1F2AC7E48F0D042E3C649806431020FEA1404D801700A33B1927212F089D76259FB51289429A79C6AF0D81612B8167A1FCD978E818ECEFFB5CACB5160E134B81B13909C003B009223E6019C9D805B8C01D39B7F';
wwv_flow_imp.g_varchar2_table(39) := '8E5A794B3BFB5454A1FFE17B97D06DC3380E005485B57992F6106007C01E7AFCAC59023A8D163EEE1E421639676CA47FBF52CDD1BB420BC5A5BB75469E8ED279D2B135987E71EBABCC858E1A57AC71287DF39D8827628963394C205502EC00F0C2908C80';
wwv_flow_imp.g_varchar2_table(40) := 'BBD60D9F966E22E4A2FFEBDC16DC087B28D95852082EE09F1D1F976E8C3605AB82E6C2CDB908ACBE7E08B32F6CC395E7F79D4AF1D299F3E1871A5DB1ECCA3EACBB7904114EEA3C3B1574952ACB0E804A0D2FF5B41BE50942AF32CD512C632EB869754241';
wwv_flow_imp.g_varchar2_table(41) := '99B5370EE3EFF3DB10931827F5F036CBA7FCF795B217C6BB456BA36EAED2A06A77DC9C9700D54BB8F2E23EE65DDC81ED77CF202C2E4AB193A13A0E1F96A88F0E856B084E33FD9C5C79F100BF1D5F85A38FAE2A566F56CC7909B003E0BCB653ACE60DF294';
wwv_flow_imp.g_varchar2_table(42) := 'C5C4BA3D8517FF9B6DFDCDA3187B74399EC546284EFF820139D0A35423B42C50059E3A77C5E9C70AD947E062E83D2CBDB217ABAF1F7C55CDD03E89E23D9DC9D31763AABC87E6F92BBE25F4795C24269FDE808597768937204B620200D801E065201A01AA';
wwv_flow_imp.g_varchar2_table(43) := '0AF771A9C6E853F61D78BFAC4A979AF0A731E11875603E76DF3F27DAD8B60AE22F7E5BC939EF7354DA78E6B92D2067343C3E5AF689BC5FAC0EBEACDCC9EC31133901934FAF975D5F56C07508B003E03AB694752674463EB4623BFCAF44038BF430988C18';
wwv_flow_imp.g_varchar2_table(44) := '737001FEBD76D0A2FE5274A233FE1EA51AA35581CA7CC75F0AC00A9749B10153CE6C44F09D93A0A302391A39CC5F546C6FF1D03F1C59860597765ADC9F3B3281F408B003C0EBC36E02FE7A2FCC6CD81F41590B58258B32B6CDBFB8530810A45D0147B5CA';
wwv_flow_imp.g_varchar2_table(45) := 'D98BE0BDA2B55187CFF81D855CD1E350B4FDB8E3FF62E7BDB348341A1CA26B56AF00E1AB3FB52D7F730AACB971185F1F5A84D8C478735DF9DF9940BA04D801E0056217017AF94FAAD71B557314B559CEDD88A7F8F2C03CC9039DF2F967138E28E88B9F02';
wwv_flow_imp.g_varchar2_table(46) := 'AEB83181D709D091C0F4339B702D2C44523015B215C2B85ADD91CB37B3CDE39C7E7A135D37FF8E0463A2CD32F84126C00E00AF019B090478F8605E934142A4BFBD8DBE66FEBE108CA9A7378A7E773BA3872F3E2CD1009D8AD444162F7F7B55E5E75D9840';
wwv_flow_imp.g_varchar2_table(47) := '686C24D6DC3884459777831C53319B5EE7868E856BA27FB996A035696FDB7BFF3C06EC9E896805DFAAB1778EFCBCB404D8019096AFCB4AA72FFF89F57AA15A8E62A2CE91AE6B8D3FB11A71860451E416CE10289CB1D2953E6E4CC0520294B3E2BBC34B70';
wwv_flow_imp.g_varchar2_table(48) := 'E8E1654B1F49B71FFDBCF40F6A259496A66059B1DAC92737D06DCBEF0E3BBA104B6F96A30C02EC0028C30E4EA505FD329BDF7488285FFEA94D9CBEBC7AED986257E2204F373DFA94698E4F4B3715F517AE53198A95B58B0005AA9243BAF8F21EBBB2F255';
wwv_flow_imp.g_varchar2_table(49) := 'C95114232B7542894CB9EDD227AD8779274012ACAA10CA0E802ACC2CDE24E9E53FA16E4F540F2C2E9ED0542451E2A0CF77FD850BA177AD1E878E2406956F8B7AB9F9ABDF6A78FCC05B049EC48461EE85ED58706997D53B5394D467488576A07BFE52B613';
wwv_flow_imp.g_varchar2_table(50) := '8FAFE3C3AD7FF04E8094905D50363B002E6854A9A624F597FF9B7A535CC0AFC7FFC5B2ABFB2CFAC596DD3B83B0C54A67FD629CB14AC591E53A27819BE18F3064CF6C5C08BD63760294046B78C50EE856A2BED9BE6275A09D80817B66212A21562C912CC7';
wwv_flow_imp.g_varchar2_table(51) := 'C509B003E0E206166B7A14F037A1EEA7A29FF95BA2DFAAEB07F1DDE1A5E9A610AE99B304FA07B544B9AC052D11C97D98804D04E8BAEAA03DB3D2BDB14267FCF4B3D2386F799BC6B0E7218E09B0879EFA9E6507407D36B77AC68EFEF24F4DC1C30FAF60E2';
wwv_flow_imp.g_varchar2_table(52) := 'A97538FEF85A8A7FCEE19D1103CAB742BB42D5AD9E173FC0046C2140B10194BF62CE856D7814FD2285080A3AFDB6DA07A898ADB02DA2457966CFFDF318BC671622792740149EAE2C841D0057B6AE087313E39EBF086A08221E4485E2E7632B70FCD13584';
wwv_flow_imp.g_varchar2_table(53) := 'C547A352B6C21853F53D140AC821D6104E29C7643241F843DABFFC7F94D9CE603008FF7B52B336F23CE9398D4603AD460B8D96FEFE4F8656AB15FE4DCD8D32098E3EB84028D8136F4840C33C41F8B14637F8EBBD65C7428EF2875BFE10FD4AADEC136305';
wwv_flow_imp.g_varchar2_table(54) := '4425C00E80A8385D4B18A5F75DD074B0D519FEA4A440D7031F478709C7010502B29BCD9F2EA52E8E947D37EC096E873DC2FDF0A778121D26FCE71AB94AA171BEE46DE6A417B6A332DAD2CB9F5EFFC1774E61FBAD93C8E19311D97D33A264D67C28943150';
wwv_flow_imp.g_varchar2_table(55) := 'F8CF6A68F4954D01AB6171D1A890ADA0A2D6E3C2CBBBF1FDE1256A3003CFD14602EC00D808CED51FA3AFBDE1953A5A9CDBDFD579C831BFFB114F71ECC1551CBB7F19E79FDCC29DB02778111BF94A958FCB3543BF0AADE550EDD598534EAEC3AC939B5EFD';
wwv_flow_imp.g_varchar2_table(56) := 'F70C9EBE2891252F8A65C98DE259F2A25C8E82C8478E9ACE4D563DD53AF894331B30E914171052ABFDCDCD9B1D00738454FAEF9F966E225C5FE2E61802B75E3CC2F1902B3872EF322E3EBD237CE947C6C7A4BB85FB6EA97A1851B5B363144C63945F0E2F';
wwv_flow_imp.g_varchar2_table(57) := 'C392F36997A92547D2CBDD0379FCB30A0E41B5DC25503EB03072FB678107975C7688EDA69ED928C4CF7063026F12600780D7C45B041AE4298BDF6AF748B7A42F63B39F4074422C4E3EBC8E1D374E62DF9D73B8F9E2A15555E9EAE70FC2EF0D7AD9AF881D';
wwv_flow_imp.g_varchar2_table(58) := '1206EF98819DB74E5B25818E08CAE628283803CD0B5786B7BBA755CF7367EB085074C84F47970B818BDC98C0EB04D801E0F5908240A33C41F8B3EEA7A07BCCDCC425101E178DC3F72EE2CCE39B3815721DE71EDF44447C8CCD8364F0F4C1CE0FC6D9FCBC';
wwv_flow_imp.g_varchar2_table(59) := '180FD65F342CC5B184B532FDF45E2893BD004A672B80F2390AA14AEEE2A02BA7DCC427D067C734ECBC77467CC12CD16909B003E0B4A6135F710AFA5BD46C28CA64C927BE70154B8C4988C381BB17B0E4DC4EECBD73CEA2A44696E0A230BC133DA658D255';
wwv_flow_imp.g_varchar2_table(60) := 'B23E1566F7C5CBFB07768F41C572AAE42A8E76C56BA25991CA7C446037D19402E8D602650B7C111725B26416E7AC04D8017056CB89ACB74EA345AF32CDD0BB4C73D02F626EF611A060BD6D374E62DDE583C2363F6DF74BD14EF6982A85588B65969FFD99';
wwv_flow_imp.g_varchar2_table(61) := 'C57DADE9E8EFE18D0A8145D0B06079D4C95706B9FCB258F338F74D8300DDDA18B0FB2FAB8E9A18A6EB126007C0756D6BD5CCE8BEFF97953BA375C1AA5C3CC72A72293B87448462FBCD13587FE5304E845C95FC17EDD1EE93E1A6D1A6AB716A77F6755AED';
wwv_flow_imp.g_varchar2_table(62) := '5BA9018C46638A6B84944720BD966832A2F29C7E76D0B2ECD1A29973A363C9DA6851A4AA6AAE175A46C6FA5E545BE3BD4DBF22DE9068FDC3FC84CB116007C0E54C6AFB8428A1CEAC46FD11E893C976212A7C9272136CBB7E027F9DD888F38F6F49474003';
wwv_flow_imp.g_varchar2_table(63) := '68745AE18FC9688229C1807DFFFB1DFE7A1F504E9EE4173DBDDC85043EF49217A119692C53927360301A84B129D150447C346ACE1B0CAD5E272420A0FF1D425FD3CB8444220CFE9A083AF2A895AF343E2AD7440820E45B04D6F10D8D8D44DF9DD340E982';
wwv_flow_imp.g_varchar2_table(64) := 'B9310122C00E00AF83140406956F231C0570334F80CEBE4F845CC39C935B107CFDB8F859D728D98E56038D4E78BB43E34619F9B4805623BC700DD1F1F8FB9D41C216B91C6DCFEDB3F864CB04683DDD935EF82F9D0093D1489E024CC21F720692B3118AA3';
wwv_flow_imp.g_varchar2_table(65) := '25957AAE973F085DCA3640F5DC25C511AA02299C13400546B6728AEC005809CCD5BBD32FD7B1353E44F3FC155D7DAA36CF8FB64F77DC3C853F0FFD8B6BA1F76D9693E2417AD9D30BFEE5173EBDE485977D3AD9766907605CADEE685D4C9E3A086B2F1FC4';
wwv_flow_imp.g_varchar2_table(66) := '17FBE740E366E6C608F90074BC90608029D120380649298BED6F9453A07BB9A68213E4ABF7B25FA08B4AD8F7E0027AEF982A5A00AA8B6252DDB4D801509DC9CD4F38939B37D6B4FD0A59BD03CC7756510FFAE23FFEE02AE69EDA8AE01B2784ED70BB1A6D';
wwv_flow_imp.g_varchar2_table(67) := 'E9D38BDE4D078DBB4E78F90B7BF916367A918EAAD0111F0635B6F00971BBCD3FBD0D3F9C589EA4B7A58D7609128D498E00FDA163033B9D01BAB24A4702FF2BD704941B815B4A022743AEA1D7F62908374A1388CABC9D97003B00CE6B3B4934A75FCE86A8';
wwv_flow_imp.g_varchar2_table(68) := '38D4CB5716335A0D04DD0E507B8B4D8CC7AE5BA7F1C7C195B8FE3CC42E1CC20B9F5EF6EE6E2F5FF8B68B2307A06FA9E6F8BC4A5BDB85D8F1E4C4C3AB31E5FC46F33B00E98D410E011D159053403B04747C608743403B029F556E8D7AF9CB22A95A81BA1B';
wwv_flow_imp.g_varchar2_table(69) := 'ADDDE60BBFC4DDF0A7D0F97A58E7ACA91B9D2A66CF0E802ACC6CE12429C82B3A4EF8454C8D22AFC736FA58D5BF482F3DBD8B59273661FD9543B66F9FD2973E7DE50B7F92B6F9C568F4D2EC5AB80EC6D4E9228638AB657CBF7B01165CDF639F03F0FAA814';
wwv_flow_imp.g_varchar2_table(70) := '40F87267C0486BD04647808EB1DA97A8858FCB3743BE0CD9AD9E97AB3C40658B7FDEBB04734E6D11A6448EA7CE4B9F1443C28D09701020AF81570428803B2E41F8F3FA2FDED175BA0851D76A6BB75F3CC2EC535BF0EFC57DA0443E56378ADBA32F7DBDBB';
wwv_flow_imp.g_varchar2_table(71) := 'DD5FFA698D4D5FCEADF254C46F8D7A5AAD9E180F0CD93A03EBEF9F10CDA149A1D3CBA302637CA2E014D8EA0CF4A9DC0A03ABB6834E85992DE79D0EC677BB17A4C04A0EA8CE97532F8BB1FE5D4106EF00B88215C598033900B1F130C6A5BC1F4C7100CB3A';
wwv_flow_imp.g_varchar2_table(72) := '8D419E80AC628CE21432CE3DBE85019BA7829C005B1AFD92A5C878B3C171B6087FED1972006A672D8E592D07D929C9B6C73F59F73BF63DBB22ED17258508180C30098E80312966C0CAD6A8600590231094BDA0954F3A6F774A44D562D1683C8A7CCE0E80';
wwv_flow_imp.g_varchar2_table(73) := 'F39A5172CDD901901CB1130D6034C11019FBD62FD9CAB98A61769BA1F072D33BD164AC57955EF8334F6CC4F20B7BAD0EF013A2F785B3FD97C17CD60F6FFD132613CAF8E5C6F2F6A3AD7F5684273AFEFB03CE45DCB32A70D1DE616937C0189B203803D634';
wwv_flow_imp.g_varchar2_table(74) := 'CA19D0B6444D215E22BB6F466B1E75BABE744BE5E335E371F0DE85942F7FAD065A1F8E03703A834AA8303B0012C27546D1F4CB95FEBCD906546B87FE32059B49CD31D168C0E2B33B85B3D23B618FAD1A4E08EAD3BB41EBE1E6D01761B29279F519B1F5BD';
wwv_flow_imp.g_varchar2_table(75) := '9FACD259ACCE4D168FC49DF817E95E55146BAC14724C26508C80292E2129CF8015AD54B6FC1850B51D1A142867C553CED5958233271E5EF596D25A2F7DD23AE5C6045E1260078097424A026F040226FF23DD061851FB3DE1CEB52BB5FB114FD17FE3649C';
wwv_flow_imp.g_varchar2_table(76) := '7974D3F269BD0CEAD3EADD92B6F9658CA9F283078E7EF8A7E5BA8BD8B3F29CFE88D026C8E2F8244F837602E8E8CADA1D81CEA5EA6270F50EC8E262575D575EDC8B11C17FBF55A089B2356ABD3D44B43E8B720502EC00B88215C59E431A47017404B0B1CB';
wwv_flow_imp.g_varchar2_table(77) := '4F2E130F4067FD83B74CC70D2BAEF6D1563F7D45D1353E395FFCAF4C1E6FC0C54F6638FCA606E544283EE35368280BA08C0E90C0E1D58E40625292210B5BC5C022185AB3132AE72C66E113CAEE4657557BAEFBE3ADFA1342F43FBDFCE5B693B2F1A9523B';
wwv_flow_imp.g_varchar2_table(78) := '7600546976F393A6B35643E4DBD1EF74CF7A6E9B2FE0A377DE48E2A7D161F8FDE04AACA4B37E93652F8C572F7EBDB2B6502938EE48B73F11E0E163DEA822F6088B8B42E5B99F43EBA957D48BC5DA1801779D1BDE2F5D1F5FD4E8042F77E7FD42A6F8950E';
wwv_flow_imp.g_varchar2_table(79) := 'CBBE0305FFA5681A0DDCFC3D65DDA51171D9B1289109B003203250571297563C00655D9BDBF60B500636676BB4D53F76EF621C7D70D932D5A9A88E877C67FCE694240720B8D38FC81B90CD5C5751FF9D5E388D978F56E69932DD1C484844D21542CB1CBC';
wwv_flow_imp.g_varchar2_table(80) := '36C56B6048F58EC8E99759544E8E10462FFDBE1B27E1F0BD4B6FBCFC21DCFBA718156E4C203502EC00F0BA48970065054C4E0CF47AC72E651BE2DB7A1F3A15BD1517F6E2AB9D732D2B854AF7F885E03E7769AFB9D949901C8065AD463AFC8ADBE94737D0';
wwv_flow_imp.g_varchar2_table(81) := '79C32F426223253772028CD1F116A9484ED4D7F5BAA16EBEB216F5574AA7AF77FE83856777BCA50E5D45150A3571630269106007809746BA04E84CD548D901DF88B6A6C42A3F35EC8E0E256A2B9E2045F9FF766039FE391D8C040BEAA053F53D8A9896FA';
wwv_flow_imp.g_varchar2_table(82) := '1EBF18E0E80B7766C37E0EAF084895003FDD31599A24406280794D0639B05439D192AA8454506850F50EF89F4CF515AC9DFAC6AB47F0C5D6BF4025A95F6F743B45E7C75BFFD6F2545B7F7600D466711BE62BC40344C5BD958D8DCE4C67B61A241462516A';
wwv_flow_imp.g_varchar2_table(83) := '8B498C17EE441FB9FFC6F6682A0A0B57FAE8ABC999B64C4DC0AFD53E74784540AA0438ECE03F8ADE1D4961E2979918385FA100002000494441542E858442162413EA54B20EBEABFF3F508C80521B1D67F55AF7079E4487A554510321DB9F5829A7953A7F';
wwv_flow_imp.g_varchar2_table(84) := 'D6CB7E02EC00D8CF501512D28A07A894B328C637ED855C7E5914C7E171D40BE18ADFF190ABE9EBF672BB9FCE4A9DEE97A609F8B25C7B8757049C77661B7E3AB9C2E982CB84C243742CF046C6CBD41648ABA2D5F05B939E8A4C231C111F83BE1B26E2C0DD';
wwv_flow_imp.g_varchar2_table(85) := '94C97E681E7CDF5F71BF8A14AB103B008A358DF21433C6BC9D2A98B46C56B812C637ED0DCAB6A69446417E9F6F9CF2F6D7D19B0A6A34CE5D25CD047C56A2A9C32B024E3ABA1A532E6C763A0720D9FC742C40EBD9DC6E40A18C81F8A1417750364CA5343A';
wwv_flow_imp.g_varchar2_table(86) := 'C6EABD7E0276DF3EF3964A7CDF5F2956720E3DD801700E3B29434B4A121411F3D62FCD4C5E7E58DC7114E897A512DAB5D0FB786FC58F78111B95AE3AC2D53E6FBDF37DF5BF3E2B13D0A5404D8CA9D3D5A1E8BFDFBB000B6FEC735A07806009F12D9456F8';
wwv_flow_imp.g_varchar2_table(87) := '65F5CBB40066F3C980714D7AA2669E520E659CD6607403A3E5E2316F15A912EEFBFB38EF554645C0559912EC00A8CCE0F64E9782CE0C51B129E201284BE082F62314F195445FFE7D374C42684C44BA531522A429C2DFD993A398801681E530BE492F7B4D';
wwv_flow_imp.g_varchar2_table(88) := '6BD5F343826760C383532EC14FB829104B41826923A024585FD7FB5028912D77A323ADF796FF9822DB5F52D09F97F3DB436EB82A1B9F1D0095195C8CE9BE9924A84AAEE298D57A10BCDDE54D0E74F4FE65F45AFF27C2E3A2D39E26DDEBF772B2403F3346';
wwv_flow_imp.g_varchar2_table(89) := 'AB99A130FE6E3D440CD35A2CE393F57F605FE8158BFB2BBDA37024402985D3A92DE0EFE18D3F9B7DE6F01B176FB28B8C8F41F735BFE164C8B5A47FA2632C1FE7B8B5A2F475A036FDD801509BC5459A2F0551D1196A0EDF4C98DB76280A67CA259264EBC5';
wwv_flow_imp.g_varchar2_table(90) := 'D035BFAF76FE8365E777A7FBB0B045EAA5779EC8750B5194F6CE89151DC758D85B9C6E1D567E8FF3510FC411A6142994029BE202D23912F074D30BB703DA97A825ABD674CCD562D118A16AA58E8EB19CE9E68AACE478F0D709B003C0EBC16602941F605C';
wwv_flow_imp.g_varchar2_table(91) := 'BD4F4059D4E46C54F98C2AA0A5D928CADF539F74BDCFD9B7FC5399641E5D0082BBFCEC5013345E3C027713DEB87EE6500D241AECE575C1D42A62268F4869977F6FD65BF684415F6E9F8D15D7F60B51FFDC98802D04D801B0851A3F23106857A83AC6D694';
wwv_flow_imp.g_varchar2_table(92) := '371BE09273BB4099D0D2CCE94F77A27D3C159FB1CE9E25E59BE886633D26D923C2EA67854A80BA44AB9F739607929207BD9DFB22597FBAF1F27D838F64DD09A0A3809EDB27E3C4931BCE8295F554180176001466106751A74C967C9858B717027D32CAA6';
wwv_flow_imp.g_varchar2_table(93) := 'F28527B7F1EEF21F40C97E526B1418A5F5F170EE287F0BE89AA2E371A9F72C875504142A014EFF041A6FD7FEF24CAB2056B2493278FA08D75FE54C1D1C1A1B890E1BC622242AD48295C25D98404A02EC00F08AB09A0045FDCF68D817B57296B4FA59B11E';
wwv_flow_imp.g_varchar2_table(94) := 'A068FF3EEB27A479D58FD2F9D2973FB42EB8E7FF06443A8A39DA7D92C32A02D2F5CA2A73FBABA2BE7CD2AD17DA0948FD8A8012760282EF9C42FF5D33C4FAD162392A22C00E808A8C2DD654DF2B5A075F557D0F5A8D3C2F570A80FA60E5D834AFFAD1FD7E';
wwv_flow_imp.g_varchar2_table(95) := '9D2FD53F97473FB1385B2A871C80E0F7C6225F86EC963E62573FA112E0B251AA293463CE09A03C1853DEE92FDB35D80463227A6E9F828321E6D35DDB65787ED8E508B003E072269576428533046251B3A1F0D77B4B3B501AD2CD7EF953A4BF37BDFC6551';
wwv_flow_imp.g_varchar2_table(96) := '4F9641C90158DE6EB4C32A029E7E781D9DD6FFEC5C3513ECB50C0507C6A69E0993449313B0A2F3570E2FCB9C3CAD6B612168BDF67B18D3D8A9B077FAFCBC6B126007C035ED2AD9AC26D6ED8926F9CA4B263F3DC194DBBFCDE2AFD24CEF4BA569856D7F15';
wwv_flow_imp.g_varchar2_table(97) := 'BDFC89175DC99CD5E47387DD4FA714B43D8327A9EFEA193901317130C61B525DA6940F831262C9B533367CDF5CACB97158969F4D1ED43909B003E09C769345EB1A81C531BBF10059C6A640BF8F56FD9A66611FE18EBFCABEFC930D415BD4E36A7EE4B08A';
wwv_flow_imp.g_varchar2_table(98) := '806BA812E0BE3920E66A6C69D5C42016F5F207616A8BCFA197A18AE0B3D870BCBFE937DC8978A246B3F09C6D20C00E800DD0D4F8483EFF6C985ABF0F0A05E470F8F4A9D6F9FF56FD8A630F52CF3CA7D62FFF570E80C18851153A3AAC22E03FA783F1D3B1';
wwv_flow_imp.g_varchar2_table(99) := 'E5AA75002865707A3B015DCA34C0B7F5FFE7F09F131A70E7BD3318B87B16E867861B133047801D007384F8DF0502E36A7547AB825564A13174EB5F587D697FAA63ABF9CBFFF51D80BEA59B3BAC2220255E9A726E937A1D8097E0D3DB0918D7B827DA95A8';
wwv_flow_imp.g_varchar2_table(100) := '29CBCFCBC8FDF3B0EAFA4159C6E6419D8B003B00CE652F59B42DE09F1D2B5A8C808F0CB9FE679DD8845FF72F4D35B849ED5FFEAF3B005D0BD7C1983A5D1CB23EBEDBBD000BAFEF81C64D9D4700AF20A7B313A08106631B7D2C4BF1A0F3CFEEA0EFCEE978';
wwv_flow_imp.g_varchar2_table(101) := '18FDDC21EB8107715E02EC0038AFED1CA23905347D53ED03742EE2F8DCE7146DFEDECA9F40F5CFDF6CFCE5FF1F118A016899A722C637EEE990353178CB746C7870D2E5132C590A33AD9D00FAD9D9D475AC2C65B2E75CD8865F8EADB4740ADC4FA504D801';
wwv_flow_imp.g_varchar2_table(102) := '50A9E12D9D7697627531A6EA7B967617AD1F55F41BB4791A28E2FCAD973F25F9F1E5D2A7AFB8184DA895B51866B518241AFFF4047DBC6E3CF63FBBAA8A244B1601359960888C83C9607CAB7BB91C8530ADE50064F50EB04894589DA84056F335DFE06EC4';
wwv_flow_imp.g_varchar2_table(103) := '53B144B21C1724C00E800B1A55AC295124F3A1777F83B79B8758222D969366811F2A7DEAEBFAE97D2D06451D4D4019BF5C58DE7EB4558FD9DA59A80418795F3589962CE1442F7F720252CB18D8A56C437C5BCFF13533165EDA85EF8F2CB5447DEEA35202';
wwv_flow_imp.g_varchar2_table(104) := 'EC00A8D4F0964C5BAE623F979EDE45C765DF21F6CD1CFFFCF24FD36C793D3261EBBB3F5A6256BBFB345A3402F7125EB003F00649A17680903638E53F78B97B605EDB61281F58D86EF6D608A0FA001F6CFE0D21511C0B600D3735F56507404DD6B662AE54';
wwv_flow_imp.g_varchar2_table(105) := 'F27461B321281C1068C553F677BD1FF114DD57FF861BCF43520AA3AA7EBE9E7CEE9C06623F8D078E76FBD37E03582041A804A84D6007201556493B01B16F390194A67945A731C8E8E5670161F1BA702C80782C5D51123B00AE685511E6D42FA825FA05B5';
wwv_flow_imp.g_varchar2_table(106) := '104192E522E8DCB2F3F2EF71E6D1CDB71ED27AEBD5957AD6726C424F53BC01973E99217945C0579500A906BDCA322E5A6A12A19430ED04BCD1DE2D5D0F3F36E86EA91851FA5199EC66ABBFE658005168BA9E1076005CCFA676CFC85DEB86FD9D7F85BFDE';
wwv_flow_imp.g_varchar2_table(107) := 'CB6E59D608987F7A1BBEDD3DFFED97BF5EA78ACA73D6B07AB3AF313E51D801A09D1B29DB8BD84854F96700B49EEC00A4C7D9189B00FAF3665BD461242865B023DB824B3BF1C391658E1C92C7721202EC003889A11CA9A61C67FF5461AEFB9ADF7027EC71';
wwv_flow_imp.g_varchar2_table(108) := '8AA96AE9E5EFA5AEE23EB6D89A1C80E08E3F485E11F0D68B4768B26234EFC65860A4D4AE0716CA1888BFDB0C456EFF2C164810A74B522CC078D0DFDC98C0EB04D801E0F590820055F95BD2FC0B147470CADFD13BE660C9B95D2974D16835D0F9F1753F4B';
wwv_flow_imp.g_varchar2_table(109) := '96283900CB5B8D94BC2220E566E8BCE9578EC5B0C428000CE1313019534605760B6A84AFEB76B3508238DD669F0FC6AFC7FF1547184B711902EC00B88C29C599881C67FFD7431FA0C5A2D1A01880578D82FEBC3D549F6ED652AB52F0D9CC06FD24AF08B8';
wwv_flow_imp.g_varchar2_table(110) := 'EBD619F4DA39851D000B0D638A4F8421263E4550A09FDE0B4B3A8D46B1CCB92D94627F37CE0B603F435794C00E802B5AD5C639B9697538D8791CE81794A3DA8BD828F45CF7074E845C4D31A4D64B0FAD879BA3D470FE714CC0AFD53E94BC22E09ACB0730';
wwv_flow_imp.g_varchar2_table(111) := 'FCE03C4E0264C58A49ED28A0626011FCD36E183CDDF45648B2AF2BC702D8C7CF159F660740C156F5D4B9A361DE72E850B80622E363703DEC218C30C24DA3C3CDF047B81E16827843220C46239EC546203C3E1A14F56B6BAB9CBD08E6351D247924F9EBFA';
wwv_flow_imp.g_varchar2_table(112) := '4D3AB21A130EAD4AA1B246A785CECFD3D669A8F33913F065B9F69257049C4795004FADE42B80D6ACB2343205F6AED412436B74B246925D7D1F4485A2EBE6F1A0BF6D6DF43B298387AFF091A0D36891C9D30F45320422A3A7AFB08317A0F7415EFFAC781E';
wwv_flow_imp.g_varchar2_table(113) := '1B89A38FAE62ED8D234830BE9DCADBD6F1F9397109B003202E4F51A5F52AD30C9F976B25FCA0A5D6E807CB603209D9C7AEBE08C181908B4834256DA31F7C7009E743EF22DE902014D2A1FF4BAFD11894F3BF5311C755308B4E8845DDB943F13C26E2956A';
wwv_flow_imp.g_varchar2_table(114) := '74EEAFF5E14C7F562F2413F05989A69257049C707815A65DDAC20E8095064A2D3F00FDCC6DEDF6B3E4819BAFAB6A695E00AA63403B827EEE5E28942110F9FDB221C0C31B8502025125475164F2F015D600390469B5E8C4380CD9335B2851CC4D9904D801';
wwv_flow_imp.g_varchar2_table(115) := '50A65D403F804B9B0F47992CF92CD6F0F5AFFFA884583C8D09474C623CE80791BC7E8A027E12138E6731E1088D8B44686C041E47BF409C21117DCA3647CFD2CD84711DD1C821197F6005A61F5B9F6238DEFAB791BE09E892BF26C6D4ED6AA300CB1EFB6E';
wwv_flow_imp.g_varchar2_table(116) := 'CF022CBAB98F1D00CB70A5E845819AC6E8F814FF5BD7B28DF075BDAE0EDD751BB1FF1FACB97E18193C7C10E89309DE6E7AE1FA682EDFCCC8ED9B59F8DFB278F9C3CB4D0F5F774FF8EB7D8417BD4EAB4DF363242D1CB40BD06DCBEF36D0E2471C41801D00';
wwv_flow_imp.g_varchar2_table(117) := '4750B6618CCC9E7ED8D3E967AB7FE0AC192AD69080FB91CFF030EA396AE42CEED05F429BAF1DC5C0CDD35204FE71795F6BACF7465F13D0224710C637ED6D8710F38F0E0E9E8E8D0F4E731220F3A852ED41098228515072A334C11B3FF8117902B2DA28D1';
wwv_flow_imp.g_varchar2_table(118) := 'FAC768E770D5B543A892A388F0D2A72F7D2A5F2C556BBC6A0C2722920AAE9D72D901B013A0548F37CB57017FD6FD542AF1B2CAA5AFFF66F347E2FAEBE97E29CF3F6DFDBBA57EDC21ABC2CE30B809A899B108FE6E3D58526D7BAC1F8F03A1D7241DC3A585';
wwv_flow_imp.g_varchar2_table(119) := '1B4D3044C5C264F8EF48AE63C9DAF8B9D1272E3BED31071760F9D5FD2E3B3F679E183B000AB5DE2FB53E429B825515AA9D7D6A1D7B7005EFAD4859B886B7FEED634A4F97F6CE89151DC7D82F281D094225C0A807928EE1EAC285AB81AF1D05E8B43A6CE9';
wwv_flow_imp.g_varchar2_table(120) := '3A16F9336477C9A96FBB7B1AC3F6CE118E22B9298B003B00CAB287A04D1EBF2C98DB78A0B03DE76A8D6E2D0CDE321D740490DC38E18F3856CEA30B4070979FC511968694860B47E0BE214CD2315C5EB80942C1200A0C4C6EB5F29616766FC81970B546F1';
wwv_flow_imp.g_varchar2_table(121) := '489FEFFE0BFB1F5C74B5A939FD7CD80150A0097B966986C1E5DB285033FB55DA7CED18066C9E0A4372D21F4EF8633FD497127C13DD70ACC724D1E4A526A8D29C7E88D4BD96B049D2D15C57B829D1281C05BC7E396779A7310E2F19EC28C20B2FEFC6F787';
wwv_flow_imp.g_varchar2_table(122) := '97386A381EC74202EC005808CA51DD280A7F49F361289B25BFA38674D83874F6DF7CC1285C0BBDFF6A4CADA73BE80F37FB0918A3E271B9CF2CC902BAC87E45A77D2CC46A70B39FC09B05831A142887BF5A0DB25FB002255C7B1182966BBF53A066EA5689';
wwv_flow_imp.g_varchar2_table(123) := '1D0085D93F93A72FF674FC5988CC75B5763CE42ADE5DFEC37FD3A2BBC6FE9E7CA54C2443538439ED0048551150A80438F773AECC2892BDE8EB3F313C46C8E3418D9CFF692D06A061C1F2628DA018399424A8EAD2A1A0E3006ECA21C00E80726C2168D228';
wwv_flow_imp.g_varchar2_table(124) := '4F1026D797F62A971C538E332460C8961929CEFEF9EB5F5C4B9003B0EDFDB1922596B9F9E2219A2E1BCD3B36229ACD1897084A159CDCEAE42B8399AD06B9642C408FE00938107249447A2CCA5E02EC00D84B50E4E7BFADF601DE2D5A5B64A9F28BDB70E5';
wwv_flow_imp.g_varchar2_table(125) := 'B010FC979CAC48A3A36B7F9E9C535E44D3D08B6479DB519255043C459500D7FFCCA58045B419ED021822635E5D0BA4EC801BBBFE042A1BEC6AED9F8B3BF0EBB19576A52B77352672CF871D00B92DF0DAF8EE5A3721177FF9AC0515A49538AAB459F235CE';
wwv_flow_imp.g_varchar2_table(126) := '3FBEF54A98D65BCF2F1271D0BE924299E66635FE5CB28A80BB6E9D46AF6D93A1D1739126314DF7E6B5C0EEE59B6254ED0FC41C4211B2AE8585A0DFCE19B815FE4811FAB012003B000A5A0594637B42DD4F9191F26CBB507B18198A5AB35F0B6E12CEFEBD';
wwv_flow_imp.g_varchar2_table(127) := '389B9CC836A6C8F271353F92AC22E0EA4BFB317CFF3F5CA25964BBBDB90B90D53B007BBAFF0E779D6B395A5493E4CB03F3B0FAFA21B109B23C1B09B003602338291E1B59B913FE57A28114A26595B9F6F24161FB3FB9F1D9BF34E620076054C58E925504';
wwv_flow_imp.g_varchar2_table(128) := '9C7B6A2BC61E5FC10E8004E67B7317606CA38FD1A9641D09469257E4FC8B3BF1E3D165F22AC1A3BF22C00E8042160345FDAF6F3D06F9FD5D2B1B1825FE19163C13EBAF2479FD7CF62FDD8223076040D996F8AC522B49069972642D269E5DCF0E80247401';
wwv_flow_imp.g_varchar2_table(129) := '43C47FB100F93264C7AA77BF81BF87B744A3C923968B03C9C33DAD51D90150883D327BFA637FE75F14A28D786A1CBC77017DD64F44647C8C2094CFFEC5639B2C898E8C1AE50D42C3DC41A89DAB9450B54D8A4657B9F6DC3B876DF74E63E7DDB3781E1729';
wwv_flow_imp.g_varchar2_table(130) := 'C530AA95F9E62EC04F0D7BA073A9BA2EC583D64C9DE523410589B8C94F801D00F96D206840657F97BF334221DA88A7C6A81D73B0F4DCAE24817CEF5F3CB000BA14AB8B9605ABC816347AECF135ACBD7118CBAEEC13755EAA15F6C68D80AAB98B6361FB91';
wwv_flow_imp.g_varchar2_table(131) := '2E858392497558FF332E84DE71A97939EB64D8015088E53E2AD910232A75548836E2A8119B188FDA7306E3794C44D2D73F67FDB31B2C956D6D55B032FA07B5126A4628A1DD8978823F4EAEC1E65B2740BFE0B9D94EE0F55D801CBE9910FCE12FF072D3DB';
wwv_flow_imp.g_varchar2_table(132) := '2E50814F7E7F6429165E7AF951A040FDD4A4123B000AB036DDFDFDB3EE27689CD7B532806DBF7112BDD6FF99F4F1CFF7FEED5E69F57297C1A0F26D502C632EBB65492180BEEA7E3BBE1A0742B8E88B3D7C936301282E686A8BCF4129825DA96DB97D02A3';
wwv_flow_imp.g_varchar2_table(133) := '0F2E40C4CB6341579A9BB3CD851D0005582CAF5F564C6FF0190A06E4508036E2A84067FE03364DC5EEDB6792BEFEF9DEBFCD6083B216C097953A81FE768646815EBF1C5B8973CF6E3B83BA8AD3F1F5EC80AD8A56C36F4D7B813E125CA5DD8F7C86FEBB66';
wwv_flow_imp.g_varchar2_table(134) := 'E042E85D579992D3CE831D000598AE4DC1AAF8A9E6872EF543BEEDC609F4DD302929EB179FFDDBB4CAE897FEB04A1D9CF26A281D05CC38BB19134FAD03DDFFE6660501A3098911542300F0D17B6263971F914B21C73D56CC22CDAEB436BEDC3F1FABAE1F';
wwv_flow_imp.g_varchar2_table(135) := '14431CCBB083003B0076C013EBD11F6B744387C235C412A70839DFEE9E8FF9A7B7257DFDEB755C40C64AAB5051A889F57AA152B6C2563EA9ACEE871E5EC6E7BB66209CB77BAD328C313A0EC6F8A4B2CBA3EB74C147E59A58F5BCD23B530C00C502709397';
wwv_flow_imp.g_varchar2_table(136) := '003B00F2F217BEFA57B71A85221972CAAC89B8C3B75A3C06179FDC11B2FDE9BC3DF8EEB815784B65CE2B1C0965F50AB0E229E5767D10158ACF764CC3A5E7F794ABA4C234A39C0E86A8586117A0469E9298D76EB8C234B44F1DCE07601F3FB19E6607402C';
wwv_flow_imp.g_varchar2_table(137) := '9236CAF176F3C0DE4E3FC3C7DDD34609CA7B8CCEFFABFF3D00310971C28B9F1C007204B8992740C7413FD4E80AAA0BE14A8D12428DD8FF0F36DE3AE64AD392742EC9C18039FD32634BD7B1F072F790743C470ABF1BF1148D578D71E4903C562A04D80190';
wwv_flow_imp.g_varchar2_table(138) := '795904FA64C4CE0E3FC9AC85B8C31FBE77095DFE1D2B08D5F9F0D7BF2574E9853FA6EABBE85CA49625DD9DB6CF824B3B31F6E80AAE08678105A9BA230504D26D8029EFF447C382AE734B2832211635970D039509E7261F017600E4632F8C5C2E6B412C69';
wwv_flow_imp.g_varchar2_table(139) := 'FE85CC5A883BFCD4A36BF1FBC195C2577F52D11FFEFC4F8F70664F3F4C6FD0574806A58676F2C90DE148803309A66F6D93C1084344ACD0A945D1AAF8A3691F685DE4678982839BAFFE069443829B7C04D801908FBD3072AB825530AE567799B5106F784A';
wwv_flow_imp.g_varchar2_table(140) := 'FA3360F3541CB87B011A372D74BEAE73B4211EA5FF24E9756E58DA7C384A64CA2D8578C5CA3CF3F4163ED8FC1B28BD30B7B40918A2E2604A3008B701B67DF82BA852A0ABB4BE3BA763FBDDD3AE321DA79C073B00329BAD7FB996E85BB685CC5A8837FCBE';
wwv_flow_imp.g_varchar2_table(141) := '3BE7F0D98649884E8885D64B0FAD876B9D658B472A49D29F753F45B37C15C416EB14F2A82C2CC505704B9B00BDFCC909A0F6779B21A89BAFACCBE09A73619B904192E243B8C943801D0079B8BF1AD5D51C809FF62EC6EC939B39F39F05EBAA5799664266';
wwv_flow_imp.g_varchar2_table(142) := '3F35374A18442F026E691078AD3EC0C06AEDD1AF8AEBAC97791777E08F936B119398E4E070733C0176001CCF3CC58815B315C6D755DE455117D9026E346F186EBD78247CF9D30E00B7D409D4CA5912331BF503E5F65773A324411F6F9B88832197D48C21';
wwv_flow_imp.g_varchar2_table(143) := 'DDB9270703B6295E03E39BF472094EBBEE9CC16F2757E35A58884BCCC75927C10E80CC96A3A09E20DFDC685FAC169A14AA88000F1F9935B27D78CAED5DF9AFBEC2B92E9DFD530C00B7B709140E08C4B216C3415740B941C809DF79E32FB819FE8871A442';
wwv_flow_imp.g_varchar2_table(144) := 'C094688021320E41390A6159A7D14E9D319482FF169ED98EF9E777E06EE20BB6B7CC04D80190D90094E843B8EF6B3409013E94F4A349E14AA893AFACD35501BBFCEC1E5A2E1C0D93C604377F6FBEFB9FCADAF2D77B634DABD1A0EB9FDCFE2340F7C2DB6F';
wwv_flow_imp.g_varchar2_table(145) := 'F8890BC4A4E600D06D80C85864F10AC0FC76C35124B3328B41A5B59EE9A57FF0EE056CB87A043B6E9CC4B398F0A423423F2FFE119099003B00321B00261312C362526841D901E9CEEFC7159AA35C8E424EE3F1AFB97C1043B64C4F4AFEE3C35FB7A92DAD';
wwv_flow_imp.g_varchar2_table(146) := '9F6BFE0F6D0B55937BD52972FC2557F6E09B438B15A99BAC4A097100B1D09934F8AA6E577C50A681ACEA583A38EDECECBB7D5678F15351304A0CF6AA095784F923C1529652F56307402AB216CA15527E4626DDF54DAD65F6F247DB1235D1A6587594C89A';
wwv_flow_imp.g_varchar2_table(147) := '57B167C654E0E3AB1DFF60F1B99D5CF92F0D5B16F0CF8E0D6DBE7699BBDC162E718BBBD19762B3D55F837603B8A524905C21B063C9DAF8B1610FC57E14D0EF81EBA10FB0E8EC4E2C39B733DD087F9D9F27343A3E269473ADB30320277D00A6F84418A2E3';
wwv_flow_imp.g_varchar2_table(148) := 'CD6A91CD27035A15AB8E6E651B21B77F16B3FD1DDDE16ED8130CDD3A03271E5F130AFFF00FF6DB16985ABF0F1AE4719D6B5C52ACB10D378F62C8DED95288766E992F2B0496CC920F8B3A8C84AF5E79DBE7E71FDF02ED026EBD7E1CF7C2CD27F8E12CA1F2';
wwv_flow_imp.g_varchar2_table(149) := '2F49760064B681313601F4C7D2466941294EA061C10AC2DF0532E4B0F45149FB9D7E781D83B64CC7DDE867D079EB39FBDF1BB44B67CE87152D46486A035711DE76DD8F5C382815635256406F9D5E51E581AF3EBB8F4DD78E62D3B523A0FF6C4D136E0A79';
wwv_flow_imp.g_varchar2_table(150) := 'D2EF0A6B9EE2BE62126007404C9A36C8B2D601481E82AE8F15CC98038D0A5640D3C295513A5B7E59B796B7DF382964008CD719F9FA5F2AEB6061B321A02B9FDCCC13D875EF1C7AEF9862BEA3CA7A2497085ED1F92B213648AE46B77CCE3CBA21BCF883AF';
wwv_flow_imp.g_varchar2_table(151) := '9FB0E86B3F355DD90190CB82FF8DCB0E80CC36A01800BAE74B79BFED697903B209C703F50B9443FE0CD9ED1165D3B34BCEEDC2E81D7384AF7F8D9EB3FFBD0EB176AE5298D9B09F4D5CD5FA105D0BA474C1DCFE23608C4F84313A1E139A7D26D4067064A3';
wwv_flow_imp.g_varchar2_table(152) := 'B3FD1BA121F8F7E23E21CE273C2EDAAEE1295058EBE9CE47857651B4FF617600EC6768B7047AF9532C00A5FDA4EB80F6343A126850B03C3EADD01C591C9837FCC73D8B30E7D4167060CFDBD65BDB6A348A6674AEAB5BF6AC41319EE57AF16F534C2E0E34';
wwv_flow_imp.g_varchar2_table(153) := 'B44627F4AED4520CCC16C9B8F2EC9E70779F22F9EF85DB19A0A901B41EEED0D2478296F7FE2D3280849DD8019010AED5A24D0025FD204F9FFEA61C01B6362A3253377F905046D41115C43A2CFB0EA71FDD7859FDCF56AD5DEF39CAF34FF9FEE56E2F6223';
wwv_flow_imp.g_varchar2_table(154) := 'B1F3E66961DB3624F219E8BF874484C243E78E4CDE7EC8E8E9270497362D5449D845F2F7F0965B657CBA7D32F6DE3F2FBB1E8A51C068126E0C752C5107631BF6905C2DBAB6F7C3DE4558766E376807C0E6A601346E3AE17AB0D65DC7F141368314FF4176';
wwv_flow_imp.g_varchar2_table(155) := '00C4672A8A44C11188B3DF1158F7C1F7289125AF283AA527A4C6DF03F0243E82EFFFBF01695A833EA89F5BBEC8FFBDB7CFE2AFE31B71F0DE05ABD640ADBCA5D1A7522B54CD5DDCAAE7C4ECBCF9F6090CDC3D534C91CE2D8BF20144C7A15EAED298D97AB0';
wwv_flow_imp.g_varchar2_table(156) := 'E4735973E900866C9D61FB381A0DB4EE5AE14850A3A317BFEDA2F8496908B003200D57F1A49A90B423109F0093C17A2F7C69A7D1A81858443C7D529144E78175E70C4694365138D7E3964480BEAE8FBC375EF8DBD1ED64C835FCB27F298E3DB862D7D0D5';
wwv_flow_imp.g_varchar2_table(157) := '7397C4885AEFA254B6FC76C9B1E5E1E8C438545834D096475DF6190A1AAE94B91016761821794E902947D7E28F832BAD6649578029C08F6381AC46E7F007D8017038721B07349A921C8184448B1D01BA2940BF28AAE492F62BEEFAF310B45DFA0DE2F526';
wwv_flow_imp.g_varchar2_table(158) := '61AB8F5B1201BAF34F77FF1DDD565DDC8F11DB668112EB88D1E8EAE91F4D7BA379912A6288B34A06150ADAFFE0A255CFB87267DA192CE49915CB3B8E818FDE53D2A9FEBC6F09669DD864F118F4E2A797BE56CFDBFC164393B9233B00321BC096E12D0D1A';
wwv_flow_imp.g_varchar2_table(159) := '74D7B96141FB1192EF009C7B7C0B1FACFD05F1EE263EDF7BCDA03FD4E88A8E856BDA62629B9F99706815261D596DF3F3E93D284739DA859777E3FBC34B24998F530A359A90D1E081BF5B0F46C9ACF9249DC2B8FDCB30E3F88674C7A09CFE1A7737E17C9F';
wwv_flow_imp.g_varchar2_table(160) := '937F496A0E4984B303200956C708151C01BA39407F52B946E8E9A6178A87940F94F6FE396D37FF6FE378C43B7EA7DB31A06D1885765F0EBE3B0E191C58DD71E2E1559878589A977F32822F6A7646AF8A2D6C2062DB238FA3C350670527507A9D9E579C06';
wwv_flow_imp.g_varchar2_table(161) := '3F37E821046C4AD9E8560FDDEE79AB51501F7DEDD38BDF4DCB2F7E298D20B16C76002406EC30F17444109790E22AA1A31C80132157F1E186DF90A8E7BCDEC9F60ECA5A004B9B0F7398F977DC3C859EEBFE907C3C726C66B5198CBAF91C17D8D86EFD8FB8';
wwv_flow_imp.g_varchar2_table(162) := '187A4FF2B939CB00FA78138657ED8C2E121705DA73FB2C066C9AF2AA4263F2163FBFF49D65A598D7931D00F38C9CAAC7AB5D81F8447868DD1DB203B0F9DA310CDCFD1740577CB8090406976F839E659A3984C6A5A777D171D977884D345F532285421A0A';
wwv_flow_imp.g_varchar2_table(163) := 'CBA6BBA7D6A9E9EDEE89D5EF7D83821903AD7BD0C6DE934EADC79433E96F45DB28DA291FD3C419F071A9C6185CBDA3A4577CCF3EBE8911C1B370E5C583A4A03EBEC2E794EB253DA5D901703993FE37210FE830B7C94094CF21ED11C09F87FEC5B48B5B78';
wwv_flow_imp.g_varchar2_table(164) := '2BF0B5B5B4BEF557289C41FA1724DDCF6EBE6014AE85A69F875DF87A73D3025A2D84F73EFD776DD28E8DC968048CA6A46324A351484645192AD36B15028B6059A7D10EF9E939FFEC0E3A6C18EB90B19C6110BA1EDC3477398C6FD20B94EF43AA460980BE';
wwv_flow_imp.g_varchar2_table(165) := '39B80827426F4A3504CB9599003B00321B40CAE17DDD3D31BFF120C9F30050C4F9EA7BC738B3D74B6352D4FCB9AE93A534ED8D9FB85800002000494441542BD95483A1D7FA3FD31E8BEE627BB9434BB733E8CD6FEE2E36ED06984C30261A60A223A574AE';
wwv_flow_imp.g_varchar2_table(166) := '9E2E6C3FD2217902C8C92939AFAF7DC9681C620DC70C4259434BF9E5C2DCB6C3244DD8F4243A0CC3F7CFC581904B8E99188FE27002EC00381CB9E306CCEA1580454D87208F7F564907EDB77132821F9DE51D809794037D326167871F25659E2CBCF3F21F';
wwv_flow_imp.g_varchar2_table(167) := '4031186F357AF153B5350F37BB6E6608E5AA631204A7E0CD46C982E6B6FDC221F3ACB96C189EC54638642CA50F425701B3C01B2B3A7D8540BF4C92A96B301AD173C764BE86291961F905B30320BF0D24D38002D166D4FF0C193C7D251B8304F7D930113B';
wwv_flow_imp.g_varchar2_table(168) := '9F5CE01D80979483B214C0D277A40F007C1CF5029481F1CD2676A1153A1A100A56BD712CA0D36871ACD754F839A0367D9B753FE0F273EBCACD4ABAE865144E76F033B8090E809485BF68E7E5E3E0493810C279186434B7A443B30320295EF98453B4F607';
wwv_flow_imp.g_varchar2_table(169) := 'C5EA6044A58EA07C0052B6BE9B2661FBE30BE6B797A5544241B21BE609C294FABD25D788AAB28DD93137C538948951926C8C949132365E484FFD7AA373E836C56B483ED71EC113F945F4923239647E896E58DA71340A49188899E40010773E02907C81CB';
wwv_flow_imp.g_varchar2_table(170) := '34003B003281977A583A87EE55BA19FA9793BE6A58DFCD93B1FDD17976005E1AF5DDA2B5F16DB50FA436313E5E335EA8D096DC247BF9BF361343549C70D534B95176C049CDFB4A3ED7E1FBE662CD8DC3928FE31403184DF035E8B0A4DD97289C49DA2A93';
wwv_flow_imp.g_varchar2_table(171) := 'C3F6CDC1DA1B479C020B2B693D017600AC67E6144F50FEF94F4A35610740066BF50B6A817E41D23B5ED5677D0E0AD4A24611FE3A5F6953C30A03994C3044C4BE2A5B9D2F43766CFFF057C929FF7AFC5FCC3E1F2CF9384E318009F033BA61719B11923B00';
wwv_flow_imp.g_varchar2_table(172) := '7F9DDD8CDF4FAE710A2CACA4F504D801B09E99533CE1A973C7C70E7200FA6D99826D8FCE3905174728F94DB5F7F15ED13A920F5564E2474991F11A40E7E39974CDCF018D76000CD1F182334065834FF49A26F9A8732E6CC32FC7AC2F4C23B962720C400E';
wwv_flow_imp.g_varchar2_table(173) := '80C91D8B5B0F97DC01587DED20461C9827C72C794C07106007C00190E518C2A10E40F0546C0B392BC7341539E6E47ABDD1286F90A4BA45C4C7A0FCF4A4380321DADF4B2FE9786F0AA758000A0CA476A5FF5C4913D2D018B40D4DDBD1DC92723739CA01D8';
wwv_flow_imp.g_varchar2_table(174) := '71E734FAED9E01632AB740D816CE4F801D00E7B761AA3370A403D07FDB34043FF8EF2CDA45915A3CAD09753E45D3FC152CEE6F4BC744A301C527F710BEFEDDFCBC1C7F03838E0222E3008309573E9F237969DAB5370E63D8BE94018FB670738967C80180';
wwv_flow_imp.g_varchar2_table(175) := '1E8B5B0D937C0760F7BDB3E8B3731A3B002EB170DE9E043B002E6A58C10128D918FDCBB7927C86FDB74F47F0FDD3928FE32C038CAAD409DD4A36905CDDA0E9BD10E36684562FED2D8FB42642F7D133993C71F0E38992CF75D6D9ADF8EDE42AC9C7719601';
wwv_flow_imp.g_varchar2_table(176) := 'FCE081C52DBF90DC01D87537C901108E9AB8B91C0176005CCEA44913A214A19F946882CF2BB003E06813F72CD904832BB5937CD8C60B87E34EFC0BF912309980629ED9B0E6DD6F259FEBD8C3CBF1CFE51D928FE32C03F8EB3CB1A8F950C91D80051776E2';
wwv_flow_imp.g_varchar2_table(177) := '8763CB9C050BEB6925017600AC04E62CDD29494BAF924DD1BF622BC9B767790720E5AA6897BF2AC6D6F948F2A53260EB346C093923EBF5CBF679ABE0A77ADD259FEBE05DB3B0F1CE71C9C771960102DCBDB1B0E91014CE94535295BFDABF00CBAEEF9774';
wwv_flow_imp.g_varchar2_table(178) := '0C162E1F017600E4632FEDC826A056B6E2F8B3614FF84A9CA98D1D8094A6AC99A528FE7E6790B4F605B0EACA018C3C345FF271D21B6062ED4FD1A480B4F10E347EB78DBFE1E8D3EBB2CE55498367D07B0BE5A6F305649754AD7EDBA662DB030EF09514B2';
wwv_flow_imp.g_varchar2_table(179) := '8CC2D9019011BEA443BF0C145AD1E64BD05D6D291B3B0029E916F1CC86759DA5DF160F8D8D408D65D2A71C4E6BED08A980DFFF035E6ED2DF4068BA620C6E473F9572193B956C720056B51C85405FE96A0108990037FC8103CF52A935E154B458D9B408B0';
wwv_flow_imp.g_varchar2_table(180) := '03E0AA6BC30478183458D26A044A64CD2BE92CFB6D9B866D7C0BE015637F833B8E74973E308E06ECB2793C8E3FBE26A97DD3125E2B6749CC6AD4DF2163979BDB0FB1DAFF32103A6450050F52216B41CC6CD41F3EEED2257F2207A0FBFAF13814CA3B2F0A';
wwv_flow_imp.g_varchar2_table(181) := '5E0A76A9C60E805DF814FCB009D01B3498FFCE1004E52824A9A29F6D9B8A1DBC4DF88AB1312A1E97FBCC923CF682063CFAE82ABA6DF95D52FBA625FCDF9623513293B4CE258D6D301A5062664F87E73A9005AA058326A5F96E8ABE412D25CDBF400E408F';
wwv_flow_imp.g_varchar2_table(182) := 'F5BFE360A83C0EA60528B88B9D04D801B013A0621F7FE900FCD37C30CA07169654CD9F0F2FC75C8ED07EC598F2E5AF683F1A41D90B4ACA3D59788FE0090E2FD8D2386F794CAAD7D321F33B7AFF32BAACFF951D8097B43DDDF4185CBE0D3E2C21ED55D398';
wwv_flow_imp.g_varchar2_table(183) := '8438F4D93C19879EB303E090852EC320EC00C800DD21433AD0015879653F461D5AE0906939C320E400F42DDF1203ABB57788BA2151A168BDEE0750764047B4CC9E7EC2F97336EF00470C879FF72DC1EC0BDBA4A972E89019883B88AFBB270657688B0F8A';
wwv_flow_imp.g_varchar2_table(184) := 'D51557F01BD26EBF7884AFF6CEC7E1E77C042029681985B30320237C4987A614F10906CC7F67282AE52C2AE9503BEF9C41DFDDD3395BD84BCA3E895A7C5CA6193EAB2C7D0E8664C352C9562ADD2A75C2160AFC5BD46C2882B21690744DBD2EFCF7832BB1';
wwv_flow_imp.g_varchar2_table(185) := 'E0CA6E446B121C36A69207A273FFA115DAE27D891D808B4FEF60CCDE793817715FC93858373B08B00360073CA53F6A8A4DC4BC7786A06AEEE292AA7AECE1557CB46D02283DAD9A5B162F7FBC5FAC0EDE2F5A07993CFD1C8E62DA994D98706AADA4E38EA8';
wwv_flow_imp.g_varchar2_table(186) := 'D4111F956C28E918A9097F1A138E85977761E995BD088D8D74F8F84A1AD0CBCD03C32AB693DC0138F5F03A86EF9D8BDB317CFB4249F61753177600C4A4A9305994AA755CAD1E685DB49AA49A3D8C7A8E77D67C8BE8C43849C751A2700D34C8E397056D0A';
wwv_flow_imp.g_varchar2_table(187) := '55458BFC9590DF5FDA2B97E618901330F1D43AD17702B41A0DBEA8D81EDD4B3632A782A4FF7E27E20936DC3C86D5370EE176F86349C752AA707FBD377EADF911EAE52923A98AEBAE1C120A30991C546552D2C9B0F05409B003E0CA0BC3040C2CDD02BD2B';
wwv_flow_imp.g_varchar2_table(188) := '4A5B9B9EBEFCEBAE188967B111AE4CF3ADB905FA6444AB8255D1A9704DC109504ADB7DFF1C06EC9E89D8C4A46A7DF6363A739E5CBF37AAE52866AF28D19EBF15FE08ABAE1F12AA04520C849A1AC55ECC6AD81F4533E69274DA130EADC2D40B9BA071D349';
wwv_flow_imp.g_varchar2_table(189) := '3A0E0B978F003B00F2B1977E6413D0B358230CAED641F2B1EAAFFC122151CF251F47090364F6F4C78725EA0B41587E126759B475BE0FA242F1DBF155D878EB98AD22846B8CB4B331A87C1B64F7CE60B31C291FA45DA785977663CE8560D51C0D140CC881';
wwv_flow_imp.g_varchar2_table(190) := '454D872083A7AF946831E3F806FC7E7A0D3B0092529657383B00F2F297767413F061A13AF8B2D6FBD28E03A0C9AAAF40DBB3AEDCE8CEFB7BC56AA36581CAF076F3708AA99E7E7A137F9C5883430F2F5BA56F8DC0121852A12D4A6596FE9EBF558AA5D199';
wwv_flow_imp.g_varchar2_table(191) := '1C013A1A5872650FCE3FBB238648C5CA08CA5C402804A4D36A25D571C9B95DF8FAC822760024A52CAF707600E4E52FD9E814ADEDEBEE85E076DFC1DFC35BB2719205CB99914ECAC911C7A21973A26BF1FAA89DB394C3AEBE893DA7177151D87EF7B4F087';
wwv_flow_imp.g_varchar2_table(192) := 'B6CCE9BFD38E0DDD29CFE8E1838C1EBEC8E19311CDF25544BDDCA541E7CCCED89EC58663D7BD73987D3E18B7C21FC360323AE334D2D5B943E11AF8B14637C9E745477BD34E6FC4BCCB3B1D76C554F249F1002908B003E0620B2293A72FDEC95F196D0A56';
wwv_flow_imp.g_varchar2_table(193) := '45E92C791D928D8E100EDD3B1BEB6F1E75299A850302852FFE7685AA4B9A72D5A5A0296432617151F8F7FA412CB9B2D7E58205C75479175D8AD77318E9CBCFEF63DEC51DD870EB986871250E539E074A97003B002EB040DCB56EA899B38470265D22536E';
wwv_flow_imp.g_varchar2_table(194) := 'D075343ABF75649B746A3DA69CD9E0C821251B8BB6BD7B976906CA76C7CDB909D00EC0D6DB2731F7C276D071882BB4E90DFA0ABB348E6C945FE26EC453ECBD7F5E08BCBC107A1709C64447AAC0634940801D0009A03A4A246DD3B62A50199D8BD6463189';
wwv_flow_imp.g_varchar2_table(195) := '2382CDCD897E298C3A30DF697F29E8756EA894AD88905EB57A603178E8DCCD4D99FFDD8908C41B12B1EBDE592197C089C7379C769DD275CCD52D47497E03C09C69CF3DBB2DE464587DFDB0D3B234374735FC3B3B004E66657A51E5F0CE88B685AAA17DE1';
wwv_flow_imp.g_varchar2_table(196) := 'EA4274B6A3BFF6534376E6E92D0CDC3D13147DEE4C8D0AAB94CF5A5088EAAF1E580274E58D9BEB12088F8FC1FE071730FB42302E86DE73BAE45574EB841C805CBE99653712ED0A5C7B11826557F761CFFDF3781019CACE80EC56B14E017600ACE3255B6F';
wwv_flow_imp.g_varchar2_table(197) := 'DAE66F57B81A3A15AEE5D0B37D4B274C99DA86ED9B8B0321172D7D44F67E95B31741CFD24D513B5729D97561051C4B805E5EB42330FDCC66A73A1AA044538B9A0D9125D3A4390B9D7D7A1B0B2EEDC4A6DBC7413B2EDC944F801D0005DB88B6FBCA672D84';
wwv_flow_imp.g_varchar2_table(198) := '0F8AD541C5EC8515F3B59F16B2C9A7D763F26965C70150547F937CE58578097200B8A99B00390207432E61F1E53DD876E7B4E81914C5A6DB345F058CABD51DB413A8C4463C1F478761DBDDD3587469176E843D523C53257274944EEC00388AB495E3D0B6';
wwv_flow_imp.g_varchar2_table(199) := '748F528DD1386F392B9F94AF3B7DFDF7089E289F02E98C4CF112C4F493D24D50364B7E3EE357A495E4532AD69080138FAF61C1A55D38F6E82AE8A840698D9CD74115DAE093524D94A65AAAFA5000E6EAEB8730F3DC5650E6466ECA23C00E80826C422F29';
wwv_flow_imp.g_varchar2_table(200) := '7AE1D3159FA2197282CEA79DA94525C4A2FAB22F14B5FD47BB2875729542F7928D51297B61D02F516E4C202D0274F7FDC8A32B987361BBB033A0A4025774FE3FB57E1FA7DBB9A294D4471F5DC5CA6B0704B66A2FE6A4A49F3E760014608DBC7E59850A6B';
wwv_flow_imp.g_varchar2_table(201) := 'B4BD47B5D69DB9D55E3E024F62C2649F02BDF89BE7AB88BE412D40A953B931016B095C0B0BC1CCB35BB0EEE6114594BAA6C0BF952D462283878FB553514C7F7AF92FBFBA0F8B2EEFC6A3E8178AD14BAD8AB00320B3E573FA64C2C2664310E89349664DC4';
wwv_flow_imp.g_varchar2_table(202) := '19FEC3AD7FE0C8C32BE208B3410A25426A59A00A285B1A65F053C20D091BA6C18F28880025C2A148F7B5370ECB9A11AF59BE0AF8B3EEA70A2263BB2A1430F8F5A145B810EADA699B6D27E49827D901700CE7344799DD78006A041697590BF186FFE9E872';
wwv_flow_imp.g_varchar2_table(203) := '216B98A31B15E8A1ADFEAEC5EBA178A6DCBCD5EF6803B8F878749E7D31F4AE70F77DE7BDB3A05B2F8E6EA3AB74165252BB4ADBF7E082506E988F04E4B3283B00F2B11746FEB2722721F98CABB40D378F62C8DED90E9B0EE5B26F57A89A10D55F24434E87';
wwv_flow_imp.g_varchar2_table(204) := '8DCB03A997C0A5E7F7B0E0E22EACBF7904143CE8A8B6B4F93004652DE0A8E1241FE7AFB39B31E1D43A97ACD720393C91066007402490B68A7154610F5BF5B3F6B99BE18FD07FD70C214188942DC0C34748DED3B9482D64F50A90722896CD04522540B12E';
wwv_flow_imp.g_varchar2_table(205) := '747D70FE25E98BE514F0CF8EA5EF0C73DA224D6F02A4EB820376CF14D23473938F003B00F2B11746A62B69CBDE192EB316E20D4F5BA5BF1C5B29D93140A1801C685DB0AA50925709D9D0C420772BEC11DC353AE4F2CF228638C5CBB817FE54D031B78BCC';
wwv_flow_imp.g_varchar2_table(206) := '97CA605329E2D5370E495678E8DDA2B5F14DB5F75D26A6856E57B45DF72328D0929B7C04D801908FBD30329561DDD7F917973AB396221F000549B62E58051D0BD7441E3FD77851D257D0966BC731E5C81ADC781E82DF9AF444F32255645E91D20EBFE6F2';
wwv_flow_imp.g_varchar2_table(207) := '418CD8360B4532E5C2E755DBA251C10AD20EE840E9E408D055377206EE452639396234CA023AA1EEA76890A7AC18E214212332211675578C045D1DE6261F017600E4632F8C4C4567B6B7FF41A8E0E72A8DD280D65A3E1CE1F1D1764F89AE45762B515F08';
wwv_flow_imp.g_varchar2_table(208) := '7E72A53CFD51F1B1F879DF122C3EB73305A35E155B60488D4EA06B8CAED48C26137EDDBF14B34E6C4A31AD774BD7C3C85AEFC157EFE532D38D498CC3C2CBBBF1F7B9603C8F8BB47B5EE4F0AE6D351A5E6E1E76CB528A80EB610FD162CDB74A5147B57AB0';
wwv_flow_imp.g_varchar2_table(209) := '0320B3E9E99ADAFCA683852435AED47A044FC081904B364F89CA1ABF5FB4AE90B6D799EF3DA70660F3B5A3F8E3D0BFB81EFA20553EF5F2076162F3CFE0ED22858922E363D077C324ECBF7B3ED5F916CC1888C1D53BA059E1CA36AF17253EF8222E0A1B6E';
wwv_flow_imp.g_varchar2_table(210) := '1DC392CB7B70F545EAB6B6446FFAF2A70440AED476DE3B833E3BA6B9D2949C722EEC00C86C3693C18881655AA24FA556326B22EEF0D3CF6EC29F27D75A2594B2F495C8944788EAA717BFAB05F73D890EC3B4A3EBB0EAE23EB3F7C90B650CC4DF6D863AFD';
wwv_flow_imp.g_varchar2_table(211) := '39F9ED178FD063ED78D0DFE9351FBD273A96A88DBE55DA2093977327C37A739E2151CFB1FDEE29ACB87A407004284EC69AE66AD7FF68EE7F9FDA8C71A757032EB6D3658D5D95D0971D0099AD60888A43DD5CA585F3DF0C9EBE326B23DEF0271E5F176E03';
wwv_flow_imp.g_varchar2_table(212) := '3C8B8DB04868E18040BC5FBC2E3A15AEA9D84227164D248D4EC743AEE2C73D0B71E6D14D8BC5D04D87692D3F47955CCE992782BEF8E9CB9F76002C6D25B2E6C5D775BBA152CEA2963EE234FDE86860D9D5FD5876652F680BDCD2B6A6D56814CB98CBD2EE';
wwv_flow_imp.g_varchar2_table(213) := '4ED16FE4F6D95871651F74DE7A760264B4183B0032C2A7A18D31F1C8E991117FB51A88A29973CBAC8D78C34727C661F8BE7F107C27FD6B3E74AFF993528DD1304F39973BF7269A718604FCB46711969CDB65F5971F3D4FB100AD8A55C7E755DA225F86EC';
wwv_flow_imp.g_varchar2_table(214) := 'E21948424914D038E9F06AACBF72D8A64A705403A34B9906185AA313BCDC5DE7DC3B1939ED006CB97D027F9DDD02CA29905EAB94AD30E63619E8747541D29B133984DDFEFD05E7C3EF41EBE92EE14A64D1E608B003608E90C4FF6E8A4F04620D98F24E3F';
wwv_flow_imp.g_varchar2_table(215) := '978A88266C6B6F1C11327DBDD9A89469DB02D5F061D1FAC8E19B01BE9EDE12539647FCEEDB673076EF125C0BBD6FB7023AAD0EED8BD714B6C8957A7DEE4ED8634C3EB2066B2E1DB0C9D979131239C45FD67E1F35F3967299EB6FAFCF3132361A743C30F7';
wwv_flow_imp.g_varchar2_table(216) := 'D276ACBB790CF1C6944985E8486C5A83CF840C97AED482AF1FC7F06DB310E56680C6DDB90A9EB9921D682EEC00C86C5153A21186C8580CAADE017D2BB796591B7187A7AFDFDAC26D80A42D6077AD0EAD0B5445D7227591DB273360A2DD3F0D3C3DF47073';
wwv_flow_imp.g_varchar2_table(217) := '53667D735B885084FFDCD35BF1F7894D088FB3E0268446032A52683298CC0E475FC79D4AD641DF2AAD91C35719F523EE473CC594236BB1F2E23E188C06B373D0E8B430198D82FDCD35BA25D3AF4A1B7429DB10FE1EAEE328262424222E3E1E26531284BB';
wwv_flow_imp.g_varchar2_table(218) := 'D1CF30FFCA0E6CB875E2952390DB370BB6B4FBD6A5AE08D35C7FDABB18B34F6D86CED713B416B8C947801D00F9D8278D6C3421313C06CD0A57C2E477FACBAD8DE8E3F7DE3115BBEF9D438BFC95D0AF740B64D6BF1DE7402F7F2F4FD7D8EA3DF7F81646EF';
wwv_flow_imp.g_varchar2_table(219) := '9803FADB92465F405A0F37E11CD414970063BCF91768B2DCAE651BA145D12AA89CB398254389DEE7E883CB5877F910169DB5BCF68356AF83D64B2F383BA6844418E3122DD2AB6260117CD7E02314739163B2989858241ADEB6F5A3B8304C3CBB0E5BEF9C';
wwv_flow_imp.g_varchar2_table(220) := '428B029531BE760F8BF8384B27CA7DD16EC93738F7E416DCFCBD01D7BAEDEA2C6678A5273B00729BCC0424864723B75F56ECFC689CCB6D755E797E1FFE5A6FF8BAE9F1F2632755E2BE3EDEC26E80B336FAF21D776039E69D0E06E54130D7343A0DB45E1E';
wwv_flow_imp.g_varchar2_table(221) := 'D0B8BDF60564A297A201869804A40BEB0DE1142C58AF40101A15288F3AF9CA8222EAA568B4B3B1E7F6196CBF790A3B6F9E42585C94E5C36834C279AF564FCECE7F8F09F38D8EB768BEB425DEAB524B0CA8D6CEA9BF8AE9AB3F322AFD9DA148431C6210EF';
wwv_flow_imp.g_varchar2_table(222) := '72A5AC6312E3516E5A2F1860825B80EBE47EB0FC0741593DD90150803DE8084067D46073D7B1C8EF24815E9662A3977E4C6C2C0CA97CEDBC2E43AF7787875E6FA95845F5BBF8F40EBEDFBD1047EE5B96F720F92B38AD2B50A64483101C6AC991C09B20E8';
wwv_flow_imp.g_varchar2_table(223) := '88A05AEE126858A03C1A142C875C76664D7C10F10C3B6E9EC4B61B2771E8DE45500A576B9B46AB81D65B0F8D5B1AE7BD46130CD171A0E330738DF266D4C8535270022A041631D75D91FF1E1F9F206CFFA7D7B45A2DBCBD3C9DDA294E6D7E741DB4E1BC61';
wwv_flow_imp.g_varchar2_table(224) := '200758E7C70E80DC0B941D00B92DF0F226006D858E6BDC13ED4AD4548046E2AA109F9080B8384B7EE17939D5B560FA225E7E618F10F8F622D67CC6373AEFA4AF608B029F4C487A292658FFC27DDD7A7E7A2F64F5C980CC5EFEC8EA1380ACDE01C8ECED8F';
wwv_flow_imp.g_varchar2_table(225) := '6C3E1985FF4E19FA9E4687E151E4733C8F8900E52A781215866731E17812F5C26CBE02732B85E6AAF3D2D37586F4BB9AF0F24820C122C727A3971F06546D8B0E25EBC0CBCD791C47FAFA8F8A8E7975F69F16148A8B717777BD08F90567B6E19B5DF38563';
wwv_flow_imp.g_varchar2_table(226) := '2F3A0AE2262F017600E4E52F8C4E37010C31F1685BAC267E6AD8C3E5EEC11B8D46E1979EB9465F3C3A9D7344055F7F1E8291DBFEC68990ABE6A625FCBBF00B8FAE3C5979CC413B01969E935BA488033B25CD99EE795B3E2825C632C62658ECF8508E849F';
wwv_flow_imp.g_varchar2_table(227) := '1B7D8CBC01D92C1F44C69E098989888D8D4B57033A0AF3F12667D80A7032CEC9D2A169FB7FC0A629D871F39470FF5F43C741DC6425C00E80ACF89306177EE945C721AB6700FE693B0C4532BB56D20F9A634C6C1C1213D33F1B77D3E9E0E525CDF9B55866';
wwv_flow_imp.g_varchar2_table(228) := '8E498813F2F7FF796815A22D2864229CF57B7BD815ED2C1C09C42582FEB624725EACB9DA24470361AEF475674F843739C5822360347F55801268F5AFDA169D693740C17903E8EB9F7E0E5CF9382CBD3573FEF12DF4D930110F2243A1F3B5EF67C2A6B5C9';
wwv_flow_imp.g_varchar2_table(229) := '0FBD45801D00852C0ACA0848DBBD3F34E88EF74AD7538856E2A9613018855880E46B4F6949F6F4F480BB42AF045216BFBF8E6FC0966BC72C4A7063EEACDF5ABA49B101B4456EFEACDC5AD962F4A78046AD8785471C160C2838C6140B61416C00E5496858';
wwv_flow_imp.g_varchar2_table(230) := 'A09C10241894BDA005D21DDF25212101B1668EC2482BFAFAA71800576B734E6DC18F7B160947603A6F0FAB76865C8D8552E6C30E80422C415F3BF4A776BE3298D366A842B412570DDAFAA42DD0F49A4E47C14FCA0B0EA2AB6E130FAF16CECBCD350A7AD3';
wwv_flow_imp.g_varchar2_table(231) := '2447BC9BEB6CC3BFBFDA11B0333EC086A1DF7E84BEF8DD92AE32A619E467CF4056C60650ACC3C0EAEDF17EE9FAF68C2AC9B3D1D1313050FE83741A39BFE404BB62FBDFAA5F858250B43B245C7DE5263B0176006437419202C275A8A83864F0F4C1A14F26';
wwv_flow_imp.g_varchar2_table(232) := 'B954EACF64C4B4F5191D63BEFEB787871E7A8504405D7D761F3FED5B8CBDB7CF5AB452847BFD14E8E7800427C6F844217E44D81130BF536E91FED6744ACE61A0A1B80D898FABAD8D0DA895B734C6D4ED0A2AAAA48466C9D73F9DF993F3AB351730A98409';
wwv_flow_imp.g_varchar2_table(233) := '59A9031D9D55FF7B80501742E7C70980ACC4275977760024436BA5E097098128F7FBF2CE5F29761BD3CA59BDD53D3A2606741C905EA35F80F48B50CE2028BACB3FFF7430FE391D0CBA0A67AE99BDEA664E803DFF4E5FC9466392339068B438CB9E5543D2';
wwv_flow_imp.g_varchar2_table(234) := '97BE562BE42D20E746F8DA97E145654D6C40A05F267C14D4041F956B023A2290B3454547C368269E819C5E727E5DB1D115D90F568E151C45B700D7C9E8E8ECB662074041163444C40857A03EABDC1A83AAB777B9A440849A02012910CA5CF3F4F080BBBB';
wwv_flow_imp.g_varchar2_table(235) := '3CDB840F2343F1DDEE05D87EE3A44539EDC508F433C7C3E27FA7644206A3B0A344470542109D1DBB0334377AD90B7F6857438697FE9B73B72A3640A345B32295850A83729519B624F29FE6E8AA67FF34B7DF0E2CC7F463EBF9FEBFC53FC88EE9C80E8063';
wwv_flow_imp.g_varchar2_table(236) := '385B344AF295AFE259F260769BA1C8E693C1A2E79CA993A591D0722442A134A554C18E5EFE7427DE6CA3EC7674D5CD83AEF799ED2D4F07CAC4F49A03400EC1AB3CFCAFA566A41D0CD0973DA524369992765F684E4ABD8A66436CC037F5BA09CE00251372';
wwv_flow_imp.g_varchar2_table(237) := '54239674F64FF916D26BE4EC92D3EB8A8DAEFF75FBF7679C7A789DEFFF2BCCC0EC0028C820496951E3845FD8139A7D861645AB2A483BF154494C34083702CC35476607A44A763FEE5D845DB7CE5856D0C68167FDE638A9F9DFAD890DA02C898D0A56C0B0';
wwv_flow_imp.g_varchar2_table(238) := '9A9D1D96378032FE51E6BFF49A70F64F91FF4A75B6EC5C601BAF1EC1B0E099884D8CE7FBFF76B214FB717600C4266A8F3C930986C838610BD7956F0310227200C81130F78B91BE8ADCD24A216B0FEB97CF520EFF0D578FE097FD4B856C78669B46039D4F';
wwv_flow_imp.g_varchar2_table(239) := '3A696DCD0AE00E5210A03C09C658AA29605E7A76DF8C1855FB0334295451D2605B0A7AA5E32E73575F5DF9EC9FACD17BFD046CBB71423842D2F97828E218C9FC2A51470F76001466E7E463002AE872BCE754C97E41D176776C628210E04667DE546DCDD3';
wwv_flow_imp.g_varchar2_table(240) := '812955293B20DD0830F7CB913203528640295A684C04261D598DF9A7B759245E08F4F3E1042616C192A193B53514DE2D5D0F9F57690B7208A468B4BECD25FDA1711D7DF66F301971F0EE0514C9944B480B4D3B2352352A095E65663F50DA6CA1181465C3';
wwv_flow_imp.g_varchar2_table(241) := 'E4A61802EC0028C614498A5014371507A2B6B0FD4854CD5DDC260DE9057F3FFC19EE873FC5CD170F11151F23E475A712AE579EDD07BD80134D0644C7C709496DDE295245F82A92EA97616A93B0647B949EA32241741C2066A30237A377CCC5E3A817E6C5';
wwv_flow_imp.g_varchar2_table(242) := '3AC359BFF959A8A387C924644D14D2279B39772720541BE1C786DDD1A0407951F95852F0870674F4D93FFDAC7FBC663CF6DC3E2B5454A40F0D3A7AF0D57B23284741A1DCB28FDE0B59BCFC912F43F6FFB7771E605215591BFEBA7B72208EC421E7A00415';
wwv_flow_imp.g_varchar2_table(243) := '24C8A022CA8A8A2E6202DD5DD3FE2B6040774531AEBAAE595C03C655C1888A094404C14016969C9324C930C0C40EFF736A023DC3CCF4ED9EDB7D6F757FB5CF3CB3D2F7569D7ACF9DBEA7AA4E50C5C9D21242CFCB3167DB72359E34575A52D9EA97A61267';
wwv_flow_imp.g_varchar2_table(244) := '67A110A001100AB570DEE3F3C19D9DABB632AFE894853B7BFD517D4955D60A3D6E1CCA3B0659CD4AF11659D1EF543FFBB1FBE8416CCFDE8BFD39D990EB02B5115D06286FE94835A33502441E39237599901D6D47F63E3C3D7732BE59BFC05036BF48C6F5';
wwv_flow_imp.g_varchar2_table(245) := '478A7B2C8C134CD644710A1CD6390BA37A5C8A066975AA8DC7E8EE961539FF25B2E596AF9F0F3847310C8445931AA7A0517A5DF5D3B846061AA4D5C62929B5544485180655F92DC882E3DE996F61DA868545E17F3552ECEB2C1B9048745E4003C0867A2D';
wwv_flow_imp.g_varchar2_table(246) := '090794A44059CD8BEABC4B028DDFB2F7A9736AA9D826BF0FE46443B6D8E4E5EEF679E1F379037A1B57355DA9AAF6C5D58FA0650493A7486A54499212A8C5C5C521B91A19D2E4ACFF87ADCBF0C2FCCF21E57B03369EF50744A4C3052AC3667EA121DF802E';
wwv_flow_imp.g_varchar2_table(247) := '0D5A61648F4BD1AFD9A96A751C4A9323ADBC7CA97B11B88A63A4135E8937FEE8A9FF517F07A13679E13B1D4EC43B5D8877C5292340AA2E2C46C700002000494441544D4AC492FCD4494A477A6232720AF3D542E4AB75F394F39F3AFF4F0FCF515EA873E1';
wwv_flow_imp.g_varchar2_table(248) := '7D000D001B3E05565680933AEBA37A0C891815A361812250A8B901C4787A69E1977873E934430612CFFA23A6FE880C24D135E220283936023579F1DFD07D1046F6B80429F1C1BFB08C94BE1619AC4879FDEDC6C51839F5C54008C2F239CBFF86056BB53B';
wwv_flow_imp.g_varchar2_table(249) := 'A501506D84E677205100120D60E40CD3ECD1E50CF0C32BC641EAC847AAB9C55BDA408AE0A254A94941154A912DCF7FFE3809B2F51FB03900674268657B03F6CD0BAC2510A46F40668D0CDCDF6F38CE6B69DC37C068C12B0121992EC50888641BF2E18358';
wwv_flow_imp.g_varchar2_table(250) := 'B9776B24872C1D4B55FF0B63348F25938A82416900D85489521ED85B10781BD16CF1658B4FBEF8C41F20924DB64D0B0B03FB29488220F19A0ED4C41742AA8F7DB87236240F79A0A656FD92C39F35CA03A1D2FAF3607C03647BFBDA53CF557F0B817C03C4';
wwv_flow_imp.g_varchar2_table(251) := 'DF30273770BADFA2D57FF8225B2A53CEFA033B70D1A47186FC5ECC5630ABFF994DD4BCFE680098C7D2D49EFCA3014CEDD840676DEB66E2EB6B1E8D686212751420615301AAA589F8811204CDDBB11ACFCDFB0C4B766F083C5BAEFA03338AC22B82F20DA8';
wwv_flow_imp.g_varchar2_table(252) := 'DF12637A5F81DE4D3A564A223FBF00B2FD1FA885B28B15A8CF409FBBBD1EDCF5DD6BF87AFDFC409786E57389FD172380CD7E046800D84F274512F90077768E21E7A5EA4C41A580753A4EAAB93EE5AA87D1B95EF3EA741DF4BD4633044AC77214202B29FF';
wwv_flow_imp.g_varchar2_table(253) := '26CE902F2CF81CAFFDFA8DA1B37E4973EB4A49E09753D09A8A8E1B82F10D9019DFD4FD0FB8A3D71F91E02A5BA3C2687D8BCA9EDB70D33CC9F35FFEE4E35DF0164A15C9C07E11D5928FDEFFD5C217EE9B6900849B7035FA977C00B213106A93422E2A97BB';
wwv_flow_imp.g_varchar2_table(254) := 'C381D25CEFF2C22FF96F89CD294E8BAE62A7730B4A873AB74557BC76F11DA10E1DF27DC68F021CCA29B0C4089072BDCF2FF81CCB7EDF14786CAEFA03338A952B4A7D038C450A74AAD71C77F7BE02526E589AEC58C9CE55A08456726DA09DAB7021BFECC3';
wwv_flow_imp.g_varchar2_table(255) := '87B062EF96D2EECBC4E3ABF7BFD487F001AA4E84FC968A92526C410A4B15FD0EB5A9ED7FC9FEC7664B0234006CA99622A154BDF7BCC2A23FC68A9ABCBC8B3F9217BC946A554D5EFA52D8A5D8C94815763150C5CD3FFA40B2833D77C15F31A84D8F88122A';
wwv_flow_imp.g_varchar2_table(256) := '8A0A900C6A810D9FF8B838789C3EBCB1641A26AE9869A8800FCFFA23AA4E6D06536586F30B0D450AD44E4EC788D306E0A6EE83004F5185CB404D7C6B249745A44B5C6F3CB8138326DE577AF62FDF116200046CC545A44A8B479518046224C8A2443EF7FB';
wwv_flow_imp.g_varchar2_table(257) := 'FEA9F8FB8969B30372B6F8021A00162BA0CAE14B2A9E157A4EACE04B6EF07BC12B23C08402672AFAE0E889223DB2DA9972D54311AD9E26D3331A1550E07563E48C97B068E7BAC05AE4AA3F30235EA176C154164103AD77D38E78F6DC5B90E80C9CA53239';
wwv_flow_imp.g_varchar2_table(258) := '2929AC352D2A1257CEFEC77C374125BD2A5A1840ADC64DF1C62FF9CE91EF2831D68B7D774A7610D42EA37C4749496F13BE9B0CA88397844080064008D0A2F996F2C70E56F80208DF4009827EDDB31177CE7815D9053981D5C1B3FEC08C78452901E52098';
wwv_flow_imp.g_varchar2_table(259) := '17D8A14F6EA89594866707DC8C6EF55A574AD0AA623FD3372DC6ADDF9C88FB7726B8E04CE1763C1FF513046800F0692843A07CF48155BE00952508CA75E7E3C90593F1E5BA79F022C0310157FD7CBA4324104C9961279C18DAA12FEEECF14724BACAEE06';
wwv_flow_imp.g_varchar2_table(260) := 'C4B95C484A4A8CF8D6BF4CFB828963B1E9E0AE52029289AFE45830442CBC2DCA08D0008832859A311DFF1C047276F9F039D7E3EACEE798D175507D8883554E4E6ED1EEA5C3810D8777E21FB3DEC4E643BB03F6230E90CE44C6F50704C50B2A2750720467';
wwv_flow_imp.g_varchar2_table(261) := 'D037A069CD5330FEFC5BD1BC667DE514A842FE52AACE971F2EFCF377ACC1F0CF9E28ED5EFE1E5CE981F367844B1EF66B4F023400ECA9174BA52AEF0B203509A65EFBB8CAF51DE956E876E3786E2E9E5DF419DE5F39CBD0F06AAB3339A1C819928D044C20';
wwv_flow_imp.g_varchar2_table(262) := '108C6FC05FBB0FC64D5D0721353919B20310E9264578AEF9F471ACD977A2E6054BF1465A0B7A8C4703400F3D455CCAF2BE00A37B5E86D13D235723C07FC213977F8F8766BF1798816CF92725A874BE743C0A8C8B5704472018DF80E72FFC1B06B7ED19DC';
wwv_flow_imp.g_varchar2_table(263) := '00265D3DE1D76FF0D42F1F975DFDA726198A0432490476A309011A009A282AD26296F70590F29F1306DF8E6E0D2B77760AA78C7F9FF13A3E5BF373A543A8786359F51B08770CA79CEC3BBA0918F10D90624263FB5E650988BDC70F63E07BF7A8EAA125CD';
wwv_flow_imp.g_varchar2_table(264) := '99526C145B221107B533011A0076D68EC5B295AF47D03EA309260F7B0049710911974CB2FCDD33F34D7CB1766ED9B165D59F18AF7EB8EA8FB85A6273C02A7C03BA376C83B72FBD0BA9090662ED4DA6276577C5509EBA61A1DFEABF38EE9FA76126D38E8E';
wwv_flow_imp.g_varchar2_table(265) := 'EE680044871EC3328BF2BE0032C82DA75F84BBFB0C0BCB78813AF5FA7CB87AF263F8B538C73F57FD8188F1F37013F0F70D90BC19132FBF27A29534FDE73769F94C3C38FBDD13FF6466DC7FB841B27F4B08D000B004BB3E8396F705A89198A252049FD1A8';
wwv_flow_imp.g_varchar2_table(266) := 'AD2593587760076E9D3A1EBFE51DE259BF251AE0A0E509886F404D47125EB8F06F55160C0A27B95C7701A4DCAF7FD81FE3FEC3493C3AFAA601101D7A0CDB2C2AAA4A284582265D3ED6926D4E99E8C2DFD7E396592F437202B09180D504E29D7178BAEF9F';
wwv_flow_imp.g_varchar2_table(267) := '7141F3EE9689F2CCBCC97865D15765C667DCBF65EAD066601A00DAA8CA3A412B0A811AD7EF5AFCA9EB40CB84FA6CE33C3CB1F81364FB393B59260C078E59022E8713B776B9087F3BED0F9631F86ED3AF2AE39FAFA43088E4CD309AF3DF32A939B01D08D0';
wwv_flow_imp.g_varchar2_table(268) := '00B08316EC2E83D707B7D408F0AB0A96915213AF5C34DAB2A80041F6D3CE5518357B02F23CC6D2B6DA1D33E5D38B80BCFCFFD96B382E6FDDCB32C1C5EBFFA2F7C7952D84A5CEFE934E1407B34C3A0E6C77023400ECAE219BC857510C74BBBA99987CE583';
wwv_flow_imp.g_varchar2_table(269) := '48B6202AA004CB944DF3F1F822D909305013C0262C2986FE04E4E53FAAEB60FCF5D441964D46BCFEC74C9F00C9F9EFDF98F4C732956837300D00ED546691C03E1F3C3905F0157ACA08F0D73306E3AEDE57582454D1B03F16EF04E47327C0523DC4CAE0F2';
wwv_flow_imp.g_varchar2_table(270) := 'F27FB4F7705CD6CABA95BFB07E7FC52C3CF0C33B65B04BB96B95F297617FB1F238566B9E3400AA852FC66EAEE028A066622A5E193C1A3D1AB7B71486EC04FC6BF1641CC93F6EA91C1C3CBA09D861E52F840FE46663E8C78F60FB917D2780CBD67F72021C';
wwv_flow_imp.g_varchar2_table(271) := '9209938D040C10A0016000122F3941C05BE08637A7A00C12897F7EEFB27F404204AD6CDC09B0927EF48F6D87337FA12C3B5D377CF10CA4E08F7F63D85FF43F8366CF900680D944A3BD3F1FE0C9C92F7314203E001F0FBB1F1D329A5A3E7BEE0458AE82A8';
wwv_flow_imp.g_varchar2_table(272) := '1420C115A7CEFBADF4F62F01BB7ADF365CF9C9A390D8FFD2E670C09596C872BF51F9F4856F523400C2C7366A7B5619028FE597460548C9E0772FFB07CECAEC608B394B74C0ADB35F4581C76D0B792884DE049AA467E09E3386E2BC265D6C3191CFD7FCA2';
wwv_flow_imp.g_varchar2_table(273) := '52FEFA87FD49F54B6722B7FE6DA1208D84A001A091B2EC24AA7F6E8081AD4E5759D0E25DF6F9025A7DF037DC3F6F12561D385112D54EFC288B1E047A36688B31DD2FC36919CD6D23F0A1DCA3F8C7F76F62D696A54A266EFDDB4635DA094203403B95D944';
wwv_flow_imp.g_varchar2_table(274) := '60AF0F9EE379685DAB113E1C7A1FC419D06E4D6A07FCDFAC973167E74ABB8946793420D0BD5E2BBC7EDE48A4C647BEB04F203C52EDEFEAC98F63CD81ED88AB910438E8F61F88193F3F99000D003E15211370787D786FE09D96D5053022B81C03FC6BF127';
wwv_flow_imp.g_varchar2_table(275) := 'F860DD8F462EE73524A008FCB9E3008CEC72912D5FFE252A921D803BE6BC8E7CA78F5A23819008D00008091B6F12A7A867CEFE0BCE6FDA4D0B18E21C38F69777CB9C9B6A2138858C2801F16779BCF77518D2EAAC888E1BEA601FAFFF190FCC9F14EAEDBC';
wwv_flow_imp.g_varchar2_table(276) := '2FC609D00088F10720D4E9DF7BE615B8AEC3B9A1DE6EC97D5F6D5E88B173DF85DB5B36999125C27050DB11A89B948EC7FB5C87ACC69D6D275B5502DD3EE7757CBB6D89563253587B10A001600F3D682545BFC69DF0DA7923B592B944D843F9C770C79C37';
wwv_flow_imp.g_varchar2_table(277) := '30FFF7755ACA4FA1C343A04FA30E78B4D770344CAD139E01C2D8ABD4C2B879E67F54954C36120886000D806068F15A74AEDB0CCF67DD88CCB40C6D6948DD8027164FC6D42D8B5948485B2D9A2378922B1E57B4ED8B515D2E468D8464733AB5A097A3E214';
wwv_flow_imp.g_varchar2_table(278) := 'F8ED53D87878B705A373485D09D000D0557316C82D5F90FF1D783B3AD6B13EE18F19D35FBA6F33FEF1F37FF1DB51BF74AA6674CC3EB420D028B50EEEEB31CC36F1FDD585B6FED04E5C39ED29E4BAF3ABDB15EF8F110234006244D1D59DA638FDDDDDFD72';
wwv_flow_imp.g_varchar2_table(279) := '8CE8704E75BBB2D5FD7224F0DC922FF0F1869F6D251785091F8138A70B37761A88111DFAA36E528DF00D6441CFE2EC3A6EDE44FAB958C05EC7216900E8A8350B64BEA65D16C6F5B812E2251D8D6DD19E0D7870FEFBD87CE4F7689C1EE7544C202D3E092F';
wwv_flow_imp.g_varchar2_table(280) := 'F6BF05BD1A5A5BBC2A9C0A7978C1070C7B0D27E028EA9B06401429335C53695F3B136F0C18858CE4E85A2D95E7254701AFAF9CAE3CAAE54C952DBA08C8D19594F1ED58A749744DACDC6CF6E41CC6E839AF61D9BE2D513D4F4EAEFA046800549F6154F720';
wwv_flow_imp.g_varchar2_table(281) := '59D0DE1A301A5D4E6911D5F3F49FDCBA433BF1EC9229CC2018251AEF502713B775BD04FD334F8D9219059EC6C623BB31F88B47025FC82B629A000D8098567FE0C9FFB3D7705CD1A64FE00BA3EC0AC915F0F2F2A998B0E25B787CDE289B5D6C4CA746420A';
wwv_flow_imp.g_varchar2_table(282) := '6EEB7A312E6BDD0B297189B13169BF594AA4CB7F57CF8CB97973C2C609D00030CE2AE6AE1CD6A62F1EE9756DCCCDDB7FC2722CF0CEEA99F86CD37C7A576BF224B81C4E95C96F74D78B513FA59626529B2FA618AE0FCFFF800EAEE6A38D9A1E6900448D2A';
wwv_flow_imp.g_varchar2_table(283) := 'CD9D488F066D313EEB66D4B261911F73676AACB7DDC70FE1B9A553F0D5E6454C276C0C59C4AF9248952BDB9E0D71586D5EA31E1C884E87D560C0167ADD18FEEDB358B69FFE00C1708B956B6900C48AA68398677A4232DE89A278FF20A61EF052C9B6F6CC';
wwv_flow_imp.g_varchar2_table(284) := '9229FC420D482AB217743BA525EE3D73184ECD6816D98135184DF2035CFDEDD3385E98A781B41431920468004492B60663C92AEA9E3386AA55145BC504F23D85F8DFBE2D7863D577F865D76A48D961B6C8139078FE53EB36C3C52D7B60708B1E5A67F20B';
wwv_flow_imp.g_varchar2_table(285) := '37BD2F372FC4BDAC83116ECCDAF54F03403B9585576039F77FB8D735DC3E358879D6F6E5F860FD8F98BB6B0D9D050D32ABEE65928BA26FA38EAA1895C4F3CB993F5B60020FCC9B447F80C09862EA0A1A0031A5EEAA27DBA2467DBC907513DAD66E4C2A41';
wwv_flow_imp.g_varchar2_table(286) := '101067ABADD97BF1D6AA19F866EB62E4B90B82B89B971A2520A9A8E58C7F68EB3EC84CCFE08BDF28B8E2EB761E3B80FBE74DC4DCDD6B83BC9397472B011A00D1AAD920E725A5501FEB7D1DFA67EA550A35C86986FDF21DC7F663E2DAD9F874E35C261332';
wwv_flow_imp.g_varchar2_table(287) := '89769DA4345CDAF22C0C6FDF1F8DD3EA9AD46B6C76234982064D790839AC17109B0F40B959D300E063504A40CE5225EE5F2AA4B1558FC0BEDC23F86EDB5295555076070EE465D357C02052D9D2AF9B9C8E76B53331B8C599E8DBA843D4E5EC3788C2D4CB';
wwv_flow_imp.g_varchar2_table(288) := '7CF0E1CD5533F0F4AF9F9BDA2F3BD397000D007D7567BAE4B2C5FADE0563D08E4700A6B2952381393B57AAA442AB0F6E37B5EF68EBEC8C7AAD7163E78138AB413B24C52544DBF42C9DCFDE9C23183EFD1956BFB4540BF61A9C0680BDF461B934BD1BB6C7';
wwv_flow_imp.g_varchar2_table(289) := 'F35937D3A33A0C9A90E881B50777286360C1EFEB2167B2FBF3B263B6725BBC330E0D526BA14DAD4690E7EE8CFA6DD0AA6603C8BFB3994B408CD03FCD7801FFDBB7D9DC8ED99BD604680068ADBEF0087F6DBB2CDCDFF3AAF074CE5E4B091CC93F8E5FF76E';
wwv_flow_imp.g_varchar2_table(290) := 'C2D75B1629A32056E2B42545AF78F1CBF67EAF86ED901C83697A23F96750E87163E4EC573167E7AA480ECBB1342040034003254554441FE0CDCDC7C86E976074CF21111D3A5607933C0207F38EAAE301A9E0B6F6D00E6C537E0347915D90A36D78A164E2';
wwv_flow_imp.g_varchar2_table(291) := '93A4520D536B432A4A4A929EB6B51AA3798DFAEA8C9FE17B9179E2474EFD0FA66F5B02574A22981C3132CC75198506802E9A8A909CDE7C37BCB945616CD775391F0F640D8FD0C81CC69F80EC066CC9DE83257B37E1E75DAB9571204682DD930E498C7E5A';
wwv_flow_imp.g_varchar2_table(292) := '7C123AD56D863E8D3AA05783F66A8B5F124CB1459EC033F326E395455FA9819DC9097026520F91D7827D47A401605FDD445C329FC70B6F4E3E7C9E1399ED9E1E783386B4B74F3540D9CEDC75F400F6E766A35DDD4CA42524479C53A407947CEEB2137030';
wwv_flow_imp.g_varchar2_table(293) := 'EF18F6E566ABB9FF76742FD61CDC81BDB98791EF71AB9043B9269CC708B26297157DADC43424C7C523C1158FD6351BA2639D26A89394AEEA46C867E24C9A915C038931104D227E1D7B8E1DC2A1BC63E898D114F1363274C6CE7C0B9FAC9A73E2717538E0';
wwv_flow_imp.g_varchar2_table(294) := '4A498023DE15E94798E3D994000D009B2A26E262F97CF0E414C057E8293374725C02265E7E0FBA3468157191CA0F282FB9DBA7BD8C85BBD621AFB000DD1AB6C613036E40CBDA0D2D97CD2A01C438C8751740E2BBC5C1509C0AA5C90B492A19EE3C7E00E2';
wwv_flow_imp.g_varchar2_table(295) := 'FD2D2F2A694693164B28686A7C12243954A7BA4D21CF813459CDB7AAD910351353D40B3E96B7F10FE466E3B6692F63D9EF9B90E72EC4392DBAE2D90B6EB185513A7EC1148C5F7072B89FC3E9802B3D99470156FDC1DA6C5C1A0036538895E2C8CBDF733C';
wwv_flow_imp.g_varchar2_table(296) := 'FF241164553361F0EDE8D7EC54CBC45BBE670B9E9EFB31E66E5F5D4686CC1A19B8E58CC118D6B11F5C4EAE6C24D65B4A13C86FB7D7A376076457A0C053A87C09BC064D8094B844F5D24F7625A855AD9CE73B1CF2DE6085BDC379C7F0E5BA7978FB7FD3B1';
wwv_flow_imp.g_varchar2_table(297) := 'FDC8BE32CF63878CA6187BF6D5E8DDA4A3657F2B53372CC4DDDFBD566AF4F90BE24C8A87FCB0918010A001C0E7E004011FE0CECEA97099981C9F887786DC8DEE0DDB449C987CA1FD73CE44ECCB3952E1D8F2521AD6390BE3FA5D5BBA528DB8901C302608';
wwv_flow_imp.g_varchar2_table(298) := '2CDDBD118FCC9988157B2B2FAF2BC7242F0CBAD512837947F67E0CFFEC5F90DFE59BC3E5802B2D09CA926323011A007C06CA13A86C1740AE93EA6BAF5D7C47C4BED8720AF3F0F4DCC9F868E5EC0A5733E5656F53B7311EEE7F1DCE6CDC8E2B553EDAA612';
wwv_flow_imp.g_varchar2_table(299) := '9067F19DFFCDC08B0BA7A0C0E336D4F7151DFB29275A319E23D196ECDE80BB67BC8E6D87F79C3C9C03EAE5EF70B170522474A1CB18DC01D045531194D357E056FE0015B594F824BC3DE42E9C1EE69D8083B947F1E0EC77316DC3C2A0662EBB015775EE8F';
wwv_flow_imp.g_varchar2_table(300) := 'BFF7BD5239ACB191407509C88BF5811FDEC1DAFDC16771EC95D911132EBE0DF27713CE262BFE119F3F71D291841A535EFE298974FE0BA70234ED9B0680A68A0BB7D8DEBC42C84F452DDC3B013F6C5D86FB66BE85BDC70F873CCD8EA734C39FBA0EC41FDA';
wwv_flow_imp.g_varchar2_table(301) := 'F4604AD99029C6F68DF2FCBDBD743A3E59FD23E4DC3FD4D63EA309C60FBA356CCEAA62A08CF96E42C52F7FC8CA3F118E38FAC784AABF68BE8F0640346BB79A73ABCA08484D48C2DB97DE65BA4FC0A76B7EC2D8EFDF3425DE5D62D2B39A9D86A706DE8C5A';
wwv_flow_imp.g_varchar2_table(302) := '4969D5A4C1DB6389C0B23D9BF1C8ECF720BFCD68E250F9F039D7E3F20E7DCDE8AEB40F59F95F3FE5C98AB7FD25F63F2501CE04C6FE9B0A3D8A3AA3011045CA0CC7542429902407AA6C2760C2C5B7AB976C759B9CABBEBAF86BBCB8608AF260AFB48927BA';
wwv_flow_imp.g_varchar2_table(303) := 'D301389DF0B9BD502EEF015AA3F4BA18DBF72A64353F2DEC5BB18164E1E7F62620474FEFAF988597177D69ECACDFE1287E1E1DF0B93D55C6594A34C54DDDFF803F771D88DAC9E9D50621CEB14FFEF251850E7FD2395FFED5461CF51DD000887A15577F82';
wwv_flow_imp.g_varchar2_table(304) := '121A583E3F4049AF9288E78D4BEEC4198DDA863C906CAF8E9AFA12E6ED281BE277528725894C643BD301A8C445229B37B011207D4904C36D675D863E4D3A852C2B6F8C4E02E2E4F7C9EA9FF0DEB219D85A91135D05D316AF7AA79CAD3B9D45CF632561B4';
wwv_flow_imp.g_varchar2_table(305) := 'E56F3DB74537E51C2821ACA13689F39FB0F8EB4A9D63C5D9CF951E5EBF835065E77DF6214003C03EBAB0B5249221D05B5036495089C0920CE6FEAC6B31FCB40141CD41E2D2272D9F8909BF7EA3B2A955D5247B99C42F9FE4C5ECF5C19B5F58E92E45457D';
wwv_flow_imp.g_varchar2_table(306) := '961802E2C8C892B341A92CEA2E96737E89E97F6BE9B7C67D4E1C0E955257A5D52D1752A78CD2DC82A2DDA92A9AEC4A8DE9351497B6EF1D34D39332FC95EB41FE5624E31FC3FD82461B7337D0008839958738611FE09134C1E53205FAF726ABEB513D8C15';
wwv_flow_imp.g_varchar2_table(307) := '1092F2A4CFCC9DAC92A9046A46BED0540D83BC02C3A9EEC43FA07FF32EF853D70B2C4DDA1268EEFC3C3C0464C53F59ADF8BFC796C3BF1B1E44ADFA93C5A9AE8A703A037F2B32A01C09DCD87D106E3FEB72C31915FD73FB5724B45AF9A749D11FC6FA1B56';
wwv_flow_imp.g_varchar2_table(308) := '6A0C5F48032086951FCAD4ABDA0990FEE4CBECD61E975419872FC954EEFCEED54ABD964BE592A37E296062D08949ADBEF20AAB34522A9AF3B92DBAE2BEB3AF41B35AF54341C27B342210D28A5FE627CF6262BCFA319A0C5185D34A61AD0027549235F0DF';
wwv_flow_imp.g_varchar2_table(309) := '036E42C3F43A9592941A18774C7F15DF6E5C54E935460C658D5445512340800640042047D510065637D777391FF7575245F0A76D2B70C7F4577038EF78D558E4BC3F391E0E832F7FFFCEAA8A5EA86CD03AC9E9B8BAF339B8AAF339557E1147952E636832';
wwv_flow_imp.g_varchar2_table(310) := '2567FC72E4B4F9D0EEA0662E4EA7EAACBFAA557F253D8A63A0E7B81801555B017224205102E734EF72524F52EB61D4D4FF60F6D66595BFFC65E59F9A0888832C1B0918244003C020285E569640A09D0071741AD37BA8AAD8274DBCAB27AD988997167EA9';
wwv_flow_imp.g_varchar2_table(311) := '72D457D5CC58C9C86E804F7C03E4C8C2988FA012498E06FA353B0D3774BF10DD1AB4A68F80E60FBEF8967CB57E7E7067FC2573AEE2AC3F182C4555360B94D36A554DFC51FED2ED420C3FED3CD44BADA5A261F61D3F825BA7BE08D935ABAC99F1F712CC7C';
wwv_flow_imp.g_varchar2_table(312) := '786DF410A001103DBA8CEC4C0CEC0448ECFDE3E7FD45793B3F34FB3D48C29240CD99E05267AC46B75903F5A73CB325ABA1817041FFBEA4B05056B353715D97F3D1B769E740C3F0739B111023F3BDE5DFE383153F04BDE297A9C859BA1C3F85B2EAAF1085';
wwv_flow_imp.g_varchar2_table(313) := 'CFA79C032B73A4F5BF67509B1E1877F635F862DD5C7CB46A4EA531FE257272E56FB3874F2371680068A42C3B8A1A68274056D492393060FEF49233D670542A934881BC02780B8DE50D28CFF9CACEFDF150D6085BD57AB7E3B36017993C5E0F467CFE2416';
wwv_flow_imp.g_varchar2_table(314) := 'EE5C1BB448B2DDEF5067FDE1499EE32D70C3277E2A0142572575B01C5B54D5B8F20F5ABDBCA11C011A007C24AA47C0C04E40C001E4BC3F55565BE14D572AA159BE824243AB307F99A5BEC0E303FE0229EEC2667F0273B62DC70D5F3C13B4A06AF7292921';
wwv_flow_imp.g_varchar2_table(315) := 'ECE7E8F21CAA50C100470255BEFCE38ACFFCE9ED1FB49E79C309023400F8349842A0AA8C81550D10A92F5D7F198CC66A97DC2359DB3E1BF6209AD43CC51456EC24BC04361DDC850B27DE5B7546C9121164E729214EE5988868E89C1C0948BD8D4AB26C56';
wwv_flow_imp.g_varchar2_table(316) := 'F937C3F4BEE17D8062A8771A0031A4EC704F35D0714099F14308AB32557E1FA0B663F3036FC776AAD71C9F0E7B401D65B0D99FC0D1825CF47EF336E416E65729AC9CEFABE45261DE79AA4A087906C57836EAA8CAF4BEF67FFE74929006804EDAD2405695';
wwv_flow_imp.g_varchar2_table(317) := '9047BED0AA68F2C52BE549ED12B224A15ADEDCC24AB764CF6CD40EEF0F1D5B656E030D541333228AF7FCE913FE86ECFC9C93E6ACCEF865C55F41163FAB00198D1210673F39F7672301B308D000308B24FB2925A012A088E77D05CDB68E4BB22320BB01B2';
wwv_flow_imp.g_varchar2_table(318) := '2B50CE416B40CBEE7875F06DD4B04604B2DE1E839D47F79F905842FA125CEAE57F523A693BCCABAA2881201362D9613A94410F023400F4D09376529EB4AA2E89A90E8797BFC9749493961803C5D506FFD47520C6F5BBD6E451D85D3809FCE58BA7F1E3B6';
wwv_flow_imp.g_varchar2_table(319) := '1590D4BD8E84F8A26C921AE4C8293D96F2F894BC526848B6FD6D69B4845381EC3B220468004404738C0E52BCAA9115B578579B16531D219C62C4C88EC03D3D87A9042D6CFA1078ECA7F7F1CE9A59452F7ECDB2E31519CF05C5868B54BED4C072D1E7D1A0';
wwv_flow_imp.g_varchar2_table(320) := 'A47E046800F071208100049EEC7D3D2E697D16396944E08D15D3F1F4D2291A494C514920F2046800449E3947D48CC01B0346A16FA38E9A491DDBE24EDDBA18E3E64E448EBBEA4880D8A6C4D9C73A011A00B1FE0470FE551270399CF868D0DFD139A399ED';
wwv_flow_imp.g_varchar2_table(321) := '484998DBDCEDAB51E8F520253E117593D3714A6A2D486123334216C59B3EAFB00052414F5EA4F9EE426CCFDE87CD077723293E0135135331B4E3D9A68C6536DC55077EC3DD3FBF8DCD478C97FA355B06F6470276274003C0EE1AA27C9612A89B94AE0C80';
wwv_flow_imp.g_varchar2_table(322) := 'CCF40C4BE5A868F0FB66BD8D2FD7CE45822B1E6909C9C848AD89D4F84475A9FC9B180599354E5105996A24A5AA4247F2BF8A9AD7E755A1E8DB8FECC5BA033B7028F728720AF321FF2EED78411E24BE7EEBE1DFE1F5ABAB30BAE7108CEE7999EDD81C2BCC';
wwv_flow_imp.g_varchar2_table(323) := 'C3981FDFC49C9D2B6D271B052201BB10A00160174D500E5B12E8D1A02DFED3FF16D44848B1957CEB0FECC04593C619CB76575CE550BDFC2B7128F38901E0937C3441944E04909E908C0F86DE87F6194D6CC547847968FE07F870FD8FB6938B0291805D08';
wwv_flow_imp.g_varchar2_table(324) := 'D000B08B2628872D090C6BD317E37A5C890457788AC384326979493FF4C3BB98B4625628B79B7E8FD448905A0995ED2E983EA0C10E5F5B391DCF2EA123A0415CBC2C0609D0008841A573CAC608C896F90D9DCEC7EDDD2E85F802D8A549AEFB1BBE7C063B';
wwv_flow_imp.g_varchar2_table(325) := 'B2FD12DD58285C725C02BEB9F63134AD59CF42294E1EFA9B2D8B30E6A7B76C25138521013B11A00160276D50165B114872C5E3E15ED7E2D2963D6D25D753BF7C8C09BF7E632B991ECC1A81115D06D84AA679BBD7E286EFC797F159B095801486042C2640';
wwv_flow_imp.g_varchar2_table(326) := '03C062057078FB126890521BEF0FBA0B8D52EBD84648B7D7831EAF8FAC30CFBD95427669D04A154CB2535BBE7F2BAE9EF6143CC58E8C76928DB290801D08D000B0831628832D09B4A9D5089F5C740F6427C02E6DC9EE0D18F6C9A37611A7548E78571C3E';
wwv_flow_imp.g_varchar2_table(327) := 'BE621C4EADD7C236B2ED3E7E08174C7900051EB76D64A220246027023400ECA40DCA622B02ED6B67E2C33FFCDD560680A4B87D7BE9F4224EE2D42FA56C95FBBE0F450B5DE5CA6F6E5391830E283708A7B34C5E7AA9995032DEB04E5978ECBC3FDBC619D0';
wwv_flow_imp.g_varchar2_table(328) := 'E3F5E2AC8FEF52E18B6C2440022713A001C0A782042A217046BDD678EFC23B6DF342DB7060276EFAEA39ECC8DEA72456B5E1E35D65AB17AA97BF9436F4159537F68BD937AC680915941F299D5BF2FF8BD30748395DFF50426F5E21E4479AEC027C71D5C3';
wwv_flow_imp.g_varchar2_table(329) := '685B37D3F050E1BEB0DFE47BB037E748B88761FF24A025011A005AAA8D424782C0A0E6A7E3B97E3746622843638C5F3005E3177C5EB4F87739E121B5226000000C8B494441544A4F32745F582FF2019EA3B9A546C8F55DCEC7FD59C3C33A64309D0F9AF2';
wwv_flow_imp.g_varchar2_table(330) := '10B664EF09E6165E4B023143800640CCA89A130D96C0D5EDFAE1C19E57077B5BD8AE1F34E95EC82E40E9EA5F2ADDD9A0F9EF0234AF551FDF5FF7A40DA42A1261C4F467B168CF06DBC8434148C04E046800D8491B94C556046EEA3C1063BADB23CDEDAABD';
wwv_flow_imp.g_varchar2_table(331) := '5B71E9870F16AFFE1D70A526D9A7CCADCF07CFD13CB50B20C7001F0D1D87D3EADBC319F0FE7913F1C9865F6CF55C511812B00B011A0076D104E5B01D81FBCE1C86111DCEB15C2EC9FCF7AF9F3EC45B4BBF2D5AFD27C5AB1F3B35A95FEFCD2FF2B61FD2BE';
wwv_flow_imp.g_varchar2_table(332) := '0F9E1A78932D7C275EFCDFD77869B9BD7226D8496F9425B609D000886DFD73F655109870EEADC8CAEC6C39A38D0777E2C62F4F38FFC9D9BFF800D8A9F9DC5E788EE52991246DF27723FE8DCC1AD617507A7BF5F7F8F7E24FED848AB290806D08D000B08D';
wwv_flow_imp.g_varchar2_table(333) := '2A2888DD083CD1E77A0C697596E5623D326722DE5D3643C9E17039E04A4FB65CA693041067C063B9F0798A6210ED9219F0E56553317ED957F6E3458948C006046800D8400914C19E042E6FD90BE37A0E434ABC75DEF612C3DEF3F591A5C96CECB8FD5FA2';
wwv_flow_imp.g_varchar2_table(334) := '3D5F811B9E9C02F59F9DEB35C794AB1EB654B1C2EEDF8B2763F2C6B996CAC1C149C0AE046800D8553394CB7202715E277AD76D839BBA0FC2998DDB5922CFB40D0B316ADA4B45AB7FA703CED444DB6DFF9782F1DB0570395D7877C8DFD133B37DC4B9E57B';
wwv_flow_imp.g_varchar2_table(335) := '0A317FC71A4C5EFD137EDABF16793E66028CB81238A01604680068A1260A690501FF156D668D53D0BB49479CD3BC0B7A37E984D484F0EF0A480EFBDBA6BD8C6F372E52D37726C6C1999C60050AC363FA3B03F669D2096F5D3A06620C84BB498D84EF36FD';
wwv_flow_imp.g_varchar2_table(336) := '8A2FD7CDC3BC1DAB71BCA0C81FC18EFE12E166C1FE49C028011A004649F1BA9823E02D70C35BBCA55D3279390EE8DEB03506B4EC869E8D3BA045ED06880BD30BEEE7DF56E2FFBE198FDCC27C6D5E663EB7079E6345F24AFB60E8BD38B35178764FF2DC05';
wwv_flow_imp.g_varchar2_table(337) := 'D87C683716EC588B199B9760F99ECD907FF36FAEB4C4A274C96C2440022711A001C08782042A21E09FE0A63248B213D0B57E2BF46FD1056737ED8C96B51BC129E9734D686367BE854F56CD513D39E29C70A5857FD7A1DA629773061CDCF62C3C7FE1FF55';
wwv_flow_imp.g_varchar2_table(338) := 'BB5BE920575EF8077761E1AE7598BD65997AE107CAF3AFD225DB2461922910D8090998488006808930D9557411F0DFCE0E343397C389A635EBA15BC3D6E854AF393A663445EB3A8D502B392DA47878D9FEEFFDC66D38909BAD86D6E945E6BF735227391D';
wwv_flow_imp.g_varchar2_table(339) := 'B3AE7F0A6909C1472E48FE833C7721F61E3B849F7E5B811FB7ADC0DAFDDBB1EBE88140EA28FDDCCE4E938627C10B49204C04680084092CBBD59F80E7783E7C859E90272259F1A4308E1C19F46CDC1E9DEBB540E31A750D190412F627E17F6AF52F79FF53';
wwv_flow_imp.g_varchar2_table(340) := '13ED93F92F109172F501EEEE330CB79C7E51A0BBD4E7C70A72316FFB6A2CDAB51E0B77AEC59A7DBF418CA1509B0E7E13A1CE8DF791407509D000A82E41DE1FB504BC39F9F016846E00F883494F4846939AF5D021A3A90A916B979189866975513B390DC9';
wwv_flow_imp.g_varchar2_table(341) := '7109651CE57ED8BA0C8FFD38095B0F1715B1D169F55F3267FFDD93FA69B5F1CA45B795A6079695BD94EA95F3FA3DC70E61DB913DD872E8776C3CB41B6BF7FDA6FE3B3B3FC794E78A3B00A6606427514A800640942A96D3AA3E01233E00D51D25D1150F79';
wwv_flow_imp.g_varchar2_table(342) := '41CA4E418FC6EDE07438F1E1CAD990EC7F45CB7F20AE468AFAAD539352C4521FA0A4C9B1C85DBD8662D5BE6D58B9770B361EDC8DDDC70E947AEB87656E52D138D17E6993C33257764A022110A001100234DE1223047C80B7D0AD8E01C4BB1D4549EEC2D6';
wwv_flow_imp.g_varchar2_table(343) := '2485AE84CC9578FDABF77FBCAB68FB5FC356FE0845FC018EE4E7C0E3356757A552240E719A7429E73F1501A099F1A4A1AA29B2A604680068AA388A1D61023EC0E7F12863401D0BF8C26C0D144F4F5EFE6204E8D8547D80E37961379C141BBEF4757C4428';
wwv_flow_imp.g_varchar2_table(344) := 'B3C504680058AC000EAF19013104BCDED25D01D9EA0ED7CE800AFD93B2BF1AAF60ABEB4859E5D3E170A8F04871929495BE2A90A4312BCDFE12286E1410A00110054AE4142C24E0B73320C70425C570CC90281A1CD864C7448C00B39A7AD9C7BBF8C2370B';
wwv_flow_imp.g_varchar2_table(345) := '28FB8969023400625AFD9CBCA904BC3EC88E803204E447A2D7423D2A10E73FA9FAE7D47C49EBF3C19D2DC700211E99C8D67EC94A5F56F972A6AF3B13531F3A764602A113A001103A3BDE4902551350BB03C50641F16FA3C705D1B0FA2F81134C3485143C';
wwv_flow_imp.g_varchar2_table(346) := '926D7DB88AB6F4A5FC314CCAACC8C7950448A02C011A007C22482012047C3EF8BC9221C75B6C14A8ED81A25D02B10AFC16C8B2C52D06803AD38E86E6F3A96300710A2C6D6A63C301874C51ADF065752F67F8F26F3CCB8F06B5730EF6274003C0FE3AA284';
wwv_flow_imp.g_varchar2_table(347) := 'D14CA0D8A910C5C707B2555E72C61D4DD3969D10490E54B4AA9715BE539537E6EA3E9AB4CCB9E8468006806E1AA3BCD14BA0641740F363FF4A15A4FC00E4A51FBD2AE4CC48402702340074D2166525011220011220019308D000300924BB210112200112';
wwv_flow_imp.g_varchar2_table(348) := '20019D08D000D0495B9495044880044880044C224003C02490EC86044880044880047422400340276D5156122001122001123089000D009340B21B12200112200112D089000D009DB4455949800448800448C0240234004C02C96E488004488004484027';
wwv_flow_imp.g_varchar2_table(349) := '02340074D2166525011220011220019308D000300924BB21011220011220019D08D000D0495B9495044880044880044C224003C02490EC86044880044880047422400340276D5156122001122001123089000D009340B21B12200112200112D089000D00';
wwv_flow_imp.g_varchar2_table(350) := '9DB4455949800448800448C0240234004C02C96E48800448800448402702340074D2166525011220011220019308D000300924BB21011220011220019D08D000D0495B9495044880044880044C224003C02490EC86044880044880047422400340276D51';
wwv_flow_imp.g_varchar2_table(351) := '56122001122001123089000D009340B21B12200112200112D089000D009DB4455949800448800448C0240234004C02C96E48800448800448402702340074D2166525011220011220019308D000300924BB21011220011220019D08D000D0495B94950448';
wwv_flow_imp.g_varchar2_table(352) := '80044880044C224003C02490EC86044880044880047422400340276D5156122001122001123089000D009340B21B12200112200112D089000D009DB4455949800448800448C0240234004C02C96E48800448800448402702340074D21665250112200112';
wwv_flow_imp.g_varchar2_table(353) := '20019308D000300924BB21011220011220019D08D000D0495B9495044880044880044C224003C02490EC86044880044880047422400340276D5156122001122001123089000D009340B21B12200112200112D089000D009DB4455949800448800448C024';
wwv_flow_imp.g_varchar2_table(354) := '0234004C02C96E48800448800448402702340074D2166525011220011220019308D000300924BB21011220011220019D08D000D0495B9495044880044880044C224003C02490EC86044880044880047422400340276D5156122001122001123089000D00';
wwv_flow_imp.g_varchar2_table(355) := '9340B21B12200112200112D089000D009DB4455949800448800448C0240234004C02C96E48800448800448402702340074D2166525011220011220019308D000300924BB21011220011220019D08D000D0495B9495044880044880044C224003C02490EC';
wwv_flow_imp.g_varchar2_table(356) := '86044880044880047422400340276D5156122001122001123089000D009340B21B12200112200112D089000D009DB4455949800448800448C0240234004C02C96E48800448800448402702340074D2166525011220011220019308D000300924BB210112';
wwv_flow_imp.g_varchar2_table(357) := '20011220019D08D000D0495B9495044880044880044C224003C02490EC86044880044880047422400340276D5156122001122001123089000D009340B21B12200112200112D089000D009DB4455949800448800448C0240234004C02C96E488004488004';
wwv_flow_imp.g_varchar2_table(358) := '48402702340074D2166525011220011220019308D000300924BB21011220011220019D08D000D0495B9495044880044880044C224003C02490EC86044880044880047422400340276D5156122001122001123089000D009340B21B12200112200112D089';
wwv_flow_imp.g_varchar2_table(359) := '000D009DB4455949800448800448C0240234004C02C96E48800448800448402702340074D2166525011220011220019308D000300924BB21011220011220019D08D000D0495B9495044880044880044C224003C02490EC86044880044880047422400340';
wwv_flow_imp.g_varchar2_table(360) := '276D5156122001122001123089000D009340B21B12200112200112D089000D009DB4455949800448800448C0240234004C02C96E48800448800448402702340074D2166525011220011220019308D000300924BB21011220011220019D08D000D0495B94';
wwv_flow_imp.g_varchar2_table(361) := '95044880044880044C224003C02490EC86044880044880047422400340276D5156122001122001123089000D009340B21B12200112200112D089000D009DB4455949800448800448C02402FF0FEF8235D1064BD5600000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(537127151855975919)
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
 p_id=>wwv_flow_imp.id(6157039761980987)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>162615874
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7688547322502427)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>37166093875309
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7719317347464807)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>37167665069975
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7719729558464807)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>37167665069975
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7742200096309575)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>155467421
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(106002790786870030)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>37166093875309
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(127566273532415130)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'N')).to_clob
,p_version_scn=>37166093875309
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(129371941759459592)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>37166093875309
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(182287519567487946)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>37166093875309
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(612952696932714858)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>37166093875309
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1127412453959488643)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>37166093875309
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1773750570027372535)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'N')).to_clob
,p_version_scn=>37166093875309
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1840450600617654635)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>37166093875309
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1926337158545600539)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>37166093875309
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
wwv_flow_imp_shared.create_icon_bar_item(
 p_id=>wwv_flow_imp.id(3270649567013605945)
,p_icon_sequence=>10
,p_icon_subtext=>'Administration'
,p_icon_target=>'f?p=&APP_ID.:settings:&SESSION.::&DEBUG.::::'
,p_nav_entry_is_feedback_yn=>'N'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_imp_shared.create_icon_bar_item(
 p_id=>wwv_flow_imp.id(3205699347485275850)
,p_icon_sequence=>20
,p_icon_subtext=>'Help'
,p_icon_target=>'f?p=&APP_ID.:help:&SESSION.::&DEBUG.::::'
,p_nav_entry_is_feedback_yn=>'N'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_imp_shared.create_icon_bar_item(
 p_id=>wwv_flow_imp.id(8199703698415627933)
,p_icon_sequence=>30
,p_icon_subtext=>'Logout'
,p_icon_target=>'&LOGOUT_URL.'
,p_icon_image_alt=>'Logout'
,p_icon_height=>32
,p_icon_width=>32
,p_icon_height2=>24
,p_icon_width2=>24
,p_nav_entry_is_feedback_yn=>'N'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
end;
/
prompt --application/shared_components/logic/application_processes/trim_all_page_items
begin
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(1561595655252608939)
,p_process_sequence=>1
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Trim All Page Items'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    for c1 in (select item_name',
'               from apex_application_page_items',
'               where application_id = :APP_ID',
'                   and page_id = :APP_PAGE_ID',
'                   and display_as_code in (''NATIVE_TEXT_FIELD'',',
'                                           ''NATIVE_TEXTAREA'',',
'                                           ''NATIVE_NUMBER_FIELD'') ) loop',
'        apex_util.set_session_state( c1.item_name,',
'            regexp_replace(apex_util.get_session_state( c1.item_name ),',
'                ''^[[:space:]]*(.*?)[[:space:]]*$'', ''\1''',
'            )',
'        );',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_version_scn=>37166093875310
);
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
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
prompt --application/shared_components/user_interface/lovs/department
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2654114941209049465)
,p_lov_name=>'DEPARTMENT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dname d, deptno r',
'from eba_demo_da_dept',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089078642
);
end;
/
prompt --application/shared_components/user_interface/lovs/job
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2654113549557049462)
,p_lov_name=>'JOB'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct job d, job r',
'from eba_demo_da_emp',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089078642
);
end;
/
prompt --application/shared_components/user_interface/lovs/manager
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2654113960356049464)
,p_lov_name=>'MANAGER'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ename d, empno r',
'from eba_demo_da_emp',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089078642
);
end;
/
prompt --application/shared_components/user_interface/lovs/p13_eba_demo_da_emp_deptno
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2661377863929867824)
,p_lov_name=>'P13_EBA_DEMO_DA_EMP_DEPTNO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dname d, deptno r',
'from eba_demo_da_dept',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089078642
);
end;
/
prompt --application/shared_components/user_interface/lovs/p13_eba_demo_da_emp_job
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2661376468160867819)
,p_lov_name=>'P13_EBA_DEMO_DA_EMP_JOB'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct job d, job r',
'from eba_demo_da_emp',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089078642
);
end;
/
prompt --application/shared_components/user_interface/lovs/p13_eba_demo_da_emp_mgr
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2661376844021867822)
,p_lov_name=>'P13_EBA_DEMO_DA_EMP_MGR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ename d, empno r',
'from eba_demo_da_emp',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089078642
);
end;
/
prompt --application/shared_components/user_interface/lovs/p15_eba_demo_da_emp_deptno
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2662289462983968210)
,p_lov_name=>'P15_EBA_DEMO_DA_EMP_DEPTNO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dname d, deptno r',
'from eba_demo_da_dept',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089078642
);
end;
/
prompt --application/shared_components/user_interface/lovs/p15_eba_demo_da_emp_job
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2662288044177968207)
,p_lov_name=>'P15_EBA_DEMO_DA_EMP_JOB'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct job d, job r',
'from eba_demo_da_emp',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089078642
);
end;
/
prompt --application/shared_components/user_interface/lovs/p15_eba_demo_da_emp_mgr
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2662288440612968209)
,p_lov_name=>'P15_EBA_DEMO_DA_EMP_MGR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ename d, empno r',
'from eba_demo_da_emp',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089078642
);
end;
/
prompt --application/shared_components/user_interface/lovs/p22_eba_demo_da_emp_deptno
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2674870858875092550)
,p_lov_name=>'P22_EBA_DEMO_DA_EMP_DEPTNO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dname d, deptno r',
'from eba_demo_da_dept',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089078642
);
end;
/
prompt --application/shared_components/user_interface/lovs/p22_eba_demo_da_emp_job
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2674869449034092546)
,p_lov_name=>'P22_EBA_DEMO_DA_EMP_JOB'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct job d, job r',
'from eba_demo_da_emp',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089078642
);
end;
/
prompt --application/shared_components/user_interface/lovs/p22_eba_demo_da_emp_mgr
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2674869849148092549)
,p_lov_name=>'P22_EBA_DEMO_DA_EMP_MGR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ename d, empno r',
'from eba_demo_da_emp',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089078642
);
end;
/
prompt --application/shared_components/user_interface/lovs/p7_eba_demo_da_emp_deptno
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2656799856082119519)
,p_lov_name=>'P7_EBA_DEMO_DA_EMP_DEPTNO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dname d, deptno r',
'from eba_demo_da_dept',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089078642
);
end;
/
prompt --application/shared_components/user_interface/lovs/p7_eba_demo_da_emp_job
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2656798457702119515)
,p_lov_name=>'P7_EBA_DEMO_DA_EMP_JOB'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct job d, job r',
'from eba_demo_da_emp',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089078642
);
end;
/
prompt --application/shared_components/user_interface/lovs/p7_eba_demo_da_emp_mgr
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2656798851124119518)
,p_lov_name=>'P7_EBA_DEMO_DA_EMP_MGR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ename d, empno r',
'from eba_demo_da_emp',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089078642
);
end;
/
prompt --application/shared_components/user_interface/lovs/p9_eba_demo_da_emp_deptno
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2658351952314433891)
,p_lov_name=>'P9_EBA_DEMO_DA_EMP_DEPTNO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dname d, deptno r',
'from eba_demo_da_dept',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089078642
);
end;
/
prompt --application/shared_components/user_interface/lovs/p9_eba_demo_da_emp_job
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2658350562464433889)
,p_lov_name=>'P9_EBA_DEMO_DA_EMP_JOB'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct job d, job r',
'from eba_demo_da_emp',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089078642
);
end;
/
prompt --application/shared_components/user_interface/lovs/p9_eba_demo_da_emp_mgr
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2658350953241433890)
,p_lov_name=>'P9_EBA_DEMO_DA_EMP_MGR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ename d, empno r',
'from eba_demo_da_emp',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089078642
);
end;
/
prompt --application/pages/page_groups
begin
null;
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
 p_id=>wwv_flow_imp.id(8199705487948627945)
,p_name=>' Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6610703809701456)
,p_short_name=>'Debounce and Throttle'
,p_link=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>21
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2133151097404007343)
,p_short_name=>'Application Theme Style'
,p_link=>'f?p=&APP_ID.:24:&SESSION.'
,p_page_id=>24
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2177343211326308169)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:26:&SESSION.'
,p_page_id=>26
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2653564339703819873)
,p_short_name=>'Disable/Enable'
,p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2653564641188819873)
,p_parent_id=>wwv_flow_imp.id(2653564339703819873)
,p_short_name=>'Edit'
,p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2654119047401049476)
,p_short_name=>'Hide/Show'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2654119367945049477)
,p_parent_id=>wwv_flow_imp.id(2654119047401049476)
,p_short_name=>'Edit'
,p_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2656803947988119579)
,p_short_name=>'Add/Remove Class (Error)'
,p_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2656804259700119582)
,p_parent_id=>wwv_flow_imp.id(2656803947988119579)
,p_short_name=>'Edit'
,p_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2658356061406433918)
,p_short_name=>'Add/Remove Class (Focus)'
,p_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2658356347204433922)
,p_parent_id=>wwv_flow_imp.id(2658356061406433918)
,p_short_name=>'Edit'
,p_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
,p_page_id=>9
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2658798956613491464)
,p_short_name=>'Stripe Report'
,p_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2659022645773546585)
,p_short_name=>'Execute PL/SQL Code'
,p_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::'
,p_page_id=>11
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2661381959899867857)
,p_short_name=>'Set Values (SQL)'
,p_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_page_id=>12
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2661382246227867859)
,p_parent_id=>wwv_flow_imp.id(2661381959899867857)
,p_short_name=>'Edit'
,p_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::'
,p_page_id=>13
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2662293546447968233)
,p_short_name=>'Set Values (PL/SQL)'
,p_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::'
,p_page_id=>14
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2662293841556968235)
,p_parent_id=>wwv_flow_imp.id(2662293546447968233)
,p_short_name=>'Edit'
,p_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_page_id=>15
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2667079452127775107)
,p_short_name=>'Timer'
,p_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_page_id=>16
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2668751167593416009)
,p_short_name=>'Refresh'
,p_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
,p_page_id=>17
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2673203542191361313)
,p_short_name=>'Delete and Refresh'
,p_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
,p_page_id=>18
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2674038758295871206)
,p_short_name=>'Filter and Refresh'
,p_link=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::'
,p_page_id=>19
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2674552562729982081)
,p_short_name=>'Shuttle Refresh'
,p_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_page_id=>20
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2674875242243092581)
,p_short_name=>'Edit'
,p_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:::'
,p_page_id=>22
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2678537146404339537)
,p_parent_id=>wwv_flow_imp.id(8199705899796627948)
,p_short_name=>'Administration'
,p_link=>'f?p=&FLOW_ID.:23:&SESSION.'
,p_page_id=>23
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3246485342808753732)
,p_parent_id=>wwv_flow_imp.id(8199705899796627948)
,p_short_name=>'Help'
,p_link=>'f?p=&FLOW_ID.:25:&SESSION.'
,p_page_id=>25
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8199705899796627948)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/region/div_region_with_id
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(3171162364200475589)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#BODY#',
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'</div>'))
,p_page_plug_template_name=>'DIV Region with ID'
,p_internal_name=>'DIV_REGION_WITH_ID'
,p_theme_id=>101
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(146970579959325301)
,p_plug_template_id=>wwv_flow_imp.id(3171162364200475589)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(146970694394325301)
,p_plug_template_id=>wwv_flow_imp.id(3171162364200475589)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(146970798851325301)
,p_plug_template_id=>wwv_flow_imp.id(3171162364200475589)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(146970892213325301)
,p_plug_template_id=>wwv_flow_imp.id(3171162364200475589)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(146970922795325300)
,p_plug_template_id=>wwv_flow_imp.id(3171162364200475589)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(146971092906325300)
,p_plug_template_id=>wwv_flow_imp.id(3171162364200475589)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(146971186636325300)
,p_plug_template_id=>wwv_flow_imp.id(3171162364200475589)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(146971217715325300)
,p_plug_template_id=>wwv_flow_imp.id(3171162364200475589)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(146971316326325300)
,p_plug_template_id=>wwv_flow_imp.id(3171162364200475589)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(146971459122325300)
,p_plug_template_id=>wwv_flow_imp.id(3171162364200475589)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(146971546756325300)
,p_plug_template_id=>wwv_flow_imp.id(3171162364200475589)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(146971618486325300)
,p_plug_template_id=>wwv_flow_imp.id(3171162364200475589)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(146971722700325300)
,p_plug_template_id=>wwv_flow_imp.id(3171162364200475589)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
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
 p_id=>wwv_flow_imp.id(1866080345859540577)
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
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
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
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(27731421000489214)
,p_theme_id=>42
,p_name=>'PRESERVE_LABEL_SPACING'
,p_display_name=>'Preserve Label Spacing'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_help_text=>'Preserves the label space and enables use of the Label Column Span property.'
,p_null_text=>'Yes'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(27735419366489217)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(27737427879489219)
,p_theme_id=>42
,p_name=>'ICON_STYLE'
,p_display_name=>'Icon Style'
,p_display_sequence=>35
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(27740618852489221)
,p_theme_id=>42
,p_name=>'DISPLAY_MODE'
,p_display_name=>'Display Mode'
,p_display_sequence=>30
,p_template_types=>'PAGE'
,p_help_text=>'Determines the default display appearance and positioning of the dialog. The default opens a floating dialog position at the center of the screen.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(27749072000489226)
,p_theme_id=>42
,p_name=>'DISPLAY_MODE'
,p_display_name=>'Display Mode'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the default display appearance and positioning of the dialog. The default opens a floating dialog position at the center of the screen.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(27759031803489233)
,p_theme_id=>42
,p_name=>'RESULT_SEPARATOR'
,p_display_name=>'Result Separator'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_null_text=>'Show'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(27763099295489236)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976662913039625751)
,p_theme_id=>142
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976663220331625751)
,p_theme_id=>142
,p_name=>'DISPLAY_TYPE'
,p_display_name=>'Display Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976665136387625755)
,p_theme_id=>142
,p_name=>'REGION_STYLE'
,p_display_name=>'Region Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976665555247625755)
,p_theme_id=>142
,p_name=>'REGION_PADDING'
,p_display_name=>'Region Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976667227135625759)
,p_theme_id=>142
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Extend to Fit Contents'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976667681013625759)
,p_theme_id=>142
,p_name=>'REGION_HEADER'
,p_display_name=>'Region Header'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976667982552625760)
,p_theme_id=>142
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976669149431625761)
,p_theme_id=>142
,p_name=>'REGION_TYPE'
,p_display_name=>'Region Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Normal - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976670165747625762)
,p_theme_id=>142
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976670867354625764)
,p_theme_id=>142
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976671132135625764)
,p_theme_id=>142
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976673271663625769)
,p_theme_id=>142
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976673621371625769)
,p_theme_id=>142
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976673911749625769)
,p_theme_id=>142
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976675367532625772)
,p_theme_id=>142
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976676246556625773)
,p_theme_id=>142
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976677689053625775)
,p_theme_id=>142
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976678840702625776)
,p_theme_id=>142
,p_name=>'ICON_STYLE'
,p_display_name=>'Icon Style'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976680677968625780)
,p_theme_id=>142
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976681951733625783)
,p_theme_id=>142
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976682593681625784)
,p_theme_id=>142
,p_name=>'BREADCRUMB_DIVIDER'
,p_display_name=>'Breadcrumb Divider'
,p_display_sequence=>1
,p_template_types=>'BREADCRUMB'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976683897144625788)
,p_theme_id=>142
,p_name=>'BUTTON_TYPE'
,p_display_name=>'Button Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976684174747625788)
,p_theme_id=>142
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976684488261625788)
,p_theme_id=>142
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976684893922625788)
,p_theme_id=>142
,p_name=>'BUTTON_SIZE'
,p_display_name=>'Button Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Size'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976685225716625788)
,p_theme_id=>142
,p_name=>'BUTTON_STYLE'
,p_display_name=>'Button Style'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Style'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976685772852625788)
,p_theme_id=>142
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976686475062625789)
,p_theme_id=>142
,p_name=>'BUTTON_WIDTH'
,p_display_name=>'Button Width'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Width'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976686985028625789)
,p_theme_id=>142
,p_name=>'FORM_LABEL_WIDTH'
,p_display_name=>'Form Label Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Help text for Form Label Width'
,p_null_text=>'Default Width'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976687501069625789)
,p_theme_id=>142
,p_name=>'FORM_LABEL_POSITION'
,p_display_name=>'Form Label Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976687781490625789)
,p_theme_id=>142
,p_name=>'FORM_ITEMS_SIZE'
,p_display_name=>'Form Items Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Size'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976688091444625789)
,p_theme_id=>142
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(976688377016625789)
,p_theme_id=>142
,p_name=>'FORM_ITEM_PADDING'
,p_display_name=>'Form Item Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Padding'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1041053805772020352)
,p_theme_id=>142
,p_name=>'NAVIGATION_COLOR_SCHEME'
,p_display_name=>'Navigation Color Scheme'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1063807821553103096)
,p_theme_id=>142
,p_name=>'CURRENT_PAGE'
,p_display_name=>'Current Page'
,p_display_sequence=>1
,p_template_types=>'BREADCRUMB'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1223012556946675052)
,p_theme_id=>142
,p_name=>'REGION_ACCENT'
,p_display_name=>'Region Accent'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1223018445370675061)
,p_theme_id=>142
,p_name=>'LIST_STYLE'
,p_display_name=>'List Style'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1259858174441911690)
,p_theme_id=>142
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1259860656357911692)
,p_theme_id=>142
,p_name=>'DISPLAY'
,p_display_name=>'Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1259879734614911717)
,p_theme_id=>142
,p_name=>'FORM_ITEM_WIDTH'
,p_display_name=>'Form Item Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1346513525979924682)
,p_theme_id=>142
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1350037951799282043)
,p_theme_id=>142
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1526279394927371299)
,p_theme_id=>142
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
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
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(2578651465042848211)
,p_name=>'HELP'
,p_message_text=>'Help'
,p_version_scn=>37166093875331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(2578655567120848765)
,p_name=>'LOGOUT'
,p_message_text=>'Logout'
,p_version_scn=>37166093875331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(2682569256237848961)
,p_name=>'USER'
,p_message_text=>'User'
,p_version_scn=>37166093875331
);
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
wwv_flow_imp_shared.create_shortcut(
 p_id=>wwv_flow_imp.id(2653557861120819843)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_version_scn=>1089078643
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/apex_auth
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(8199704187097627935)
,p_name=>'APEX Auth'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_logout_url=>'f?p=&APP_ID.:1'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>186610701
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_display_source
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(1326407458340529669)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_display_name=>'Source Display'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.DISPLAY_SOURCE'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function render (',
'        p_region              in apex_plugin.t_region,',
'        p_plugin              in apex_plugin.t_plugin,',
'        p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result',
'is',
'    -- It''s better to have named variables instead of using the generic ones,',
'    -- makes the code more readable. We are using the same defaults for the',
'    -- required attributes as in the plug-in attribute configuration, because',
'    -- they can still be null. Keep them in sync!',
'    c_region_static_id    constant varchar2(255) := p_region.attribute_01;',
'    c_highlight_page_item constant varchar2(255) := p_region.attribute_02;',
'',
'    l_highlight_term varchar2(4000) := '''';',
'',
'    cursor sql_csr( d_region_static_id in varchar2 ) is',
'        select source_type, 10 seq, null series_name, region_source source',
'        from apex_application_page_regions',
'        where application_id = :APP_ID',
'            and page_id = :APP_PAGE_ID',
'            and static_id = d_region_static_id',
'            and ( source_type_code like ''PLUGIN%''',
'                or source_type_code like ''STATIC_TEXT%''',
'                or source_type in (',
'                    ''Calendar'',',
'                    ''Easy Calendar'',',
'                    ''Interactive Report'',',
'                    ''Interactive Grid'',',
'                    ''List View'',',
'                    ''Report'',',
'                    ''PL/SQL'',',
'                    ''Tabular Form''',
'                )',
'            )',
'        union all',
'        select reg.source_type, 10 seq, null series_name, to_clob(tr.tree_query) source',
'        from apex_application_page_regions reg,',
'            apex_application_page_trees tr',
'        where reg.application_id = :APP_ID',
'            and reg.page_id = :APP_PAGE_ID',
'            and reg.static_id = d_region_static_id',
'            and tr.application_id = reg.application_id',
'            and tr.page_id = reg.page_id',
'            and tr.region_id = reg.region_id',
'            and reg.source_type in (''JavaScript Tree'')',
'        union all',
'        select reg.source_type, 10 seq, null series_name, to_clob(list_query) source',
'        from apex_application_page_regions reg,',
'            apex_application_lists li',
'        where reg.application_id = :APP_ID',
'            and reg.page_id = :APP_PAGE_ID',
'            and reg.static_id = d_region_static_id',
'            and li.application_id = reg.application_id',
'            and li.list_id = reg.list_id',
'            and reg.source_type in ( ''List'' )',
'        order by 1, 2;',
'    sql_rec sql_csr%ROWTYPE;',
'begin',
'    if c_highlight_page_item is not null then',
'        l_highlight_term := apex_escape.html(trim(lower(v(c_highlight_page_item))));',
'    end if;',
'',
'    for sql_rec in sql_csr( c_region_static_id ) loop',
'        if sql_rec.series_name is not null then',
'            sys.htp.p(''<p><strong>''||apex_escape.html(sql_rec.series_name)||'':</strong></p>'');',
'        end if;',
'        sys.htp.p(''<pre>'');',
'        if l_highlight_term is not null then',
'            sys.htp.p(replace(apex_escape.html(sql_rec.source),',
'                l_highlight_term,''<span class="highlight">''||l_highlight_term||''</span>''));',
'        else',
'            sys.htp.p(apex_escape.html(sql_rec.source));',
'        end if;',
'        sys.htp.p(''</pre>'');',
'    end loop;',
'',
'    return null;',
'end render;'))
,p_api_version=>1
,p_render_function=>'render'
,p_substitute_attributes=>true
,p_reference_id=>1305119942933551255
,p_subscribe_plugin_settings=>true
,p_help_text=>'This region plug-in is used to display the SQL Source region of an accompanying region.'
,p_version_identifier=>'5.0.1'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(615025682092300304)
,p_plugin_id=>wwv_flow_imp.id(1326407458340529669)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'attribute_01'
,p_prompt=>'Region Static ID'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>'Enter the static ID as defined in the target region''s attributes section.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(615026067227300304)
,p_plugin_id=>wwv_flow_imp.id(1326407458340529669)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'attribute_02'
,p_prompt=>'Highlight Term Page Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'If you wish to have a term in your region source highlighted, create a page item and select it here.'
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_sampleappfooter
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(1667429175987012640)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.SAMPLEAPPFOOTER'
,p_display_name=>'Sample Apps Footer'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.SAMPLEAPPFOOTER'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function render (   p_region in apex_plugin.t_region,',
'                    p_plugin in apex_plugin.t_plugin,',
'                    p_is_printer_friendly in boolean )',
'        return apex_plugin.t_region_render_result is',
'begin',
'    sys.htp.p(''<ul class="t-Cards t-Cards--sampleAppsFooter t-Cards--featured force-fa-lg t-Cards--displayIcons t-Cards--hideBody t-Cards--animColorFill">'');',
'    sys.htp.p(''<li class="t-Cards-item">'');',
'    sys.htp.p(''  <div class="t-Card">'');',
'    sys.htp.p(''    <a href="https://apex.oracle.com/twitter" target="_blank" class="t-Card-wrap">'');',
'    sys.htp.p(''      <div class="t-Card-icon"><span class="t-Icon fa fa-twitter" style="color: #1da1f2"></span></div>'');',
'    sys.htp.p(''      <div class="t-Card-titleWrap"><h3 class="t-Card-title">Twitter</h3></div>'');',
'    sys.htp.p(''    </a>'');',
'    sys.htp.p(''  </div>'');',
'    sys.htp.p(''</li>'');',
'    sys.htp.p(''<li class="t-Cards-item">'');',
'    sys.htp.p(''  <div class="t-Card">'');',
'    sys.htp.p(''    <a href="https://apex.oracle.com/linkedin" target="_blank" class="t-Card-wrap">'');',
'    sys.htp.p(''      <div class="t-Card-icon"><span class="t-Icon fa fa-linkedin" style="color: #0077b5"></span></div>'');',
'    sys.htp.p(''      <div class="t-Card-titleWrap"><h3 class="t-Card-title">LinkedIn</h3></div>'');',
'    sys.htp.p(''    </a>'');',
'    sys.htp.p(''  </div>'');',
'    sys.htp.p(''</li>'');',
'    sys.htp.p(''<li class="t-Cards-item">'');',
'    sys.htp.p(''  <div class="t-Card">'');',
'    sys.htp.p(''    <a href="https://apex.oracle.com/facebook" target="_blank" class="t-Card-wrap">'');',
'    sys.htp.p(''      <div class="t-Card-icon"><span class="t-Icon fa fa-facebook" style="color: #3b5998"></span></div>'');',
'    sys.htp.p(''      <div class="t-Card-titleWrap"><h3 class="t-Card-title">Facebook</h3></div>'');',
'    sys.htp.p(''    </a>'');',
'    sys.htp.p(''  </div>'');',
'    sys.htp.p(''</li>'');',
'    sys.htp.p(''<li class="t-Cards-item">'');',
'    sys.htp.p(''  <div class="t-Card">'');',
'    sys.htp.p(''    <a href="https://apex.oracle.com/youtube" target="_blank" class="t-Card-wrap">'');',
'    sys.htp.p(''      <div class="t-Card-icon"><span class="t-Icon fa fa-youtube" style="color: red"></span></div>'');',
'    sys.htp.p(''      <div class="t-Card-titleWrap"><h3 class="t-Card-title">YouTube</h3></div>'');',
'    sys.htp.p(''    </a>'');',
'    sys.htp.p(''  </div>'');',
'    sys.htp.p(''</li>'');',
'    sys.htp.p(''<li class="t-Cards-item">'');',
'    sys.htp.p(''  <div class="t-Card">'');',
'    sys.htp.p(''    <a href="https://apex.oracle.com/" target="_blank" class="t-Card-wrap">'');',
'    sys.htp.p(''      <div class="t-Card-icon"><span class="t-Icon fa fa-apex" style="color: #707070"></span></div>'');',
'    sys.htp.p(''      <div class="t-Card-titleWrap"><h3 class="t-Card-title">apex.oracle.com</h3></div>'');',
'    sys.htp.p(''    </a>'');',
'    sys.htp.p(''  </div>'');',
'    sys.htp.p(''</li>'');',
'    sys.htp.p(''<li class="t-Cards-item">'');',
'    sys.htp.p(''  <div class="t-Card">'');',
'    sys.htp.p(''    <a href="https://apex.oracle.com/community" target="_blank" class="t-Card-wrap">'');',
'    sys.htp.p(''      <div class="t-Card-icon"><span class="t-Icon fa fa-users" style="color: #707070"></span></div>'');',
'    sys.htp.p(''      <div class="t-Card-titleWrap"><h3 class="t-Card-title">Oracle APEX Community</h3></div>'');',
'    sys.htp.p(''    </a>'');',
'    sys.htp.p(''  </div>'');',
'    sys.htp.p(''</li>'');',
'    sys.htp.p(''<li class="t-Cards-item">'');',
'    sys.htp.p(''  <div class="t-Card">'');',
'    sys.htp.p(''    <a href="https://apex.oracle.com/forum" target="_blank" class="t-Card-wrap">'');',
'    sys.htp.p(''      <div class="t-Card-icon"><span class="t-Icon fa fa-comments-o" style="color: #707070"></span></div>'');',
'    sys.htp.p(''      <div class="t-Card-titleWrap"><h3 class="t-Card-title">Discussion Forums</h3></div>'');',
'    sys.htp.p(''    </a>'');',
'    sys.htp.p(''  </div>'');',
'    sys.htp.p(''</li>'');',
'    sys.htp.p(''<li class="t-Cards-item">'');',
'    sys.htp.p(''  <div class="t-Card">'');',
'    sys.htp.p(''    <a href="https://apex.oracle.com/autonomous" target="_blank" class="t-Card-wrap">'');',
'    sys.htp.p(''      <div class="t-Card-icon"><span class="t-Icon fa fa-cloud" style="color: #707070"></span></div>'');',
'    sys.htp.p(''      <div class="t-Card-titleWrap"><h3 class="t-Card-title">Autonomous Database + APEX</h3></div>'');',
'    sys.htp.p(''    </a>'');',
'    sys.htp.p(''  </div>'');',
'    sys.htp.p(''</li>'');',
'    sys.htp.p(''</ul>'');',
'    return null;',
'end render;'))
,p_api_version=>1
,p_render_function=>'render'
,p_substitute_attributes=>true
,p_reference_id=>1660759070362076804
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This region plug-in is used to display a custom footer at the bottom of pages with large icons for navigating to other sites such as twitter and linkedin.</p>',
'<p>Note: This plug-in should be customized to meet your specific requirements, rather than used as is.</p>'))
,p_version_identifier=>'5.0.1'
);
end;
/
prompt --application/shared_components/plugins/dynamic_action/com_oracle_apex_stripe_report
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(16722087028866401935)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'COM.ORACLE.APEX.STRIPE.REPORT'
,p_display_name=>'Stripe Report'
,p_category=>'EFFECT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','COM.ORACLE.APEX.STRIPE.REPORT'),'')
,p_javascript_file_urls=>'#PLUGIN_FILES#stripe_report_2_0.js'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function render_stripe_report (',
'    p_dynamic_action in apex_plugin.t_dynamic_action,',
'    p_plugin         in apex_plugin.t_plugin )',
'    return apex_plugin.t_dynamic_action_render_result',
'is',
'    l_result        apex_plugin.t_dynamic_action_render_result;',
'    -- It''s better to have named variables instead of using the generic ones, makes',
'    -- the code more readable.',
'    -- If an attribute value is ''Required'' and there is a ''Default Value'' set in the ',
'    -- plug-in attribute definition, this should also be defined here.',
'    l_stripe_color  varchar2(4000) := coalesce(p_dynamic_action.attribute_01,''#FAFAFA'');',
'begin',
'    -- During plug-in development it''s very helpful to have some debug information',
'    if apex_application.g_debug then',
'        apex_plugin_util.debug_dynamic_action (',
'            p_plugin            => p_plugin,',
'            p_dynamic_action    => p_dynamic_action );',
'    end if;',
'',
'    -- ***********************************',
'    -- Here starts the actual plug-in code',
'    -- ***********************************',
'    -- Register the javascript function which should be called when the plug-in',
'    -- action is executed with the APEX client side dynamic action framework.',
'    -- The javascript function can be a named javascript function, but it can',
'    -- also be an anonymous function if the code is really short.',
'    -- For example: function(){this.affectedElements.hide(this.action.attribute01);}',
'    l_result.javascript_function    := ''com_oracle_apex_stripe_report'';',
'    l_result.attribute_01           := l_stripe_color;',
'    ',
'    return l_result;',
'end render_stripe_report;',
''))
,p_api_version=>1
,p_render_function=>'render_stripe_report'
,p_standard_attributes=>'ONLOAD'
,p_substitute_attributes=>true
,p_version_scn=>1089078739
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'2.0'
,p_files_version=>2
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(16722222725234438773)
,p_plugin_id=>wwv_flow_imp.id(16722087028866401935)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Stripe Color'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'#FAFAFA'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'	Specify a color to be used to color the background of every alternate row in the report. Colors can be specified in 1 of 3 ways:</p>',
'<ul>',
'	<li>',
'		By Name - The name of the color, like &#39;red&#39;.</li>',
'	<li>',
'		By Hex Code - The hex code of the color, like &#39;#FAFAFA&#39;.</li>',
'	<li>',
'		By RGB Code - The rgb code of the color, like &#39;rgb(0,0,255)&#39;</li>',
'</ul>',
''))
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2F20412064796E616D696320616374696F6E20706C75672D696E2066756E6374696F6E2063616E2061636365737320697427732063757272656E7420636F6E7465787420776974682074686520227468697322206F626A6563742E0A2F2F2049742063';
wwv_flow_imp.g_varchar2_table(2) := '6F6E7461696E7320666F72206578616D706C652022616374696F6E222077686963682073746F726573207468652064796E616D69632061747472696275746573206174747269627574653031202D20617474726962757465313020616E640A2F2F207468';
wwv_flow_imp.g_varchar2_table(3) := '6520616A61784964656E746966696572207573656420666F722074686520414A41582063616C6C2E20496E73696465207468652066756E6374696F6E20796F752063616E207573650A2F2F2022746869732E6166666563746564456C656D656E74732220';
wwv_flow_imp.g_varchar2_table(4) := '746F206765742061206A5175657279206F626A65637420776869636820636F6E7461696E7320616C6C207468652061666665637465640A2F2F20444F4D20656C656D656E7473206F75722064796E616D696320616374696F6E2073686F756C6420626520';
wwv_flow_imp.g_varchar2_table(5) := '706572666F726D6564206F6E2E20596F752063616E20616C736F20726566657220746F0A2F2F2022746869732E74726967676572696E67456C656D656E742220746F20676574206120444F4D20656C656D656E74206F6620746865207472696767657269';
wwv_flow_imp.g_varchar2_table(6) := '6E6720656C656D656E742E0A2F2F0A2F2F20466F722064796E616D696320616374696F6E20706C75672D696E2066756E6374696F6E7320796F752073686F756C642075736520612066756E6374696F6E206E616D652077686963682069730A2F2F20756E';
wwv_flow_imp.g_varchar2_table(7) := '697175652C20736F20697420646F65736E27742067657420696E20636F6E666C6963742077697468206578697374696E672066756E6374696F6E732E20426573742070726163746963650A2F2F20697320746F20757365207468652073616D65206E616D';
wwv_flow_imp.g_varchar2_table(8) := '65206173207573656420666F722074686520706C75672D696E20696E7465726E616C206E616D652E0A0A66756E6374696F6E20636F6D5F6F7261636C655F617065785F7374726970655F7265706F72742829207B0A202020202F2F204465636C61726520';
wwv_flow_imp.g_varchar2_table(9) := '7661726961626C65732E20496E206465616C696E672077697468206174747269627574652076616C7565732C20697427732062657474657220746F2068617665200A202020202F2F206E616D6564207661726961626C657320696E7374656164206F6620';
wwv_flow_imp.g_varchar2_table(10) := '7573696E67207468652067656E65726963206F6E65732C2074686174206D616B65732074686520636F6465206D6F7265200A202020202F2F207265616461626C652E0A20202020766172206C537472697065436F6C6F723B0A0A202020202F2F20496E69';
wwv_flow_imp.g_varchar2_table(11) := '7469616C69736520616C6C20746865207661726961626C65732C206261736564206F6E2074686569722061747472696275746520646566696E6974696F6E732E0A202020206C537472697065436F6C6F72203D20746869732E616374696F6E2E61747472';
wwv_flow_imp.g_varchar2_table(12) := '696275746530313B0A202020200A202020202F2F2027746869732E74726967676572696E67456C656D656E74272069732074686520444F4D20656C656D656E74206F662074686520726567696F6E20636F6E7461696E696E670A202020202F2F20746865';
wwv_flow_imp.g_varchar2_table(13) := '20496E746572616374697665205265706F7274207370656369666965642061732074686520275768656E272074726967676572696E6720656C656D656E742E20546869730A202020202F2F2069732075736566756C20696E207468697320737472697069';
wwv_flow_imp.g_varchar2_table(14) := '6E67207265706F7274206578616D706C652C20776865726520776520646F6E2774207265616C6C79206E656564207468650A202020202F2F207573657220746F206861766520746F20646566696E652074686520696E746572616374697665207265706F';
wwv_flow_imp.g_varchar2_table(15) := '727420616761696E20696E207468652027416666656374656420456C656D656E7473270A202020202F2F206F66207468652064796E616D696320616374696F6E2E205765206A757374207573652074686520275768656E272074726967676572696E6720';
wwv_flow_imp.g_varchar2_table(16) := '656C656D656E74206469726563746C7920616E640A202020202F2F20646F2061206A51756572792073746174656D656E742074686174207374726970657320746865207265706F72742C20776974682074686520636F6C6F7220646566696E6564206279';
wwv_flow_imp.g_varchar2_table(17) := '20746865200A202020202F2F20706C75672D696E207573657220696E20746865202753747269706520436F6C6F7227206174747269627574652E0A202020202F2F0A20202020617065782E6A517565727928272327202B20746869732E74726967676572';
wwv_flow_imp.g_varchar2_table(18) := '696E67456C656D656E742E6964202B2027202E612D4952522D636F6E74656E742074723A6F646420746427292E63737328276261636B67726F756E642D636F6C6F72272C206C537472697065436F6C6F72293B0A7D0A';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(1915128131859068181)
,p_plugin_id=>wwv_flow_imp.id(16722087028866401935)
,p_file_name=>'stripe_report_2_0.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/plugins/dynamic_action/com_oracle_apex_highlight
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(17316912082429276790)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'COM.ORACLE.APEX.HIGHLIGHT'
,p_display_name=>'Highlight'
,p_category=>'EFFECT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','COM.ORACLE.APEX.HIGHLIGHT'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function render_highlight (',
'    p_dynamic_action in apex_plugin.t_dynamic_action,',
'    p_plugin         in apex_plugin.t_plugin )',
'    return apex_plugin.t_dynamic_action_render_result',
'is',
'    l_result   apex_plugin.t_dynamic_action_render_result;',
'begin',
'    -- During plug-in development it''s very helpful to have some debug information',
'    if apex_application.g_debug then',
'        apex_plugin_util.debug_dynamic_action (',
'            p_plugin         => p_plugin,',
'            p_dynamic_action => p_dynamic_action );',
'    end if;',
'',
'    -- ***********************************',
'    -- Here starts the actual plug-in code',
'    -- ***********************************',
'    -- Register the javascript library the plug-in uses.',
'    -- The add_library call will make sure that just one instance of the',
'    -- library is loaded when the plug-in is used multiple times on the page.',
'    -- If the developer stores the javascript file on the web-server, the',
'    -- p_plugin.file_prefix will contain the web-server URL. If the variable',
'    -- contains #PLUGIN_PREFIX#, the file will be read from the database.',
'    apex_javascript.add_library (',
'        p_name      => ''highlight'',',
'        p_directory => p_plugin.file_prefix,',
'        p_version   => null );',
'',
'    -- Register the javascript function which should be called when the plug-in',
'    -- action is executed with the APEX client side dynamic action framework.',
'    -- The javascript function can be a named javascript function, but it can',
'    -- also be an anonymous function if the code is really short.',
'    -- For example: function(pAction){this.affectedElements.hide(this.action.attribute01);}',
'    l_result.javascript_function := ''com_oracle_apex_highlight'';',
'    l_result.attribute_01 := coalesce(p_dynamic_action.attribute_01, p_plugin.attribute_01);',
'    l_result.attribute_02 := coalesce(p_dynamic_action.attribute_02, p_plugin.attribute_02);',
'    ',
'    return l_result;',
'end render_highlight;'))
,p_api_version=>1
,p_render_function=>'render_highlight'
,p_standard_attributes=>'ITEM:REGION:JAVASCRIPT_EXPRESSION:JQUERY_SELECTOR:TRIGGERING_ELEMENT:EVENT_SOURCE:REQUIRED'
,p_substitute_attributes=>true
,p_version_scn=>1089078739
,p_subscribe_plugin_settings=>true
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(17316951801391301274)
,p_plugin_id=>wwv_flow_imp.id(17316912082429276790)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Color'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>10
,p_max_length=>10
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(17316952808664303377)
,p_plugin_id=>wwv_flow_imp.id(17316912082429276790)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Speed'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(17316953278320303981)
,p_plugin_attribute_id=>wwv_flow_imp.id(17316952808664303377)
,p_display_sequence=>10
,p_display_value=>'Slow'
,p_return_value=>'slow'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(17316955680397304605)
,p_plugin_attribute_id=>wwv_flow_imp.id(17316952808664303377)
,p_display_sequence=>20
,p_display_value=>'Normal'
,p_return_value=>'normal'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(17316956082475305255)
,p_plugin_attribute_id=>wwv_flow_imp.id(17316952808664303377)
,p_display_sequence=>30
,p_display_value=>'Fast'
,p_return_value=>'fast'
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2F20412064796E616D696320616374696F6E20706C75672D696E2066756E6374696F6E2063616E2061636365737320697427732063757272656E7420636F6E7465787420776974682074686520227468697322206F626A6563742E0A2F2F2049742063';
wwv_flow_imp.g_varchar2_table(2) := '6F6E7461696E7320666F72206578616D706C652022616374696F6E222077686963682073746F726573207468652064796E616D69632061747472696275746573206174747269627574653031202D20617474726962757465313020616E640A2F2F207468';
wwv_flow_imp.g_varchar2_table(3) := '6520616A61784964656E746966696572207573656420666F722074686520414A41582063616C6C2E20496E73696465207468652066756E6374696F6E20796F752063616E207573650A2F2F2022746869732E6166666563746564456C656D656E74732220';
wwv_flow_imp.g_varchar2_table(4) := '746F206765742061206A5175657279206F626A65637420776869636820636F6E7461696E7320616C6C207468652061666665637465640A2F2F20444F4D20656C656D656E7473206F75722064796E616D696320616374696F6E2073686F756C6420626520';
wwv_flow_imp.g_varchar2_table(5) := '706572666F726D6564206F6E2E0A2F2F0A2F2F20466F722064796E616D696320616374696F6E20706C75672D696E2066756E6374696F6E7320796F752073686F756C642075736520612066756E6374696F6E206E616D652077686963682069730A2F2F20';
wwv_flow_imp.g_varchar2_table(6) := '756E697175652C20736F20697420646F65736E27742067657420696E20636F6E666C6963742077697468206578697374696E672066756E6374696F6E732E20426573742070726163746973650A2F2F20697320746F20757365207468652073616D65206E';
wwv_flow_imp.g_varchar2_table(7) := '616D65206173207573656420666F722074686520706C75672D696E20696E7465726E616C206E616D652E0A0A66756E6374696F6E20636F6D5F6F7261636C655F617065785F686967686C696768742829207B0A20202F2F20497427732062657474657220';
wwv_flow_imp.g_varchar2_table(8) := '746F2068617665206E616D6564207661726961626C657320696E7374656164206F66207573696E670A20202F2F207468652067656E65726963206F6E65732C206D616B65732074686520636F6465206D6F7265207265616461626C650A2020766172206C';
wwv_flow_imp.g_varchar2_table(9) := '436F6C6F72203D2028746869732E616374696F6E2E61747472696275746530313D3D6E756C6C3F2223666664373030223A746869732E616374696F6E2E6174747269627574653031293B0A2020766172206C5370656564203D2028746869732E61637469';
wwv_flow_imp.g_varchar2_table(10) := '6F6E2E61747472696275746530323D3D6E756C6C3F226E6F726D616C223A746869732E616374696F6E2E6174747269627574653032293B0A0A20202F2F204F6E6C7920686967686C6967687420696620776520617265206E6F742063616C6C6564206475';
wwv_flow_imp.g_varchar2_table(11) := '72696E6720696E697469616C697A6174696F6E206F66207468652070616765210A202069662028746869732E62726F777365724576656E7420213D3D20226C6F61642229207B0A202020202F2F2022746869732E6166666563746564456C656D656E7473';
wwv_flow_imp.g_varchar2_table(12) := '2220657175616C732061206A5175657279206F626A65637420776869636820636F6E7461696E7320616C6C0A202020202F2F2074686520616666656374656420444F4D20656C656D656E7473206F757220616374696F6E2073686F756C64206265207065';
wwv_flow_imp.g_varchar2_table(13) := '72666F726D6564206F6E2E0A202020202F2F205765206A757374206861766520746F206C6F6F70206F766572206974206279207573696E6720746865206A517565727920656163682066756E6374696F6E2E0A20202020746869732E6166666563746564';
wwv_flow_imp.g_varchar2_table(14) := '456C656D656E74732E65616368280A20202020202066756E6374696F6E28297B0A20202020202020207661722024496E7374616E6365203D206A51756572792874686973293B202F2F2074686973206973207468652063757272656E7420444F4D206F62';
wwv_flow_imp.g_varchar2_table(15) := '6A6563740A20202020202020202F2F2073746F7265206F726967696E616C206261636B67726F756E6420636F6C6F720A2020202020202020766172206C43757272656E74436F6C6F72203D2024496E7374616E63652E63737328226261636B67726F756E';
wwv_flow_imp.g_varchar2_table(16) := '642D636F6C6F7222293B0A20202020202020202F2F20312920646F2074686520616E696D6174696F6E20746F20746865206E657720636F6C6F720A20202020202020202F2F20322920616E696D617465206261636B20746F20746865206F726967696E61';
wwv_flow_imp.g_varchar2_table(17) := '6C20636F6C6F720A202020202020202024496E7374616E63650A202020202020202020202E616E696D61746528207B206261636B67726F756E64436F6C6F723A206C436F6C6F72207D2C206C5370656564290A202020202020202020202E616E696D6174';
wwv_flow_imp.g_varchar2_table(18) := '6528207B206261636B67726F756E64436F6C6F723A206C43757272656E74436F6C6F72207D2C206C5370656564293B0A2020202020207D293B0A20207D0A7D3B';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(16468428872686336855)
,p_plugin_id=>wwv_flow_imp.id(17316912082429276790)
,p_file_name=>'highlight.js'
,p_mime_type=>'application/x-javascript'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/plugins/item_type/com_oracle_apex_slider
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(17819758247002205537)
,p_plugin_type=>'ITEM TYPE'
,p_name=>'COM.ORACLE.APEX.SLIDER'
,p_display_name=>'Slider'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('ITEM TYPE','COM.ORACLE.APEX.SLIDER'),'')
,p_javascript_file_urls=>'#JQUERYUI_DIRECTORY#ui/widgets/#MIN_DIRECTORY#slider#MIN#.js'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'c_min_value constant number := 0;',
'c_max_value constant number := 1000;',
'',
'function render_slider (',
'    p_item                in apex_plugin.t_page_item,',
'    p_plugin              in apex_plugin.t_plugin,',
'    p_value               in varchar2,',
'    p_is_readonly         in boolean,',
'    p_is_printer_friendly in boolean )',
'    return apex_plugin.t_page_item_render_result',
'is',
'    l_escaped_value varchar2(32767) := apex_escape.html(p_value);',
'',
'    l_name          varchar2(30);',
'    l_result        apex_plugin.t_page_item_render_result;',
'',
'    l_value_suffix  p_item.attribute_06%type := nvl(p_item.attribute_06, '' %''); ',
'begin',
'    --*********************',
'    -- NOTE: This plug-in isn''t a good example because it''s missing the readonly/print code!',
'    --       But it shows you how a widget can provide it''s own events for dynamic actions.',
'    --*********************',
'    if apex_application.g_debug then',
'        apex_plugin_util.debug_page_item (',
'            p_plugin              => p_plugin,',
'            p_page_item           => p_item,',
'            p_value               => p_value,',
'            p_is_readonly         => p_is_readonly,',
'            p_is_printer_friendly => p_is_printer_friendly );',
'    end if;',
'',
'    l_name := apex_plugin.get_input_name_for_page_item (',
'                  p_is_multi_value => false );',
'',
'    -- render the div for the slider and the input field',
'    htp.p(''<div class="apex-slider-container">'');',
'    htp.p(''<div class="apex-slider-control" id="'' || p_item.name || ''_control" '' || p_item.element_attributes || ''></div>'');',
'    htp.p(''<span class="apex-slider-value" id="''  || p_item.name || ''_display">'' || l_escaped_value || l_value_suffix || ''</span>'');',
'    htp.p(''<input type="hidden" id="'' || p_item.name || ''" name="'' || l_name || ''" value="'' || l_escaped_value || ''">'');',
'    htp.p(''</div>'');',
'',
'    -- initialize the slider when the page has been rendered    ',
'    apex_javascript.add_onload_code (',
'        p_code => ''apex.jQuery("#''||p_item.name||''_control").slider({'' ||',
'                      apex_javascript.add_attribute( ''orientation'', p_item.attribute_01 ) ||',
'                      apex_javascript.add_attribute( ''range'', ''min'' ) ||',
'                      apex_javascript.add_attribute( ''min'',  coalesce( to_number(p_item.attribute_02), c_min_value )) ||',
'                      apex_javascript.add_attribute( ''max'',  coalesce( to_number(p_item.attribute_03), c_max_value )) ||',
'                      apex_javascript.add_attribute( ''step'', coalesce( to_number(p_item.attribute_04), 1 )) ||',
'                      apex_javascript.add_attribute( ''animation'', case when p_item.attribute_05 = ''Y'' then ''true'' else ''false'' end ) ||',
'                      apex_javascript.add_attribute( ''value'', coalesce( to_number( coalesce( p_value, p_item.attribute_02 )), c_min_value )) ||',
'                      ''start: function(pEvent, pUi){apex.jQuery("#''||p_item.name||''").trigger("slidestart", pUi);},'' ||',
'                      ''slide: function(pEvent, pUi){'' ||',
'                             ''  $s("'' || p_item.name || ''", pUi.value);'' ||',
'                             ''  $s("'' || p_item.name || ''_display", pUi.value+''||apex_escape.js_literal( l_value_suffix, ''"'' ) || '');'' ||',
'                             ''  apex.jQuery("#''||p_item.name||''").trigger("slide", pUi);''||',
'                             ''},''||',
'                      ''change: function(pEvent, pUi){apex.jQuery("#'' || p_item.name || ''").trigger("slidechange", pUi);},'' ||',
'                      ''stop: function(pEvent, pUi){apex.jQuery("#'' || p_item.name || ''").trigger("slidestop", pUi);}});'' );',
'    ',
'    -- Tell APEX that this field is navigable',
'    l_result.is_navigable := true;',
'',
'    return l_result;',
'end render_slider;',
'',
'function validate_slider (',
'    p_item   in apex_plugin.t_page_item,',
'    p_plugin in apex_plugin.t_plugin,',
'    p_value  in varchar2 )',
'    return apex_plugin.t_page_item_validation_result',
'is',
'    l_result apex_plugin.t_page_item_validation_result;',
'begin',
'    if apex_application.g_debug then',
'        apex_plugin_util.debug_page_item(p_plugin,p_item);',
'    end if;',
'',
'    if p_value is null then return null; end if;',
'    ',
'    if wwv_flow_utilities.is_numeric(p_value) and',
'       not to_number(p_value) between to_number(nvl(p_item.attribute_02, c_min_value)) and to_number(nvl(p_item.attribute_03, c_max_value))',
'    then',
'        l_result.message := apex_escape.html(p_value)||'' is not in the valid range of ''||',
'                            nvl(p_item.attribute_02, c_min_value)||'' - ''||',
'                            nvl(p_item.attribute_03, c_max_value);',
'    end if;',
'    ',
'    return l_result;',
'end validate_slider;'))
,p_api_version=>1
,p_render_function=>'render_slider'
,p_validation_function=>'validate_slider'
,p_standard_attributes=>'VISIBLE:SESSION_STATE:SOURCE:ELEMENT:ENCRYPT'
,p_substitute_attributes=>true
,p_reference_id=>2034000489140328726
,p_subscribe_plugin_settings=>true
,p_help_text=>'<p>Sliders are useful for allowing users to easily review and maintain numerical data represented on a scale.</p>'
,p_version_identifier=>'5.0.1'
,p_about_url=>'http://apex.oracle.com/plugins'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(395323520580242580)
,p_plugin_id=>wwv_flow_imp.id(17819758247002205537)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'attribute_01'
,p_prompt=>'Display Orientation'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'horizontal'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select whether the slider should be displayed horizontally or vertically on the page.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(395323913589242580)
,p_plugin_attribute_id=>wwv_flow_imp.id(395323520580242580)
,p_display_sequence=>10
,p_display_value=>'Horizontal'
,p_return_value=>'horizontal'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(395324423532242580)
,p_plugin_attribute_id=>wwv_flow_imp.id(395323520580242580)
,p_display_sequence=>20
,p_display_value=>'Vertical'
,p_return_value=>'vertical'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(395324961760242581)
,p_plugin_id=>wwv_flow_imp.id(17819758247002205537)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'attribute_02'
,p_prompt=>'Minimum Value'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_default_value=>'0'
,p_display_length=>6
,p_max_length=>6
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Enter the minimum value for the slider.</p>',
'<p>Note: If the value if less than the minimum then it will be displayed as the minimum value.</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(395325347689242581)
,p_plugin_id=>wwv_flow_imp.id(17819758247002205537)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'attribute_03'
,p_prompt=>'Maximum Value'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_default_value=>'1000'
,p_display_length=>6
,p_max_length=>6
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Enter the maximum value for the slider.</p>',
'<p>Note: If the value if greater than the maximum then it will be displayed as the maximum value.</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(395325770266242581)
,p_plugin_id=>wwv_flow_imp.id(17819758247002205537)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'attribute_04'
,p_prompt=>'Step'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_default_value=>'1'
,p_display_length=>6
,p_max_length=>6
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Enter how much the value will increment or decrement based on the slider being moved left or right.</p>',
'<p>If there is a large difference between the minimum and maximum values, for example 0 to 10000, then you may want a larger step value, such as 100.</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(395326174280242581)
,p_plugin_id=>wwv_flow_imp.id(17819758247002205537)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>60
,p_static_id=>'attribute_05'
,p_prompt=>'Animate'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>'Select whether animations should be used when the slider is moved.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(395326529572242581)
,p_plugin_id=>wwv_flow_imp.id(17819758247002205537)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>50
,p_static_id=>'attribute_06'
,p_prompt=>'Value Suffix'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_display_length=>25
,p_max_length=>25
,p_is_translatable=>true
,p_help_text=>'Enter the text that is appended to the value. he default value is " %"'
);
wwv_flow_imp_shared.create_plugin_event(
 p_id=>wwv_flow_imp.id(395328476264242585)
,p_plugin_id=>wwv_flow_imp.id(17819758247002205537)
,p_name=>'slide'
,p_display_name=>'Slide'
);
wwv_flow_imp_shared.create_plugin_event(
 p_id=>wwv_flow_imp.id(395328862915242585)
,p_plugin_id=>wwv_flow_imp.id(17819758247002205537)
,p_name=>'slidechange'
,p_display_name=>'Change'
);
wwv_flow_imp_shared.create_plugin_event(
 p_id=>wwv_flow_imp.id(395329287168242585)
,p_plugin_id=>wwv_flow_imp.id(17819758247002205537)
,p_name=>'slidestart'
,p_display_name=>'Start'
);
wwv_flow_imp_shared.create_plugin_event(
 p_id=>wwv_flow_imp.id(395329667189242586)
,p_plugin_id=>wwv_flow_imp.id(17819758247002205537)
,p_name=>'slidestop'
,p_display_name=>'Stop'
);
end;
/
prompt --application/shared_components/plugins/dynamic_action/com_oracle_apex_timer
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(19411231775603117609)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'COM.ORACLE.APEX.TIMER'
,p_display_name=>'Timer'
,p_category=>'INIT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','COM.ORACLE.APEX.TIMER'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function render_timer (',
'    p_dynamic_action  in apex_plugin.t_dynamic_action,',
'    p_plugin          in apex_plugin.t_plugin )',
'    return apex_plugin.t_dynamic_action_render_result',
'is',
'    l_action     varchar2(10) := nvl(p_dynamic_action.attribute_01, ''add'');',
'    l_timer_name varchar2(20) := substr(nvl(case l_action',
'                                              when ''add''    then p_dynamic_action.attribute_02',
'                                              when ''remove'' then p_dynamic_action.attribute_03',
'                                            end, p_dynamic_action.id), 1, 20);',
'    l_expire_in  number       := nvl(p_dynamic_action.attribute_04, 1000);',
'    l_occurrence varchar2(10) := nvl(p_dynamic_action.attribute_05, ''infinite'');',
'',
'    l_result apex_plugin.t_dynamic_action_render_result;',
'begin',
'    apex_javascript.add_library (',
'        p_name      => ''com_oracle_apex_timer.min'',',
'        p_directory => p_plugin.file_prefix,',
'        p_version   => null );',
'',
'    l_result.javascript_function := ''com_oracle_apex_timer.init'';',
'    l_result.attribute_01        := l_action;',
'    l_result.attribute_02        := l_timer_name;',
'    l_result.attribute_03        := l_expire_in;',
'    l_result.attribute_04        := l_occurrence;',
'    return l_result;',
'end render_timer;'))
,p_api_version=>1
,p_render_function=>'render_timer'
,p_standard_attributes=>'ITEM:REGION:JAVASCRIPT_EXPRESSION:JQUERY_SELECTOR:TRIGGERING_ELEMENT:EVENT_SOURCE:REQUIRED'
,p_substitute_attributes=>true
,p_version_scn=>1089078739
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'	&nbsp;</p>',
'<div id="cke_pastebin">',
'	This plug-in is a dynamic action which allows to periodically fire other dynamic actions in the browser.&nbsp;For example to refresh a region. But you can perform any action you want, because the plug-in just provides&nbsp;the infrastructure so that'
||' you can hook up your own actions which you want to execute periodically.</div>',
'<div>',
'	&nbsp;</div>',
'<ol>',
'	<li>',
'		Create a dynamic action with the &quot;Timer&quot; plug-in which sets up the periodic timer</li>',
'	<li>',
'		Create a dynamic action for the event &quot;Timer Expired [Plug-in]&quot; where you execute your periodic actions.</li>',
'</ol>',
''))
,p_version_identifier=>'1.0'
,p_about_url=>'http://www.oracleapex.info/'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(19411232278850127986)
,p_plugin_id=>wwv_flow_imp.id(19411231775603117609)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Action'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'add'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Specify if you want to <strong>add</strong> or <strong>remove</strong> a timer. If you add a timer with the same name again, the existing one will be removed and created again. If you remove an existing timer, you have to specify a name when you add '
||'the timer so that you are able to identify it when you remove it.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(19411232886816130265)
,p_plugin_attribute_id=>wwv_flow_imp.id(19411232278850127986)
,p_display_sequence=>10
,p_display_value=>'Add Timer'
,p_return_value=>'add'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(19411233273441135939)
,p_plugin_attribute_id=>wwv_flow_imp.id(19411232278850127986)
,p_display_sequence=>20
,p_display_value=>'Remove Timer'
,p_return_value=>'remove'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(19411233586694196524)
,p_plugin_id=>wwv_flow_imp.id(19411231775603117609)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Timer Name'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>20
,p_max_length=>20
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(19411232278850127986)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'add'
,p_help_text=>'If you want to remove a timer with the "Remove Timer" action you have to specify a name for the timer when you create it. If you just want to create a timer you don''t have to specify a timer name.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(19411234074704202514)
,p_plugin_id=>wwv_flow_imp.id(19411231775603117609)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Timer Name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_display_length=>20
,p_max_length=>20
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(19411232278850127986)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'remove'
,p_help_text=>'Name of the timer you want to remove. Use the same name you used when you created the timer.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(19411234570810220251)
,p_plugin_id=>wwv_flow_imp.id(19411231775603117609)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Expire in x Milliseconds'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_display_length=>10
,p_max_length=>10
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(19411232278850127986)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'add'
,p_help_text=>'Specify the number of milliseconds after which the timer should expire. There are 1000 milliseconds in one second.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(19411235059513226460)
,p_plugin_id=>wwv_flow_imp.id(19411231775603117609)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Occurrence'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'infinite'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(19411232278850127986)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'add'
,p_lov_type=>'STATIC'
,p_help_text=>'Specify how often the timer should fire. The timer can be fired just <strong>once</strong> or <strong>infinite</strong> until you remove it with the "Remove Timer" action.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(19411235667825228887)
,p_plugin_attribute_id=>wwv_flow_imp.id(19411235059513226460)
,p_display_sequence=>10
,p_display_value=>'Once'
,p_return_value=>'once'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(19411236073019230384)
,p_plugin_attribute_id=>wwv_flow_imp.id(19411235059513226460)
,p_display_sequence=>20
,p_display_value=>'Infinite'
,p_return_value=>'infinite'
);
wwv_flow_imp_shared.create_plugin_event(
 p_id=>wwv_flow_imp.id(19411232060150122630)
,p_plugin_id=>wwv_flow_imp.id(19411231775603117609)
,p_name=>'timer_expired'
,p_display_name=>'Timer Expired'
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '636F6D5F6F7261636C655F617065785F74696D65723D7B6372656174656454696D6572733A7B7D2C696E69743A66756E6374696F6E28297B76617220613D746869732E616374696F6E2E61747472696275746530312C663D746869732E616374696F6E2E';
wwv_flow_imp.g_varchar2_table(2) := '61747472696275746530322C653D7061727365496E7428746869732E616374696F6E2E61747472696275746530332C3130292C633D746869732E616374696F6E2E61747472696275746530342C643D746869732E6166666563746564456C656D656E7473';
wwv_flow_imp.g_varchar2_table(3) := '3B66756E6374696F6E206228297B696628633D3D3D22696E66696E69746522297B636F6D5F6F7261636C655F617065785F74696D65722E6372656174656454696D6572735B665D3D73657454696D656F757428622C65297D656C73657B64656C65746520';
wwv_flow_imp.g_varchar2_table(4) := '636F6D5F6F7261636C655F617065785F74696D65722E6372656174656454696D6572735B665D7D642E74726967676572282274696D65725F657870697265642E434F4D5F4F5241434C455F415045585F54494D4552222C66297D696628613D3D3D226164';
wwv_flow_imp.g_varchar2_table(5) := '6422297B696628636F6D5F6F7261636C655F617065785F74696D65722E6372656174656454696D6572735B665D297B636C65617254696D656F757428636F6D5F6F7261636C655F617065785F74696D65722E6372656174656454696D6572735B665D297D';
wwv_flow_imp.g_varchar2_table(6) := '636F6D5F6F7261636C655F617065785F74696D65722E6372656174656454696D6572735B665D3D73657454696D656F757428622C65297D656C73657B696628613D3D3D2272656D6F766522297B696628636F6D5F6F7261636C655F617065785F74696D65';
wwv_flow_imp.g_varchar2_table(7) := '722E6372656174656454696D6572735B665D297B636C65617254696D656F757428636F6D5F6F7261636C655F617065785F74696D65722E6372656174656454696D6572735B665D293B64656C65746520636F6D5F6F7261636C655F617065785F74696D65';
wwv_flow_imp.g_varchar2_table(8) := '722E6372656174656454696D6572735B665D7D7D7D7D7D3B';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(19411245463898449405)
,p_plugin_id=>wwv_flow_imp.id(19411231775603117609)
,p_file_name=>'com_oracle_apex_timer.min.js'
,p_mime_type=>'text/javascript'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'&APP_NAME.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'div.featuredBlock{',
'	-webkit-border-radius:3px;',
'	-moz-border-radius:3px;',
'	border-radius:3px;',
'	-webkit-box-shadow:0 1px 2px rgba(0,0,0,0.05);',
'	-moz-box-shadow:0 1px 2px rgba(0,0,0,0.05);',
'	box-shadow:0 1px 2px rgba(0,0,0,0.05);',
'	border:1px solid #E1E6EB;',
'	margin-bottom:18px',
'}',
'div.featuredBlock div.featuredIcon{',
'	background-image:url(''data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4gPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGRlZnM+PGxpbmVhckdyYWRpZW50IGlkPSJncmFkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPb'
||'lVzZSIgeDE9IjUwJSIgeTE9IjAlIiB4Mj0iNTAlIiB5Mj0iMTAwJSI+PHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iI2ZmZmZmZiIvPjxzdG9wIG9mZnNldD0iNDAlIiBzdG9wLWNvbG9yPSIjZmZmZmZmIi8+PHN0b3Agb2Zmc2V0PSI2MCUiIHN0b3AtY29sb3I9IiNmNGY0ZjgiLz48c3RvcCBvZmZzZXQ9IjEwMCUiIHN0b3A'
||'tY29sb3I9IiNmZmZmZmYiLz48L2xpbmVhckdyYWRpZW50PjwvZGVmcz48cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMTAwJSIgaGVpZ2h0PSIxMDAlIiBmaWxsPSJ1cmwoI2dyYWQpIiAvPjwvc3ZnPiA='');',
'	background-size:100%;',
'	background-image:-webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #ffffff), color-stop(40%, #ffffff), color-stop(60%, #f4f4f8), color-stop(100%, #ffffff));',
'	background-image:-webkit-linear-gradient(top, #ffffff 0%,#ffffff 40%,#f4f4f8 60%,#ffffff 100%);',
'	background-image:-moz-linear-gradient(top, #ffffff 0%,#ffffff 40%,#f4f4f8 60%,#ffffff 100%);',
'	background-image:linear-gradient(top, #ffffff 0%,#ffffff 40%,#f4f4f8 60%,#ffffff 100%);',
'	-webkit-border-radius:3px 3px 0 0;',
'	-moz-border-radius:3px 3px 0 0;',
'	border-radius:3px 3px 0 0;',
'	padding:8px 0;',
'	min-height: 90px;',
'	text-align:center;',
'}',
'div.featuredBlock div.featuredIcon img{',
'	display:block;',
'	margin:0 auto 0 auto;',
'	-webkit-box-reflect:below -20px -webkit-gradient(linear, left top, left bottom, from(transparent), color-stop(65%, transparent), to(rgba(255,255,255,0.2)));',
'}',
'div.featuredBlock div.featuredIcon h1{',
'	font-size:12px;',
'	line-height:12px;',
'	color:#404040;',
'	margin:0 8px;',
'	padding:0;',
'	text-align:center;',
'}',
'a.blockLink,a.blockLink:hover{',
'	text-decoration:none',
'}',
'a.blockLink:hover div.featuredBlock{',
'	border:1px solid #b1bbcb',
'}',
'a.blockLink:hover div.featuredBlock div.featuredIcon{',
'	background: none #e5effb;',
'	-webkit-box-shadow: 0 0 10px rgba(50,117,199,0.25);',
'	-moz-box-shadow: 0 0 10px rgba(50,117,199,0.25);',
'	box-shadow: 0 0 10px rgba(50,117,199,0.25);',
'}',
'.regionDivider {',
'	border-top: 2px solid #F0F0F0 !important;',
'	padding-top: 8px;;',
'}'))
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1667429287322016748)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>8
,p_location=>null
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.SAMPLEAPPFOOTER'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1854062885493816705)
,p_plug_name=>'Dynamic Action Demonstrations'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-MediaList--cols t-MediaList--2cols'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_location=>null
,p_list_id=>wwv_flow_imp.id(1915342362128208296)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2129468227155432469)
,p_plug_name=>'&APP_NAME.'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'<p>Add interactivity to your applications with dynamic actions</p>'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2653360743887766993)
,p_plug_name=>'About'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h1'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This application demonstrates many of the native dynamic actions that ship with Oracle APEX and also a number of plug-in dynamic actions. Each page containing the dynamic action will have an ''Overview'' region at the top, explaining the purpose of '
||'the dynamic action and a breakdown of which are used and whether they are native or plug-in.</p>',
'<p>Debugging dynamic actions in APEX is slightly different than other debugging, because much of the processing done with the dynamic actions framework is done on the client, not on the server. Debug information is output to the browser''s JavaScript '
||'console when runnning apps in ''Debug'' mode, if your browser supports it. The debug information will tell you when a dynamic action fires, the name of the dynamic action, and which action has fired. To see how dynamic actions are used in this applicat'
||'ion, use the Debug menu in the Developer Toolbar to enable App Level debug and interact with the example pages.</p>',
'<p>Click on any of the examples to get started.</p>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8199705994422627949)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8199705487948627945)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_display_condition_type=>'NEVER'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Disable/Enable'
,p_alias=>'DISABLE-ENABLE'
,p_step_title=>'Disable/Enable'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1326408650792533078)
,p_plug_name=>'SQL Source'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>40
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'employees_report')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2653562538201819862)
,p_plug_name=>'Employees'
,p_region_name=>'employees_report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT e.ROWID',
',      e.EMPNO',
',      e.ENAME',
',      e.JOB',
',      m.ename MGR',
',      e.HIREDATE',
',      e.SAL',
',      e.COMM',
',      d.dname DEPTNO',
'FROM EBA_DEMO_DA_EMP e',
',    EBA_DEMO_DA_EMP m',
',    EBA_DEMO_DA_DEPT d',
'WHERE e.mgr = m.empno (+)',
'AND   e.deptno = d.deptno (+)'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2653562747016819865)
,p_name=>'Employees'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_ROWID:#ROWID#'
,p_detail_link_text=>'<center><img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit Employee"></center>'
,p_owner=>'DPEAKE'
,p_internal_uid=>2004965610301176629
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2653562857884819868)
,p_db_column_name=>'ROWID'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'ROWID'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2653562940147819868)
,p_db_column_name=>'EMPNO'
,p_display_order=>1
,p_column_identifier=>'B'
,p_column_label=>'Employee #'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2653563044948819868)
,p_db_column_name=>'ENAME'
,p_display_order=>2
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2653563144703819869)
,p_db_column_name=>'JOB'
,p_display_order=>3
,p_column_identifier=>'D'
,p_column_label=>'Job'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct job d, job r',
'from eba_demo_da_emp',
'order by 1'))
,p_rpt_show_filter_lov=>'S'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2653563367000819869)
,p_db_column_name=>'HIREDATE'
,p_display_order=>5
,p_column_identifier=>'F'
,p_column_label=>'Hire date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2653563450330819869)
,p_db_column_name=>'SAL'
,p_display_order=>6
,p_column_identifier=>'G'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2653563550827819871)
,p_db_column_name=>'COMM'
,p_display_order=>7
,p_column_identifier=>'H'
,p_column_label=>'Commission'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2656538563918036382)
,p_db_column_name=>'MGR'
,p_display_order=>8
,p_column_identifier=>'I'
,p_column_label=>'Manager'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2656538654816036385)
,p_db_column_name=>'DEPTNO'
,p_display_order=>9
,p_column_identifier=>'J'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2653878053480987446)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'20052810'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'EMPNO:ENAME:JOB:MGR:HIREDATE:SAL:COMM:DEPTNO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2653563954305819871)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8199705487948627945)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2655390359865817519)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>3
,p_location=>null
,p_plug_source=>'<p>Please click on the ''Edit'' link for any employee record to see an example of a ''Disable / Enable'' action.</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2132660647689484976)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2653562538201819862)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,RIR,&APP_PAGE_ID.::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Edit'
,p_alias=>'EDIT'
,p_step_title=>'Edit'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2653557039066819842)
,p_plug_name=>'Maintain Employee'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2653564156712819872)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8199705487948627945)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2654004463225018606)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page demonstrates how dynamic actions can be used to control multiple items and also that disabling items works for multiple item types.</p>',
'<p>To achieve this, the page contains 1 dynamic action called ''JOB EQUALS SALESMAN''. This fires whenever a different ''Job'' is selected from the ''Job'' select list and checks if the value is equal to ''SALESMAN''. If it is equal to ''SALESMAN'' the ''Commis'
||'sion'' and ''Hiredate'' page items are enabled, otherwise they are disabled.</p>',
'<p>It uses 2 native actions (''Enable'' and ''Disable'').</p>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2653557659400819842)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2653564156712819872)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2653557353854819842)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2653564156712819872)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P3_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2653558549078819845)
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2653558748004819847)
,p_name=>'P3_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2653557039066819842)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2653558953851819853)
,p_name=>'P3_EMPNO'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2653557039066819842)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee Number'
,p_source=>'EMPNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>4
,p_cMaxlength=>4
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2653559145307819854)
,p_name=>'P3_ENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2653557039066819842)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'ENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2653559346238819854)
,p_name=>'P3_JOB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2653557039066819842)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Job'
,p_source=>'JOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct job d, job r',
'from eba_demo_da_emp',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2653559541226819854)
,p_name=>'P3_MGR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2653557039066819842)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Manager'
,p_source=>'MGR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ename d, empno r',
'from eba_demo_da_emp',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cSize=>30
,p_cMaxlength=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'DIALOG',
  'initial_fetch', 'FIRST_ROWSET')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2653559761528819854)
,p_name=>'P3_HIREDATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2653557039066819842)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Hire date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'HIREDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>11
,p_cMaxlength=>11
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2653559958368819855)
,p_name=>'P3_SAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2653557039066819842)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Salary'
,p_source=>'SAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>7
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2653560152462819855)
,p_name=>'P3_COMM'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2653557039066819842)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Commission'
,p_source=>'COMM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>7
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2653560356430819855)
,p_name=>'P3_DEPTNO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2653557039066819842)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Department'
,p_source=>'DEPTNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dname d, deptno r',
'from eba_demo_da_dept',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2653923460537998981)
,p_name=>'Commission for Salesman Only'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_JOB'
,p_condition_element=>'P3_JOB'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'SALESMAN'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2653923756137998983)
,p_event_id=>wwv_flow_imp.id(2653923460537998981)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_COMM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2653923957078998983)
,p_event_id=>wwv_flow_imp.id(2653923460537998981)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_COMM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2654037139245030639)
,p_event_id=>wwv_flow_imp.id(2653923460537998981)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_HIREDATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2654045146171032668)
,p_event_id=>wwv_flow_imp.id(2653923460537998981)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_HIREDATE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2653561539488819857)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_DEMO_DA_EMP'
,p_attribute_02=>'EBA_DEMO_DA_EMP'
,p_attribute_03=>'P3_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_internal_uid=>2647405134660838732
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2653561767201819858)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_DEMO_DA_EMP'
,p_attribute_02=>'EBA_DEMO_DA_EMP'
,p_attribute_03=>'P3_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>2647405362373838733
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2653561940171819859)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2647405535343838734
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Hide/Show'
,p_alias=>'HIDE-SHOW'
,p_step_title=>'Hide/Show'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2654117259606049471)
,p_plug_name=>'Employees'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT e.ROWID',
',      e.EMPNO',
',      e.ENAME',
',      e.JOB',
',      m.ename MGR',
',      e.HIREDATE',
',      e.SAL',
',      e.COMM',
',      d.dname DEPTNO',
'FROM EBA_DEMO_DA_EMP e',
',    EBA_DEMO_DA_EMP m',
',    EBA_DEMO_DA_DEPT d',
'WHERE e.mgr = m.empno (+)',
'AND   e.deptno = d.deptno (+)'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2654117464618049471)
,p_name=>'Employees'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::P5_ROWID:#ROWID#'
,p_detail_link_text=>'<center><img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit Employee"></center>'
,p_owner=>'DPEAKE'
,p_internal_uid=>2005520327902406235
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2654117542145049473)
,p_db_column_name=>'ROWID'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'ROWID'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2654117638022049474)
,p_db_column_name=>'EMPNO'
,p_display_order=>1
,p_column_identifier=>'B'
,p_column_label=>'Employee #'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2654117740873049474)
,p_db_column_name=>'ENAME'
,p_display_order=>2
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2654117845909049474)
,p_db_column_name=>'JOB'
,p_display_order=>3
,p_column_identifier=>'D'
,p_column_label=>'Job'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2654118049187049475)
,p_db_column_name=>'HIREDATE'
,p_display_order=>5
,p_column_identifier=>'F'
,p_column_label=>'Hire date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2654118158425049475)
,p_db_column_name=>'SAL'
,p_display_order=>6
,p_column_identifier=>'G'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2654118242929049475)
,p_db_column_name=>'COMM'
,p_display_order=>7
,p_column_identifier=>'H'
,p_column_label=>'Commission'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2656641065435046200)
,p_db_column_name=>'MGR'
,p_display_order=>8
,p_column_identifier=>'I'
,p_column_label=>'Manager'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2656641166234046200)
,p_db_column_name=>'DEPTNO'
,p_display_order=>9
,p_column_identifier=>'J'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2654149663749056642)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'20055526'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'EMPNO:ENAME:JOB:MGR:HIREDATE:SAL:COMM:DEPTNO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2654118667634049476)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8199705487948627945)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2655422859650826901)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>'<p>Please click on the ''Edit'' link for any employee record to see an example of a ''Hide / Show'' action.</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2177281298905171586)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2654117259606049471)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,RIR,&APP_PAGE_ID.::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Edit'
,p_alias=>'EDIT2'
,p_step_title=>'Edit'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2654111465019049452)
,p_plug_name=>'Maintain Employee'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2654118847110049476)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8199705487948627945)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2655438167961829336)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows how dynamic actions can control hiding and showing page elements, including controlling the item''s label if it exists.</p>',
'<p>To achieve this, the page contains 1 dynamic action called ''JOB EQUALS SALESMAN''. This fires when the ''Job'' page item changes and checks if the value is equal to ''SALESMAN''. If it is equal to ''SALESMAN'', both the ''Hire date'' and ''Commission'' page '
||'items and their associated labels are shown, otherwise they are hidden.</p>',
'<p>It uses 2 native actions (''Show'' and ''Hide'').</p>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2654112048761049452)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2654118847110049476)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2654111756903049452)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2654118847110049476)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P5_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2654112646939049454)
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2654112843737049455)
,p_name=>'P5_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2654111465019049452)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2654113048711049461)
,p_name=>'P5_EMPNO'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2654111465019049452)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee Number'
,p_source=>'EMPNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>4
,p_cMaxlength=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2654113246772049461)
,p_name=>'P5_ENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2654111465019049452)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'ENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2654113459707049462)
,p_name=>'P5_JOB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2654111465019049452)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Job'
,p_source=>'JOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'JOB'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct job d, job r',
'from eba_demo_da_emp',
'order by 1'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2654113843165049464)
,p_name=>'P5_MGR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2654111465019049452)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Manager'
,p_source=>'MGR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'MANAGER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ename d, empno r',
'from eba_demo_da_emp',
'order by 1'))
,p_cSize=>30
,p_cMaxlength=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'DIALOG',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2654114249050049464)
,p_name=>'P5_HIREDATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2654111465019049452)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Hire date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'HIREDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2654114455039049464)
,p_name=>'P5_SAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2654111465019049452)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Salary'
,p_source=>'SAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>7
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2654114654296049465)
,p_name=>'P5_COMM'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2654111465019049452)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Commission'
,p_source=>'COMM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>7
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2654114845208049465)
,p_name=>'P5_DEPTNO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2654111465019049452)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Department'
,p_source=>'DEPTNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEPARTMENT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dname d, deptno r',
'from eba_demo_da_dept',
'order by 1'))
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2655572162813856234)
,p_name=>'JOB EQUALS SALESMAN'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_JOB'
,p_condition_element=>'P5_JOB'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'SALESMAN'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2655572450004856246)
,p_event_id=>wwv_flow_imp.id(2655572162813856234)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_HIREDATE,P5_COMM'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2655572657474856249)
,p_event_id=>wwv_flow_imp.id(2655572162813856234)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_HIREDATE,P5_COMM'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2654116241103049467)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_DEMO_DA_EMP'
,p_attribute_02=>'EBA_DEMO_DA_EMP'
,p_attribute_03=>'P5_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_internal_uid=>2647959836275068342
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2654116468269049467)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_DEMO_DA_EMP'
,p_attribute_02=>'EBA_DEMO_DA_EMP'
,p_attribute_03=>'P5_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>2647960063441068342
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2654116642300049468)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2647960237472068343
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Add/Remove Class (Error)'
,p_alias=>'ADD-REMOVE-CLASS-ERROR'
,p_step_title=>'Add/Remove Class (Error)'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1326408945401535648)
,p_plug_name=>'SQL Source'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'employees_report')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2656802156702119542)
,p_plug_name=>'Employees'
,p_region_name=>'employees_report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT e.ROWID',
',      e.EMPNO',
',      e.ENAME',
',      e.JOB',
',      m.ename MGR',
',      e.HIREDATE',
',      e.SAL',
',      e.COMM',
',      d.dname DEPTNO',
'FROM EBA_DEMO_DA_EMP e',
',    EBA_DEMO_DA_EMP m',
',    EBA_DEMO_DA_DEPT d',
'WHERE e.mgr = m.empno (+)',
'AND   e.deptno = d.deptno (+)'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2656802353881119543)
,p_name=>'Employees'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::P7_ROWID:#ROWID#'
,p_detail_link_text=>'<center><img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit Employee"></center>'
,p_owner=>'DPEAKE'
,p_internal_uid=>2008205217165476307
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2656802463015119570)
,p_db_column_name=>'ROWID'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'ROWID'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2656802559573119571)
,p_db_column_name=>'EMPNO'
,p_display_order=>1
,p_column_identifier=>'B'
,p_column_label=>'Employee #'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2656802665577119571)
,p_db_column_name=>'ENAME'
,p_display_order=>2
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2656802740839119572)
,p_db_column_name=>'JOB'
,p_display_order=>3
,p_column_identifier=>'D'
,p_column_label=>'Job'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2656802943417119572)
,p_db_column_name=>'HIREDATE'
,p_display_order=>5
,p_column_identifier=>'F'
,p_column_label=>'Hire date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2656803057857119573)
,p_db_column_name=>'SAL'
,p_display_order=>6
,p_column_identifier=>'G'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2656803168314119573)
,p_db_column_name=>'COMM'
,p_display_order=>7
,p_column_identifier=>'H'
,p_column_label=>'Commission'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2656945863151130733)
,p_db_column_name=>'MGR'
,p_display_order=>8
,p_column_identifier=>'I'
,p_column_label=>'Manager'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2656945947841130733)
,p_db_column_name=>'DEPTNO'
,p_display_order=>9
,p_column_identifier=>'J'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2656972336962132632)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'20083753'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'EMPNO:ENAME:JOB:MGR:HIREDATE:SAL:COMM:DEPTNO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2656803546211119576)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8199705487948627945)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2656861868907122959)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>'<p>Please click on the ''Edit'' link for any employee record to see an example of ''Add Class'' and ''Remove Class'' actions.</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2177281644016174091)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2656802156702119542)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,RIR,&APP_PAGE_ID.::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Edit'
,p_alias=>'EDIT3'
,p_step_title=>'Edit'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.validation_error {',
'  border-color: #ff0000 !important;',
'}',
''))
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2656796355485119467)
,p_plug_name=>'Maintain Employee'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2656803763861119577)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8199705487948627945)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2656892340987124345)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page contains one dynamic action called ''NAME IS NULL''. This fires whenever the user leaves the ''Name'' page item and checks if it is empty. If the ''Name'' page item is empty a red border is applied to indicate there is a problem. The border is'
||' subsequently removed if and when the user leaves the ''Name'' page item having entered some text.</p>',
'<p>It uses two native actions (''Add Class'' and ''Remove Class'').</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2656796955367119477)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2656803763861119577)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2656796656201119469)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2656803763861119577)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2656797550309119487)
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2656797738222119492)
,p_name=>'P7_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2656796355485119467)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2656797941703119503)
,p_name=>'P7_EMPNO'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2656796355485119467)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee Number'
,p_source=>'EMPNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>4
,p_cMaxlength=>4
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2656798160949119509)
,p_name=>'P7_ENAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2656796355485119467)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'ENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2656798369434119515)
,p_name=>'P7_JOB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2656796355485119467)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Job'
,p_source=>'JOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P7_EBA_DEMO_DA_EMP_JOB'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct job d, job r',
'from eba_demo_da_emp',
'order by 1'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2656798751822119518)
,p_name=>'P7_MGR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2656796355485119467)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Manager'
,p_source=>'MGR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'P7_EBA_DEMO_DA_EMP_MGR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ename d, empno r',
'from eba_demo_da_emp',
'order by 1'))
,p_cSize=>30
,p_cMaxlength=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'DIALOG',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2656799143180119518)
,p_name=>'P7_HIREDATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2656796355485119467)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Hire date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'HIREDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2656799366411119519)
,p_name=>'P7_SAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2656796355485119467)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Salary'
,p_source=>'SAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>7
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2656799540310119519)
,p_name=>'P7_COMM'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2656796355485119467)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Commission'
,p_source=>'COMM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>7
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2656799754867119519)
,p_name=>'P7_DEPTNO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2656796355485119467)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Department'
,p_source=>'DEPTNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P7_EBA_DEMO_DA_EMP_DEPTNO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dname d, deptno r',
'from eba_demo_da_dept',
'order by 1'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2658048158676356531)
,p_name=>'NAME IS NULL'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_ENAME'
,p_condition_element=>'P7_ENAME'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2658048452400356532)
,p_event_id=>wwv_flow_imp.id(2658048158676356531)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_ENAME'
,p_attribute_01=>'validation_error'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2658048652820356533)
,p_event_id=>wwv_flow_imp.id(2658048158676356531)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_ENAME'
,p_attribute_01=>'validation_error'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2656801154890119526)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_DEMO_DA_EMP'
,p_attribute_02=>'EBA_DEMO_DA_EMP'
,p_attribute_03=>'P7_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_internal_uid=>2650644750062138401
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2656801343411119528)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_DEMO_DA_EMP'
,p_attribute_02=>'EBA_DEMO_DA_EMP'
,p_attribute_03=>'P7_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>2650644938583138403
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2656801537303119530)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2650645132475138405
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Add/Remove Class (Focus)'
,p_alias=>'ADD-REMOVE-CLASS-FOCUS'
,p_step_title=>'Add/Remove Class (Focus)'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2658354256260433900)
,p_plug_name=>'Employees'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT e.ROWID',
',      e.EMPNO',
',      e.ENAME',
',      e.JOB',
',      m.ename MGR',
',      e.HIREDATE',
',      e.SAL',
',      e.COMM',
',      d.dname DEPTNO',
'FROM EBA_DEMO_DA_EMP e',
',    EBA_DEMO_DA_EMP m',
',    EBA_DEMO_DA_DEPT d',
'WHERE e.mgr = m.empno (+)',
'AND   e.deptno = d.deptno (+)'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2658354463069433902)
,p_name=>'Employees'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::P9_ROWID:#ROWID#'
,p_detail_link_text=>'<center><img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit Employee"></center>'
,p_owner=>'DPEAKE'
,p_internal_uid=>2009757326353790666
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658354547139433906)
,p_db_column_name=>'ROWID'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'ROWID'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658354651132433914)
,p_db_column_name=>'EMPNO'
,p_display_order=>1
,p_column_identifier=>'B'
,p_column_label=>'Employee #'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658354766658433915)
,p_db_column_name=>'ENAME'
,p_display_order=>2
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658354865183433915)
,p_db_column_name=>'JOB'
,p_display_order=>3
,p_column_identifier=>'D'
,p_column_label=>'Job'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658355066377433915)
,p_db_column_name=>'HIREDATE'
,p_display_order=>5
,p_column_identifier=>'F'
,p_column_label=>'Hire date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658355146628433916)
,p_db_column_name=>'SAL'
,p_display_order=>6
,p_column_identifier=>'G'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658355243207433916)
,p_db_column_name=>'COMM'
,p_display_order=>7
,p_column_identifier=>'H'
,p_column_label=>'Commission'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658383338731435916)
,p_db_column_name=>'MGR'
,p_display_order=>8
,p_column_identifier=>'I'
,p_column_label=>'Manager'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658383445006435918)
,p_db_column_name=>'DEPTNO'
,p_display_order=>9
,p_column_identifier=>'J'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2658501167474444239)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'20099041'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'EMPNO:ENAME:JOB:MGR:HIREDATE:SAL:COMM:DEPTNO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2658355650920433918)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8199705487948627945)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2658442655354440703)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Please click on the ''Edit'' link for any employee record to see an example of ''Add Class'' and ''Remove Class'' actions.</p>',
''))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2177282837297176934)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2658354256260433900)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,RIR,&APP_PAGE_ID.::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Edit'
,p_alias=>'EDIT4'
,p_step_title=>'Edit'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.showfocus {',
'  background-color: gold !important;',
'}',
'.t-Form-inputContainer input.showfocus.popup_lov, .t-Form-inputContainer input[type=text].showfocus, .t-Form-inputContainer select.showfocus,  .t-Form-inputContainer select.showfocus.selectlist {',
'  background-color: gold !important;',
'}'))
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2658348452710433876)
,p_plug_name=>'Maintain Employee'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2658355837628433918)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8199705487948627945)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2658476561587442579)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page contains two dynamic actions called ''ITEM GETS FOCUS'' and ''ITEM LOSES FOCUS''. These fire whenever the user enters and leaves any page item in the ''Maintain Employee'' region, respectively. When an item gets focus, the dynamic action adds '
||'additional highlighting to show the current focus more clearly, which is subsequently removed when the user leaves the item. Notice that the selection type is specified as ''Event Source'' so that operates on the item firing the dynamic action.</p>',
'<p>It uses two native actions (''Add Class'' and ''Remove Class'').</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2658349048087433878)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2658355837628433918)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2658348751377433877)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2658355837628433918)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P9_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2658349664791433879)
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2658349861328433880)
,p_name=>'P9_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2658348452710433876)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2658350058383433887)
,p_name=>'P9_EMPNO'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2658348452710433876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee Number'
,p_source=>'EMPNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>4
,p_cMaxlength=>4
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2658350257255433888)
,p_name=>'P9_ENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2658348452710433876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'ENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2658350458235433888)
,p_name=>'P9_JOB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2658348452710433876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Job'
,p_source=>'JOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P9_EBA_DEMO_DA_EMP_JOB'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct job d, job r',
'from eba_demo_da_emp',
'order by 1'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2658350844129433890)
,p_name=>'P9_MGR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2658348452710433876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Manager'
,p_source=>'MGR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'P9_EBA_DEMO_DA_EMP_MGR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ename d, empno r',
'from eba_demo_da_emp',
'order by 1'))
,p_cSize=>30
,p_cMaxlength=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'DIALOG',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2658351260069433890)
,p_name=>'P9_HIREDATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2658348452710433876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Hire date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'HIREDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2658351467848433890)
,p_name=>'P9_SAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2658348452710433876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Salary'
,p_source=>'SAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>7
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2658351649968433890)
,p_name=>'P9_COMM'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2658348452710433876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Commission'
,p_source=>'COMM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>7
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2658351855654433891)
,p_name=>'P9_DEPTNO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2658348452710433876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Department'
,p_source=>'DEPTNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P9_EBA_DEMO_DA_EMP_DEPTNO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dname d, deptno r',
'from eba_demo_da_dept',
'order by 1'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2658615554231459298)
,p_name=>'ITEM GETS FOCUS'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2658348452710433876)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2658615860077459299)
,p_event_id=>wwv_flow_imp.id(2658615554231459298)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'EVENT_SOURCE'
,p_attribute_01=>'showfocus'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2658661343972465808)
,p_name=>'ITEM LOSES FOCUS'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2658348452710433876)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2658661646060465809)
,p_event_id=>wwv_flow_imp.id(2658661343972465808)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'EVENT_SOURCE'
,p_attribute_01=>'showfocus'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2658353250599433894)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_DEMO_DA_EMP'
,p_attribute_02=>'EBA_DEMO_DA_EMP'
,p_attribute_03=>'P9_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_internal_uid=>2652196845771452769
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2658353445526433896)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_DEMO_DA_EMP'
,p_attribute_02=>'EBA_DEMO_DA_EMP'
,p_attribute_03=>'P9_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>2652197040698452771
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2658353648269433897)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2652197243441452772
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Stripe Report'
,p_alias=>'STRIPE-REPORT'
,p_step_title=>'Stripe Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2658798644701491462)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8199705487948627945)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2658799042432491464)
,p_plug_name=>'Employees'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT e.ROWID',
',      e.EMPNO',
',      e.ENAME',
',      e.JOB',
',      m.ename MGR',
',      e.HIREDATE',
',      e.SAL',
',      e.COMM',
',      d.dname DEPTNO',
'FROM EBA_DEMO_DA_EMP e',
',    EBA_DEMO_DA_EMP m',
',    EBA_DEMO_DA_DEPT d',
'WHERE e.mgr = m.empno (+)',
'AND   e.deptno = d.deptno (+)'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2658799146461491464)
,p_name=>'Employees'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'DPEAKE'
,p_internal_uid=>2010202009745848228
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658799354067491467)
,p_db_column_name=>'ROWID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Rowid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658799447507491468)
,p_db_column_name=>'EMPNO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee #'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658799549089491468)
,p_db_column_name=>'ENAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658799650070491468)
,p_db_column_name=>'JOB'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Job'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658799761855491473)
,p_db_column_name=>'MGR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Manager'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658799846231491473)
,p_db_column_name=>'HIREDATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Hire date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658799957936491473)
,p_db_column_name=>'SAL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658800057401491473)
,p_db_column_name=>'COMM'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Commission'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658800149249491473)
,p_db_column_name=>'DEPTNO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2658933538656530499)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'20103365'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ROWID:EMPNO:ENAME:JOB:MGR:HIREDATE:SAL:COMM:DEPTNO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2658819244712494449)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page contains one dynamic action called ''STRIPE REPORT''. This stripes the rows in the report both on page load and after the Interactive Report is refreshed via filtering, sorting etc. This makes use of the ''After Refresh'' event type.</p>',
'<p>It uses one plug-in action (''Stripe Report'').</p>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2177283328220178704)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2658799042432491464)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,RIR,&APP_PAGE_ID.::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2658925837271530148)
,p_name=>'STRIPE REPORT'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2658799042432491464)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2658926138462530148)
,p_event_id=>wwv_flow_imp.id(2658925837271530148)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'PLUGIN_COM.ORACLE.APEX.STRIPE.REPORT'
,p_attribute_01=>'LemonChiffon'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Execute PL/SQL Code'
,p_alias=>'EXECUTE-PL-SQL-CODE'
,p_step_title=>'Execute PL/SQL Code'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2659020645743546560)
,p_plug_name=>'Employees'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT e.ROWID',
',      e.EMPNO',
',      e.ENAME',
',      e.JOB',
',      m.ename MGR',
',      e.HIREDATE',
',      e.SAL',
',      e.COMM',
',      d.dname DEPTNO',
'FROM EBA_DEMO_DA_EMP e',
',    EBA_DEMO_DA_EMP m',
',    EBA_DEMO_DA_DEPT d',
'WHERE e.mgr = m.empno (+)',
'AND   e.deptno = d.deptno (+)'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2659020864255546561)
,p_name=>'Employees'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'DPEAKE'
,p_internal_uid=>2010423727539903325
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2659020968582546566)
,p_db_column_name=>'ROWID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Rowid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2659021060242546566)
,p_db_column_name=>'EMPNO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee #'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2659021147585546566)
,p_db_column_name=>'ENAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2659021249499546566)
,p_db_column_name=>'JOB'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Job'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2659021366694546567)
,p_db_column_name=>'MGR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Mgr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2659021462444546567)
,p_db_column_name=>'HIREDATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Hiredate'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2659021559211546567)
,p_db_column_name=>'SAL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2659021665948546567)
,p_db_column_name=>'COMM'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Commission'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2659021746716546567)
,p_db_column_name=>'DEPTNO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2659021856637546567)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'20104248'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ROWID:EMPNO:ENAME:JOB:MGR:HIREDATE:SAL:COMM:DEPTNO'
,p_sum_columns_on_break=>'SAL:COMM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2659022053144546569)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>3
,p_location=>null
,p_plug_source=>'<p>This page contains one dynamic action called ''UPDATE SALARY'' which is associated with the button on the page. This makes use of the ''Execute PL/SQL Code'' event type to update the employee salaries and then uses the ''Refresh'' event type to show the'
||' updated values in the report.</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2659022246633546570)
,p_plug_name=>'Standard - Button'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8199705487948627945)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2659064750346552855)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2659022246633546570)
,p_button_name=>'UPDATE_SALARY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update Salary by 10%'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2177284876343181167)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2659020645743546560)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,RIR,&APP_PAGE_ID.::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2659102949785562108)
,p_name=>'UPDATE SALARY'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2659064750346552855)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2659103267755562110)
,p_event_id=>wwv_flow_imp.id(2659102949785562108)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update eba_demo_da_emp',
'   set sal = sal * 1.1;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2659267269093586623)
,p_event_id=>wwv_flow_imp.id(2659102949785562108)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2659020645743546560)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2193097097696938502)
,p_event_id=>wwv_flow_imp.id(2659102949785562108)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Salaries updated!'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Set Values (SQL)'
,p_alias=>'SET-VALUES-SQL'
,p_step_title=>'Set Values (SQL)'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1326409240225537981)
,p_plug_name=>'SQL Source'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>50
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'employees_report')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2661380137887867836)
,p_plug_name=>'Employees'
,p_region_name=>'employees_report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT e.ROWID',
',      e.EMPNO',
',      e.ENAME',
',      e.JOB',
',      m.ename MGR',
',      e.HIREDATE',
',      e.SAL',
',      e.COMM',
',      d.dname DEPTNO',
'FROM EBA_DEMO_DA_EMP e',
',    EBA_DEMO_DA_EMP m',
',    EBA_DEMO_DA_DEPT d',
'WHERE e.mgr = m.empno (+)',
'AND   e.deptno = d.deptno (+)'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2661380364984867837)
,p_name=>'Employees'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::P13_ROWID:#ROWID#'
,p_detail_link_text=>'<center><img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit Employee"></center>'
,p_owner=>'DPEAKE'
,p_internal_uid=>2012783228269224601
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2661380438639867845)
,p_db_column_name=>'ROWID'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'ROWID'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2661380562771867851)
,p_db_column_name=>'EMPNO'
,p_display_order=>1
,p_column_identifier=>'B'
,p_column_label=>'Employee #'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2661380665816867851)
,p_db_column_name=>'ENAME'
,p_display_order=>2
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2661380757901867851)
,p_db_column_name=>'JOB'
,p_display_order=>3
,p_column_identifier=>'D'
,p_column_label=>'Job'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2661380954591867852)
,p_db_column_name=>'HIREDATE'
,p_display_order=>5
,p_column_identifier=>'F'
,p_column_label=>'Hire date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2661381053473867852)
,p_db_column_name=>'SAL'
,p_display_order=>6
,p_column_identifier=>'G'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2661381163416867853)
,p_db_column_name=>'COMM'
,p_display_order=>7
,p_column_identifier=>'H'
,p_column_label=>'Commission'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2661480052161884522)
,p_db_column_name=>'MGR'
,p_display_order=>8
,p_column_identifier=>'I'
,p_column_label=>'Manager'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2661480160593884522)
,p_db_column_name=>'DEPTNO'
,p_display_order=>9
,p_column_identifier=>'J'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2661776344935910841)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'20131793'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'EMPNO:ENAME:JOB:MGR:HIREDATE:SAL:COMM:DEPTNO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2661381541675867853)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8199705487948627945)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2661408963804878487)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Please click on the ''Edit'' link for any employee record to see an example of a ''Set Value (SQL Statement)'' action.</p>',
''))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2177285707082183047)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2661380137887867836)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,RIR,&APP_PAGE_ID.::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Edit'
,p_alias=>'EDIT5'
,p_step_title=>'Edit'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2661374458378867789)
,p_plug_name=>'Maintain Employee'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2661381737850867855)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8199705487948627945)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2661424266921879317)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page contains one dynamic action called ''GET DEPT INFORMATION''. This fires whenever the ''Department'' page item changes and invokes an AJAX call that retrieves the ''Location'' and ''Number of Employees'' information for the selected department fr'
||'om the database.</p>',
'<p>It uses one native action (''Set Value'' with a ''Set Type'' of ''SQL Statement'').</p>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2661375050417867797)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2661381737850867855)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2661374738150867796)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2661381737850867855)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P13_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2661375537909867799)
,p_branch_action=>'f?p=&APP_ID.:12:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2661375753105867802)
,p_name=>'P13_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2661374458378867789)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2661375948273867816)
,p_name=>'P13_EMPNO'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2661374458378867789)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee Number'
,p_source=>'EMPNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>4
,p_cMaxlength=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2661376140971867817)
,p_name=>'P13_ENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2661374458378867789)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'ENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2661376365497867818)
,p_name=>'P13_JOB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2661374458378867789)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Job'
,p_source=>'JOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P13_EBA_DEMO_DA_EMP_JOB'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct job d, job r',
'from eba_demo_da_emp',
'order by 1'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2661376754625867822)
,p_name=>'P13_MGR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2661374458378867789)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Manager'
,p_source=>'MGR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'P13_EBA_DEMO_DA_EMP_MGR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ename d, empno r',
'from eba_demo_da_emp',
'order by 1'))
,p_cSize=>30
,p_cMaxlength=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'DIALOG',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2661377151906867822)
,p_name=>'P13_HIREDATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2661374458378867789)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Hire date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'HIREDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2661377369287867823)
,p_name=>'P13_SAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2661374458378867789)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Salary'
,p_source=>'SAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>7
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2661377561874867824)
,p_name=>'P13_COMM'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2661374458378867789)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Commission'
,p_source=>'COMM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>7
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2661377757378867824)
,p_name=>'P13_DEPTNO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2661374458378867789)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Department'
,p_source=>'DEPTNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P13_EBA_DEMO_DA_EMP_DEPTNO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dname d, deptno r',
'from eba_demo_da_dept',
'order by 1'))
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2661567461642896776)
,p_name=>'P13_LOCATION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2661374458378867789)
,p_prompt=>'Location'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2661644344458901247)
,p_name=>'P13_NO_OF_EMPLOYEES'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2661374458378867789)
,p_prompt=>'Number of Employees'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2661760840433909578)
,p_name=>'GET DEPT INFORMATION'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13_DEPTNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2661761139446909582)
,p_event_id=>wwv_flow_imp.id(2661760840433909578)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13_LOCATION,P13_NO_OF_EMPLOYEES'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d.loc location,',
'       count(e.empno) num_employees',
'  from eba_demo_da_dept d,',
'       eba_demo_da_emp e',
' where d.deptno = e.deptno(+)',
'   and d.deptno = :P13_DEPTNO',
' group by d.loc'))
,p_attribute_07=>'P13_DEPTNO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2661379156749867826)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_DEMO_DA_EMP'
,p_attribute_02=>'EBA_DEMO_DA_EMP'
,p_attribute_03=>'P13_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_internal_uid=>2655222751921886701
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2661379339664867828)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_DEMO_DA_EMP'
,p_attribute_02=>'EBA_DEMO_DA_EMP'
,p_attribute_03=>'P13_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>2655222934836886703
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2661379564747867828)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2655223159919886703
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Set Values (PL/SQL)'
,p_alias=>'SET-VALUES-PL-SQL'
,p_step_title=>'Set Values (PL/SQL)'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2662291751358968221)
,p_plug_name=>'Employees'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT e.ROWID',
',      e.EMPNO',
',      e.ENAME',
',      e.JOB',
',      m.ename MGR',
',      e.HIREDATE',
',      e.SAL',
',      e.COMM',
',      d.dname DEPTNO',
'FROM EBA_DEMO_DA_EMP e',
',    EBA_DEMO_DA_EMP m',
',    EBA_DEMO_DA_DEPT d',
'WHERE e.mgr = m.empno (+)',
'AND   e.deptno = d.deptno (+)'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2662291939462968222)
,p_name=>'Employees'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::P15_ROWID:#ROWID#'
,p_detail_link_text=>'<center><img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit Employee"></center>'
,p_owner=>'DPEAKE'
,p_internal_uid=>2013694802747324986
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2662292039026968229)
,p_db_column_name=>'ROWID'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'ROWID'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2662292161984968230)
,p_db_column_name=>'EMPNO'
,p_display_order=>1
,p_column_identifier=>'B'
,p_column_label=>'Employee #'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2662292240145968230)
,p_db_column_name=>'ENAME'
,p_display_order=>2
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2662292338217968230)
,p_db_column_name=>'JOB'
,p_display_order=>3
,p_column_identifier=>'D'
,p_column_label=>'Job'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2662292565597968231)
,p_db_column_name=>'HIREDATE'
,p_display_order=>5
,p_column_identifier=>'F'
,p_column_label=>'Hire date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2662292638732968231)
,p_db_column_name=>'SAL'
,p_display_order=>6
,p_column_identifier=>'G'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2662292737663968231)
,p_db_column_name=>'COMM'
,p_display_order=>7
,p_column_identifier=>'H'
,p_column_label=>'Commission'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2672949537294258259)
,p_db_column_name=>'MGR'
,p_display_order=>8
,p_column_identifier=>'I'
,p_column_label=>'Manager'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2672949659360258260)
,p_db_column_name=>'DEPTNO'
,p_display_order=>9
,p_column_identifier=>'J'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2666181364141503026)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'20175843'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'EMPNO:ENAME:JOB:MGR:HIREDATE:SAL:COMM:DEPTNO:'
,p_sort_column_1=>'0'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'EMPNO'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2662293169396968233)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8199705487948627945)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2666853455332689778)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Please click on the ''Edit'' link for any employee record to see an example of a ''Set Value (PL/SQL Function Body)'' action.</p>',
''))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2177286511661186920)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2662291751358968221)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,RIR,&APP_PAGE_ID.::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'Edit'
,p_alias=>'EDIT6'
,p_step_title=>'Edit'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2662285967676968185)
,p_plug_name=>'Maintain Employee'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2662293337892968233)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8199705487948627945)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2666876559142690872)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page contains one dynamic action called ''CALC COMMISSION''. This fires whenever either the ''Job'' or ''Salary'' page items change. Upon change, this does two things. Firstly an AJAX call is fired that retrieves the calculated commission (based on'
||' the current values for ''Job'' and ''Salary'') from calling a PL/SQL function. The ''Commission'' page item is then set to the calculated commission. Secondly, the ''Commission'' page item is highlighted to show an update has occurred.</p>',
'<p>It uses one native action (''Set Value'' with a ''Set Type'' of ''PL/SQL Function Body'') and one plug-in action (''Highlight'').</p>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2662286563962968189)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2662293337892968233)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2662286245209968189)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2662293337892968233)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P15_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2662287164891968191)
,p_branch_action=>'f?p=&APP_ID.:14:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2662287356853968193)
,p_name=>'P15_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2662285967676968185)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2662287538615968201)
,p_name=>'P15_EMPNO'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2662285967676968185)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee Number'
,p_source=>'EMPNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>4
,p_cMaxlength=>4
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2662287754699968207)
,p_name=>'P15_ENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2662285967676968185)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'ENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2662287946900968207)
,p_name=>'P15_JOB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2662285967676968185)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Job'
,p_source=>'JOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P15_EBA_DEMO_DA_EMP_JOB'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct job d, job r',
'from eba_demo_da_emp',
'order by 1'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2662288355113968209)
,p_name=>'P15_MGR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2662285967676968185)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Manager'
,p_source=>'MGR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'P15_EBA_DEMO_DA_EMP_MGR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ename d, empno r',
'from eba_demo_da_emp',
'order by 1'))
,p_cSize=>30
,p_cMaxlength=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'DIALOG',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2662288747127968209)
,p_name=>'P15_HIREDATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2662285967676968185)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Hire date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'HIREDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2662288956615968209)
,p_name=>'P15_SAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2662285967676968185)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Salary'
,p_source=>'SAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>7
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2662289165579968209)
,p_name=>'P15_COMM'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2662285967676968185)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Commission'
,p_source=>'COMM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>7
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2662289346805968209)
,p_name=>'P15_DEPTNO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2662285967676968185)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Department'
,p_source=>'DEPTNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P15_EBA_DEMO_DA_EMP_DEPTNO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dname d, deptno r',
'from eba_demo_da_dept',
'order by 1'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2666990963606739448)
,p_name=>'CALC COMMISSION'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P15_JOB,P15_SAL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2666991251921739448)
,p_event_id=>wwv_flow_imp.id(2666990963606739448)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P15_COMM'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_multiplier number := 0;',
'begin',
'    -- determine multiplier based on job',
'    case :P15_JOB',
'        when ''ANALYST''      then l_multiplier := .1;',
'        when ''CLERK''        then l_multiplier := .2;',
'        when ''MANAGER''      then l_multiplier := .3;',
'        when ''PRESIDENT''    then l_multiplier := .4;',
'        when ''SALESMAN''     then l_multiplier := .3;',
'        else                     l_multiplier := .1;',
'    end case;',
'    -- return commission, which is calculated by multiplying salary by multiplier',
'    return :P15_SAL * l_multiplier;',
'end;'))
,p_attribute_07=>'P15_SAL,P15_JOB'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2667010750231745056)
,p_event_id=>wwv_flow_imp.id(2666990963606739448)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.ORACLE.APEX.HIGHLIGHT'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P15_COMM'
,p_attribute_01=>'#E5FFCC'
,p_attribute_02=>'normal'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2662290747378968217)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_DEMO_DA_EMP'
,p_attribute_02=>'EBA_DEMO_DA_EMP'
,p_attribute_03=>'P15_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_internal_uid=>2656134342550987092
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2662290938209968218)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_DEMO_DA_EMP'
,p_attribute_02=>'EBA_DEMO_DA_EMP'
,p_attribute_03=>'P15_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>2656134533381987093
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2662291137922968218)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2656134733094987093
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'Timer'
,p_alias=>'TIMER'
,p_step_title=>'Timer'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2667079153429775105)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8199705487948627945)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2667079548921775109)
,p_plug_name=>'Employees'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT e.ROWID',
',      e.EMPNO',
',      e.ENAME',
',      e.JOB',
',      m.ename MGR',
',      e.HIREDATE',
',      e.SAL',
',      e.COMM',
',      d.dname DEPTNO',
',      current_timestamp',
'FROM EBA_DEMO_DA_EMP e',
',    EBA_DEMO_DA_EMP m',
',    EBA_DEMO_DA_DEPT d',
'WHERE e.mgr = m.empno (+)',
'AND   e.deptno = d.deptno (+)'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2667079640202775109)
,p_name=>'Employees'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'DPEAKE'
,p_internal_uid=>2018482503487131873
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2667079846709775113)
,p_db_column_name=>'ROWID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Rowid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2667079950747775113)
,p_db_column_name=>'EMPNO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee #'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2667080050243775113)
,p_db_column_name=>'ENAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2667080136834775113)
,p_db_column_name=>'JOB'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Job'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2667080251907775113)
,p_db_column_name=>'MGR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Manager'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2667080343249775114)
,p_db_column_name=>'HIREDATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Hire date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2667080445923775114)
,p_db_column_name=>'SAL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2667080561860775114)
,p_db_column_name=>'COMM'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Commission'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2667080656700775114)
,p_db_column_name=>'DEPTNO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2667080743571775114)
,p_db_column_name=>'CURRENT_TIMESTAMP'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Current Timestamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2667392559563946415)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'20187955'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ROWID:EMPNO:ENAME:JOB:MGR:HIREDATE:SAL:COMM:DEPTNO:CURRENT_TIMESTAMP'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2667100163091777129)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>4
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page contains two dynamic actions called ''SETUP TIMER'' and ''REFRESH REPORT''. The first dynamic action fires whenever the ''Refrsh every 3 seconds'' page item changes and invokes a plug-in that either adds or removes a named timer that acts on t'
||'he employee region. The second dynamic action performs a refresh on the employees region based on the timer executing.</p>',
'<p>If you watch the Current Timestamp column you will notice the value being refreshed when the item is checked.</p>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2667213040684903136)
,p_plug_name=>'Auto Refresh'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2177286907639189909)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2667079548921775109)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,RIR,&APP_PAGE_ID.::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2667385150212943709)
,p_name=>'P16_REFRESH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2667213040684903136)
,p_item_default=>'Y'
,p_prompt=>'Refresh every 3 seconds'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Refresh every 3 seconds;Y'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2668258743680320368)
,p_name=>'SETUP TIMER'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P16_REFRESH'
,p_condition_element=>'P16_REFRESH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2668259044336320368)
,p_event_id=>wwv_flow_imp.id(2668258743680320368)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'PLUGIN_COM.ORACLE.APEX.TIMER'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2667079548921775109)
,p_attribute_01=>'add'
,p_attribute_02=>'report_refresh'
,p_attribute_04=>'3000'
,p_attribute_05=>'infinite'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2668259238835320369)
,p_event_id=>wwv_flow_imp.id(2668258743680320368)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'PLUGIN_COM.ORACLE.APEX.TIMER'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2667079548921775109)
,p_attribute_01=>'remove'
,p_attribute_03=>'report_refresh'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2668227655192304768)
,p_name=>'REFRESH REPORT'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2667079548921775109)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_COM.ORACLE.APEX.TIMER|DYNAMIC ACTION|timer_expired'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2668227945211304770)
,p_event_id=>wwv_flow_imp.id(2668227655192304768)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2667079548921775109)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_imp_page.create_page(
 p_id=>17
,p_name=>'Refresh'
,p_alias=>'REFRESH'
,p_step_title=>'Refresh'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2668748439060415980)
,p_plug_name=>'Employees'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT e.ROWID',
',      e.EMPNO',
',      e.ENAME',
',      e.JOB',
',      m.ename MGR',
',      e.HIREDATE',
',      e.SAL',
',      e.COMM',
',      d.dname DEPTNO',
'FROM EBA_DEMO_DA_EMP e',
',    EBA_DEMO_DA_EMP m',
',    EBA_DEMO_DA_DEPT d',
'WHERE e.mgr = m.empno (+)',
'AND   e.deptno = d.deptno (+)'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2668748655914415981)
,p_name=>'Employees'
,p_report_id_item=>'P17_REPORT_ID'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'DPEAKE'
,p_internal_uid=>2020151519198772745
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2668748751967415986)
,p_db_column_name=>'ROWID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Rowid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2668748847701415986)
,p_db_column_name=>'EMPNO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee #'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2668748938689415987)
,p_db_column_name=>'ENAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2668749057444415987)
,p_db_column_name=>'JOB'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Job'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2668749142658415987)
,p_db_column_name=>'MGR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Manager'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2668749249838415987)
,p_db_column_name=>'HIREDATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Hire date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2668749348975415987)
,p_db_column_name=>'SAL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2668749456982415987)
,p_db_column_name=>'COMM'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Commission'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2668749557961415987)
,p_db_column_name=>'DEPTNO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2668749737288415988)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'PRIMARY'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ROWID:EMPNO:ENAME:JOB:MGR:HIREDATE:SAL:COMM:DEPTNO:CURRENT_TIMESTAMP'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2669128739281451526)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Salesmen Report'
,p_report_seq=>10
,p_report_alias=>'SALESMEN'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ROWID:EMPNO:ENAME:JOB:MGR:HIREDATE:SAL:COMM:DEPTNO:CURRENT_TIMESTAMP'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(2669128956302451528)
,p_report_id=>wwv_flow_imp.id(2669128739281451526)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'JOB'
,p_operator=>'='
,p_expr=>'SALESMAN'
,p_condition_sql=>'"JOB" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''SALESMAN''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2669359741059480409)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'High Paid Staff'
,p_report_seq=>10
,p_report_alias=>'HIGH_PAY'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ROWID:EMPNO:ENAME:JOB:MGR:HIREDATE:SAL:COMM:DEPTNO:CURRENT_TIMESTAMP'
,p_sort_column_1=>'SAL'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(2669359959512480409)
,p_report_id=>wwv_flow_imp.id(2669359741059480409)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'SAL'
,p_operator=>'>='
,p_expr=>'5000'
,p_condition_sql=>'"SAL" >= to_number(#APXWS_EXPR#)'
,p_condition_display=>'#APXWS_COL_NAME# >= #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2668749962904415991)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page demonstrates an alternative way to provision a list of ''Saved Reports'' to Interactive Report users, via a separate report on the page instead of the standard select list. Dynamic actions are required to refresh the list of ''Saved Reports'
||''', after the user has made changes to a report.</p>',
'<p>To achieve this, this page contains one dynamic action called ''REFRESH SAVED REPORTS''. This refreshes the ''Saved Interactive Reports'' report after the user makes changes to the report. Try saving a new report and see the new report appear in the r'
||'egion after saving the report. This makes use of the ''After Refresh'' event for the Interactive Report Region, see the item level help for the ''Event'' field for further information.</p>',
'<p>It uses one native action (''Refresh''), to refresh the ''Saved Reports'' report via Ajax.</p>',
'<p>The report includes the name of the saved report, its description if provided, and the visibility of the report-"Default" means created by an application developer, and is visible to all users; "Public" means created by an end user, but visible to'
||' all users; "Private" means created by an end user and only visible to that user.</p>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2668750552228415997)
,p_plug_name=>'Server Side - Refresh'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8199705487948627945)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2669550943052499935)
,p_name=>'Saved Interactive Reports'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--compact:t-Cards--5cols:u-colors:t-Cards--animColorFill'
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''visiblity: ''||case when report_type in (''PRIMARY_DEFAULT'', ''ALTERNATIVE_DEFAULT'') then',
'            ''Default''',
'        when report_type = ''PRIVATE'' then',
'            ''Private''',
'        else',
'            ''Public''',
'    end card_subtext,',
'    report_id,',
'    coalesce(report_name, ''Primary Report'') card_title,',
'    report_description card_text,',
'    apex_util.prepare_url(''f?p=''||:APP_ID||'':17:''||:APP_SESSION||'':::RP,17,RIR:P17_REPORT_ID:''||report_id) card_link',
'from apex_application_page_ir_rpt',
'where application_id = :APP_ID',
'    and page_id = :APP_PAGE_ID',
'    and (status = ''PUBLIC'' or',
'        (status = ''PRIVATE'' and application_user = :APP_USER))',
'    and report_type != ''SESSION''',
'order by 1 asc, 3, 4'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2974982452297815501
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1854062323843816699)
,p_query_column_id=>1
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>2
,p_column_heading=>'Card subtext'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2669551364608499940)
,p_query_column_id=>2
,p_column_alias=>'REPORT_ID'
,p_column_display_sequence=>1
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1854062402513816700)
,p_query_column_id=>3
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>3
,p_column_heading=>'Card title'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1854062502766816701)
,p_query_column_id=>4
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>4
,p_column_heading=>'Card text'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1854062596390816702)
,p_query_column_id=>5
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>5
,p_column_heading=>'Card link'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2177287928087191793)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2668748439060415980)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,RIR,&APP_PAGE_ID.::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2668750337860415995)
,p_name=>'P17_REPORT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2668748439060415980)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2668751262561416011)
,p_name=>'REFRESH SAVED REPORT'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2668748439060415980)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2668751568615416011)
,p_event_id=>wwv_flow_imp.id(2668751262561416011)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2669550943052499935)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_imp_page.create_page(
 p_id=>18
,p_name=>'Delete and Refresh'
,p_alias=>'DELETE-AND-REFRESH'
,p_step_title=>'Delete and Refresh'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2673199968572361277)
,p_plug_name=>'Employees'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT e.ROWID',
',      e.EMPNO ID',
',      e.EMPNO',
',      e.ENAME',
',      e.JOB',
',      m.ename MGR',
',      e.HIREDATE',
',      e.SAL',
',      e.COMM',
',      d.dname DEPTNO',
'FROM EBA_DEMO_DA_EMP e',
',    EBA_DEMO_DA_EMP m',
',    EBA_DEMO_DA_DEPT d',
'WHERE e.mgr = m.empno (+)',
'AND   e.deptno = d.deptno (+)'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2673200161174361278)
,p_name=>'Employees'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'NONE'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'DPEAKE'
,p_internal_uid=>2024603024458718042
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2673200238860361279)
,p_db_column_name=>'ROWID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Rowid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2673200363622361279)
,p_db_column_name=>'EMPNO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee #'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2673200458058361279)
,p_db_column_name=>'ENAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2673200563678361280)
,p_db_column_name=>'JOB'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Job'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2673200664110361280)
,p_db_column_name=>'MGR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Manager'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2673200765011361280)
,p_db_column_name=>'HIREDATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Hire date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2673200856775361280)
,p_db_column_name=>'SAL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2673200960127361280)
,p_db_column_name=>'COMM'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Commission'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2673201064406361280)
,p_db_column_name=>'DEPTNO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2673528947139772039)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Delete'
,p_column_link=>'#'
,p_column_linktext=>'<span class="t-Icon fa fa-trash-o" aria-hidden="true"></span>'
,p_column_link_attr=>'id="#ID#" class="delete t-Button t-Button--danger t-Button--simple t-Button--small" title="Delete Employee: #ENAME#"'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2673201144199361281)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'20246041'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:EMPNO:ENAME:JOB:MGR:HIREDATE:SAL:COMM:DEPTNO:'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2673201337598361281)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Salesmen Report'
,p_report_seq=>10
,p_report_alias=>'20246043'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ROWEMPNO:ENAME:JOB:MGR:HIREDATE:SAL:COMM:DEPTNO:CURRENT_TIMESTAMP:ID'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(2673201560236361282)
,p_report_id=>wwv_flow_imp.id(2673201337598361281)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'JOB'
,p_operator=>'='
,p_expr=>'SALESMAN'
,p_condition_sql=>'"JOB" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''SALESMAN''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2673201641482361282)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'High Paid Staff'
,p_report_seq=>10
,p_report_alias=>'20246046'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ROWEMPNO:ENAME:JOB:MGR:HIREDATE:SAL:COMM:DEPTNO:CURRENT_TIMESTAMP:ID'
,p_sort_column_1=>'SAL'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(2673201860457361282)
,p_report_id=>wwv_flow_imp.id(2673201641482361282)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'SAL'
,p_operator=>'>='
,p_expr=>'5000'
,p_condition_sql=>'"SAL" >= to_number(#APXWS_EXPR#)'
,p_condition_display=>'#APXWS_COL_NAME# >= #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2673202151524361302)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>3
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page demonstrates how dynamic actions can be used to provide AJAX based delete row functionality. In the example, clicking on any of the ''Delete'' icons for any employee will result in that record being deleted from the database.</p>',
'<p>To achieve this, the page contains one dynamic action called ''DELETE EMP''. This fires when the user clicks on any of the ''Delete'' icons and has the following six ''True Actions'' that handle the delete:',
'<ul style="margin: 8px 24px;">',
'<li>''Confirm'' to confirm the user really wants to delete.</li>',
'<li>''Set Value'' of a hidden item to the ''empno'' value to delete.</li>',
'<li>''Execute PL/SQL Code'' to delete the record</li>',
'<li>''Refresh'' the report region.</li>',
'<li>''Notification'' to display a ''Employee deleted'' message.</li>',
'<li>''Cancel Event'' to stop the browser''s default handling of refreshing the entire page that would occur after a link is clicked.</li></ul></p>',
'<p>It uses five native actions (''Confirm'', ''Set Value'', ''Execute PL/SQL Code'', ''Refresh'' and ''Cancel Event'') and one plug-in action (''Notification'').</p>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2673203154943361305)
,p_plug_name=>'Server Side - Refresh 2'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8199705487948627945)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2177290116743197798)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2673199968572361277)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,RIR,&APP_PAGE_ID.::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2673201946868361282)
,p_name=>'P18_EMPNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2673199968572361277)
,p_display_as=>'NATIVE_HIDDEN'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2673453238614428974)
,p_name=>'DELETE EMP'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.delete'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2673453551676428974)
,p_event_id=>wwv_flow_imp.id(2673453238614428974)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you sure you want to delete this employee?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2673472752466432971)
,p_event_id=>wwv_flow_imp.id(2673453238614428974)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_EMPNO'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2673480739783438745)
,p_event_id=>wwv_flow_imp.id(2673453238614428974)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    -- If the person to be deleted is a manager, move all of his/her employees',
'    -- up a level.',
'    update eba_demo_da_emp e1',
'    set e1.mgr = ( select e2.mgr from eba_demo_da_emp e2 where e2.empno = :P18_EMPNO )',
'    where e1.mgr = :P18_EMPNO;',
'',
'    delete from eba_demo_da_emp where empno = :P18_EMPNO;',
'    commit;',
'end;'))
,p_attribute_02=>'P18_EMPNO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2673488746017440520)
,p_event_id=>wwv_flow_imp.id(2673453238614428974)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2673199968572361277)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1854063855512816714)
,p_event_id=>wwv_flow_imp.id(2673453238614428974)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'alert("Employee #"+$v("P18_EMPNO")+" removed.");'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_imp_page.create_page(
 p_id=>19
,p_name=>'Filter and Refresh'
,p_alias=>'FILTER-AND-REFRESH'
,p_step_title=>'Filter and Refresh'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2674036253056871171)
,p_plug_name=>'Employees'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT e.ROWID',
',      e.EMPNO',
',      e.ENAME',
',      e.JOB',
',      m.ename MGR',
',      e.HIREDATE',
',      e.SAL',
',      e.COMM',
',      d.dname DEPTNO',
'FROM EBA_DEMO_DA_EMP e',
',    EBA_DEMO_DA_EMP m',
',    EBA_DEMO_DA_DEPT d',
'WHERE e.mgr = m.empno (+)',
'AND   e.deptno = d.deptno (+)',
'AND   e.deptno = nvl(:P19_DEPTNO, e.deptno)',
'AND   e.job = nvl(:P19_JOB, e.job)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P19_DEPTNO,P19_JOB'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2674036443308871172)
,p_name=>'Employees'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'DPEAKE'
,p_internal_uid=>2025439306593227936
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2674036553222871174)
,p_db_column_name=>'ROWID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Rowid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2674036640452871174)
,p_db_column_name=>'EMPNO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee #'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2674036739241871174)
,p_db_column_name=>'ENAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2674036855945871178)
,p_db_column_name=>'JOB'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Job'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2674036948764871178)
,p_db_column_name=>'MGR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Manager'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2674037045216871178)
,p_db_column_name=>'HIREDATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Hire date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2674037137038871178)
,p_db_column_name=>'SAL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2674037240073871178)
,p_db_column_name=>'COMM'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Commission'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2674037362530871178)
,p_db_column_name=>'DEPTNO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2674037565861871179)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'20254405'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ROWID:EMPNO:ENAME:JOB:MGR:HIREDATE:SAL:COMM:DEPTNO:CURRENT_TIMESTAMP'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2674037757433871181)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>4
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page contains 2 dynamic actions, ''FILTER REFRESH'' and ''RESET REPORT''.</p>',
'<p>''FILTER REFRESH'' fires when either the ''Department'' or ''Job'' select list values are changed and refreshes the report via Ajax to show the newly scoped employees.</p>',
'<p>''RESET REPORT'' fires when the ''Reset'' button is pressed, which resets the report via Ajax, by clearing the select lists and refreshing the report.</p>',
'<p>''FILTER REFRESH'' uses one native action (''Refresh''). ''RESET REPORT'' uses 2 native actions (''Set Value'' and ''Refresh'').</p>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2674037954123871182)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2674038354303871190)
,p_plug_name=>'Server Side - Refresh 3'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8199705487948627945)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3246544869235131730)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2674036253056871171)
,p_button_name=>'P19_RESET'
,p_button_static_id=>'P19_RESET'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa-undo-alt'
,p_request_source_type=>'ALWAYS_NULL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2674038161133871184)
,p_name=>'P19_DEPTNO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2674037954123871182)
,p_prompt=>'Department'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEPARTMENT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dname d, deptno r',
'from eba_demo_da_dept',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Show All -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2674085860008879859)
,p_name=>'P19_JOB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2674037954123871182)
,p_prompt=>'Job'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'JOB'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct job d, job r',
'from eba_demo_da_emp',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Show All -'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2674146947110895038)
,p_name=>'FILTER REFRESH'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P19_DEPTNO,P19_JOB'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2674147262290895038)
,p_event_id=>wwv_flow_imp.id(2674146947110895038)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2674036253056871171)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3246545051705136088)
,p_name=>'RESET REPORT'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3246544869235131730)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3246546254176165253)
,p_event_id=>wwv_flow_imp.id(3246545051705136088)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P19_DEPTNO,P19_JOB'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3246547064265196554)
,p_event_id=>wwv_flow_imp.id(3246545051705136088)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2674036253056871171)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Shuttle Refresh'
,p_alias=>'SHUTTLE-REFRESH'
,p_step_title=>'Shuttle Refresh'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'.shuttleSelect1 select, .shuttleSelect2 select {',
'width: 300px;',
'height: 200px;',
'}',
'table.formlayout table.shuttle td {',
'vertical-align: middle;',
'}',
'</style>'))
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2674549765992982048)
,p_plug_name=>'Employees'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT e.ROWID',
',      e.EMPNO',
',      e.ENAME',
',      e.JOB',
',      m.ename MGR',
',      e.HIREDATE',
',      e.SAL',
',      e.COMM',
',      d.dname DEPTNO',
'FROM EBA_DEMO_DA_EMP e',
',    EBA_DEMO_DA_EMP m',
',    EBA_DEMO_DA_DEPT d',
'WHERE e.mgr = m.empno (+)',
'AND   e.deptno = d.deptno (+)',
'AND   instr('':''||:P20_DEPTNO||'':'','':''||e.deptno||'':'') > 0'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P20_DEPTNO'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2674549960377982055)
,p_name=>'Employees'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No employees found for the department(s) selected.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'DPEAKE'
,p_internal_uid=>2025952823662338819
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2674550062610982061)
,p_db_column_name=>'ROWID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Rowid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2674550165690982061)
,p_db_column_name=>'EMPNO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee #'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2674550260613982061)
,p_db_column_name=>'ENAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2674550359439982061)
,p_db_column_name=>'JOB'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Job'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2674550441426982061)
,p_db_column_name=>'MGR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Manager'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2674550540951982061)
,p_db_column_name=>'HIREDATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Hire date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2674550655382982061)
,p_db_column_name=>'SAL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2674550769109982062)
,p_db_column_name=>'COMM'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Commission'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2674550844723982062)
,p_db_column_name=>'DEPTNO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2674550945246982064)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'20259539'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ROWID:EMPNO:ENAME:JOB:MGR:HIREDATE:SAL:COMM:DEPTNO:CURRENT_TIMESTAMP'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2674551163746982067)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page demonstrates how custom filters can be added to reports, very easily with dynamic actions. When one or more ''Department'' records are selected via the shuttle item, the report is refreshed via Ajax to show the newly scoped employees.</p>',
'<p>To achieve this, this page contains one dynamic action called ''FILTER REFRESH''. This refreshes the report after a different ''Department'' has been selected. This makes use of the ''Refresh'' action.</p>',
'<p>It uses one native action (''Refresh'').</p>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2674551339625982069)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2674552169078982073)
,p_plug_name=>'Server Side - Refresh 4'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8199705487948627945)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2177289177248195533)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2674549765992982048)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,RIR,&APP_PAGE_ID.::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2674551561591982069)
,p_name=>'P20_DEPTNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2674551339625982069)
,p_prompt=>'Department (shuttle departments to see to right side)'
,p_display_as=>'NATIVE_SHUTTLE'
,p_named_lov=>'DEPARTMENT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dname d, deptno r',
'from eba_demo_da_dept',
'order by 1'))
,p_cHeight=>5
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'MOVE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2674552657783982083)
,p_name=>'FILTER REFRESH'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_DEPTNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2674552951543982083)
,p_event_id=>wwv_flow_imp.id(2674552657783982083)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2674549765992982048)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_imp_page.create_page(
 p_id=>21
,p_name=>'Debounce and Throttle'
,p_alias=>'DEBOUNCE-AND-THROTTLE'
,p_step_title=>'Debounce and Throttle'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(573764095280627646)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page demonstrates how the Execution properties of Dynamic Actions provide control over when a dynamic action executes. By default, actions are executed immediately. However, the Debounce and Throttle execution types can delay the execution of'
||' a dynamic action.</p>',
'<p>Debounce will execute an action a single time after a specified delay from the last time the dynamic action was triggered. Here are a couple examples:</p>',
'    <ul>',
'        <li>Use <strong>Debounce Delay</strong> to fire an AJAX request when a user has stopped typing for 2 seconds.</li>',
'        <li>Use <strong>Debounce Immediate</strong> to refresh a region once after a user clicks a button, then ignore all following button clicks until 2 seconds has passed from the last click.</li>',
'    </ul>',
'<p>Throttle will execute an action in intervals of a specified length, as long as the dynamic action continues getting triggered. Here are a couple examples:</p>',
'    <ul>',
'        <li>Use <strong>Throttle Immediate</strong> to refresh a region once every 2 seconds as a user continuously clicks a button.</li>',
'        <li>Use <strong>Throttle Delay</strong> to wait for page item values of a form to update before submitting the page when the Save button is clicked.</li>',
'    </ul>',
'<p>In the example on this page, typing in the text area will trigger dynamic actions to update each of the display only items. Each item will update a little differently based on the event Type used to execute the Set Value action.</p>',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(592363548607819030)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8199705487948627945)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(611961741294935448)
,p_plug_name=>'Examples'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(573764390508627649)
,p_plug_name=>'Immediate'
,p_parent_plug_id=>wwv_flow_imp.id(611961741294935448)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(573765001153627655)
,p_plug_name=>'Immediate Help Text'
,p_parent_plug_id=>wwv_flow_imp.id(573764390508627649)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_source=>'<p><strong>Immediate:</strong> the Dynamic Action will execute immediately. Each time a key is released, the item will be updated to have the same value as the text area.</p>'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(573764562417627650)
,p_plug_name=>'Debounce Delay'
,p_parent_plug_id=>wwv_flow_imp.id(611961741294935448)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(573765106373627656)
,p_plug_name=>'Debounce Delay Help Text'
,p_parent_plug_id=>wwv_flow_imp.id(573764562417627650)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_source=>'<p><strong>Debounce Delay:</strong> the Dynamic Action will execute 2000ms after the key release event was triggered. If the event is triggered multiple times before the delay is over, the timer resets each time and the action will execute after the '
||'last event.</p>'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(573764660933627651)
,p_plug_name=>'Debounce Immediate'
,p_parent_plug_id=>wwv_flow_imp.id(611961741294935448)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(573765668502627661)
,p_plug_name=>'Debounce Immediate Help Text'
,p_parent_plug_id=>wwv_flow_imp.id(573764660933627651)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_source=>'<p><strong>Debounce Immediate:</strong> the Dynamic Action will execute immediately after the first key release event before starting the timer for 2000ms. If the event is triggered before the delay is over, the timer resets each time and all events '
||'are ignored until the delay is over.</p>'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(573764766215627652)
,p_plug_name=>'Throttle Immediate'
,p_parent_plug_id=>wwv_flow_imp.id(611961741294935448)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(573765946790627664)
,p_plug_name=>'Throttle Immediate Help Text'
,p_parent_plug_id=>wwv_flow_imp.id(573764766215627652)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p><strong>Throttle Immediate:</strong> the Dynamic Action will execute immediately after the first key release and then the 2000ms delay begins. If the event is triggered during the delay, the last triggered event will be executed after the initial '
||'delay and another delay begins.</p>',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(573764806247627653)
,p_plug_name=>'Throttle Delay'
,p_parent_plug_id=>wwv_flow_imp.id(611961741294935448)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(573766130441627666)
,p_plug_name=>'Throttle Delay Help Text'
,p_parent_plug_id=>wwv_flow_imp.id(573764806247627653)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_source=>'<p><strong>Throttle Delay:</strong> the Dynamic Action will execute 2000ms after the first key release event. If the event is triggered multiple times before the delay is over, the last triggered event will be executed at the end of the initial delay'
||'.</p>'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(611961814479935449)
,p_plug_name=>'Enter Text Here'
,p_parent_plug_id=>wwv_flow_imp.id(611961741294935448)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(573766682517627639)
,p_name=>'P21_IMMEDIATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(573764390508627649)
,p_prompt=>'Immediate'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Dynamic Action Settings:</p>',
'<ul>',
'    <li>Event: Key Release</li>',
'    <li>Execution Type: Immediate</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(573768569421627639)
,p_name=>'P21_DEBOUNCE_DELAY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(573764562417627650)
,p_prompt=>'Debounce Delay'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Dynamic Action Settings:</p>',
'<ul>',
'    <li>Event: Key Release</li>',
'    <li>Execution Type: Debounce</li>',
'    <li>Execution Time: 2000</li>',
'    <li>Execution Immediate: off</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(573770505065627641)
,p_name=>'P21_DEBOUNCE_IMMEDIATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(573764660933627651)
,p_prompt=>'Debounce Immediate'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Dynamic Action Settings:</p>',
'<ul>',
'    <li>Event: Key Release</li>',
'    <li>Execution Type: Debounce</li>',
'    <li>Execution Time: 2000</li>',
'    <li>Execution Immediate: on</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(573772216607627642)
,p_name=>'P21_THROTTLE_IMMEDIATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(573764766215627652)
,p_prompt=>'Throttle Immediate'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Dynamic Action Settings:</p>',
'<ul>',
'    <li>Event: Key Release</li>',
'    <li>Execution Type: Throttle</li>',
'    <li>Execution Time: 2000</li>',
'    <li>Execution Immediate: on</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(573773993833627626)
,p_name=>'P21_TEXT_AREA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(611961814479935449)
,p_prompt=>'Enter Text Here'
,p_placeholder=>'Start typing...'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'N',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(573774207879627644)
,p_name=>'P21_THROTTLE_DELAY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(573764806247627653)
,p_prompt=>'Throttle Delay'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Dynamic Action Settings:</p>',
'<ul>',
'    <li>Event: Key Release</li>',
'    <li>Execution Type: Throttle</li>',
'    <li>Execution Time: 2000</li>',
'    <li>Execution Immediate: off</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6610966278701454)
,p_name=>'Update P21_IMMEDIATE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_TEXT_AREA'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6611517695701453)
,p_event_id=>wwv_flow_imp.id(6610966278701454)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Set item value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_IMMEDIATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.value'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6611929550701453)
,p_name=>'Update P21_DEBOUNCE_DELAY'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_TEXT_AREA'
,p_bind_type=>'bind'
,p_execution_type=>'DEBOUNCE'
,p_execution_time=>2000
,p_execution_immediate=>false
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6612369190701453)
,p_event_id=>wwv_flow_imp.id(6611929550701453)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Set item value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_DEBOUNCE_DELAY'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.value'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6612853550701452)
,p_name=>'Update P21_DEBOUNCE_IMMEDIATE'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_TEXT_AREA'
,p_bind_type=>'bind'
,p_execution_type=>'DEBOUNCE'
,p_execution_time=>2000
,p_execution_immediate=>true
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6613349178701452)
,p_event_id=>wwv_flow_imp.id(6612853550701452)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Set item value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_DEBOUNCE_IMMEDIATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.value'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6613745617701452)
,p_name=>'Update P21_THROTTLE_IMMEDIATE'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_TEXT_AREA'
,p_bind_type=>'bind'
,p_execution_type=>'THROTTLE'
,p_execution_time=>2000
,p_execution_immediate=>true
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6614254057701452)
,p_event_id=>wwv_flow_imp.id(6613745617701452)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Set item value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_THROTTLE_IMMEDIATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.value'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6614656096701452)
,p_name=>'Update P21_THROTTLE_DELAY'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_TEXT_AREA'
,p_bind_type=>'bind'
,p_execution_type=>'THROTTLE'
,p_execution_time=>2000
,p_execution_immediate=>false
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6615077888701452)
,p_event_id=>wwv_flow_imp.id(6614656096701452)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Set item value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_THROTTLE_DELAY'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.value'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_imp_page.create_page(
 p_id=>22
,p_name=>'Edit'
,p_alias=>'EDIT7'
,p_step_title=>'Edit'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.ui-slider {',
'    width: 180px;',
'    margin: 8px;',
'}'))
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2674867341731092513)
,p_plug_name=>'Maintain Employee'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2674874748140092580)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8199705487948627945)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2674970952418104760)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page contains two dynamic actions called ''SALARY HIGH'' and ''CALC COMMISSION''.</p><p>''SALARY HIGH'' fires whenever the value of the ''Salary'' slider has changed and checks if the salary is greater than 5000. If the salary is greater than 5000 th'
||'e salary display field is set to red. If the salary is less than or equal to 5000 the salary display field is set to green.</p><p>''CALC COMMISSION'' does a similar job as in the ''Set Value (PL/SQL)'' example (firing an AJAX call to retrieve the commiss'
||'ion and highlighting the ''Commission'' page item), only this time, it is being fired when the value of the ''Salary'' slider changes.</p>',
'<p>''SALARY HIGH'' uses one native action (''Add Class'') in combination with an event raised by one plug-in item type (''Slider'').</p>',
'<p>''CALC COMMISSION'' uses one native action (''Set Value'' with a ''Set Type'' of ''PL/SQL Function Body'') and one plug-in action (''Highlight'').</p>',
''))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2674867958823092517)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2674874748140092580)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2674867663546092515)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2674874748140092580)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P22_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2674868559078092524)
,p_branch_action=>'f?p=&APP_ID.:21:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2674868765964092531)
,p_name=>'P22_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2674867341731092513)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2674868955731092543)
,p_name=>'P22_EMPNO'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2674867341731092513)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee Number'
,p_source=>'EMPNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>4
,p_cMaxlength=>4
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2674869146197092544)
,p_name=>'P22_ENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2674867341731092513)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'ENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2674869360555092545)
,p_name=>'P22_JOB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2674867341731092513)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Job'
,p_source=>'JOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P22_EBA_DEMO_DA_EMP_JOB'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct job d, job r',
'from eba_demo_da_emp',
'order by 1'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2674869765361092549)
,p_name=>'P22_MGR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2674867341731092513)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Manager'
,p_source=>'MGR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'P22_EBA_DEMO_DA_EMP_MGR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ename d, empno r',
'from eba_demo_da_emp',
'order by 1'))
,p_cSize=>30
,p_cMaxlength=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'DIALOG',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2674870149542092550)
,p_name=>'P22_HIREDATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2674867341731092513)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Hire date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'HIREDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2674870345359092550)
,p_name=>'P22_SAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2674867341731092513)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Salary'
,p_source=>'SAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.SLIDER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'horizontal',
  'attribute_02', '0',
  'attribute_03', '10000',
  'attribute_04', '100',
  'attribute_05', 'N',
  'attribute_06', ' ')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2674870538608092550)
,p_name=>'P22_COMM'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2674867341731092513)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Commission'
,p_source=>'COMM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>7
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2674870740750092550)
,p_name=>'P22_DEPTNO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2674867341731092513)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Department'
,p_source=>'DEPTNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P22_EBA_DEMO_DA_EMP_DEPTNO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dname d, deptno r',
'from eba_demo_da_dept',
'order by 1'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2675107249788189176)
,p_name=>'SALARY HIGH'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P22_SAL'
,p_condition_element=>'P22_SAL'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'5000'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_COM.ORACLE.APEX.SLIDER|ITEM TYPE|slidechange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2675107550626189176)
,p_event_id=>wwv_flow_imp.id(2675107249788189176)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_CSS'
,p_affected_elements_type=>'DOM_OBJECT'
,p_affected_elements=>'P22_SAL_display'
,p_attribute_01=>'color'
,p_attribute_02=>'red'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2675107761375189176)
,p_event_id=>wwv_flow_imp.id(2675107249788189176)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_CSS'
,p_affected_elements_type=>'DOM_OBJECT'
,p_affected_elements=>'P22_SAL_display'
,p_attribute_01=>'color'
,p_attribute_02=>'green'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2675214059662229834)
,p_name=>'CALC COMMISSION'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P22_SAL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_COM.ORACLE.APEX.SLIDER|ITEM TYPE|slidechange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2675214361157229834)
,p_event_id=>wwv_flow_imp.id(2675214059662229834)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P22_COMM'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_multiplier number := 0;',
'begin',
'    -- determine multiplier based on job',
'    case :P22_JOB',
'        when ''ANALYST''      then l_multiplier := .1;',
'        when ''CLERK''        then l_multiplier := .2;',
'        when ''MANAGER''      then l_multiplier := .3;',
'        when ''PRESIDENT''    then l_multiplier := .4;',
'        when ''SALESMAN''     then l_multiplier := .3;',
'        else                     l_multiplier := .1;',
'    end case;',
'    -- return commission, which is calculated by multiplying salary my multiplier',
'    return :P22_SAL * l_multiplier;',
'end;'))
,p_attribute_07=>'P22_JOB,P22_SAL'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2675237455984238233)
,p_event_id=>wwv_flow_imp.id(2675214059662229834)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.ORACLE.APEX.HIGHLIGHT'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P22_COMM'
,p_attribute_01=>'#E5FFCC'
,p_attribute_02=>'slow'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2674872149813092552)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_DEMO_DA_EMP'
,p_attribute_02=>'EBA_DEMO_DA_EMP'
,p_attribute_03=>'P22_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_internal_uid=>2668715744985111427
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2674872358015092556)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_DEMO_DA_EMP'
,p_attribute_02=>'EBA_DEMO_DA_EMP'
,p_attribute_03=>'P22_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>2668715953187111431
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2674872547177092556)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2668716142349111431
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_imp_page.create_page(
 p_id=>23
,p_tab_set=>'TS1'
,p_name=>'Administration'
,p_alias=>'SETTINGS'
,p_step_title=>'Administration'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2678536341112339517)
,p_plug_name=>'Reset Application Data'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--defaultIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This application uses sample tables called EBA_DEMO_DA_EMP and EBA_DEMO_DA_DEPT.</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2132660722251484977)
,p_plug_name=>'Buttons'
,p_parent_plug_id=>wwv_flow_imp.id(2678536341112339517)
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2678536761634339521)
,p_plug_name=>'Administration'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8199705487948627945)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2678536539941339518)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2132660722251484977)
,p_button_name=>'RESET_DATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset Data'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3279189265228991530)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2132660722251484977)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2678537551387339544)
,p_branch_name=>'Go To Page 26'
,p_branch_action=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 14-DEC-2011 13:59 by MIKE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2678537264588339541)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reset Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  eba_demo_da_data;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2678536539941339518)
,p_process_success_message=>'The sample data used for this application has been reset.'
,p_internal_uid=>2672380859760358416
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_imp_page.create_page(
 p_id=>24
,p_name=>'Application Theme Style'
,p_alias=>'APPLICATION-THEME-STYLE'
,p_step_title=>'Application Theme Style'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2133147960599007339)
,p_plug_name=>'Set User Interface Theme Style'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2133148363598007340)
,p_plug_name=>'items'
,p_parent_plug_id=>wwv_flow_imp.id(2133147960599007339)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_translate_title=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2133149108521007341)
,p_plug_name=>'About this page'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>Select the look and feel of the application you would like to use for all users of this application.</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2133149516265007342)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8199705487948627945)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2133149924797007342)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2133149516265007342)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2133150287489007342)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2133149516265007342)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2133151779892007345)
,p_branch_name=>'Go To Page 26'
,p_branch_action=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2133150287489007342)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2133148745819007340)
,p_name=>'P24_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2133148363598007340)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Desktop Theme Style'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'from apex_application_theme_styles s, apex_application_themes t',
'where s.application_id = t.application_id',
'and s.theme_number = t.theme_number',
'and s.application_id = :app_id',
'and t.ui_type_name   = ''DESKTOP''',
'and s.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'          s.theme_style_id r',
'from apex_application_theme_styles s, apex_application_themes t',
'where s.application_id = t.application_id',
'and s.theme_number = t.theme_number',
'and s.application_id = :app_id',
'and t.ui_type_name   = ''DESKTOP''',
'and t.is_current = ''Yes''',
'order by 1'))
,p_cHeight=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from apex_application_theme_styles s, apex_application_themes t',
'where s.application_id = t.application_id',
'and s.theme_number = t.theme_number',
'and s.application_id = :app_id',
'and t.ui_type_name   = ''DESKTOP''',
'and t.is_current = ''Yes'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2133151321959007345)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Theme Style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P24_DESKTOP_THEME_STYLE_ID is not null then',
'    for c1 in (select theme_number',
'               from apex_application_themes',
'               where application_id = :app_id',
'               and ui_type_name   = ''DESKTOP''',
'               and is_current = ''Yes'')',
'    loop',
'        apex_theme.set_current_style (',
'            p_theme_number   => c1.theme_number,',
'            p_id => :P24_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2133150287489007342)
,p_process_success_message=>'Theme Style Set for All Users.'
,p_internal_uid=>2126994917131026220
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_imp_page.create_page(
 p_id=>25
,p_name=>'Help'
,p_alias=>'HELP'
,p_step_title=>'Help'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2054989012285109804)
,p_plug_name=>'Help Container'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3246483940298753727)
,p_plug_name=>'Quick Start'
,p_parent_plug_id=>wwv_flow_imp.id(2054989012285109804)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<H2>Getting Started</h2>',
'<p>Run the application as a developer; at the bottom of the page will be buttons for viewing the page in the Application Express Application Builder. Click on the "Edit Page X" button to see how the pages are defined.</p>',
'<p>If you have questions, ask them on the <a href="https://forums.oracle.com/forums/forum.jspa?forumID=137">OTN Forum</a>.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3246484150507753727)
,p_plug_name=>'Features'
,p_parent_plug_id=>wwv_flow_imp.id(2054989012285109804)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2>Features</h2>',
'<p>',
'<ul>',
'<li>Declarative controls triggerable on page events</li>',
'<li>No JavaScript coding required</li>',
'<li>Hide, show, enable, disable, set values etc</li>',
'<li>Easy to use wizards to create</li>',
'<li>Run SQL dynamically using Dynamic Actions</li>',
'<li>Dynamic partial page refresh</li>',
'</ul>',
'</p>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3246484354403753727)
,p_plug_name=>'About this Application'
,p_parent_plug_id=>wwv_flow_imp.id(2054989012285109804)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2>About this Application</h2>',
'<p>This application demonstrates a number of different dynamic actions that can be incorporated into an application. These declarative client side behaviors include simple examples for manipulating the display of components, style examples for changi'
||'ng the appearance of components, and server side examples which interact with the database. Some of the examples include plug-ins which further extend the capabilities of dynamic actions.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2054989145793109805)
,p_name=>'&APP_NAME.'
,p_template=>2674017834225413037
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'t-HeroRegion--featured'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_new_grid_row=>false
,p_grid_column_span=>4
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select aa.version app_version,',
'       to_char(aa.pages,''999G999G990'') pages,',
'       ''Oracle'' vendor',
'from apex_applications aa',
'where aa.application_id = :APP_ID'))
,p_ajax_enabled=>'Y'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_lazy_loading=>false
,p_query_row_template=>2100515439059797523
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2054989261739109806)
,p_query_column_id=>1
,p_column_alias=>'APP_VERSION'
,p_column_display_sequence=>1
,p_column_heading=>'App version'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2054989302768109807)
,p_query_column_id=>2
,p_column_alias=>'PAGES'
,p_column_display_sequence=>2
,p_column_heading=>'Pages'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2054989383246109808)
,p_query_column_id=>3
,p_column_alias=>'VENDOR'
,p_column_display_sequence=>3
,p_column_heading=>'Vendor'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3246484944523753731)
,p_plug_name=>'Help'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8199705487948627945)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_display_condition_type=>'NEVER'
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_imp_page.create_page(
 p_id=>26
,p_name=>'Administration'
,p_alias=>'ADMINISTRATION'
,p_step_title=>'Administration'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2177342022680308163)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8199705487948627945)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2177342392269308168)
,p_plug_name=>'Administration Options'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(2177343443554308181)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_imp_page.create_page(
 p_id=>101
,p_name=>'Login'
,p_alias=>'LOGIN'
,p_step_title=>'Sign In | Sample Dynamic Actions'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.appIcon.sample_dyn_act {',
'background-position: -320px -192px;',
'}',
'',
'.appIcon {',
'display: inline-block;',
'width: 64px;',
'height: 64px;',
'background-image: url(#IMAGE_PREFIX#eba/img/eba_launchpad.png);',
'background-repeat: no-repeat;',
'border: none;',
'-webkit-border-radius: 4px;',
'-moz-border-radius: 4px;',
'border-radius: 4px;',
'-webkit-box-shadow: 0 0 1px rgba(0,0,0,0.75) inset;',
'-moz-box-shadow: 0 0 1px rgba(0,0,0,0.75) inset;',
'box-shadow: 0 0 1px rgba(0,0,0,0.75) inset;',
'margin-right: 8px;',
'vertical-align: middle;',
'}'))
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'U'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8199704683904627939)
,p_plug_name=>'Sample Dynamic Actions'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3133301939060177008)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8199704683904627939)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8199704796507627943)
,p_name=>'P101_USERNAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8199704683904627939)
,p_prompt=>'Username'
,p_placeholder=>'username'
,p_post_element_text=>'<span class="t-Login-iconValidation a-Icon icon-check"></span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>100
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'I'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8199704896233627943)
,p_name=>'P101_PASSWORD'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8199704683904627939)
,p_prompt=>'Password'
,p_placeholder=>'password'
,p_post_element_text=>'<span class="t-Login-iconValidation a-Icon icon-check"></span>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>64
,p_cMaxlength=>100
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3250062858752173676)
,p_name=>'Set Focus'
,p_event_sequence=>10
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'( $v( "P101_USERNAME" ) === "" )'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3250063160836173677)
,p_event_id=>wwv_flow_imp.id(3250062858752173676)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_USERNAME'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3250063340738173677)
,p_event_id=>wwv_flow_imp.id(3250062858752173676)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_PASSWORD'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8199705171419627945)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8193548766591646820
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8199705078323627944)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8193548673495646819
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8199705373243627945)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8193548968415646820
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8199705268925627945)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8193548864097646820
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(2583209151583572944)
,p_welcome_message=>'This application installer will guide you through the process of creating your database objects and seed data.'
,p_configuration_message=>'You can configure the following attributes of your application.'
,p_build_options_message=>'You can choose to include the following build options.'
,p_validation_message=>'The following validations will be performed to ensure your system is compatible with this application.'
,p_install_message=>'Please confirm that you would like to install this application''s supporting objects.'
,p_upgrade_message=>'The application installer has detected that this application''s supporting objects were previously installed.  This wizard will guide you through the process of upgrading these supporting objects.'
,p_upgrade_confirm_message=>'Please confirm that you would like to install this application''s supporting objects.'
,p_upgrade_success_message=>'Your application''s supporting objects have been installed.'
,p_upgrade_failure_message=>'Installation of database objects and seed data has failed.'
,p_get_version_sql_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from user_tables',
' where table_name like ''EBA_DEMO_DA_%'''))
,p_deinstall_success_message=>'Deinstallation complete.'
,p_deinstall_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'drop table eba_demo_da_emp;',
'drop table eba_demo_da_dept;',
'drop procedure eba_demo_da_data;'))
,p_required_free_kb=>100
,p_required_sys_privs=>'CREATE PROCEDURE:CREATE TABLE:CREATE TRIGGER:CREATE VIEW'
,p_required_names_available=>'EBA_DEMO_DA_EMP:EBA_DEMO_DA_DEPT:EBA_DEMO_DA_DATA'
);
end;
/
prompt --application/deployment/install/install_set_plscope_settings
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(3348439037375864142)
,p_install_id=>wwv_flow_imp.id(2583209151583572944)
,p_name=>'Set plscope_settings'
,p_sequence=>5
,p_script_type=>'INSTALL'
,p_script_clob=>'ALTER SESSION SET PLSCOPE_SETTINGS = ''IDENTIFIERS:NONE'';'
);
end;
/
prompt --application/deployment/install/install_create_tables
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(2583259138554578633)
,p_install_id=>wwv_flow_imp.id(2583209151583572944)
,p_name=>'Create Tables'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  CREATE TABLE "EBA_DEMO_DA_DEPT" ',
'   (    "DEPTNO" NUMBER(2,0), ',
'    "DNAME" VARCHAR2(14 BYTE), ',
'    "LOC" VARCHAR2(13 BYTE)',
'   ) ;',
'  ALTER TABLE "EBA_DEMO_DA_DEPT" ADD PRIMARY KEY ("DEPTNO");',
'',
'  CREATE TABLE "EBA_DEMO_DA_EMP" ',
'   (    "EMPNO" NUMBER(4,0) NOT NULL, ',
'    "ENAME" VARCHAR2(10 BYTE), ',
'    "JOB" VARCHAR2(9 BYTE), ',
'    "MGR" NUMBER(4,0), ',
'    "HIREDATE" DATE, ',
'    "SAL" NUMBER(7,2), ',
'    "COMM" NUMBER(7,2), ',
'    "DEPTNO" NUMBER(2,0)',
'   ) ;',
'  ALTER TABLE "EBA_DEMO_DA_EMP" ADD PRIMARY KEY ("EMPNO");',
'',
'  ALTER TABLE "EBA_DEMO_DA_EMP" ADD FOREIGN KEY ("MGR")',
'      REFERENCES "EBA_DEMO_DA_EMP" ("EMPNO") ENABLE;',
' ',
'  ALTER TABLE "EBA_DEMO_DA_EMP" ADD FOREIGN KEY ("DEPTNO")',
'      REFERENCES "EBA_DEMO_DA_DEPT" ("DEPTNO") ENABLE;',
'      ',
'  CREATE INDEX "EBA_DEMO_DA_EMP_1" ON "EBA_DEMO_DA_EMP" ("MGR");',
'  CREATE INDEX "EBA_DEMO_DA_EMP_2" ON "EBA_DEMO_DA_EMP" ("DEPTNO");',
'  ',
''))
);
end;
/
prompt --application/deployment/install/upgrade_refresh_data
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(2583378737777597314)
,p_install_id=>wwv_flow_imp.id(2583209151583572944)
,p_name=>'Refresh Data'
,p_sequence=>10
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  eba_demo_da_data;',
'end;',
'/',
''))
);
end;
/
prompt --application/deployment/install/install_insert_data
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(2583286656216583716)
,p_install_id=>wwv_flow_imp.id(2583209151583572944)
,p_name=>'Insert Data'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace procedure eba_demo_da_data as',
'begin',
'delete eba_demo_da_emp;',
'delete eba_demo_da_dept;',
'',
'Insert into EBA_DEMO_DA_DEPT (DEPTNO,DNAME,LOC) values (10,''ACCOUNTING'',''NEW YORK'');',
'Insert into EBA_DEMO_DA_DEPT (DEPTNO,DNAME,LOC) values (20,''RESEARCH'',''DALLAS'');',
'Insert into EBA_DEMO_DA_DEPT (DEPTNO,DNAME,LOC) values (30,''SALES'',''CHICAGO'');',
'Insert into EBA_DEMO_DA_DEPT (DEPTNO,DNAME,LOC) values (40,''OPERATIONS'',''BOSTON'');',
'',
'Insert into EBA_DEMO_DA_EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7839,''KING'',''PRESIDENT'',null,to_date(''17-11-81'',''DD-MM-RR''),5000,null,10);',
'Insert into EBA_DEMO_DA_EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7698,''BLAKE'',''MANAGER'',7839,to_date(''01-05-81'',''DD-MM-RR''),2850,null,30);',
'Insert into EBA_DEMO_DA_EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7782,''CLARK'',''MANAGER'',7839,to_date(''09-06-81'',''DD-MM-RR''),2450,null,10);',
'Insert into EBA_DEMO_DA_EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7566,''JONES'',''MANAGER'',7839,to_date(''02-04-81'',''DD-MM-RR''),2975,null,20);',
'Insert into EBA_DEMO_DA_EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7788,''SCOTT'',''ANALYST'',7566,to_date(''09-12-82'',''DD-MM-RR''),3000,null,20);',
'Insert into EBA_DEMO_DA_EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7902,''FORD'',''ANALYST'',7566,to_date(''03-12-81'',''DD-MM-RR''),3000,null,20);',
'Insert into EBA_DEMO_DA_EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7369,''SMITH'',''CLERK'',7902,to_date(''17-12-80'',''DD-MM-RR''),800,null,20);',
'Insert into EBA_DEMO_DA_EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7499,''ALLEN'',''SALESMAN'',7698,to_date(''20-02-81'',''DD-MM-RR''),1600,300,30);',
'Insert into EBA_DEMO_DA_EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7521,''WARD'',''SALESMAN'',7698,to_date(''22-02-81'',''DD-MM-RR''),1250,500,30);',
'Insert into EBA_DEMO_DA_EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7654,''MARTIN'',''SALESMAN'',7698,to_date(''28-09-81'',''DD-MM-RR''),1250,1400,30);',
'Insert into EBA_DEMO_DA_EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7844,''TURNER'',''SALESMAN'',7698,to_date(''08-09-81'',''DD-MM-RR''),1500,0,30);',
'Insert into EBA_DEMO_DA_EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7876,''ADAMS'',''CLERK'',7788,to_date(''12-01-83'',''DD-MM-RR''),1100,null,20);',
'Insert into EBA_DEMO_DA_EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7900,''JAMES'',''CLERK'',7698,to_date(''03-12-81'',''DD-MM-RR''),950,null,30);',
'Insert into EBA_DEMO_DA_EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7934,''MILLER'',''CLERK'',7782,to_date(''23-01-82'',''DD-MM-RR''),1300,null,10);',
'',
'end;',
'/',
'begin',
'  eba_demo_da_data;',
'end;',
'/',
''))
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
