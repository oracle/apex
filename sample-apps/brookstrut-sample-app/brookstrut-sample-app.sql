--------------------------------------------------------------------------------
-- Name: Brookstrut Sample App
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
,p_default_application_id=>7210
,p_default_id_offset=>43061406402105851
,p_default_owner=>'ORACLE'
);
end;
/
 
prompt APPLICATION 7210 - Brookstrut Sample App
--
-- Application Export:
--   Application:     7210
--   Name:            Brookstrut Sample App
--   Exported By:     ORACLE
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     49
--       Items:                   88
--       Computations:            10
--       Validations:              4
--       Processes:               37
--       Regions:                142
--       Buttons:                 93
--       Dynamic Actions:         23
--     Shared Components:
--       Logic:
--         Items:                  9
--         Processes:              2
--         Build Options:          3
--       Navigation:
--         Lists:                  9
--         Breadcrumbs:            1
--           Entries:             45
--         NavBar Entries:         2
--       Security:
--         Authentication:         1
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                  17
--         Shortcuts:              1
--       PWA:
--       Globalization:
--         Messages:              12
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--       Install scripts:         25
--   Version:         24.2.0
--   Instance ID:     743327026234597
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
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Brookstrut Sample App')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'BROOKSTRUT')
,p_application_group=>wwv_flow_imp.id(4125433736958071892)
,p_application_group_name=>'Sample Applications'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'37FEB2C9022D01DA387D1F55A9135263A65396CA4B2902FDAAF18B0E3E2C24DD'
,p_checksum_salt_last_reset=>'20150102074546'
,p_bookmark_checksum_function=>'SH1'
,p_accept_old_checksums=>false
,p_compatibility_mode=>'24.2'
,p_accessible_read_only=>'N'
,p_session_state_commits=>'IMMEDIATE'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>wwv_flow_string.join(wwv_flow_t_varchar2(
'1.0.18 -> 1.0.19: Fixed translation issue on "Timeframe (4 weeks)" LOV',
'1.0.19 -> 1.0.20: Replaced mixed case column aliases in select statement for "Top Users" Interactive report'))
,p_authentication_id=>wwv_flow_imp.id(44425077500209133457)
,p_populate_roles=>'A'
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'Brookstrut Sample App'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'24.2.2'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_referrer_policy=>'strict-origin-when-cross-origin'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T'
,p_pass_ecid=>'N'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_authorize_public_pages_yn=>'Y'
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_tokenize_row_search=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Brookstrut Sample App'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>20
,p_version_scn=>37170581724061
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_apple_status_bar_style=>'black-translucent'
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
 p_id=>wwv_flow_imp.id(7210)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_navigation_list_id=>wwv_flow_imp.id(37161851549074192104)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--classic'
,p_include_legacy_javascript=>'18'
,p_include_jquery_migrate=>true
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(37162155218914286481)
,p_nav_bar_list_template_id=>2847543055748234966
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(37161851549074192104)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>37167692709710
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(37161851705824192104)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1,14'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(37161851770842192104)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-line-chart'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(37161852003057192104)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Stores [&STORES.]'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cart-full'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6,7,3,43'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(37161852049832192104)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Products [&PRODUCTS.]'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-archive'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11,12'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(37161852303141192104)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Transactions'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-credit-card'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'28,29,30,31,33,34,35'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(37161852362973192104)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Reports'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'19,20,22,25,20,26,27,32,36,37,38,2,23,42'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(37161852452733192104)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-gear'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4,8,9,13,15,16,17,24,21,,40,41,42,45,23,39'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(37162155218914286481)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>37167692709710
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38956297963038765910)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Install App'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(37162155797438286482)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'a-Icon icon-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(37162156212525286483)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_parent_list_item_id=>wwv_flow_imp.id(37162155797438286482)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/application_actions
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(38797542156837024721)
,p_name=>'Application Actions'
,p_list_status=>'PUBLIC'
,p_version_scn=>37167692709710
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38800518273725068239)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Sales Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-line-chart'
,p_list_text_01=>'Analysis dashboard of sales data.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38798991067502784420)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Store Locations Map'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10:::'
,p_list_item_icon=>'fa-map-o'
,p_list_text_01=>'Set production promotions by store using map interface.'
,p_required_patch=>wwv_flow_imp.id(38815931759832039124)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38797544865972036835)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Regions'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-globe'
,p_list_text_01=>'Each store is mapped to a geographic region'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38797542376290024722)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Stores'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-shopping-bag'
,p_list_text_01=>'Identify attributes, products sold, discounts and geographic region'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38797547355714043269)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Products'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-package'
,p_list_text_01=>'Identify product items available for sale at one or more stores'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13900537631378623805)
,p_list_item_display_sequence=>56
,p_list_item_link_text=>'Sales History'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2:::'
,p_list_item_icon=>'fa-credit-card'
,p_list_text_01=>'Identify product items available for sale at one or more stores'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38815933856416066603)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Generate Transactions'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-gears'
,p_list_text_01=>'Generate sale transactions'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38815934152278216742)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Analysis Reports'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_list_text_01=>'Run reports to analyze sales history data.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(39055515224605557951)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user'
,p_list_text_01=>'Run reports to analyze sales history data.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/settings
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(38799605856489305743)
,p_name=>'Settings'
,p_list_status=>'PUBLIC'
,p_version_scn=>37167692709710
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38799606649607305745)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Top Users'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-line-chart'
,p_list_text_01=>'Report of page views aggregated by user.'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38799638451144493495)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Activity Calendar'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17:::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'Calendar view of all application activity by user.'
,p_list_text_02=>'calendarIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38819363052553503052)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Event Log'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'View administrative and debug event log.'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(37262858958664191696)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Theme Style'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&SESSION.::&DEBUG.:RP,10010:::'
,p_list_item_icon=>'fa-desktop'
,p_list_text_01=>'Set application user interface theme style for all users'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(40264668243592827185)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Build Options'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&SESSION.::&DEBUG.:RP,10020:::'
,p_list_item_icon=>'fa-check-square-o'
,p_list_text_01=>'Set application configuration'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(24560913119094664287)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Page Views'
,p_list_item_link_target=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:RP,10020:::'
,p_list_item_icon=>'fa-analytics'
,p_list_text_01=>'Set application configuration'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/reports
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(38800558852306334567)
,p_name=>'reports'
,p_list_status=>'PUBLIC'
,p_version_scn=>37167692709710
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38800564472270406620)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sales by Region by Week'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-dollar'
,p_list_text_01=>'Weekly sales metrics by region'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38815879767192521351)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Sales by Product and Region by Week'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-dollar'
,p_list_text_01=>'Interactive report of weekly sales metrics by product by region'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38815896067810616206)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Sales by Store by Day'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'View monthly calendar of sales by store by day'
,p_list_text_02=>'calendarIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38815910746253679170)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Products Available by Store'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-archive'
,p_list_text_01=>'View percentages of products available at each store'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38816038048665122711)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Table Row Counts'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'View a list of the database tables used by this demonstration system and the current row counts.'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/transactions
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(38815918276539324884)
,p_name=>'Transactions'
,p_list_status=>'PUBLIC'
,p_version_scn=>37167692709710
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38816027653496922384)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Reset Sample Data'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-gear'
,p_list_text_01=>'Reset sales history to t-shirt sizes'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38815918466530324884)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Generate Transaction on Button Click'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-gear'
,p_list_text_01=>'Generate one transaction for a random product from a random store.  Press button complete transaction.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38815925058249849479)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Generate Transaction on Page Load'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-gear'
,p_list_text_01=>'Generate one transaction by loading the page.  Includes option to automatically resubmit page via javascript.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38815930673365920025)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Generate 100 Transactions on Page Load'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-gear'
,p_list_text_01=>'Generate 100 transactions.  Click button to generate another 100 transactions.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38962148789261595151)
,p_list_item_display_sequence=>300
,p_list_item_link_text=>'Remove Transaction History'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-trash-o'
,p_list_text_01=>'Remove transaction history.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/transaction_reports
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(38816055057012777941)
,p_name=>'Transaction Reports'
,p_list_status=>'PUBLIC'
,p_version_scn=>37167692709710
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38816055265616777941)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Transactions Log'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_list_text_01=>'Report listing each call made to the transaction generator.'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38816378374768189967)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'API Calls Per Minute'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_list_text_01=>'Summary report of API calls summarized by minute.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38816381573514199104)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'API Calls Per Hour'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-file-o'
,p_list_text_01=>'Summary report of API calls summarized by hour.'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/reset_sample_data_list
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(38828608467657418982)
,p_name=>'reset sample data LIST'
,p_list_status=>'PUBLIC'
,p_version_scn=>37167692709710
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38828608650084418985)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Reset Data to S'
,p_list_item_link_target=>'javascript:$s(''P40_SIZE'',''S'');apex.submit({showWait:true});'
,p_list_item_icon=>'fa-cog'
,p_list_text_01=>'Truncate existing sales history data and generate 500 rows of sales history'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38828608975540418992)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Reset Data to M'
,p_list_item_link_target=>'javascript:$s(''P40_SIZE'',''M'');apex.submit({showWait:true});'
,p_list_item_icon=>'fa-cog'
,p_list_text_01=>'Truncate existing sales history data and generate 1,000 rows of sales history'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38828609257409418992)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Reset Data to L'
,p_list_item_link_target=>'javascript:$s(''P40_SIZE'',''L'');apex.submit({showWait:true});'
,p_list_item_icon=>'fa-cog'
,p_list_text_01=>'Truncate existing sales history data and generate 5,000 rows of sales history'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38828609547316418992)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Reset Data to XL'
,p_list_item_link_target=>'javascript:$s(''P40_SIZE'',''XL'');apex.submit({showWait:true});'
,p_list_item_icon=>'fa-cog'
,p_list_text_01=>'Truncate existing sales history data and generate 25,000 rows of sales history'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38829174246425849203)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Reset Data to 2XL'
,p_list_item_link_target=>'javascript:$s(''P40_SIZE'',''XXL'');apex.submit({showWait:true});'
,p_list_item_icon=>'fa-cog'
,p_list_text_01=>'Truncate existing sales history data and generate 50,000 rows of sales history'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(40038021293134692578)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Reset Data to 3XL'
,p_list_item_link_target=>'javascript:$s(''P40_SIZE'',''XXXL'');apex.submit({showWait:true});'
,p_list_item_icon=>'fa-cog'
,p_list_text_01=>'Truncate existing sales history data and generate 100,000 rows of sales history'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(40038044006262709091)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Reset Data to 4XL'
,p_list_item_link_target=>'javascript:$s(''P40_SIZE'',''4XL'');apex.submit({showWait:true});'
,p_list_item_icon=>'fa-cog'
,p_list_text_01=>'Truncate existing sales history data and generate 1,000,000 rows of sales history'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(40038081749418680918)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Reset Data to 5XL'
,p_list_item_link_target=>'javascript:$s(''P40_SIZE'',''5XL'');apex.submit({showWait:true});'
,p_list_item_icon=>'fa-cog'
,p_list_text_01=>'Truncate existing sales history data and generate 5,000,000 rows of sales history'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_interface
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(41204083367716353325)
,p_name=>'User Interface'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(41204077179329353289)
,p_version_scn=>37167692709710
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(41204083746878353327)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A866000000017352474200AECE1CE90000200049444154785EED5D097855D5B5FE338F0C8184908410260199670165901941AAB62A6A1D5AAB566D95EA57FBDA6A9DEBABED';
wwv_flow_imp.g_varchar2_table(2) := '435BADDABEFA54B4685BAB9641A3200450668940884C81988424843112C87893F7AD432E84EBBDF7CCE7EC73CEDADFC7F701779FBDD7FED7DAFF596BEDE144800B23C00878168108CF8E9C07CE0830026002602360043C8C0013808795CF4367049800D8';
wwv_flow_imp.g_varchar2_table(3) := '0618010F23C004E061E5F3D019012600B60146C0C30830017858F93C74468009806D8011F030024C001E563E0F9D116002601B60043C8C0013808795CF4367049800D80618010F23C004E061E5F3D019012600B60146C0C30830017858F93C7446800980';
wwv_flow_imp.g_varchar2_table(4) := '6D8011F030024C001E563E0F9D116002601B60043C8C0013808795CF4367049800D80618010F23C004E061E5F3D019012600B60146C0C30830017858F93C74468009806D8011F030024C0021943F7CFABCCC603F35C5FA323C6C2FC20F3DBA21AA229890';
wwv_flow_imp.g_varchar2_table(5) := 'F92B96940B2FBC0D027A960006CD9A3B1900FD01D032A915FBD67FDBA009EED22A04F2CE7714B10680F4EF82DC656DFEDF2A51ECEFC733043068D6DCC7DA4C769EE8F6DB9E8812B49240C4E35E2104D712C0F937BCF476E7092FE274135FA63CE0AC97E0';
wwv_flow_imp.g_varchar2_table(6) := '5642701D019C7DD3B73C2ABE6DB1840E4380C8C0759E812B08A08D7BCF13DF61B3CAA1E2BA860C1C4D003CF11D3A7DDC23B6E389C0B104C0AEBE7B66910B46E25822701C01F0C477C17471ED10A41C41EB6A933306E92802E0C9EF0CA3F2B8948EF2061C';
wwv_flow_imp.g_varchar2_table(7) := '41003CF13D3EA51C397C677803C213004F7E475A3F0B2D21203E09084D003CF9791E391F01B149405802E0C9EF7CD3E711F8111097048424009EFC3C75DC87809824201C01F0E4779FE9F388C4F5048422009EFC3C55DC8F80589E80300470F6F45ECB6A';
wwv_flow_imp.g_varchar2_table(8) := 'F71B008FD0EB0814E42E1766DE0923C8A0597368F2F3B15DAFCF0E4F8C5F1C2F40080260D7DF1356CF83BC00013148C0760260D79FE7855711102114108000D8F5F7EA04E071DBEF05D84A00FCF6E729C008D84B02361300BFFD7902781D018F1200BFFD';
wwv_flow_imp.g_varchar2_table(9) := 'BD6EF83CFEF308D84702B67900BCECC7138011B07F87A09D04D0C206C00830026711B06B45C0160260F79FCD9E110844C09E30C02602E0E41F4F00462010013BBC00CB0980DFFE6CF88C402804222EB7FA0B447610007FB987670023101401EBC3001B08';
wwv_flow_imp.g_varchar2_table(10) := '80DD7FB67E462004027905B9CB2FB7121D3B08C0B1D9FFD8E86874484E42BBC40424C6C7212136161111E721A481D53734E24C5D1D4ED5D6A2BAE60CEA1A1AACD427F7E57004ACCE03584A004E8CFF23232391D9B9132ECACE42769754A4242721393101';
wwv_flow_imp.g_varchar2_table(11) := '49F1F1888F8B45645B026869417D2311407D2B019C46C5B113D8575A8E92AA2A34343639DC3C597CF311B0360CB098009CE3FED39BBD5F7616260D1F8CECB454C4C5C622263A4AB5FE7DBE66D43536A0EA44353EDFB10BDBF616A1B9C5B14E90EAF1F303';
wwv_flow_imp.g_varchar2_table(12) := '6A116002508B98A1F5A3A3A2A437FD8CD1C3D1AF7B3790076064A9387A0C1F6EDC8ABD65E552B8C085110840C0D23C80D51E80D0AFBEB48E1D3066405F8C1DD81FED12124CB3CCBA86466CDF7F009FEF2C44C9E123A6F5C30D3B13012BF300961180C8F1';
wwv_flow_imp.g_varchar2_table(13) := '3FB9FB17E774C39491C3D03BB3EB05893D334DA8FCE871ACDB51804D857BD1DCDC6C6657DCB6A310B06E3F80E7098026FF90DE3D70D58471E8989C8C36393D4B4CA6B6BE0179F93BF0E917DBD1E4F359D22777223A02D6E501AC2400E1360051067F48EF';
wwv_flow_imp.g_varchar2_table(14) := '9E983F6D12E263636CB38AC6261F3EFDE24BACDAB69D570A6CD382481DBB9200C45A01A037FFD03E3D317FAABAC9DFD2D2829ADA3A9CAC398D9ADADA0B262CAD1224C6C7A3435222DA2725224A4502B1B1A909CB376CC1DAED05686E163A5522D24C71AB';
wwv_flow_imp.g_varchar2_table(15) := '2C9625022DF400C42280013DB271EDE51390D22E599111917B7EB0E230BEFABA1415478FB712401D1A1ACF67F263A2A3A50D42440019D2DE814CF4EFDE0DF4FF4A0A2507977CBE11EB777EA5A43AD7712F024C0066EA96B2FDD74F9D88DE9919B2313FBD';
wwv_flow_imp.g_varchar2_table(16) := '8B69C2E76EDA8A03E595A098DDA7206147CB877131D1484FE98899978C3CBBA4A820C1505D731A6F7EBC0AFB0F55980901B72D380256AD0458E90108E1D7D23AFFCC4B4660DAC861B2D97EDAC6FBC5EEFD926B7EA6BE5EB3C9D016E24B070FC0E5238648';
wwv_flow_imp.g_varchar2_table(17) := 'A1815C292C2EC1DB2BD7E0D4995AB9AAFCBB4B1160023049B13D33D2F1C3B93364D7F98F9CACC6275BF2B175F73E50DCAFB710D3921770C5B8D1E89E9E16B6390A05967EBE091B76EDE6E541BDC03BF4795711C0F0E9F3321BA37C87ECD60525FEEEBC72';
wwv_flow_imp.g_varchar2_table(18) := '262EEED13DAC2834F9977CB609F42656E2EEAB1917ED32FCCE8471E8939511F6B1D2C347F0D7A5B9EC05A801D74575637C5159F92B96949B3D244B4200510880127277CE9B15767B2FB9FDFF5EB31EDBF6EC377CF2933289847A6574C5B5532E43D74E29';
wwv_flow_imp.g_varchar2_table(19) := '21F54BE705DE5DBD0EEB0B769B6D03DCBE8008300118AC144ACADD416FFF9CEC902D93A3BF7E4721DE5DF3B9216E7FA88E88752F1B3210575E3A06B131A1F71F1C3E7E12CF2E7ED7142232185E6ECE600498000C06B45B5A2A7E7CD56C2487D9E34F5B73';
wwv_flow_imp.g_varchar2_table(20) := '5FFCF7525D093FA562C7C5C4E096595331B067F870E4E50F96634F89EDD193D261713D831060023008487F3353460CC5ECB1A3421EE9A575FE45B99F624751B1C13D876E8EF201F77D6F5ED87D0294847CEB13FA723A172F21C00460A0B669198EB6FB8E';
wwv_flow_imp.g_varchar2_table(21) := 'E8DB3B64ABFBCACAF1C6472BA55D7E5615CA07DC34E3728CEAD7276497C7BF39853FBCFD9E255E8955E3E67EE4117015010C9E3367648B0F5BE5876D4E0DDAF873E3B449E899D9356807B4CCB774FD66ACC9DFA93BDEA65C43624282745B506C740C65FD';
wwv_flow_imp.g_varchar2_table(22) := 'C20E8A4E1F1209842A74BDD83B9FAE45D99163E68013A6D596E666E980126D53AE6F6890FEF0A9456BD4101185513B972FFFC2ECDE2C5905B09B007A6576C50DD32681882058A10D378B57E449DB7CB596E8E868F4C9E98EA1FDFB63F4D021E8DFAB17B2';
wwv_flow_imp.g_varchar2_table(23) := 'D2BB80FEDFA9A5B6AE0EC7ABAB517EB80AC56565D87BB018C5870EE16069198E1C3FCE6460A26299000C047750AF1CDC386DB2B44F3F5829AD3A2A1140C5B1E39A7A4DEBD409D7CC9C81A9978E47DF1E39888A527F7598A68E2D7E883CA5AA63C7505452';
wwv_flow_imp.g_varchar2_table(24) := '8AFC5D85C85DBB4E22062EC623C0046020A6A3FB5F841BA64F0EB9179FDEFC8B57D0D6DB33AA7B4D4D49C1E30BEEC325C3864AF7067AA5D021A86F6A6AB06C551E16BDFF018E1CB33E447133D64C00066A77CCC57D71E3F4C9215BDCBEFFA0E401D08DBE';
wwv_flow_imp.g_varchar2_table(25) := '6A0A4DFEBF3CFD24FAF6ECA1E631D7D52D292FC78B8BDEC29ACD5B70A696CF2F18A160260023506C6D438E00BEDC77008B57E6A9BA8C83DCFEC7EEFF29268E196DA0A4CE6D8AF2051F7CB212EF2C5B8E03A5DA7329CE45C058C999000CC4539600F61F90';
wwv_flow_imp.g_varchar2_table(26) := '4280B667FBC3754F89BDDBAFFD1EEE987F9DA7DC7E3995508E605BC12EBCFCF7B7B179C70E537753CAC9E2F4DF99000CD4E0680A01A64D0A79FC970EFD1001D00D3F4A4AFFDEBDF0C4CF16E0E2DEBD9454F7541D2281A292123CF3F25FB065C74E26018D';
wwv_flow_imp.g_varchar2_table(27) := 'DA6702D0085CB0C7E8DEBF1BA7D3D55FC19374C59555520EA0EAC449D95E699DFFDAD9B3F0CBBBEFD29DED6F6AF2A1C9D7245D1D469B82E80FB5DFF67363B202095AE150E5613CF4BB67B173CF5E26010D3A6202D0005AA847E8E82D25013BB56F17B4CA';
wwv_flow_imp.g_varchar2_table(28) := '8953351201D06E40B9929C942465FD675C76A95CD5A0BFD3F1E29243E5D2F219ADA79FFCA61A13060F4062421CA2A363101F9F80A4E476484C4E464242A2A3C98048E0C917FF8C0DF95FF29E0195D6C204A012B070D5D33B7594082027BD4BC849F9FEDA';
wwv_flow_imp.g_varchar2_table(29) := '0D585F50287B21676AA714BCF1FB67D13D33FC79FE601D1D2C2B9312655B77EE4471D9219C3A7D5A92E9DE6BE65E7046212636164949C948E99C868C6ED9122938D52B282DAFC0C2575FC3AA8D1B990454D83413800AB0E4AA92EB4F21008502A1CACE03';
wwv_flow_imp.g_varchar2_table(30) := 'C592174077FE852B995DBA60F9AB7F55B5C3CFE7F361D9AAD57865F13BA83C7A144D4DE73F127AF5C4F198346C50D02E291C68898C822FBE1DA68C1FA73BE490C3C98CDF292750565189A75F7A19EBB7E57338A010642600854029AD462701E91EC0A8A8';
wwv_flow_imp.g_varchar2_table(31) := 'E0DFFAA3FDEE7F7E6F19281F109600D2D3F1F1EBAF2AED56FA54F8E2FF2CC5DFFEF14F9C0E4832D2EDC1BFBAE57AD0D1E050A5B0B8148B57AEC13D37DF84EBAE98EDD85507CE09283619A92213803ABC646BF7CECAC00FE74C973EEB1DAAD08EC0D796AF';
wwv_flow_imp.g_varchar2_table(32) := '40439B377460DD4C1504406FFED7DE7D0FAFBCFD0EEA032E15A5CB49AF99381EE3075F1C56F637723F45FEDE22E980D14F6EF93E6EBC72AE233D011A24E70464CDF45C052600E55829AA191B138DBBAF9A03BA143454A16BB8967EB649FA5457A86B40D5';
wwv_flow_imp.g_varchar2_table(33) := '10C07F56AC9496C302DFFC74028BC211BA9A3CD4F90492F1E4A91AFC6EF1BBE7C292E4C444FCE6A7F762F6E4498AC62C6225CE0928D30A1380329C54D5A273F7DF9F3925EC33DF9C3E23E5027697043FE4A2940028E177CF238FA1ACB2F25BFDD15D80D7';
wwv_flow_imp.g_varchar2_table(34) := '4F9D801E195D11EE38E6871BB6483713B72D947C7CE5A927909DA13E09A90A2C932A734E4019B04C00CA7052558B3ECCF1F31BAE41466AE7B0CFD127BBFFB57A9D74063FF04A702504404B7D7F7A7D917448A66DC28F3AA5EF025C3D611C8687B99C84EA';
wwv_flow_imp.g_varchar2_table(35) := 'D145207F7A7789F405A2B6857621DE72F555B8FFB65BC25E6EAA0A181B2A734E203CE84C002619E5E05E39B869C614D98F81D297793EDA405F03AAB8201C504200B4BEFFF0C2E7B063F79EF3311D80F44E2998396604865DD42BECB25EA3CF87159BB761';
wwv_flow_imp.g_varchar2_table(36) := 'D5B61D41BF183C62D0403CF5C002C77A017E50382710DAC899004C2280B8D81829F976C9807EB23D541E3F81CF771462F3577BCF9D14544200AB376CC4C30B9F978ECB52A184DFC01EDD3179C460F4CC087E2B515B610E965762F1A76B70E4447550193B';
wwv_flow_imp.g_varchar2_table(37) := 'B66F2F11C0A44BC6C88E41F40A9C1308AE212600132D97BECC435F05CE4CED24DB0B1D10DA5756217D1B9042828C2E5DC22E03D2F6DE45EFBD8FE75F7F430A1F68A96FE69891D25B3F213E2E6CCC4FC2D03E847FAC5A0B3AA21CEA8B44B429E8A13B7F84';
wwv_flow_imp.g_varchar2_table(38) := '1B1CBC22E0079E73024C00B293D08C0AE306F5C7BC4BC722214ED9251EB44F607B51314AAA8EE1B9471F41645454EBBEFDF3FB0AC898E93CFC2B7F5F8CD5EBD76344BF3E1837B07FD875FEB663A3DCC1BAED05F860DD46D921DF7CF57770DFADB7203E2E';
wwv_flow_imp.g_varchar2_table(39) := 'F82D47B20D0856817302172A843D00930D9476D94D1F350CD3460D0F7955783011E8ED9B909888E4761DA4BDFA316D08A4A9B10967CED4E0507939E0F3A96AD7E76BC696DD7BF1AFBCCF407F972BDF9D39030FDD7587B43FC02D857302E735C904608155';
wwv_flow_imp.g_varchar2_table(40) := '536C3E6DD4304C1D3934ECDDFC668B4213FE8B3DFBB1E4F34D8A8F24BB91000867CE099CB5362600B3675D6BFBB44168FCA08B31EB9251B22B036688446EFF96AFF662D9FA2D8A273FC9E1B6108073021C029831BF14B519191981B103FB63E6E811E890';
wwv_flow_imp.g_varchar2_table(41) := '9CA4E819232A51C26F53E16EE99B044ADC7E7F9F1486FCE2AE3B309F928091C1CF3618219F9D6D783D27C01E800DD647F7064C193914BD32334CF506689DBFECF011ACD95E00BA8F506D49E940CB803F73FD7D845ECE093001A89D1506D56F979820EDD3';
wwv_flow_imp.g_varchar2_table(42) := '1F3BA01FB2BAA486BC4A5C6B77B4C36FE3AEDDC8DF7F00474F7EA3E978AC5B360229C1D0AB3901260025D661521D5A21488A8F03ED1A9C346C08E84211BD850EF6AC2FF84ADA5444DF1FA44F6E6929F439F11F5D7F2DEEBA61BEA3B7022B1DBB57F70930';
wwv_flow_imp.g_varchar2_table(43) := '0128B51093EB518CDDA75B0646F7EF0BFAC4187DF3AF5D62129A5B9A41DFCE0B2CFE7BFD8844CED4D5635FE92169796FF7D7A5B2978D28194A4E5626FEF2D493C8EA1AFA54A392769C56C76B39012600012D34312E0E17F7EA81DF3E703F6A6BCFA0B1BE';
wwv_flow_imp.g_varchar2_table(44) := 'FE826BAE68F2D3755EF10989D25E81CD058578E2859750A3E18B43C186DF2E2949FA16C18C099709888EF922792927C00460BE3D69EA41C959007FC37421C8E225CBF0C2A245A8ADABD7D49FFF219AFCF7DE7C13E6CF9DE3D80B417401D0FAB05772024C';
wwv_flow_imp.g_varchar2_table(45) := '0046588B096DA82100EA9E3EA9FDCFE51FE1A5B7FEAED913F04FFEEFCD9EE5D82BC18C52855772024C0046598CC1EDA82500EA9E3C814FD67D8617DF7C0BE55547BE754740281129E197D1254DDAF33FD5A197821A0CFFB9E6DC9E13600230CB7274B6AB';
wwv_flow_imp.g_varchar2_table(46) := '8500FC5D965654E0DD8F3E467E61A1F44D80EA53A7BEB50C4879848EEDDBA1677636C60E1B8A7953A77A2EE1A754456ECE09300128B5028BEBE9210012B5B9B91965958771B0B414C587CA51515585BABA3A6914898909C84A4F972EFAE899DD4DFA3BAD';
wwv_flow_imp.g_varchar2_table(47) := '2670098D805B73024C00825ABD5E02683B2C0A0DE898319102159AEC313131AEDDDE6B864ADD9A13600230C35A0C68D3480230401C6EA21501B7E504980004356D2F12C0B153DFA0B82AFC0753CC52D7C8DE7D1437EDA69C00138062B55B5BD18B04F045';
wwv_flow_imp.g_varchar2_table(48) := 'D17EFC73FD67D602DDDADBEF6EBE4D55BF6EC9093001A852BB75959900ACC39A7A524B006EC9093001586B678A7B6302500C952115D51280BF53A7E70498000C311FE31B6102301ED3702D6A25006AD3C9390126006BED4C716F4C008AA132A4A21E0220';
wwv_flow_imp.g_varchar2_table(49) := '019C9A13600230C47C8C6F8409C0784CCDF200A85DA7E6049800ACB533C5BD31012886CA908A7A3D00A7E60498000C311FE31B6102301E53333D80B66D3B2927C00460AD9D29EE8D09403154865434CA03F00BE3949C00138021E6637C235E248086A646';
wwv_flow_imp.g_varchar2_table(50) := '9C5679A1494D5D9DB479A8AAFAA42E25184D004EC9093001E8321BF31E1685009A5B5A507AF4A834D0EC54E36F2FD68360F5993358BA65330A4ABFD674EB71DBBE8D2600A7E4049800F458A089CF8A4000F435A1BDE5E5F860F3D98F885E35662CFA6666';
wwv_flow_imp.g_varchar2_table(51) := '0A718A9026FFC7F9DBF065F101909C7A8B59044072899C136002D06B39263D6F3701D09B7FCFA143F870DB561C6975AFD33A74C4152346A15F5696E1DF31500323B9FD1F6CDA88C2B21243263FF56D260150FBA2E6049800D4589E8575ED2680AF8F1CC1';
wwv_flow_imp.g_varchar2_table(52) := 'E2756B507DBA062DADE38E00D0212919374E98849CB4340BD138DF154DFEB73F5B8BA2CA0ADD6EBF152180BF0F5173024C00B698B17CA77611803FE67F6DD54AD43604BF613821360E3F9832CDF29C8091317FA006CCF600FCFDD1756D0B9E781A7B8B8B';
wwv_flow_imp.g_varchar2_table(53) := 'E58DC0821A4C001680ACA50B3B08A06DCC7FF2744D58B13B26255B9A13D012F3474690CF0210A9C915AB0880E428DCBF1F0F3EFDDF28ABAC9413CBF4DF99004C87585B0756134060CC2F3765686A599513D012F3D3A5A73DBAA44B3723971E3BBB8A11AE';
wwv_flow_imp.g_varchar2_table(54) := '58490024C747796BF1C8F37F447DBDBEEF38C88D4BEE77260039846CFADD6A020816F3CB0DDD8A9C80D698BF4B878EF8FEC4C9C8DBB513DB0E14C90DC5F42460A000D5A76AF09BE7FF8855EB37C8CA666605260033D1D5D1B65504A024E6971B86593901';
wwv_flow_imp.g_varchar2_table(55) := '2D313FBDF9D3DA77C00FA74C434A72B2B449886E1A922B567B0094145CFAE92A3CF1C29FA58FBAD8559800EC425EA65F2B08404DCC2F0793D13901AD317F4E97745C3D662CD23B9EFDD2B2A80440B2EDDAB70F0F2F7C1EFB8BBF9683D7B4DF99004C8356';
wwv_flow_imp.g_varchar2_table(56) := '5FC3661380DA985F6E3446E604F4C4FC73478E4656A74E204F4074023876E2241E5EF81C3EDBFA851CBCA6FDCE04601AB4FA1ACE484BC37FFEFA3212E2E3F53514E2692D31BF9C2046E404F4C6FC5D3A743837F9452700F2C01EF99FE7B074D56A39684D';
wwv_flow_imp.g_varchar2_table(57) := 'FB9D09C03468F5359CD6A913DE5CF87BE9AB3D461623627E3979B4E6048C88F9036513390420591F7DFE8F78FFE315E7365BC9616BF4EF4C0046236A507B1DDBB7C7C25FFF12A3870C36A84548DB66FD7BFBE5D6F9DB761A1D1525FDB3C9E7532C8BDA9C';
wwv_flow_imp.g_varchar2_table(58) := '805131BFD308E0F13FBD887FE77E6CE8AE46C54A02C004A0062D0BEB92EBFFF33B6EC7B557CC36A457AD317F4C5414260D3C4B426B76ED44A342125093133032E67712013436364A49C00FF3D618A2632D8D30016841CD8267E8FB7DD75D311BBFBAE7C7';
wwv_flow_imp.g_varchar2_table(59) := '17C4B45ABBD612F3D39B7FF2C0C1983860A0D4EDDAC25DD2BABA524F40494EC0E898DF490470F8E851890036E67FA955ADBA9F6302D00DA1790D5C326C289E7A6001BAEA3878A335E6A7C93FF6A27E98316C38E26262A441D63736E2932FF3B171DF1EC5';
wwv_flow_imp.g_varchar2_table(60) := '2440CF85CA099811F33B8900F277154A0450525E6E9E11C9B4CC04601BF4F21DA7A7A6E2899FDD8FF12386CB570E52434FCC4F937FDAD06148888DBDA0E5DA8606ACDCFEA56A1208CC099815F33B8500E88BCDFF58FE21FEF0B757D1D8D8A449BF463CC4';
wwv_flow_imp.g_varchar2_table(61) := '0460048A26B54161C09DF3AFC71DF3AF436CEB5B5869577A637E72FBFD6FFEC03EC913A070406B4E20AB73672CD9BC49D5797EFFDEFEC0757E393C445D05387EF224163CF55B901760676102B0137D057DF7E8D60DAF3DFB0C52535214D43E5F456FCC1F';
wwv_flow_imp.g_varchar2_table(62) := '6AF2FB7BF09380969C00791595274FA8CA7CFBF7F607AEF3CB81222A012C7AEF7D2CFCBFD7419E809D8509C04EF415F6FDE08F6EC76DDFBD5A516D23637EB90EB5E604E4DA6DFB7BE0DE7E35CF8A5897F4B3AD6017EE7EF837A8B3F10C801F1B260011AD';
wwv_flow_imp.g_varchar2_table(63) := '2440A6B4CE9DF1FAB3CFA07B66665869CD88F9E5E0D19A13906B977EA7F3FC817BFB953C276A1DD24FFEAE5D52E28FEE0914A1300188A0050532CC9E34118F2FB82FE4D66033637E39F1B4E404E4DAD41AF3CBB56BD7EF67DFFC05F8FDFFBE8ADDFB8B14';
wwv_flow_imp.g_varchar2_table(64) := '5D526285AC4C0056A06C401F8909095870DBAD987FE59CA0FB02CC8EF9E586A0252710AE4DAD31BF9C9C76FD5E545282079F7E06074BCB8499FC840513805D16A1A1DF5ED9D978E4A7F762E4A081E748C0CA985F4E642372026E8CF90F9696E2EE871F45';
wwv_flow_imp.g_varchar2_table(65) := 'C5912372105AFE3B1380E590EBEB90CE06FCEAEE1FA34F8F1C5D7BFB43ADF3EB930ED09313706BCCFFD48B2FA1A8A4542FB4A63CCF04600AACE6354A6F482281C7EEBF0F35BEA673F7F6CBDDE1E797C8BFB73FDC3ABF5EE9B5E40438E6D78BBAB6E79900';
wwv_flow_imp.g_varchar2_table(66) := 'B4E166EB533459FAF4EC819113C7E35443BDE2A3A46DF7F6CBADF3EB1DA0DA9C00C7FC7A11D7F63C138036DC6C7F8A4820BB4777F41B3104317171B2F204DBDB2FFB90CE0A4A72021CF3EB0459E7E34C003A01B4F3F1A8A84874EFD5037D860C0C4B02FE';
wwv_flow_imp.g_varchar2_table(67) := 'C91F6C6FBFD9F287CB0970CC6F36FAF2ED3301C86324740D2281ACEED918306A382263A2BF25AB1531BF1C40C172021CF3CBA166CDEF4C00D6E06C6A2F3499BA666560E8B8311790809531BFDC000373021CF3CB2166CDEF4C00D6E06C7A2F8139013B62';
wwv_flow_imp.g_varchar2_table(68) := '7EB941FA730245872B71EBE429D2BDFD4E2FB40F43E4757E397C9900E41072D0EFFE9C40FF61433061F090A0E7F9ED1E0EE504E85AB1F60909768BA2BB7FFFDE7E91D7F9E506C904208790C37E974820A73B9EFFE57FA157B76E0E93DE39E28ABAB75F2D';
wwv_flow_imp.g_varchar2_table(69) := '824C006A1173407D0A0706F7EB8B677FF110B2BA1A7BADB803866F8988A2EEED573B782600B58839A43E91005D25F6EB7BEE46B78CAE865C2CEA90A19B2AA6D363FE407098004C35177B1BA72BC5A68C1D8B076EFF01B23333EC15C605BDBB21E6670270';
wwv_flow_imp.g_varchar2_table(70) := '8121AA190291C0B8E1C3F0C84FEEE570400D700175DD12F33301E83002A73ECA3901FD9A734BCCCF04A0DF161CD902E704B4A9CD6D313F1380363B70C5539C1350A74637C6FC4C00EA6CC075B53927A04CA56E8DF9990094E9DFD5B5382720AF5EB7C6FC';
wwv_flow_imp.g_varchar2_table(71) := '4C00F2BAF7440DCE090457B3DB637E26004F4C6F6583E49CC085387921E667025036373C538B73026755ED95989F09C033535BF9403927007825E66702503E2F3C55D3AB3901AFC5FC4C009E9AD6EA06EBB59C8017637E26007573C273B5BD9213F06ACC';
wwv_flow_imp.g_varchar2_table(72) := 'CF04E0B929AD7EC05EC8097835E66702503F1F3CF9845B73025E8FF999003C399DB50DDA6D39018EF9BF6D077C2188B6B9E199A7DC9213E0983FB8C9320178662A6B1FA81B72021CF37B8000864F9F97D918E53BA4DDD4F9C95008383527C0317F789B8E';
wwv_flow_imp.g_varchar2_table(73) := 'F14565E5AF58526EB6E54798DD01B5CF04602ECA4ECB0970CC2F6F0F4C00F218718D3608382527C031BF32B36502508613D76A83801372021CF32B33592600653871AD000444CD0970CCAFCE549900D4E1C5B503C20191BE3BC031BF7AF3741501D0F007';
wwv_flow_imp.g_varchar2_table(74) := 'CD9AD3A21E067E422B02A2E40438E6D7A6C182DCE59624E82DE98409409B11E87D4A849C00C7FCDAB4C804A00D377E4A909C00C7FCBA4C31AF2077F9E5BA5A50F8B0951EC06A009315CAC5D50C44C0EA7D021CF3EB561E13806E08B9810B10B02A27C031';
wwv_flow_imp.g_varchar2_table(75) := 'BF2186E7460298FB18D0F2A821F070239A10B02227C031BF26D504066E8F17E42E7BCC8896E4DAB03004600290538615BF9BB54F80637E23B517717941EEB23C235B0CD5969504301968A13C00179B11303A27C031BFD10A7521011044BC17C06843D1DE';
wwv_flow_imp.g_varchar2_table(76) := '9E3F27F0EB7BEF46764686E68638E6D70C5DC807AD5A0224012CF3005A098057028CB717CD2D523870514E0E9E7C700106F4E9A3A99DAD3B0BF0F0C2E75071B84AFA880717DD08589600B48100380FA0DB3C4C68A05BD7AEB8EFD65B307EE408B44F4E02';
wwv_flow_imp.g_varchar2_table(77) := '1143B8E2F3F9507DEA1496AD5A8D17DE7813750D0D2648E5D92699003CAB7A1B071E1717874B478EC0D47163D13BA73BD2535391D2BE03A2A22225A91A1B1B71BCBA1AE587ABF055511172D7AEC38EDD7B4064C0C54804AC8BFF2DF700380F60A4A198D3';
wwv_flow_imp.g_varchar2_table(78) := '565C6C2CB2333390DE3915291DDA23363A1A119191A8ADAB3B47001547AAD0D8D8648E001E6FD5CAF8DF2E02E03C80838C5C0A062222D0C2F1BD155AB3D4FDB78900380F608525711F4E4420C2B20D407E742C5D05381B02CCE5FD004EB44D96D90204AC';
wwv_flow_imp.g_varchar2_table(79) := '8DFF6DF100380F60811D71174E44C072F7DF4602E030C08916CA329B8980F56F7FDB0880BD00330D89DB7622025667FF6DCB01F83B1E348BBD00271A2ACB6C0A02B6B8FF367B004C00A6981237EA4004EC71FF6D2580D61501BE23C081E6CA221B8A806D';
wwv_flow_imp.g_varchar2_table(80) := '6F7F260043F5C88D31025A10B0EFED6F3B01B017A0C560F819172160EBDB5F0802E015011799330F452502F6BEFD0522004E08AAB41CAEEE7804ACDFF61B0C32CBB70287D21B2F0B3ADEA27900CA11B0DDF5F78B2A0C017028A0DC7AB8A6D311B0DFF517';
wwv_flow_imp.g_varchar2_table(81) := '9400381470BA69B3FC720888E1FA0B4900BC2A20673CFCBBB311106BF20B93040C542AE7039C6DE62C7DD0749BE567FD95E841A81C405B81990494A88FEB380301F1DEFCC286004C02CE306996522902E24E7E6143002601A5C6C5F5C44640ECC9EF0802';
wwv_flow_imp.g_varchar2_table(82) := 'E0C4A0D826CED2854240FCC9EF1802682501BA4B90BE2E3C998D8E11101701674C7C47E4008229999383E29A3E4BE6ACC9EF280F20202FC0DE00CF36811070DEC477AC07C0442090DD7B5E9488C7098282DC658F39150A61F701A801B4F55B039C1F5003';
wwv_flow_imp.g_varchar2_table(83) := '1AD7D58180F327BE2B3C801039020E0F7498363F1A0E01E7BAFA21D72ADCAAF0B35E01AD18B44CE29503B76AD9F4FC0813F60000017F4944415471E501116B00E415E42ECB33BD371B3A704508A004B736610255E7A54425A079AF8E7FC23B3AAE57A336';
wwv_flow_imp.g_varchar2_table(84) := 'CF10402028AD1E422B19485E82BF3039A8B12067D66D7D9B4B6F772AAE7DC3CBA9C7B3042007CCF0E9F33283D5698AF565C83DCBBFDB874074435445B0DEF3572C29B74F2A717B66021057372C1923603A024C00A643CC1D3002E222C00420AE6E583246';
wwv_flow_imp.g_varchar2_table(85) := 'C0740498004C87983B6004C4458009405CDDB0648C80E9083001980E3177C008888B001380B8BA61C91801D3116002301D62EE801110170126007175C3923102A623C004603AC4DC0123202E024C00E2EA862563044C478009C07488B90346405C049800';
wwv_flow_imp.g_varchar2_table(86) := 'C4D50D4BC608988E001380E91073078C80B808300188AB1B968C11301D012600D321E60E1801711160021057372C1923603A024C00A643CC1D3002E222C00420AE6E583246C0740498004C87983B6004C4458009405CDDB0648C80E9083001980E3177C0';
wwv_flow_imp.g_varchar2_table(87) := '08888B001380B8BA61C91801D3116002301D62EE801110170126007175C3923102A623F0FF4E79F30FE917D9D20000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(23452271372354554151)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B8000000017352474200AECE1CE90000159449444154785EED9D0958D4F5BAC7BF03CA22222ACAA22082AC8A0BCA66598A997095ACD3A94E9DACFB589E96EB6D714971E9';
wwv_flow_imp.g_varchar2_table(2) := 'A6659AE6522E655E3BAD66A7BA793225B214DC71376513043444440511947DB9CFFB8341861998FFCC7F9961F8FD9EC7071FF8ADEFFB99F77D7FEBA8C01397800809A84494E545B904C001E210889200074894F878610E10674094043840A2C4C70B7380';
wwv_flow_imp.g_varchar2_table(3) := '3803A224C00112253E5E9803C4191025010E9028F1F1C21C20CE802809708044898F17E600710644498003244A7CBCB0D901342C2626A0A55AEA545DFC3BBB9AAC1B6A33D532389B9070DE9CE4617280826362C7011807348C6DFCC9937E09A89634E549';
wwv_flow_imp.g_varchar2_table(4) := '4A49D899A43FBF7C394C025023340D6F7160A4526C235029093B174B55A3D07A1405888323542D62F2A996280992220005C7C42E6EB2386224C3CB1A24016540921D200E8F415A9738B3FC10C90610775712B3607C754900034996605B16809AE049347E';
wwv_flow_imp.g_varchar2_table(5) := 'CCBCA4F4125045C90191E4007178A457BD74354A0F910C004D26CBC3D773A4D3BA943525A524EC8A92B2424901E201B394AA91AB2E69036BC900E2F0C8A57039EA950E2209019ADC20C750799DF2482025619724BA97A4126E7DE451B2BCB54A13504B04';
wwv_flow_imp.g_varchar2_table(6) := '10B73EF22A5B96DA2509A84503C4AD8F2CCA55A852F1568803A490AACCB419D156480280B8FB32533804754B6C302D0A2025569DADACACD0B58B359C1CBA61806B5FB8F6EA059BAE5D9870CA2BAB70B5E826F2AE5DC7ED8A4AD4D4D5A1A1814F060591D3';
wwv_flow_imp.g_varchar2_table(7) := '9C499C1B130B90ACC7343C5DFAC2DFB31F02BD3CE1E7D10FD65656A86F68688644A552C1CA4A85EA9A5AA4E45C42767E0152732FA1A8B4CC301976EADCE2D684CC1220077B3B440C0E40445000DC9C7B19645572AE5CC5F18C2C1C4FCF446D5D5DA74643';
wwv_flow_imp.g_varchar2_table(8) := 'E0E045C5412201923EFEB1E9D215CFC44421C8CB135DACAD05CA40335B554D0D0E9F4B437CF249D4D4D61A5547672A24260E321A20BA3D510FEB0C29056DDBB52BFEF15034FC3CFB6B591D8A6DEAEAEA515D5BCBDC18759CE2238A87E867EB81906BDB73';
wwv_flow_imp.g_varchar2_table(9) := 'E20C761E3E8EBAFA7A29BB69717559A12ED0D8DB1E660310B9AD271FB81FC306796BC1535C5A86ACCB57907FBD08E7F32EE366E96D064DDF9E4E081AE809B7DEBD58ACD4DDDE5E43B934B81D878E62DF9914EECEDAC1DE22001A3F6A382645866AB82D72';
wwv_flow_imp.g_varchar2_table(10) := '6114CB1C3A9786DCAB85CC02E94A64B9FC3CFB6142E8080C7473D5C842EE6CDBEFFB70EAFC05061D4FDA1230094043FE23F6215543C30E291442B3ADA913A3E0DABB67737504CF9E9367F0F3A16382AD87BDAD2DA6C74E84AF473F0D2B46D6EB9BDF9270';
wwv_flow_imp.g_varchar2_table(11) := 'B3ECB614DDB5B83A3A34406415A2428662CA98480DA59FCECCC6D6DF9204C3A3D6AABDAD0D5E7D6C0ADC9D7B372BBAAABA065B7727E16C4EAEC5295F8A0135A85453527FD9F9B33175191D034965816C6DBAE21FB1D1CC6AA813C53C64312EE417183326';
wwv_flow_imp.g_varchar2_table(12) := '0CF7F5C65313C6C2CEC68695B752A9981BDC7EE0085B33E24953021D1A20975E4E58F8ECDFA05E40A6D9D6B1F44C7C9778A0CD98473D7CCA5B5D5383FA56B3AC1E0EDD306DD2830818E001A07165FAD69D72ACD8FA034A44BA315ABCB4B6B666B11AFDDF';
wwv_flow_imp.g_varchar2_table(13) := '125287062834D017FF1933A179AA5D5B5BC7664EFBFF48695337048EBD9D1DA22223F06874343C5A05CE34A777EC660F5A53520344189594DDD182CD500068713235330B074F9EC0E193A751585484AE5D1AB7563A6AEAD0004D1E1D8689E1239BE31FDA';
wwv_flow_imp.g_varchar2_table(14) := 'DFFAF0879F50585CA2531F14330D0DF0C7FC975FC2103F5F93EB6C5762123ED9F62DF2AF16326BD811538706E82FF78FC6D811439BE57EBBA2024B3EDBA67305992CCF88C14158357F1EDCFAF6351B5D959496E1BB5DF1F82EFE1714DEB86136FD12DA11';
wwv_flow_imp.g_varchar2_table(15) := '8B02E84E4525DEFE621B68E6D43AD9D9DAE2F3F7579885E569DDB7BABA3A9C389782159B3623F3E2C50E151F756880A2C34762D2E8B066175651558D8FB6EF6247345A26B23E93C68DC5CAB8B97A3F58B4E0585B57032B955563B0ABE00262F6A53F31EB';
wwv_flow_imp.g_varchar2_table(16) := 'DD65C8FE33AFC340D4A1011A3EC81BD3A74437CFB868DFEAD763A7B0FBD8290D50AAAAABF1D59A5588183E4C27406401AEDFBC8984FD07F0D1575B31397214EE193A984DE1FB0FF08287970F1C1CBA2BA2D43FD233F0CEFA8DCC127584F3491D1AA0DE8E';
wwv_flow_imp.g_varchar2_table(17) := 'DDB1F0D927616DDDB8CD40B3255A44FCD79EFDA06D0875AAA8AC44D2375FC3C3DD4D0BA0DBE5E5483C928CD59F7E861BC5C56C8FEC99E8F1F0727369CE7BABBC022A879E88193796CDE0E44EA753D3B072F316A46436BF4E27779346D7DFA101B2E9D205';
wwv_flow_imp.g_varchar2_table(18) := '4F4F8C628B7FEA4481F4B77BF6B34362FA0022CB139FB48F29ABA4B494ED77DD131C8887C744364FAF69BD66F7B1D3D87DFC141E7E700216BCFC22BA76A529BEBC29FD423616AE5E8BCCDC5C452C9FB1A3E9D0009172EF1B36048F8EBD4763FC17AF16E2';
wwv_flow_imp.g_varchar2_table(19) := '939F12505155C57EDF9605BA7AE3069E7C75268A6EDE64F97AF5E88E998F3F025A4CBC0B6425BED99D88B44B79E8666787792FBD8047A3271A2B6F83CA65FFF927662D5D0EFA69AE0B8F1D1A20D286730F4766857CFA69BA273AA2BA65E7AFA0C0BA2D80';
wwv_flow_imp.g_varchar2_table(20) := '3EFF713B566DDEC256879DBA77C3FCA71F874D2BEB722EFB22BEF93D89D54331C9FD61615811F7061C1D1C0C82C1D8CC2999597867C346904532C798A8C303448A191D1C8447EE8B041DCD5027FAC45EB9518484A32791967B093BB66C8687DB5DC8680B';
wwv_flow_imp.g_varchar2_table(21) := '23F2AF4FC0C1D606815E1E98183652C3F2503D65E5E5F82CFE77765E5A6D015C9D9DB174CE4C448E18612C1306973B93968EE59B3E61ABD8E666892C02209A6E4F1E1D8A074247A0BE5EF366456575352E1614624C4438DCDD3D606767C74E25969595E2';
wwv_flow_imp.g_varchar2_table(22) := '9FDBBE85A74B1FF4EBD35B6B4B813EED5FFDBA17A7B372343EF9DDBB75C3D259AFE3817B35DDA6C1541858802CD1C2556BCCCE9D590440A40BDA539A14390AE3470E6FDA02BDAB21B66DC93632BB4065D5B889594FEB3DB5B5F46BAD44F0FC33FE371688';
wwv_flow_imp.g_varchar2_table(23) := 'B7761B0EF6F6583AFB754CB8F75E0311109F9D62A13796AF44D6C58BE22B93A8068B0188E4415777C6850C65FB632DDD9921B222B7B57DFF112DCBA3AEA3B7931396CE9E89FBC2420DA956B2BC140BBDBD7E2352B3B2CC2226B22880484BE4CE827DBC70';
wwv_flow_imp.g_varchar2_table(24) := 'EFD0C118E0D21774488C5C567B89E28AB2F20AE45EB98AC4D367915B50D8A67242860CC6B239B334E229C9E8105811AD13BDBBF16364E4E4983C26B23880987BAAAF87B3530F78F6ED8BA0811E18ECED859EDD1D18146A9744D0A85456282E2BC389F42C';
wwv_flow_imp.g_varchar2_table(25) := 'E45E296067A76947BFAD40956668339E791AD31EFBABC915472BD6FFB3F603936F7B5824402D3FC8747587C29CEF37AC832B3BAA4AD6887E4300A9F0CBFEFD58BA7193A03B6083060CC0B60FD728B21A2DC418E5FC9987F9AB56232DEB8290ECB2E4B178';
wwv_flow_imp.g_varchar2_table(26) := '80486AED6D65945756E2FDCD5B109F98843B15153A2D0B591E4F77777CBBEE03D8D9361E75359794919D8325EB37B029BE29D6893A3D4004424D4D0D7EDE9B88DD070F212BF722CA2B2A98326C6D6CE0E5D11FE322C2F1D443B16663795AC37BE2DC3916';
wwv_flow_imp.g_varchar2_table(27) := '13655DBCA4B86BE500B5D046E9EDDBCC1DD0062BB93A5B1B5B787B7AA0BFABABE28A31D4C2D162E3DBEB3620EBD2DD3D4043EB30263F07C818A9996999DCCB97B168F55A9CCD50EE7BE538400AC240E17B726606BE3B7450EB3EBED06ED43534E0A931F7';
wwv_flow_imp.g_varchar2_table(28) := '23D25FE3CB199B8BD33AD19275EB91A6D0DE190748A8E624C847001DCBCAC4FF251F361A205AA278FCDE3108F76DFBDB3C8F9EF903CB3FDE840B97E4DFC5E700490086D02A940288FAC336603FDEC42C919C890324A7745BD5AD2440D4F4A5FC7C2C5AF3';
wwv_flow_imp.g_varchar2_table(29) := '018349AEC401924BB23AEA25804E5CC8C2F6A34774CFEA1A80BAFA3AADCDE096550971612DF3D32EFEE20FD7E1BC4C77FB39404600440F55D1C62DFD33345D292E4646FEE5C6C5F056895E00399173A1DD1BB08602444D1C39751A2B37FF2F8B89A44E1C';
wwv_flow_imp.g_varchar2_table(30) := '2003255A515D8D8319696CCFECE1F008034BB79DFD4669297E3C7A04D957DB7F14C21880A855DA3B2388A49EE273800C40809E02FEFDEC191C484B652BD5213E83F0C43D630CA84177D682929BF83A291137CA4AF5D6652C408D31D1152C58B55A528838';
wwv_flow_imp.g_varchar2_table(31) := '407A55D698A1B6BE9E81B3EBE4F166D7456F298EF60F424CC848D00D114313C544D76E95B075A1BCA21B3AA7F6E4E95A1E46110310F58F6EC0BEB9E6035CBE7AD5D0EEEACCCF011220C6CA9A1A249FCF40FCA9135AC12F9D3F8AF40B40744848D38B1E02';
wwv_flow_imp.g_varchar2_table(32) := '2A6CCA525456869F8F1F437A7E9ECE427EEEFD905F5C84F2A6DB2594492C4054C7373B7662F5964F2579D08103A447DFA4BCFD69A938989ECA5EB3D7952898A685BD47222205D35378AB04DB9393917B4DDB12D001B848FF408C090AC297497B41F1913A';
wwv_flow_imp.g_varchar2_table(33) := '4901103DE83075D61C36CD179B3840ED4890C53C7F9CC181F454BDCFFDD2A5C4513E83F0D868FD67A529E6F92A311145B7B5631E8267A4CF204C090D67272937EDFE45728068C8747D9A5E04119B3A0540955555F8EDCBCF31D0A3BF6079D13DFBC3E733';
wwv_flow_imp.g_varchar2_table(34) := 'B0E358B2E0175A09A2085F7F4C1A35AA4D7776BDB414DF1F3E884BD7AF69F585EEE20FF1F4C294F070F4B0EF86B28A0AD900DAFAEF1D78EF93CD82E5D156C64E0110BD38BF7A7E1C268F17F685D03455A73D2B8A797425B79EBD505A51AE119BA8F3913B';
wwv_flow_imp.g_varchar2_table(35) := '1BED1F88681D8135C1137FF204D22E6BAFC7D0B16DB260934685C2B1E9CD6A3901FAFAA71D78EFE34F441F53E91400D1943B767C14DE9B3B47EF27EE4E5515F6A59EC3A18C749DAFBCF671ECC1621D7AAEEEC7E4230CA4D68902EB08BF004C090B6FFE13';
wwv_flow_imp.g_varchar2_table(36) := 'B9ADEDC947745A1EBACB16E6E787C9A3C2E0606BDB5C464E80DE5EBF01DFC727E89587BE0C9D022012025DC7D9F7EDD676E54131CF9EB37F605F6A0AEA1BB41F26A7AB4253C746C1D7CD9D3DFD4233A4CFF7EED109114DF143BC1BD7892860FE62EF5E9D';
wwv_flow_imp.g_varchar2_table(37) := '310FC14D314F6C6838BAB77AF9432E8028109FF4DC74E4176ABB517DC0B4FE7BA70188B9B10571981CA5DB8DD13ACFF12CDAA73AACD3AC9372A78D7F101ECECE1A32A46D891F0E1F42596585CE9826C8C393B9BADC6B853AFF3ECCCB1B0F8569C343996F';
wwv_flow_imp.g_varchar2_table(38) := '5756E2EB7D8928BE7DF79173023B36340C2306FA18AA6B969F80FDF2C77F63DD175FF269BCA112A4E3A95FAE7A1F3D7B386A1425051FCDCCC4AF674E6A6D64D2229E9B534F7606C7D3B98FCE264FE76423FEF44994B2A3B0C2125BC9F61ED4263CEA5AC8';
wwv_flow_imp.g_varchar2_table(39) := '5AB4BED546D6CF983BF2D4261DC25F4C07CE24BAC9D1692C1029846E57BCF8D49378FE89C7D88B1C9428E6493C7796CDB86827BC757276ECC1F6BC68518F14D756CABC928FEF8F1C120411C53CA306E9765BC2F0332E175D035AB4662DCE9D97EEE1AA4E';
wwv_flow_imp.g_varchar2_table(40) := '051089DDB54F1FBC3B7B2622460C67817062CA3924A69CD5B9CE63DFD50653C745C1C7D5AD5D78D4EAA498E8D33DBFE14E65659B1AA6D956A8AF2F268D0CD58A798CC34258A9EBC5C5786CC62B282EB925AC80C05C9D0E20928B9F971756C4CD45714D15';
wwv_flow_imp.g_varchar2_table(41) := '7E4C3EAC535414F34C9F100DF75EBD048AB2315B7A5E1E7E483EC4E297D6892C18C52EB161E11AB32D831A303033B92D7AD07CEACC39B23C23DC290122A1F67377836FC83038F672D250095908172727367B1A60E47BD2677273F1CBE91328B973A7B96E';
wwv_flow_imp.g_varchar2_table(42) := '5A551EEEE5CDDCA17A9DC740160CCE4EE3A4C73AE9CE189D4A94E3E261A70448AD89DE7D9C111C3E128E3D9D9A03558A7968FDC6BF5F7F416EAB2DAD66155CC1BF0E1D60ABC9EAED89C9A342D90AB352899E83A1378552250A9875F5BB5303448F03F571';
wwv_flow_imp.g_varchar2_table(43) := 'E9C320EAE6E808075B3B3C33360A5E2E2EA2E0510BFA725111B6FCBE1B43BD06226644081C1478E155DDF6ADB2323CFCC2CB282AD1FDB50F5241DCB9016A92A273DF3E183E3A0C0BFE3E15AE4E9A2E4DACA0699647B18F7DD3D74789AD4F5F797253D78A';
wwv_flow_imp.g_varchar2_table(44) := '8AF1EC9CB9B852A8BDF6A4AFBCA17FE7003549CCDDD5156B16C421D8DFCF50199A4D7E82273D3B1BCB3EDAC48EB02A9138404D5226E10FF1F7C3FC975E645FCAD211135D6D9EB7E27DF6A2AB528903D442D2B4BA1BE43B086FFEF78C0E6789E8999A87A6';
wwv_flow_imp.g_varchar2_table(45) := 'BF886B45454AB1C3DAE100B5123759227A486ACDA2F9ECA7B927EA2F3D983EED8D38E42B10F3B4960707480721A4147F6F6FB6624D16C95C13F593A6E8EF6EFC087481D0148903D48ED483FDFD31F785E9A08735CD31E5151460CEB2F764BFFFDEDED839';
wwv_flow_imp.g_varchar2_table(46) := '40ED48876222FF8103F1E62B33303C28D0AC18A263BA535E781905D7C49FE91133300E901EE935C6449E58BB68217C06788A91B52465A93F74A7EBF9B88526878707D10255AA9EE22F79ED55040E32EE2097C0A6DACDA68E79DE59BFC1A46EAB6527B905';
wwv_flow_imp.g_varchar2_table(47) := '3240B3C101FE98FDFC34840EBDFB45BF0614179DB5E0FA75CC5ABACC6401B3AE0170800C502BC544E4CEDE7AF515C5171B699DE7D197669864AACE83680320D197954DF1070EC4EA45F3E1EDE1A12FBBE8BF537B17F3F3313D6EA1E28B84423ACF2D9010';
wwv_flow_imp.g_varchar2_table(48) := '29E9C8332C30008B66FC97ACEB44EABDADC51FAE57747BC2109170800C9156ABBC43FC7C31F3B969EC78AC1CA9F04611662F5BAED8C6A83163E0001923B5A6321413F9787A60F16BAF4A1E13D1799E275E795D9123192244609ABDB061313101F5B056E6';
wwv_flow_imp.g_varchar2_table(49) := 'BC8118E90828CBA6F87EBE581937175EFD85DFBD6FAB6AAA2F272F0FCFCF5B20FB613001C3D39BC52416C89200524B988E80CC7BF10551BBF8EA33CC6FADFD50D663A87AA930208315EA02CF262418F5347EDB97A4F474C01201A22107F87863F6F3CF61';
wwv_flow_imp.g_varchar2_table(50) := 'F4C810035470372BEDAACF7D6F25E80BE53A4AE20049AC295FAF012C263274EF8CEE6D3DF5DA2C365597E3F684C4C36CAECE240051EBC13193DBFF1E4AB946AC40BD34C55F366736BCFAF7D3DB1AC1929B7719D3E6C5497EE94F6FE312644849D865B427';
wwv_flow_imp.g_varchar2_table(51) := '32BA6013408900843DD823C14095AE8220A2297EE8D0E0369B56DF557F67C34649AF1B2B3756D59294849D8B8D6D4F2440B18B8186B78C6DBC2394F37073C3337F790493C68DD57AD0811E4DF86AFB4F88DFB74FB2870E94978969011A07349015B2E844';
wwv_flow_imp.g_varchar2_table(52) := '0F3AB8BBB8207CF8507644969E67219775F8E4295C2FBE29C9132BA613A02A2A25616792B1ED8BB240961E07B52554725BC63CCD62AC92E42C2726FEA17E49019045C741722ACFF4758B735F120114DB29DC98E9952D470FCC00A0CE301B934375E650A7';
wwv_flow_imp.g_varchar2_table(53) := '58F72589056A04885B217300C2B03E88B73E9201D4598369C314665EB9A5B03E120364F96B42E6858098DE48637D2405A8C99559FCC2A218B5994759E9E0911C201E509B0722EDF422292561579494BD14BD0ED4BA333CA096523D52D7256ED559576F24';
wwv_flow_imp.g_varchar2_table(54) := '0788CFCAA456BA54F5490F8F2C2E4C3DDC264B441BAD16BB5B2F956A65AE270960718FD1FB5DEDF54F160BD4B2C1E0183E3B93199076AA97366056CC85E9888BF8EC4C718AE487475617A64B5EDC1AC94E91ACEECA641648B745A2DF5AF66134D971B9DB';
wwv_flow_imp.g_varchar2_table(55) := '80E2E0A89B963D06D227C4C6605B1D6873A0F4C9ABE9EF04CC3E00497205C702FB21FE3C90D08684E6A3EB42EABC75AA2EFE42CB596A3EEB865A8DEF7532F6FE965CF231B905926B60BC5E6524C0015246CE16DB0A07C86255ABCCC03840CAC8D9625BE1';
wwv_flow_imp.g_varchar2_table(56) := '0059AC6A951918074819395B6C2B1C208B55AD3203E3002923678B6D850364B1AA5566601C2065E46CB1AD70802C56B5CA0C8C03A48C9C2DB6150E90C5AA56998171809491B3C5B6F2FF293BF4276067CC590000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(23452387398806184492)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE9000002D8494441545847EDD55D4853611C06F06720CDD87239CD6F36638BB20C71A1A010047D28CB5408EF0C124D0C242A48165E7861';
wwv_flow_imp.g_varchar2_table(2) := '820A661612A55410A99549A418534B22B56886AB553A66A26643C5B6A3CEC09C2CCE626373673BE7B545373B5787F16ECFEF7DF67FCFE125661EB7E13F5EBC0020D080B706E47131C84A4B812472077EAEAE62786C1CDD6F34F865B5FA75641987900E3F';
wwv_flow_imp.g_varchar2_table(3) := '9BA3C4B0DE00AD610222A10019A90ACC9B29DC7CDAFDEF01E7F3723067A6D0DAF7CA19162E0A812A3F0FCD9D6A8C4DCFF80DC1D8C0D5D2223475AA313AF50DD9470E4355528C6D02813DD466B381C7E3B901962C16F4BC1E40FD9D7BA0EF492E46C09533';
wwv_flow_imp.g_varchar2_table(4) := 'A7D035A4C1DBCF63186A7F88AD7C3EEEB677402193202C221AF15229638661721245AA72981617391B1801B907D39024DF89C68E2EF4B7B5A0A9ED11C6F55F7028793F6A5A9EE041433D622323FD8260046C090A4261D631C862A3112A0E03455158B7AE';
wwv_flow_imp.g_varchar2_table(5) := 'E1BEBA1FBA8949DCAAAA44BA22D9EB2E499AF0F928DE238943EDA58BA0969771A1A60E3F169720974AD0DA508F603EDF67CD5C11ACEF02DDF32E7BD0F7D9394C198D50ECDBEB116EB25860DE307C316231668C46D699E00CF0B5DDDE0F5AF47DD4BA2D29';
wwv_flow_imp.g_varchar2_table(6) := '3E9A09595414D89A2006D0C7F0D3F434122512E771FCD3C032D42323985A98B7431C00FADE17820840873FD3BCC3907E14E9BB13909D926A47B87E2E0D8FB0235C01346258A74341D9658F225901838FDB102214BA85446D0FC52C6576225C517433B77B';
wwv_flow_imp.g_varchar2_table(7) := 'D51E8035AB158A13B9E4808A73A5389999E1B17347E8468C796505EFBF8EE3804C0EB150E80CEC50F7A0E2DA757200BDFB82D3F9309816BCD6EEFA77300D6BEFC020CAAA6B615D5F2707D0DFE00707A3A4A800854AA5DB7B8069203726F80AA7D7B2CE80';
wwv_flow_imp.g_varchar2_table(8) := 'E307C522119AABABB02B3E9EF3739E2D9C08402F2641700927067045700DDF14800D4112BE6980370469F85F011C88BA7215921212D0F9E2252A6F34321E355F53CBF914701E7DC2850140A081DFDAC4A8F08EFA23990000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(36326576075497470250)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE90000162049444154785EED9D797C1545B6C77FB9D96E12B2910061758407820A88A0A2A020C8243E1607CCCC13F4F91445471C476570';
wwv_flow_imp.g_varchar2_table(2) := '7D2222A0C3F894A72CCAAA4F119D5110194090081141D409864D445166244822105942C8CDFE3EA7E30D977097AABEDDB7B7D39F0F7FF04975DD53E79C6FD5AFAABAABA32ECE195A0FBED8030EF5401403E0D0C873B3150F30009C088EF60003E0E8F073';
wwv_flow_imp.g_varchar2_table(3) := 'E31900CE01477B80017074F8B9F10C00E780A33DC000383AFCDC78068073C0D11E60001C1D7E6E3C03C039E0680F30008E0E3F379E01E01C70B407180047879F1BCF00700E38DA030C80A3C3CF8D670038071CED0106C0D1E1E7C633009C038EF60003E0';
wwv_flow_imp.g_varchar2_table(4) := 'E8F073E31900CE01477B80017074F8B9F10C00E780A33DC000383AFCDC78068073C0D11E60001C1D7E6E3C03C039E0680F30008E0E3F379E01E01C70B4072C0D406D5D1DEAEAEA51575F87FAFA73CFF88D8A8A822BCA05972B0AD12E97A303CD8DF7EF01';
wwv_flow_imp.g_varchar2_table(5) := '4B014049EE72B9E08E8B454A62223AB76F83CEEDDAA05DCB16C84A4F43747474632B6B6B6B5172EC380E1E3E827D070F615FD1219C3C5D014F5515EAEAEA4070F0C51EB00400D4D353F2773BAF3DBA77FC15FEAD7D1B7468D942E9D995118046023F2380';
wwv_flow_imp.g_varchar2_table(6) := '8B460057C30840E58A0E1FC5BEA21FB16BFFBFF0F50F450A043C32381B02D30350595D8D2EEDDA2077607F6465A4232E365689983FC9132A940D9D7E14AAAAAB51527A0CEFE66FC6B7070F21FE973A43DDCF7FB79F074C0B00F5E8CD12DCC8BEA237065D';
wwv_flow_imp.g_varchar2_table(7) := 'DA43E9C1D5247DA09029F3035714367CB913EB3EDF8653151ED088C197B33C604A00AA6A6A14A933A2FF15E8D83A0B340AE87551EFBFBFB8042B377FAE48A3B89818BD7E8AEB35A1074C0700F5FC7D2FBC00370EEC07775C9CA6BD7EB0D18026C7CBF2B7';
wwv_flow_imp.g_varchar2_table(8) := 'E0B33DDFF04860C244D5CB24530140C9DFA76B678CFDF721A8A9AD156E73B0151D19D914131D8DC56BD6A360EF3E8640D8FBD62E681A0048F65CDDE322FC67F620D01266A82FF7D1EA4E5C4CB4B2B4F9E39152949E28C3E94A4F633412E3DDC8484D46DB';
wwv_flow_imp.g_varchar2_table(9) := '161948494C40554DADB25A14ECA219002DA5BEBEF6236CDEB587E590B5735BC87A5300403D3F2D718E1D3A446845867AEA83478EE283CF0AB0FF5009AA6B6A50ED4D709AC8FEB25F101B138D98E81865AF20FB8A4BD1AE45A6D0C842738EC5ABD72B4BA5';
wwv_flow_imp.g_varchar2_table(10) := '3C3116CA23CB1632050089EE78DC3B6A9892A0A124CBC9F20A2CDFB4055F7CFD2D08049104A515A49ABA5A5CDEAD0B465DD30F294909C14782A82805B039CB57E1B4A7D2B2C165C3437BC07000A8B7BDE9BA01F8759F5E41577B48F26CDABE0B7FDFF205';
wwv_flow_imp.g_varchar2_table(11) := 'CA3D1E25F9652F9A5724B9DD18DEEF725C7349F7A0928856873E2C28C4DB791F0B8D4AB2B670797378C050006887B763EB569838E646D4D606D6E7EED858BCB6F6237CF6D55ECDBCD6F7A2AEB82D67303C419658A3A35DF89FA5CBB0BFF827DE31D6CCF3';
wwv_flow_imp.g_varchar2_table(12) := 'E6AAC85000A8477E644C2E3A64B50C287DA8E75FBA3E1F9FECD88D580DD7E869DE7075CF8B3166C8C0802301AD2E1D28398C194BDF5535E2982BD46C8D3F0F18060069FD2EEDDBE2AE113941137BF3CEAFF06EFE16DDA2973BB01FFAF7B82860FD04CAFC';
wwv_flow_imp.g_varchar2_table(13) := '956BF16DD18FFC009D6E5130AE62C300A0DE75E4D5576240AFEE017B7F9AF04E7FFD6DDD7782FFFBD69B024E8CC9CE8F0B77E1BD4FB6869CA01B1746FE65B51E300C8084F878FC317704DA64A6D3AAE539174D7217AE5AA76C4AA999F08A3A8464186DBE';
wwv_flow_imp.g_varchar2_table(14) := 'DD392CDBEF122901F0E3D152CC7A77252A2AAB44ABE57216F1806100B44A4FC3A4DB46FB4D3AD2FD878E96E2E9D7DE8AC866146DC23D79DB68B4C9CCF03B1F2000A7BEF6167E3A76DC22616533453D600800B4FA33E0928609685575CD39B6D20B2F2FAF';
wwv_flow_imp.g_varchar2_table(15) := '5883C27DFB85D6F9033596767E49C3532F5F5F17786F99DE28EBD5A5131EFCDD6F9417669A5EB424FAFADA0DC82BD81ED1D5A02857C3FB0CF4CE82B2E7C16FB589E6B570394300A05DDBBB4664A3F7059DFD8E00D423538F5B76BA42B821DE820D1B6951';
wwv_flow_imp.g_varchar2_table(16) := '484F4D46CFAE5D31327B082EEFD113C9CD92A4EB32FA86B2F272EC3F5084C2AFF660CBB66DF8EEC0019C2A3F8DD31E0FE8B10D7EAB2DFC081902006D7E4D1B772B5AA4A69CF3261705951E6F98F7FE1A78AAE41E83A61E3F293111370D1B8ADCEB73D0A1';
wwv_flow_imp.g_varchar2_table(17) := '4DEBF03D64A21ACA4F57A060F76E6C2E28C0DA8F3F41F1E1C370C7C7330861C4C8100048662C7AE47E54FB79E29300F8C7D7FBF0565E3E482AC95C896E37E63F330D3DBB7595B9CD726509741A1DDE5EB5067397BC899A9A1A96472AA3681800AF3D3EC1';
wwv_flow_imp.g_varchar2_table(18) := 'AFDE2600F20B7761C5A64F433E11EA6D332544B3C444AC5E341F99CD9BAB7485356F2B397A140F3D3B033BF77EA33C45CBB2482E8EA6046063E14EACD8B455A825A4F9131312B0C0013D7F30872C79EF7DCC59F2264E9E3AC5A38150E634143225003223';
wwv_flow_imp.g_varchar2_table(19) := '00CD79C7FEF6464CB8E3768966DBB3288D02773CF298DF91D59E2D0EBF558601A0D51C202D25196FCE7CC176135EB5A1FD67D141FCD7C487517AFC388F04024E340400AD568148FB5FDBF70ACC9E3259A0A9818BD4D4D4E270692992DC71CA7A7B4C4C2C';
wwv_flow_imp.g_varchar2_table(20) := 'E2DDEEB0EA34F2E6A2E2628C9FF414F61715310421026108005AED0354565561DEF4A90A046AAECFB7EFC09215EF63CF77DF2BAF574E1C7D2362A35DB4C0AE4090D9A2253A74EC04B73B514DF586DE53545C8231F73F88636565CA9E015FFE3D6008005A';
wwv_flow_imp.g_varchar2_table(21) := 'ED0497575460C7AA95D29B5C5FEDDB872767BE84ED7BF628EBE874D1A6DCDD37E49CB5F740136CFAD7E1FC4E68D9B603D253532D9547474A7FC6A87BEEC5CF274EF048102072860040B668F12C10ED8AFE73D306A9A49CFDFA1B58F8B77741A387F721BB';
wwv_flow_imp.g_varchar2_table(22) := '50CF02D1D37A8BD66EC0CD234762E8B503A57ECFE8C234128C9F3499E590D90048888FC37DB923D03633C3EF63C6224F83CA0270CFA4A7B0F91F05A8477DE37AB9E8D3A02FBDB352D9B57E6CFCDDC8CDC9313AAFA57E9FE550607719360268F13E800C00';
wwv_flow_imp.g_varchar2_table(23) := 'D4F3CF5BFA577A4CE8AC8B1E74937D1F60E9FF3E8FEE175C2095844617663964A2390099A2C51B61A20090E6BFF9C189CA23034D774A65DF08A3DDD6ACCC4CAC797511DCF17146E7B5D4EFB31C3AD75D868D00644AB8EF048B0270E3F8FBB0E7BBEFCE7A';
wwv_flow_imp.g_varchar2_table(24) := 'B1269C778209A491D9D97866E28352096886C22C87CE8E82A100847B2A840800B4D439E68109CAE312BE57B8A742D006DC8A575E46467A9A19F25ACA06964367DC652800644638E702890070DF534F63C3D6CF9465402DCF05A249FA9407FE8811D70D96';
wwv_flow_imp.g_varchar2_table(25) := '4A3EB3146639D41009C3012023D49E0CE7F178F0C327F901738A7678B36F1B8B922347353F198E76A16FCF1D8589E3EE344B4E4BDBC172C82400A83D1B7479FE162C5B30BFF17978DF570669927DB0B818E31E7B02992949B8BE6F1F4DCF06259BB3AFEE';
wwv_flow_imp.g_varchar2_table(26) := '8F3F3F3CB1F1AB35D21968821B9C2E874C3102501ED06654FFEE17E2D69CC1C2A743D3E1B7F45845724A2A121212111B1FAFAC2ED14A4F7555254E9C388153652791E48ED7FC746802E09ACBFA60E6138F37EE269B209F5599E06439641A0028726ABF0F';
wwv_flow_imp.g_varchar2_table(27) := 'E05D566D1A7DD9974364BE0F602700C86F4E9543A602C00B8115BE10437380E1830761EA8407343DB2515517AED14D4E9443A603C02B87CCFE8D30925AE36F1983F1B7DCAC51FA99A31AA7C9215302E01D09CCFC95C8F8B838FCE5D18731E8CABEE6C85C';
wwv_flow_imp.g_varchar2_table(28) := '0DAD70921C322D00DE786AFB9DE0860781B4F84E709B962DB172C12B2010EC7839450E991E004AAE405F8AA713D32A2A2B95551F7F135EEFF3FC54474C4C8CF2D597EF8A0E85FDA5F8F2D3A795DE9FCE1EB2F3E50439640900BC4946094D6BFD7474624A';
wwv_flow_imp.g_varchar2_table(29) := '6222CEA78F6B8CBD15478F1C4145F929D4D69DF9B264B42B1A0949CD909C9A8AD8F8044C7D6501F6FD50A4EC3CD304567685C86B038D1E575FD6070B9F9D6EE7DC6F6C9BDDE590A500689A7127CACA7060F3C74289B87A633E9E9CF9A2227FD45E0460AB';
wwv_flow_imp.g_varchar2_table(30) := 'CC0CFC75D68BC84C4F575B8DE5EEB3B31CB2340022CF02F966DBDFD67C80A9B3E6281B6DF43954998BC06997D50A2F4D9E848B3A7796B9D51665ED2A871C050065E2AE6FBEC1FD53A6A1F8C811655E207291E61F74D595CA630F4EEAF99BFAC68E72C871';
wwv_flow_imp.g_varchar2_table(31) := '0050503D9555787AD61C6CFAE20B50722BB288BE2F7C66B2A1CC11E885F98CB4348CBBE977B69FF08A740454C66E72C8910078837DE4E79FB1F5CB42ECFD7EBF3222782A1BBE099C9A9CAC1CB4D5B55327F4EB7DA96D973A4593DEDF48609717ED1D0D80';
wwv_flow_imp.g_varchar2_table(32) := 'EFEA5275750DE8431974D1FC40CB2F52AA4D3433DF671739C4009839CB4C6E9B1DE4100360F22423F3D6166ED3F54381BE2EA0A5DE4E59ADD1B155969067ACBE3AC4000885D9D842F72D9C0777841EB92000B22FE985213D7B0937DACA728801100EB371';
wwv_flow_imp.g_varchar2_table(33) := '05EF5F3C1FEED8C83C7344EF39FC9A00E871895483AD2A871800A9301B53D80A009067AC2887180063725AEA57230D0049A0EB2447006F83AC26871800A95434A670A4015023817C3D632539C4001893D352BF6A3500AC24871800A95434A670A4010847';
wwv_flow_imp.g_varchar2_table(34) := '02F97AC80A7288013026A7A57E557619349CAFC8AB5D050AD420B3CB2106402A158D294C1B61F4828FC8E57245A1ACA2025BBFD92B52FC9C325A03607639C400A84A9333379DF27894FF3433C947F5E8FCD3E757AE4069D949556FBD2927DE85B10A14C8';
wwv_flow_imp.g_varchar2_table(35) := '9D6695430C401800504F3BFB83D54A0D7FB87E28929B9C401D46D5AA6EF5DA73EC5499AAE4A71FD56304F036C68C72880150956A5064C6AB1BF270B0F4A85243BB8C4CDC3EE83AC320F0B547EDFBCE7A03604639C400A80080CE312599E1DBD3D23334E9';
wwv_flow_imp.g_varchar2_table(36) := 'CD92F1A711BF419CE09B662A7EDAEF2DFEEC515BB75E12E8ECD5A1628C79E04F387EF2A45A3335BB8F019074653099E185209272480BD9E3EB023D2590EFEFD091F5C3EE18878AAA2AB87CDFC6938C47B8C51900090F8AC80C8220527248C41EDFE6794F';
wwv_flow_imp.g_varchar2_table(37) := 'CE0ED6E44801403614EED983BB1E9FD470B693441CB42CCA00087A53466644420EC9D8434D249B3292537041DBB6F874EFD70127C9919040BE2E7F61D1AB58FCCEB2B35EC9160C8926C518000137AA91197ACA21597BBCB63C74C3487CBC6737D6167E19';
wwv_flow_imp.g_varchar2_table(38) := '507644720420D71F38548C9B1F9C80E327CB0422A17D110620844F65654653C9A1B51C92B5A7A9245BBF633B3EDC51681A00C85F7F98FC34367ED6F01DB7485F0C40108FCBCA0C7F5569298764EDF1370AE5EDDC8E75DB8303A0C74658B0C45EF7C966D0';
wwv_flow_imp.g_varchar2_table(39) := 'C70C8D386898010810195999112CC05AC821597B0281270240B88F43CBF6E265A7CAD173D8082419B091686900CA2B2AB063F54A242725C9FA3C6879599921F2E3E1AC0EC9DA13ECB7CC0800F9AFE38041484A4C1471A5A6652C0D002D9F2D9B330B3DBB';
wwv_flow_imp.g_varchar2_table(40) := '75D5CC29D232E3975F1659C6532387A4EDF965432ED05E840800919640E4C2EE3943514FDFED8DF09E80A501A0230D1FFBFDDDB82D77942600A89119ADD21A4E89FEE9F831A1E0C9C82135F684DA8D160120D21288FCF7AB6BAED57C2417490A4B0340E7';
wwv_flow_imp.g_varchar2_table(41) := 'FC5F75692F2CD0E0AC7EB53263ECE0218A9F177FB45E792E48A4071391436AED09F53C9219013858528201A36F41A2014FD45A1A004A3C3AAD993E5514CE3C400B99A1656FAD853D817A3F1100222D81DE78EF7D4C9B33D7900F8E5B1E003AC1F9F9C71F';
wwv_flow_imp.g_varchar2_table(42) := 'C535975F2632E29D53C66C89ABA53DFE1C220240A425D06FEFBD0F5F7FBF5F68F45415E42037591E00DAB91C336298321790DD48D14366A8AD532F29D534F66603A060D76EDC336972E3C9DC5A2778A8FA2C0F8032A94C4DC5AA85F39463CD452F3D6586';
wwv_flow_imp.g_varchar2_table(43) := '9A5E5CCFC9B4AF4FE8F5CAD5DB0A40AF4EFABBEAEAEA31B4771FE4F4EA2DEA4AD5E5AA6B6AF0D0B33390B7E553437A7F32DCF20050232A3C1E3C74D738DC3DFA3F8482A1264143ADAE34FD6169C0745E4E15724C840B2D5FF7211E99F19CF22112A32E5B';
wwv_flow_imp.g_varchar2_table(44) := '0040A3009DE9BFEEFF16232B3333A82FD54A9450AB2BFE7E54F6B7449240640549A41EA3CBAC589F8787673C87F8D858434DB10500E4415A12BDF4E28BF0C6F3CF0574A874AF1C6253492472B2A34DB03A65F610446C33AACC8A0FF394559FCAAA2AA34C';
wwv_flow_imp.g_varchar2_table(45) := '68FC5DDB00402DA249F04377DE815B46DE708E63651351CDAE6DA068CA82E7AF1E2DED3132EB36176CC3EF9F78D230CDDFB4EDB602809284F6035E9E36059774EBD6D8565929A287CC90B5C137507AD8630404D4F33FF1C24CE59107235F83F46DBBAD00';
wwv_flow_imp.g_varchar2_table(46) := 'F04AA104B71BEFCC7E09E7B76F07D9DE574F99213B0A517BF4B42792109849F6D81A006FE3D25352B0F02FCF62F99705F859F090A848C80C192023614F2420309BEC71040034296E9ED91C570C1E80E8B85828E36E902B923243440E45D21E3D2130A3EC';
wwv_flow_imp.g_varchar2_table(47) := '7104005EF990929A8281C372501B551F1002236486D98E57D10302B3CA1EC700E00B41BFECC170C5C69C1367236586D90ED8D2120233CB1E4701E08520B3650B5C36B03F5C71318D2381196486AF1C225BB57E895ECBA416ADCBECB2C77100F89343F575';
wwv_flow_imp.g_varchar2_table(48) := '0D471946F214B74009E49543F47733D8239AE8FECA5941F63812005F08AECA1E84CCF4E69830FC86889FE31928B9CC76CCBA1A08AC227B1C0B801782F48C742C7A663ABA9C779E9A38F33D7E3C6025D9E36800A8F1B4449A919686657367A34546734EE8';
wwv_flow_imp.g_varchar2_table(49) := '303D6035D9E37800949100407A723296BE3813ED5B67859902CEBDDD8AB28701F8C5033412746CDF1E73A74E610854306C55D9C300F87840D9314E4DC5F297E7B01C9280C0CAB28701681268964312990FC0EAB28701F0136F96436210D841F630000162';
wwv_flow_imp.g_varchar2_table(50) := 'CD7228380476913D0C409038B31CF2EF1C3BC91E0620C468CF72E86C07D94DF63000027297E5508393EC287B1800010078B3CC5EAB3D81426EBB778205735BB89853E5909D650F8F00C2E9DF50D06972C8EEB287019004C04972C8AEAB3D2C8154247DD3';
wwv_flow_imp.g_varchar2_table(51) := '5BEC2E879C227B7804080306BBCA2127C91E06200C00EC28879C267B18803001F04E8CEDF028B513650F03A0010076581D72AAEC61003402C0CA72C8C9B28701D010002BCA21A7CB1E06406300AC248758F69C1D7C7E14424318CCFE2835CB9E7383CD00';
wwv_flow_imp.g_varchar2_table(52) := '68088099E510CB1EFF8166003406C08C7288654FE02033003A0060A6D521963DC103CC00E8048019E410CB9ED0C1650042FB28AC12463D3BC4B2472C6C0C80989FC22A15E9D521963DE2E16200C47D1556C9483D4ACDB2472E4C0C809CBFC22AADB71C62';
wwv_flow_imp.g_varchar2_table(53) := 'D9231F1E0640DE6761DDA1971C62D9A32E2C0C803ABF8575D71939F414DAB76E1D565D7433CB1EF52E6400D4FB2EAC3B15399496A67CD13EAB45A6EABA56ACCFC3B4D973515955A5BA0E27DFC800181CFDF8D8582CF8F374F4BAF042294BAA6B6AF0F78F';
wwv_flow_imp.g_varchar2_table(54) := '36E0D1E79E07D5C1973A0F3000EAFCA6D95D75F5F54874BB317AF830E45E9F830E6D424BA2825DBBB164C5FB58BD311FEEF878CD6C7162450C8009A24E1363FA66537A6A327A76ED86E1D70D42DF9E3D909A92D268DDC192126CDCFA3956E6E5E15F3F1E';
wwv_flow_imp.g_varchar2_table(55) := '4285C783A8A82813586F6D13180093C58FE606246F6A6A6B81FA7AA5873FEDF1203A3A1A31D1D1888D89E1C4D730660C8086CED4A32A1A1DB89FD7C3B30D753200FAF9966BB6800718000B04894DD4CF030C807EBEE59A2DE00106C002416213F5F30003';
wwv_flow_imp.g_varchar2_table(56) := 'A09F6FB9660B788001B04090D844FD3CC000E8E75BAED9021E60002C102436513F0F3000FAF9966BB6800718000B04894DD4CF030C807EBEE59A2DE00106C002416213F5F30003A09F6FB9660B788001B04090D844FD3CC000E8E75BAED9021E60002C10';
wwv_flow_imp.g_varchar2_table(57) := '2436513F0F3000FAF9966BB6800718000B04894DD4CF030C807EBEE59A2DE00106C002416213F5F30003A09F6FB9660B788001B04090D844FD3CC000E8E75BAED9021E60002C102436513F0F3000FAF9966BB6800718000B04894DD4CF030C807EBEE59A';
wwv_flow_imp.g_varchar2_table(58) := '2DE00106C002416213F5F3C0FF03A1B22E13F5C640E70000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(36326576254234470279)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EED9D7FB055C5B5E7DBAA8092CB2523208C90A9D28B2FE81BAE938C3F1E30A9180D6852D1A0E24BC6AB56445F';
wwv_flow_imp.g_varchar2_table(2) := 'D468E4C55882D6BB432A3E5EA9584683C109F129F8F0613981009154E22F12AC292ED158B1B84EA96FE0EA1F8285BF662212A2A6C6A93E7AE1FE3EDDBBBB77AFEEFE9C2AAA4CE8BD7AADCF771DD6F7ECBDCF3E87CDF8F2573F54BC200001084000021028';
wwv_flow_imp.g_varchar2_table(3) := '8AC0611880A2F4A658084000021080408300068046800004200001081448000350A0E8940C010840000210C000D00310800004200081020960000A149D922100010840000218007A000210800004205020010C4081A253320420000108400003400F4000';
wwv_flow_imp.g_varchar2_table(4) := '02108000040A2480012850744A860004200001086000E8010840000210804081043000058A4EC9108000042000010C003D0001084000021028900006A040D129190210800004208001A007200001084000020512C00014283A25430002108000043000F4';
wwv_flow_imp.g_varchar2_table(5) := '00042000010840A0400218800245A7640840000210800006801E800004200001081448000350A0E8940C010840000210C000D00310800004200081020960000A149D922100010840000218007A000210800004205020010C4081A2533204200001084000';
wwv_flow_imp.g_varchar2_table(6) := '03400F400002108000040A2480012850744A860004200001086000E8010840000210804081043000058A4EC9108000042000010C003D0001084000021028900006A040D129190210800004208001A007200001084000020512C00014283A254300021080';
wwv_flow_imp.g_varchar2_table(7) := '00043000F400042000010840A0400218800245A7640840000210800006801E800004200001081448000350A0E8940C010840000210C000D00310800004200081020960000A149D922100010840000218007A000210800004205020010C4081A253320420';
wwv_flow_imp.g_varchar2_table(8) := '000108400003400F400002108000040A2480012850744A860004200001086000E8010840000210804081043000058A4EC9108000042000010C003D0001084000021028900006A040D129190210800004208001A007200001084000020512C00014283A25';
wwv_flow_imp.g_varchar2_table(9) := '430002108000043000F400042000010840A0400218800245A7640840000210800006801E800004200001081448000350A0E8940C010840000210C000D00310800004200081020960000A149D922100010840000218007A000210800004205020010C4081';
wwv_flow_imp.g_varchar2_table(10) := 'A253320420000108400003400F400002108000040A2480012850744A860004200001086000E8010840000210804081043000058A4EC9108000042000010C003D0001084000021028900006A040D129190210800004208001A007200001084000020512C0';
wwv_flow_imp.g_varchar2_table(11) := '0014283A25430002108000043000F400042000010840A0400218800245A7640840000210800006801E800004200001081448000350A0E8940C010840000210C000D00310800004200081020960000A149D922100010840000218007A0002108000042050';
wwv_flow_imp.g_varchar2_table(12) := '20010C4081A253320420000108400003400F400002108000040A2480012850744A860004200001086000E8010840000210804081043000058A4EC9108000042000010C003D0001084000021028900006A040D129190210800004208001A0072000010840';
wwv_flow_imp.g_varchar2_table(13) := '00020512C00014283A25430002108000043000F4803AEED353D4F8D6B16AFCB8D6C67FEBD7A78F9AA08E183DDA88CE9FDF7F5FBDFAC65B8DB53B5FDDA3DE7E679F7A7BDFBB8DFFE60501084000023209600064EA122CABC6909F7A7463D04F3D6A829A3A';
wwv_flow_imp.g_varchar2_table(14) := '7142B0BD74E0DD6FBEA576BFF156C30CECDCFD5AC31CF0820004200081F8043000F135089E811EF4A79E305DB54F3BA6F1493FE64B9F19E8DEF58AEAEE798533043185606F0840A0780218804C5B40D2D01F0E71AF1978FA85971A670978410002108040';
wwv_flow_imp.g_varchar2_table(15) := '7D043000F5B1AE65A7534FF88C3AED73EDC14FEDFB2E465F2AD8FA876EF5F40BFFE63B34F1200001084060080218800CDA62CCE1A3D5699F6D575FFC5CBBF18D7B52CBD63714FEF60FDD6AEB73DDEAC07BEF4B4D93BC20000108244F000390B084390DFE';
wwv_flow_imp.g_varchar2_table(16) := '81326004126E4C52870004922080014842A6C149EA4FFC5F997952F29FF89BE1D746E057DB9F6D9C11E0050108400002FE086000FCB1AC2592FEFA5EC7DC2F46BF9BBF9662FB6CA26F185CFBF86FF9E640DDE0D90F0210C8960006201169F5E9FEF3BE30';
wwv_flow_imp.g_varchar2_table(17) := '5BE99BFC4A7EE99B04373CB58DFB034A6E026A870004BC10C00078C1183688FED4FF77679F99FDE97E538AFAB2C03F6F7E8CB301A6C058070108406008021800E16DA13FF59FF6D919C2B38C93DED6E79E6F9C0DE0050108400002F6043000F6CC6A3942';
wwv_flow_imp.g_varchar2_table(18) := '3FB2F7F2B3CF4CEEFBFCB5C0E9B3897E7EC07D9B1FE311C37583673F084020790218008112EAA7F85D3BFF1C4EF91B6AA32F09DCBDFE119E2668C88B651080000434010C80B03ED037F9E9BBFC79D913D0DF12E04982F6DC38020210289300064090EE0C';
wwv_flow_imp.g_varchar2_table(19) := '7F77313001EE0C8900010894410003204467FDA9BFF4AFF8F992429F05D046801704200001080C4F000320A03B18FEFE45C004F8674A440840202F021880C87A32FCC309800908C796C8108040FA0430001135D4CFF33FEF0BB3226690FFD6DC1390BFC6';
wwv_flow_imp.g_varchar2_table(20) := '5408010854238001A8C6CDF928A937FCE967EEEF7EE3CDC657EAF4CFF1EAEFD98FF49A3A7182D28F29D65F5D9C7AD44491BF518009706E57024000021912C0004410550FCB1B2E9C1F61E7C15BEA81DFBDEB15B573F79EC6A375F5D077796933A01F5D7C';
wwv_flow_imp.g_varchar2_table(21) := 'DCD429AA7DDA31620CC1ED0FADE739012EC2722C0420901D010C40CD92EA27FC2DEA981FF5213FBD435FFFC4EEDBEFEC0B4A409B9D534F981EDD0CE887052D5BBB3E78BD4161121C02108080470218008F304D42DDD0313FDAE37D77EE7E4DE9A1AF3FF1';
wwv_flow_imp.g_varchar2_table(22) := 'C778E93302FABE87E3A61E1D63FBC6E58CDBD7AE8FB2379B420002109046000350A322B17ED8470FFE5FFFEE5931BF9EA72F117CF96F4E8A6204F801A11A1B9EAD200001D104300035C9A387DE77CE3FBBA6DD3EDA469FEAD737C0E96BFB125F9A89FE1A';
wwv_flow_imp.g_varchar2_table(23) := 'E4F8D6B1B5A6F7E39F6F16CBA456106C060108144D00035083FCFAC6B8EF2FE8A8F5BABFFEC4AFFFA4F0D26703F49FBA5EFA7E801FAC5AEB7CC3635DF9B20F042000811004300021A80E8859E7C37EF4756EFDA95F7F8D2FA597BE595073D25F2BACE3C5';
wwv_flow_imp.g_varchar2_table(24) := '4382EAA0CC1E10808064021880C0EAD479EA5F0FB50D4F6D4BF693AD3E53A2EF93A8EB3711B81410B8F9090F010888268001082CCF92051DB55CE3CEE96137753D2449DF2371F3AAB5813B80F0108000046412C00004D4A58E47FDEAEBD93FDFBA4DE94F';
wwv_flow_imp.g_varchar2_table(25) := 'FF39BDB40938FFB4D9C1EF9BD8F05457E3AB91BC20000108944600031048F13A6EFCD3C3FFEEF58F2477BDDF14B9BE2FE0DAF9E7043501DC1068AA06EB200081DC08600002291AFACEF6DC877FAF2C75988094BE3111A85D090B0108144800031040F43A';
wwv_flow_imp.g_varchar2_table(26) := '3EFDE774CDBF9904A1EF09E02C403305F87B0840204702188000AA86FEF45FD2F0EF9527B409E02C4080370221210001D104300001E4B9F5AA4B835DB72EF9FBEB219FA7A0CF02DCF893D501BA8190108000046412C00078D625E42755FD909F1FAF7F24';
wwv_flow_imp.g_varchar2_table(27) := 'D9EFF9BBA2D69756BE33FF9C600F0B2AF1CC8AAB261C0F0108A44B0003E059BB90BFF6C76FDA2BA56F0ABCE1C2F99E55FB281CBF1618042B41210001A10430001E8509399CB8467D48A890F75860B23CBE210805010888268001F0284FA89FFBE5897583';
wwv_flow_imp.g_varchar2_table(28) := '450AF584457E2ED8E31B8250108080680218008FF2841A4A3CB37EB048A17E6301B3E5F10D412808404034010C802779420DA49DBB5F6BDCF8C76B30017D43E071538FF68E86CB00DE911210021010480003E0499450A7FFF9F43FBC40A14C1797013CBD';
wwv_flow_imp.g_varchar2_table(29) := '290803010888268001F0244F88D3FF7CFA6F2E4E88B3005C0668CE9D15108040FA0430001E341C3FAE552DB9F4420F91FA87B8EF978FA9EE5DAF788F9B53C0F669C7A8CBBF7AA6F7926E5EFD907AFB9D7DDEE3121002108080140218000F4A8478F80F9F';
wwv_flow_imp.g_varchar2_table(30) := '42CD850971F685870299F3672504209026010C8007DD423CA296EBD0E6C284B8FFA2E4472E9B93672504209032010C8007F5423CFD8F53D0E6C284B804C35301CDF9B312021048930006C0836E772DBCC2439443217238FD7F7C5B9B9A3EAD4D9D7262BB';
wwv_flow_imp.g_varchar2_table(31) := '9A3A79B23ABEED5835B6A5C52B2782C921F0EEFEFDEAC59E971B093DB36387DAF7AEFEDF3DEAC55D3D6ADFFEFD721225130840E020010C80633384F82A5AAAA7FFF5D09F37778E3A63F64C3565D22447B2F10FFFF0C30FD561871D163F91C433D8F3FAEB';
wwv_flow_imp.g_varchar2_table(32) := 'EAA55D3DEA991DDD8D3FDA18F0820004E213C000386A10E206C0D4EEFED743FF9273E7A9E96DC73AD2E4F01208E8B3054F766D6F98812DDBBA38435082E8D428920006C05196103F4C73D3CAD549FCE4AF1EFC575FDC91C5A77DC736E07007029B9E78B2';
wwv_flow_imp.g_varchar2_table(33) := '6104B6746D7788C2A11080802D010C802DB101EB7D3F882685EBFFFA54FFE2ABAE5027B7CF70A4C7E1103844405F2AD8F4F8136AE3E34FAA3D7BF782060210084C0003E008D8B701E8EE7945DDB7F931C7ACC21DAE3FF17FFBA28E701B1019024A297D56';
wwv_flow_imp.g_varchar2_table(34) := 'E09E07D76204E806080424800170847BEB5597AA23468F768C72E8F05FFFEE59A5FF487BB5B6B4A8E5DFFF6F7CEA97264CE6F96004321798F2A212C00038E2F7FD15C00D4F75A9ADCF753B66E5F7F0299327ABE54B3AB9C9CF2F56A25910C00858C06229';
wwv_flow_imp.g_varchar2_table(35) := '040C0960000C410DB7CCB70190F6EB7FFA7AFFAA65B7F01D7EC73EE1707702FADB036B366E6A5C1AE0050108B813C0003832CCD900E84FFEEB572C67F83BF60887FB25A06F16ECBCE3CEC6D70879410002D5096000AAB36B1C99AB01D0D7FC572DBB95D3';
wwv_flow_imp.g_varchar2_table(36) := 'FE8EFDC1E1E1083CB8F117EAB6953F0DB70191219039010C80A3C0BE0DC0ED0FAD57BBDF78CB312BF7C3F5F0E76B7EEE1C891096C04B3D2F37CE06F074C1B09C899E27010C80A3AE391A00BEEAE7D8141C5E2B017D6FC0AD2BEF6D3C4380170420604E00';
wwv_flow_imp.g_varchar2_table(37) := '0360CE6AC895BE0D40EC9B00F54D7F3F5BB1DC910A8743A07E025C12A89F393BA64D0003E0A85F6E068053FF8E0DC1E15109FCBEFB79B5F007FFC8EF0B445581CD5321800170542A2703A09FEDBFF47BDF7524C2E110884B40DF17B060D18D9880B832B0';
wwv_flow_imp.g_varchar2_table(38) := '7B020430008E22F93600311F04F4E803F7F3C33E8EFDC0E13208600264E84016B20960001CF5C9E551C07CFA776C040E174740DF1CB860D14D7C43409C322424850006C051895C7E0C68DD8ABBF9CEBF632F70B83C029800799A90911C021800472D7C1B';
wwv_flow_imp.g_varchar2_table(39) := '80183F07CC9DFF8E4DC0E1A209600244CB4372110960001CE17FF96F4E52FA8FCFD74D2B57AB03EFBDEF33E488B1165F7985BAF8DCAFD5B65F888D3EFCF04375D8618785084DCC0C08600232109112BC13C00038223DF584CFA88EB95F748CD2FFF0FB7E';
wwv_flow_imp.g_varchar2_table(40) := 'F998EADEF58AD79823054BF1E63FFD75AF1777F5347E2F5E3F05AE7DDAB1EAB4FF3443FDE52F1FA87DEFFC51B58EFB94FAC4274635CA3E72C284C67F1F3961A21ADB3AAE36AE6C248B002640961E64139F0006C05183E33E3D457DE7FCB31DA3F43F7CEB';
wwv_flow_imp.g_varchar2_table(41) := '73CFAB0D4F6DF31A73B860A99CFED73F00B365DB76B5A5AB6BC81F8139EF0BB3D5699F9DD194D927468D52478E9FA08E9A7CB43A6AF2BF3F68129A1EC8822C086002B29091223C11C0007800E9FBAB8075DE0770C9B9F3D4A22BBFE581429810FA77E0F5';
wwv_flow_imp.g_varchar2_table(42) := '235E9BFDF2DB92051D6A7CEB58EB24B409F80FC74C6B98025E6510C00494A133553627800168CEA8E98A1B3AE6ABA913FD0E909B573FA4DE7E675FD3BD5D172CBDFE3A356FCE975CC3783F5E0F7EFDBBEFFA147FB3D7D4A326A81B2E9CDF6CD9887F7FE4';
wwv_flow_imp.g_varchar2_table(43) := 'F889EAD8BF9A8E1170A298CEC1988074B422D3700430001ED8EA7B00F4BD003E5F755D0690F6E85F7D6DFF1FEEB8D368F0F7F2363DFD6FA28F36029FF9EB19EAF0C38F50A3468F363984358912C004242A1C697B238001F08032C48D80755D06E85AF7B0';
wwv_flow_imp.g_varchar2_table(44) := '1ADBD2E281825B08FD8FB11EFC5BBAB65B07AA7AFA7FA48DDE7CEFFFA9AFCE9D2B828D35100E302680093046C5C20C0960003C883A7E5CAB5A72E9851E22F50F51C7B701BA7FB5D97BDEB601F5635B17DEBCD4EA537FEF1EEDD38E51977FF54CDB2D9BAE';
wwv_flow_imp.g_varchar2_table(45) := 'D797608E18F349B57C49270F486A4A2BED059880B4F523FBEA043000D5D9F53B32C4A7D09DBB5F533F5EFF88A70C870E13DB00E86BFD9D77DC59B946DF0F62D289F43DFBD2DAD2A2165F7585C8FB242A43E3C0410430013445890430009E54F7791DBA6F';
wwv_flow_imp.g_varchar2_table(46) := '4A3FFEF966B5F3D53D9EB21C1C26A60158B6F25EB566E3A6CAB585F80AA64E66A8FB2FA4DE2C59191E076202E881E20960003CB5808F3BD1874A25F459805806A0F3877735BEDEE7F20AF1E95FE773FB43EBD5EE37DE1A94DAD51777A86F5FD4E19232C7';
wwv_flow_imp.g_varchar2_table(47) := '0A27C09900E102919E570218008F38435C06D0E9853C0B10C300B87EF2D74C427DFA6F76F32567023CBE618486C204081586B4BC13C00078441AEA3240B3A1E45242DD06C0F59A7F6FADA1CC96C9D72F31012E1D97C6B198803474224B37021800377EFD';
wwv_flow_imp.g_varchar2_table(48) := '8E0E7519406FF2EBDF3DDBF8E3FB55A701D077FB5F70CDB5CE2584F801A6DEA4863BFDDF37697D63A07E7EC2F4B6639D6B21805C029800B9DA90991F0218003F1C0F4609F154409BE1645B4E5D0640FF633AFF9A8595BEEAD7B7A690266BF79B6FA9DBD7';
wwv_flow_imp.g_varchar2_table(49) := 'AE3742A87F4361D5B25B784E8011AD74176102D2D58ECC9B13C000346764B522C443817A13D0034A7F2DD0E74F05D76500FEFEE6A5951EF2D317FE98C3472B7DE39FEFC72EF7EEB1F6F1DFAAA75FF83763BDA5FF8E8271212C1C9100268006C995000620';
wwv_flow_imp.g_varchar2_table(50) := '80B2B75E75A93A22D06364F580D283CAD7AB0E03A01FEFBB60D18DCE298778E4726F527F7EFF7D75E34F565BE728ED51CAD605708011014C80112616254600031040B090D7A875BAB69F54472AB10E0370D6A5973B9FFA0F796645F3A97A8FC52927B6AB';
wwv_flow_imp.g_varchar2_table(51) := 'FB6FBB25401711521A014C803445C8C7950006C095E010C7EB53D5DF5FD011EC2C804F1310DA00F8B8EB3FF4F0D79FFE7FB06A6DE54B2B7C2B20C09B4868484C80506148AB12010C40256CCD0F0A7D16400FADBBD73F32E4036B9A677768456803E0FAE9';
wwv_flow_imp.g_varchar2_table(52) := '5FDFF477EDFC73829AA9AA9FFE7B294E993C593DBAFA3E1BECAC4D9800262061F148BD1F010C40A086A8E32C800F1310D200B87EFAAF63F8BB7EFAEF6D1FEE0508F446121A1613205418D2B2228001B0C265B7F8B4CFB6ABF3BE30CBEE20CBD57A80FD7C';
wwv_flow_imp.g_varchar2_table(53) := 'EB36ABBBD7FB6E11D2005CB6F826F5CC8E6ECB8A3E5AAE4FFB9F7FDAECA09FFCF53E1B9EEA525B9FAB9663DFC2E6CD9DA3967EEFBB956AE5A034096002D2D48DAC0F11C00004EE86504FAC1B9876D51B034319803DAFBFAECEFAE66595E886BEE6DF9B94';
wwv_flow_imp.g_varchar2_table(54) := 'EF272C76AD7B98E70254523CDD833001E96A47E64A6100027741A867D60F95B6FE8AE086A7B659DDCC16CA003CB8F117EAB6953FB5A2AB2F9BE8C7296B0350C7CBF76F2C7033601DAAC9DB0313204F13323223800130E3E4B42AE4F7D70726A61F16A4CF';
wwv_flow_imp.g_varchar2_table(55) := '060CF56B76431511CA00D89EFED7D7FB35A7500FF91958BBEFE729E8F867CC9AA97EB4A4D3A95738384D02988034752B3D6B0C400D1D50C70D8103CB30BDB33D940168FFCAD9C664437F63626022BE6EFC1B1857FF46C0B6750F1BD7CDC2BC086002F2D2';
wwv_flow_imp.g_varchar2_table(56) := 'B3846A300035A95CE7A580DE92F4356E7D3660E7AB7B86AD328401307DF29F66A23FF58F6F1D5B930A1F6DE3FBD47FDFE4D7ADB89B1F09AA554D599B610264E941362313C000D4D821A17E2EB859093B77BFD678D2DD50462084016876FD5F0F7EFDA9FF';
wwv_flow_imp.g_varchar2_table(57) := 'B8A947374BDDFBDF9BFCDCAFCBA6CB9774AAD367CD7409C1B18913C004242E6041E963006A163BE4AF05362B451B01FD95B7EE5DAF1C5C1AC2002C5B79AF5AB371D3A074DAA71DA3F45723630C7E9D8CCDAFFD356339DCDF5F7D7187FAF6451D550FE7B8';
wwv_flow_imp.g_varchar2_table(58) := '4C086002321132F3323000350B3C7E5CAB5AD4313FF8F7DB472A4B5F1AD026E0E9175E52BFFE9707BC13E87B03A0AE570F7D3DFCEB3ED5DFB7307DDD7FD9DAF5EAED77F679AFB76F409E0710146F52C1310149C95564B2188008B287FC4D7BDB728E1833';
wwv_flow_imp.g_varchar2_table(59) := '461D35F96875E4F889EAC8F113D427468DB20DD16FFD5F3EF840FDE35D77A90FFFF241F4A1DF37B1DB1F5A6FFCCD081700FC38900BBDFC8EC504E4A7694E15610022A959D7C36E6CCBD386A075DCA7D4D8D64FA951A346A9B1E3C68D18E2DD77DE511F7C';
wwv_flow_imp.g_varchar2_table(60) := 'F0817A77DF1FD5BE77FEA8FE7CE080ED96C1D7577D485295C4300055A8E57D0C26206F7D53AE0E0310513DA926202212EF5BD739FC75F21800EF126611101390858CD9158101882C699D0F098A5C6AEDDB8778D84FB3223000CD0895FBF7988072B5975A';
wwv_flow_imp.g_varchar2_table(61) := '39064080329800FF22C418FE9C01F0AF636E113101B9299A763D180021FA6102FC09116BF86300FC699873244C40CEEAA6551B0640905EDC13E02E46DDD7FC0766CCD700DD352C210226A00495E5D7880110A61126A0BA20B187BFCE9C070155D7AFB423';
wwv_flow_imp.g_varchar2_table(62) := '3101A5292EAF5E0C803C4D947E4EC0B5F3CF89FAB0208158864D493FE4E7EEF58FD4F23DFF665C7814703342FC7D5F029800FA2126010C404CFA23ECAD9FA077F9D967D6F6F3B84231344D4B3FDEF7BECD8F057FC25FD3443E5EF0E803F7AB299326992E';
wwv_flow_imp.g_varchar2_table(63) := '671D041426802688450003108BBCE1BEB17E40C830BDA8CB42FFB08F6D71FC1CB02D31D6F712C004D00B310860006250B7DC53FF7ADEDF9D7D2697043EE6A64FF9FFF3E6C746FC99634BC45E967303A0178CC506C104142B7DB4C23100D1D0DB6D3CE6F0';
wwv_flow_imp.g_varchar2_table(64) := 'D14A9F0DD0370996FCD25FF1DBF0D43675E0BDF7C561587AFD756ADE9C2F89CB8B84D22180094847AB1C32C50024A6A23E1BA09F1910F397F56220D3BF60A8EFF2DFF9EA9E18DB1BEDD9B5EE6135B6A5C5682D8B20301C014C00BD5117010C405DA43DEF';
wwv_flow_imp.g_varchar2_table(65) := 'A37F62F72B334FCAFEB2803EDDFFABEDCFAAADCF757B26E8371CA7FFFDF22C3D1A26A0F40EA8A77E0C403D9C83ECA22F0B6823F0C5CFB5676704F4E0FFED1FBA1B835FE2E9FE8182AE5A76AB3AB97D46109D095A26014C4099BAD7593506A04EDA81F6CA';
wwv_flow_imp.g_varchar2_table(66) := 'C908A436F8B5A4FC0050A0C6262C5F11A4078212C00004C55B7F707D93E0699F6B4FEEF901FAFBFC5BFFD0ADF44D7EA9BDF8F49F9A6269E5CB9980B4F44A295B0C404A6A59E4AA9F2678EA09D355FBB463C4DE30A86FECEBDEF58A7AFA8597443CC5CF02';
wwv_flow_imp.g_varchar2_table(67) := 'EFC1A57CFAAF428D636C0960026C89B1DE840006C08452E26B2499811C867EDF7658B7E26E35BDEDD8C43B84F4532080094841A5B472C400A4A59773B6FA11C3C74D3D5AE9AF136A633075E204E798230518DB3A4EB58EFB94EADAF1BFD4BF3CF24B318F';
wwv_flow_imp.g_varchar2_table(68) := 'ECF551343FFCE38322316C0860026C68B1B619010C40334299FF7DF7AF36ABFFF3F69BEACF070EA8037FFA93FABF6FBFD9A8F8C0813F35FE3F93D71163C6A831633ED958FAEFC64F54633EF949A5FFBF23C74F3C78B8FE876BFE350BD59EBD7B4D428A5F';
wwv_flow_imp.g_varchar2_table(69) := '737C5B9BFAD98AE5E2F324C1FC086002F2D3345645188058E485ECAB0D405DAF977A5E560B16DDA8F6EDDF5FD79641F6D1CFFCD737FE71EA3F085E821A10C0041840624953021880A688F25E50A701D024373DF1A4EABCE3CEA4A1F293BF49CB974DF298';
wwv_flow_imp.g_varchar2_table(70) := '806CA48C560806201A7A191BD76D005237013CEF5F46DF92C54704300174820B010C800BBD0C8E8D610034B6652BEF556B366E4A8A20C33F29B98A491613508CD4DE0BC50078479A56C0580620B533010CFFB4FABAB46C3101A529EEA75E0C801F8EC946';
wwv_flow_imp.g_varchar2_table(71) := '8969007A4DC06D3FF9A9D81B03F50D7FFF74FD75EAF4593393D598C4CB2080092843679F5562007CD24C30566C03A091E96F07E81B035FECE91145507FD54F7FF2E76E7F51B290CC08043001B4870D010C800DAD0CD74A30001AABFE87EB9E07D78AB92F';
wwv_flow_imp.g_varchar2_table(72) := '8087FC64D8EC859484092844680F6562003C404C39841403D0CBF0F7DDCFAB7B1EFC57F5CC8EEE2858F5B3FD175F79059FFAA3D067535F043001BE48E61D070390B7BE4DAB9366007A13D6CF0BD06704EA7A72A01EFC575F7C913AB97D4653662C80400A';
wwv_flow_imp.g_varchar2_table(73) := '04300129A81437470C405CFED177976A00FA9E1158B361A3DAD2B53D08AB7973E7A873E7CE61F007A14BD0D8043001B11590BD3F0640B63EC1B3936E007A01E87FC89EECDAAEB66CEB6A5C1EA8FA38617D57FF19B36729FD89FF4BB366AAB12D2DC119B3';
wwv_flow_imp.g_varchar2_table(74) := '01046212C004C4A42F7B6F0C806C7D8267978A011808427F73407F6B405F22787157CFB08660CAE4C96AEAE4494ADFD13F7D5A9B9A32695270A66C000169043001D21491910F0640860ED1B248D5004403C6C610489400262051E102A68D0108083785D0';
wwv_flow_imp.g_varchar2_table(75) := '18801454224708F8218009F0C331972818805C94AC580706A022380E8340A2043001890A17206D0C4000A82985C400A4A416B942C00F014C801F8EA947C100A4AEA063FE180047801C0E81440960021215CE63DA18008F30530C85014851357286801F02';
wwv_flow_imp.g_varchar2_table(76) := '98003F1C538D82014855394F7963003C81240C04122580094854380F6963003C404C3904062065F5E4E7BE78CD6AF9490ACAF0B64B2E8D920D26200AF6E89B6200A24B1037010C405CFEB9EF8E01B053389601D0596202ECB4CA6135062007151D6AC000';
wwv_flow_imp.g_varchar2_table(77) := '38C0E3D0A60430004D11F55B10D3006002ECB4CA6135062007151D6AC00038C0E3D0A60430004D1189320098003BBD525F8D01485D41C7FC31008E00397C44021800BB06897D06A0375B2E07D8E996EA6A0C40AACA79CA1B03E009246186248001B06B0C';
wwv_flow_imp.g_varchar2_table(78) := '290680330176BAA5BA1A0390AA729EF2C600780249180C80871E90640030011E04151E0203205CA0D0E9610042132E3B3E6700ECF4976600300176FAA5B61A03909A629EF3C50078064AB87E043000760D21D1006002EC344C6935062025B502E48A0108';
wwv_flow_imp.g_varchar2_table(79) := '00959007096000EC9A41AA01C004D8E998CA6A0C402A4A05CA130310082C611B043000768D20D9006002ECB44C61350620059502E68801080897D01800CB1E906E00300196820A5F8E01102E50E8F43000A109971D9F330076FAA760003001769A4A5E8D';
wwv_flow_imp.g_varchar2_table(80) := '0190AC4E0DB961006A805CF01618003BF153310098003B5DA5AEC6004855A6A6BC300035812E741B0C809DF02919004C809DB61257630024AA52634E18801A6117B81506C04EF4D40C0026C04E5F69AB3100D214A9391F0C40CDC00BDB0E036027788A06';
wwv_flow_imp.g_varchar2_table(81) := '001360A7B1A4D51800496A44C8050310017A415B6200ECC44ED5006002EC7496B21A032045894879600022812F645B0C809DD0291B004C809DD61256630024A81031070C4044F8056C8D01B0133975038009B0D33BF66A0C406C0522EF8F01882C40E6DB';
wwv_flow_imp.g_varchar2_table(82) := '6300EC04CEC1006002EC348FB91A031093BE80BD31000244C838050C809DB8B918004C809DEEB1566300629117B22F0640881099A68101B0133627038009B0D33EC66A0C400CEA82F6C400081223C354300076A2E66600300176FAD7BD1A0350377161FB';
wwv_flow_imp.g_varchar2_table(83) := '61008409423A4108FC8F6DFF533DBB6B6790D83E83E6680030013E3BC46F2C0C805F9EC945C300242719095B1248C9D6EF5D00001A7A4944415465F8EBB27235009800CBA6AD693906A026D052B7C100485586BC7C104869F8E76E0030013E3ADA6F0C0C';
wwv_flow_imp.g_varchar2_table(84) := '805F9EC945C30084934C0F1FFDFAFAECCF87DB84C8C312486DF89760003001B2DEB01800597AD49E0D06200CF2BEC3E7A469C76102C260CE6AF8976200300135BF1946D80E0320478B28996000FC631FEA932726C03FE7E122A6F8C9BFB7969CEF0118A8';
wwv_flow_imp.g_varchar2_table(85) := 'D7BBFBF7AB058B6E522FF6F4D4D71CECD48F0006A0F086C000F86D8091860F26C02FEBA1A2A53CFC4B3A03D0AB1D2620FC7B62A41D300071F947DF1D03E04F0293E18309F0C77B602413FEE176F713B9A4330098003F3DE3120503E0422F836331007E44';
wwv_flow_imp.g_varchar2_table(86) := 'B4193E98003FCCFB46B1E1EF7F777F114B34009A1E6702FCF5904D240C800DAD0CD76200DC45AD327C3001EEDC7B2354E1EF6F77BF914A35009800BF7D641A0D03604A2AD375180037615D860F26C08DBD3EDA85BFFBEEFE23946C003001FEFBA959440C';
wwv_flow_imp.g_varchar2_table(87) := '40334299FF3D06A0BAC03E860F26202EFFEABB8739B27403800908D357C345C500D4CB5BDC6E18806A92F818FEBD3B6302EC35F0C9DF7EF7704760003E62CB3D01E17AAC6F640C403D9CC5EE8201B09726C4F0C10498EB1082BFF9EE615762000EF1DDF3';
wwv_flow_imp.g_varchar2_table(88) := 'FAEBEA82ABAF55FBF6EF0F0BBDE0E8188082C5D7A56300EC1A20E4F0C10434D72224FFE6BB875F8101E8CFF8A59E97D5824537620202B51E062010D854C26200CC95AA63F8600286D7A30EFEE6DD106625066030D7DF746D570B6F5E1A0678E151310085';
wwv_flow_imp.g_varchar2_table(89) := '370006C0AC01EA1C3E9880C19AD4C9DFAC23C2ACC2000CCD75D9CA7BD59A8D9BC2402F382A06A060F1B90460267E8CE1830938A44D0CFE437586D6E4D95D3BCD9AA6E22A0CC0F0E0FEF69A85FC6E40C5BE1AEE300C8067A0A985E30CC0C88AC51C3E9800';
wwv_flow_imp.g_varchar2_table(90) := '39DFF3EFD562F19AD541DFE21880E1F1FEBEFBF9C6FD00BCFC11C000F8639964240CC0F0B2C51CFEBD59956C0224F0D73AF4D5000310F79FB9CE1FDEA5363DFE44DC2432DA1D03909198554AC1000C4D4DCAF0193880AA689CE23152F80F34601880B8DD';
wwv_flow_imp.g_varchar2_table(91) := 'A4BF1A78D6372F8B9B4446BB63003212B34A291880C1D4A40C9FBE99957426400AFFA1986300AAFC2BE3F718CE02F8E38901F0C732C9481880FEB249193E4335530926400AFFE1586300E2FF33A79F0D70C135D7C64F24830C30001988E8520206E0103D';
wwv_flow_imp.g_varchar2_table(92) := '29C367243D73360152F88FC41803E0F2AF8DBF63F946801F9618003F1C938D8201F8483A29C3C7A49172340152F837638B0130E9D0F06B1EDCF80B75DBCA9F86DF28F31D3000990BDCAC3C0C405AC3BF57CF6683AA99EE92FE3E95E1AF99610064740E37';
wwv_flow_imp.g_varchar2_table(93) := '03FAD10103E08763B2514A370052864F9506CAC10448E16FCA120350A553C31C73D6A597AB3D7BF786095E48540C4021420F5766C90640CAF0716941D3C1E5B247A863A5F0B761880108D50DF671F936803DB381476000DC19261DA154032065F8F8681E';
wwv_flow_imp.g_varchar2_table(94) := '9B01E6633F1F31A4F0B7658701F0A1BE9F189B9E785275DE71A79F608546C100142A7C6FD9251A0029C3C767EBD90E329F7BDBC692C2BF0A330C80ADDAE1D6F3686077B6180077864947E85AF7B01ADBD292740D36C94B193E36399BAEAD32D04C63FB5A';
wwv_flow_imp.g_varchar2_table(95) := '27857F555618005F9DE01EE7DDFDFBD5AC0BBEE11EA8E008188082C5D7A5AF5A76AB3AB97D461114A40C9F90B0AB0EB69039F5C696C2DF851106A08E4E31DFA3FD2B679B2F66E520021880C29BA214032065F8D4D16E2E032E547E52F8BBB2C10084EA90';
wwv_flow_imp.g_varchar2_table(96) := '6A713100D5B8F51E850170E397FCD1575FDCA1BE7D5147F2758C548094E1532764D741E7335729FC7D30C100F8EC0CF758B32FF886DAB77FBF7BA0422360000A15BEB7EC4BCE9DA7165DF9AD6C2948193E3100FB1878AE794BE1EF8B0506C0B523FC1E7F';
wwv_flow_imp.g_varchar2_table(97) := 'D9E29BD4333BBAFD062D281A06A020B1872AF59413DBD5FDB7DD92250529C327265C5F83AF4A0D52F8FB648001A8D209E18EE112801B5B0C801BBFE48F6E6D6951DBD63D9C7C1D030B90327C2480F539004DEB91C2DF77ED1800D30EA8671D06C08D3306';
wwv_flow_imp.g_varchar2_table(98) := 'C08D5F16473FFAC0FD6ACAA44959D4A28B90347C743ECFEEDA199DADEF4138524192F87F7DF6E7BDB2C70078C5E91C0C03E0861003E0C62F8BA3972FE954A7CF9A99452D12878FC49C42899D7BAD1880509D631FF7A59E97D505D75C6B7F20471C248001';
wwv_flow_imp.g_varchar2_table(99) := 'A019542E37024A1E3E9273F3F51628A1460C80AF6E718FC39300DD196200DC19261FE1F8B636F5B315CB93AE2385E193428E559B20E7DAFA32C10054ED10FFC7FDF77F5DABEE7970ADFFC00545C4001424F648A5A6FC48E094864F4AB99ABE3572AC69B8';
wwv_flow_imp.g_varchar2_table(100) := 'DA3100A65D117E1D5F0174678C017067984584A5D75FA7E6CDF95272B5A4387C52CC79B8C6C8A91693E6C7009850AA670D3700BA73C600B833CC22C219B366AA1F2DE94CAA9694874FCAB9F736490E35D8363C06C0965898F5BFE9DAAE16DEBC344CF082';
wwv_flow_imp.g_varchar2_table(101) := 'A262000A127BA452537B1E400EC327E51A52CEDDE52D8F0170A1E7EFD8CE1FDEA5363DFE84BF808546C200142AFC5065A7721920A7E193622D29E6ECEB6D8E01F045B27A1CFD33C0677EF3327E03A03AC2834762003C40CC25440A9701721C3E29D59452';
wwv_flow_imp.g_varchar2_table(102) := 'AE21DE9718801054ED626E7AE249D579C79D7607B17A480218001AA31F01C94F05CC79F8A4505B0A39867E3B630042136E1EFFAC4B2F577BF6EE6DBE90154D0960009A222A6B81D49F072E61F848AE51726E75BE43310075D21EBC179FFEFDF2C700F8E5';
wwv_flow_imp.g_varchar2_table(103) := '997CB4299327AB4757DF27AA8E92868FC45A25E614AB413100B1C82BA5AFFDCFBF66219FFE3D4A8001F008339750926E062C71F848AA59F774693F6634D2FB180310EF5F399EFCE79F3D06C03FD3E4234A390B206910FAFE55B9664D22A5F66679D6F1F7';
wwv_flow_imp.g_varchar2_table(104) := '75FE9261B37A3000CD0885F97B7EF8270C570C4018AEC9478D7D1640CA008C397CA43088D9CC31F9C7AC9BBD0F11D0A7FE172CBA49BDD8D30316CF0430009E81E6122EE6590029834FC2F091C222465F4BE01FA36EF6EC4FE0EF6F5EAAB6746D074B0002';
wwv_flow_imp.g_varchar2_table(105) := '18800050730919E32C8094812769F8486152675F4BE25F67DDECD59F004FFC0BDB111880B07C938EAECF02AC5FB15C8D6D69A9A50E29834EE2F091C2A68E4690C8BF8EBAD9A33F01BEF217BE233000E11927BD435DCF059032E0240F1F298C4236B464FE';
wwv_flow_imp.g_varchar2_table(106) := '21EB2636C33F460F600062504F6CCFD04F079432D852183E52588568E114F887A89B980CFF583D800188453EA17D4F39B15DDD7FDB2D41329632D0521A3E5298F96C8894F8FBAC9B580CFF983D800188493FA1BD175F7985BAF8DCAF79CD58CA204B71F8';
wwv_flow_imp.g_varchar2_table(107) := '4861E7A32152E4EFA36E6230FC63F7000620B60209EDBF6EC5DD6A7ADBB15E329632C0521E3E5218BA3444CAFC5DEAE65886BF841EC000485021911C8E6F6B53AB96DDE2FCAD0029832B87E12385659516CE817F95BA3986E12FA5073000529448248F79';
wwv_flow_imp.g_varchar2_table(108) := '73E7A8A5DFFB6EE56CA50CAC9C868F14A6364D91137F9BBA59CBF097D4031800496A24924BD5FB01A40CAA1C878F14B6262D9C237F93BA59C3F097D6031800698A2492CFF2259DEAF459338DB39532A0721E3E52188FD41439F3377E33B050F1901F194D';
wwv_flow_imp.g_varchar2_table(109) := '800190A1437259B4B6B4A855CB6E35BA2950CA602A61F848613D544397C03FB93772848419FE11A00FB32506408E16C965626202A40CA492868F14E67D1BBA24FEC9BD916B4C98E15F236C83AD3000069058323C016D021E7BE0FE21BF1920651095387C';
wwv_flow_imp.g_varchar2_table(110) := 'A4B0D79D53227FFECD184C80E12FAF2B3000F234492EA3A1BE1E286500953C7C24685032FFE4DEC8011366F80784EB101A03E0008F430F11E86B02240C1E3E797EA44D4C2D18FEFC0BA10930FCE5F6010640AE36C965A64DC07FBDF81BEAE99DFF3B7AEE';
wwv_flow_imp.g_varchar2_table(111) := '0C9F4312C43001F08FFE16109100C35F840CC326810190AD4F72D99DD8FE1FD5B4FF7CA27AEF830FA2E5CEF0198CBE4E1300FF68AD2F6A6386BF2839864C0603205FA3E4328C6902183EC3B74B1D2600FEC9BD5D8324CCF00F82D57B500C8077A404D404';
wwv_flow_imp.g_varchar2_table(112) := '629800864FF3DE0B6902E0DF9C7F092B18FEE9A88C014847ABE432ADD304307CCCDB23840980BF39FF9C5732FCD352170390965EC9655B870960F8D8B7854F13007F7BFE391EC1F04F4F550C407A9A2597714813C0F0A9DE0E3E4C00FCABF3CFE948867F';
wwv_flow_imp.g_varchar2_table(113) := '9A6A6200D2D42DB9AC439800868F7B1BB89800F8BBF3CF2102C33F5D153100E96A975CE63E4D00C3C79FFC554C00FCFDF14F3912C33F65F594C200A4AD5F72D9FB30010C1FFFB2DB9800F8FBE79F6244867F8AAAF5CF190390BE86C955E06202183EE1E4';
wwv_flow_imp.g_varchar2_table(114) := '363101F00FC73FA5C80CFF94D41A3E570C401E3A2657451513C0F0092FF3482600FEE1F9A7B003C33F0595CC72C400987162550002362680E113408061420E6502E05F1F7FC93B31FC25AB639F1B06C09E19477824606202183E1E811B86EA6B02E06F08';
wwv_flow_imp.g_varchar2_table(115) := '2DF3650CFFFC04C600E4A76972158D6402183EF1E4D42640BFBE3EFBF3F1926067110418FE2264F09E0406C03B5202562130940960F85721C93110F04B80E1EF97A7A4681800496A149E4B5F13C0F02FBC19285F040186BF081982258101088696C05508';
wwv_flow_imp.g_varchar2_table(116) := '681370FE795F53F367FD972A87730C0420E08900C3DF1348C161300082C52935B5E3DBDAD4AA65B7A8B12D2DA522A06E084425C0F08F8ABFB6CD3100B5A166231B0298001B5AAC85803F020C7F7F2CA547C2004857A8E0FC3001058B4FE9510830FCA360';
wwv_flow_imp.g_varchar2_table(117) := '8FB62906201A7A363621800930A1C41A08B81360F8BB334C2D02062035C50ACC171350A0E8945C2B01867FADB8C56C8601102305898C440013407F40200C01867F18AE2944C500A4A0123936086002680408F825C0F0F7CB33B5681880D4142B3C5F4C40';
wwv_flow_imp.g_varchar2_table(118) := 'E10D40F9DE0830FCBDA14C3610062059E9CA4D1C1350AEF654EE8700C3DF0FC7D4A360005257B0D0FC3101850A4FD9CE0418FECE08B3098001C846CAF20AC10494A73915BB1160F8BBF1CBED680C406E8A16560F26A030C129B73201867F6574D91E8801';
wwv_flow_imp.g_varchar2_table(119) := 'C856DA720AC30494A335955623C0F0AFC62DF7A33000B92B5C487D98804284A64C6B020C7F6B64C51C80012846EAFC0BC504E4AF3115DA1160F8DBF12A6D3506A034C533AF171390B9C094674C80E16F8CAAD885188062A5CFB7704C40BEDA5299190186';
wwv_flow_imp.g_varchar2_table(120) := 'BF19A7D25761004AEF804CEBC704642A2C653525C0F06F8A88051F13C000D00AD912C004642B2D850D4380E14F6BD810C000D8D0626D72043001C94946C2150930FC2B822BF8300C40C1E297523A26A014A5CBAD93E15FAEF62E9563005CE8716C320430';
wwv_flow_imp.g_varchar2_table(121) := '01C94845A2960418FE96C0587E900006806628860026A018A98B2994E15F8CD4410AC50004C14A50A90430015295212F5B020C7F5B62AC1F480003404F14470013509CE4D915CCF0CF4ED228056100A26067D3D8043001B11560FFAA0418FE55C9711C67';
wwv_flow_imp.g_varchar2_table(122) := '00E801087C4C0013402BA44680E19F9A62B2F3E50C806C7DC82E30014C4060C084F74680E1EF0D25813E268001A0158A27800928BE05C40360F88B9728C904310049CA46D2BE0960027C13259E2F020C7F5F2489C33D00F4000486218009A035A41160F8';
wwv_flow_imp.g_varchar2_table(123) := '4B5324AF7C380390979E54E3480013E00890C3BD1160F87B4349A061086000680D080C208009A025621360F8C756A08CFD310065E84C959604300196C058EE8D00C3DF1B4A0235218001A04520C03D01F48010020C7F214214920606A010A129B31A01CE';
wwv_flow_imp.g_varchar2_table(124) := '0454E3C651F60418FEF6CC38C28D0006C08D1F47174000135080C8914B64F84716A0D0ED3100850A4FD97604300176BC586D4E80E16FCE8A957E096000FCF2245AC6043001198B1BA934867F24F06CDB208001A011206041001360018BA5231260F8D320';
wwv_flow_imp.g_varchar2_table(125) := 'B1096000622BC0FEC911C004242799B88419FEE2242932210C4091B253B42B014C802BC1728F67F897ABBDB4CA3100D214219F6408600292914A4CA20C7F31529008F700D003107023800970E357D2D10CFF92D44EA356CE00A4A113590A268009102C8E';
wwv_flow_imp.g_varchar2_table(126) := '90D418FE4284208D7E0430003404043C10C0047880986908867FA6C266501606200311294106014C800C1D2465C1F097A406B90C248001A02720E0910026C023CCC44331FC1317B080F4310005884C89F512C004D4CB5BE26E0C7F89AA90136700E80108';
wwv_flow_imp.g_varchar2_table(127) := 'D4400013500364A15B30FC850A435A8308700680A68040200298804060058765F80B1687D43000F40004EA248009A89376DCBD18FE71F9B3BB3D01CE00D833E308085811C00458E14A7231C33F49D98A4F1A03507C0B00A00E0298803A28C7D983E11F87';
wwv_flow_imp.g_varchar2_table(128) := '3BBBBA13C000B8332402048C0860028C3025B588E19F945C243B800006809680408D04300135C20EBC15C33F3060C207278001088E980D20D09F002620FD8E60F8A7AF2115288501A00B20108100262002744F5B32FC3D81244C74021880E8129040A904';
wwv_flow_imp.g_varchar2_table(129) := '3001E929CFF04F4F33321E9E000680EE80404402988088F02DB766F85B0263B978021800F1129160EE043001F21566F8CBD7880CED096000EC99710404BC13C0047847EA2D20C3DF1B4A0209238001102608E9944B0013204F7B86BF3C4DC8C81F010C80';
wwv_flow_imp.g_varchar2_table(130) := '3F9644828033014C8033426F0118FEDE50124828010C80506148AB5C029880F8DA33FCE36B4006E1096000C2336607085813C0045823F37600C3DF1B4A0209278001102E10E9954B001350BFF60CFFFA99B3633C02188078ECD919024D0960029A22F2B6';
wwv_flow_imp.g_varchar2_table(131) := '80E1EF0D258112218001484428D22C97002620BCF60CFFF08CD9411E010C803C4DC8080283086002C23505C33F1C5B22CB26800190AD0FD941E020014C80FF6660F8FB674AC474086000D2D18A4C21A03001FE9A80E1EF8F2591D2248001485337B22E98';
wwv_flow_imp.g_varchar2_table(132) := '0026C05D7C86BF3B4322A44F000390BE86545020014C4075D119FED5D971645E04300079E949350511C004D88BCDF0B767C611F912C000E4AB2D9515400013602E32C3DF9C152BCB208001284367AACC980026A0B9B80CFFE68C58511E010C40799A5371';
wwv_flow_imp.g_varchar2_table(133) := '86043001C38BCAF0CFB0E129C90B010C80178C0481407C029880C11A30FCE3F72519C825800190AB0D9941C09A0026E0103286BF75FB70406104300085094EB9F913C00428C5F0CFBFCFA9D09D0006C09D211120208E40C92680E12FAE1D494828010C80';
wwv_flow_imp.g_varchar2_table(134) := '5061480B02AE044A34010C7FD7AEE1F8920860004A529B5A8B2350920960F817D7DE14EC480003E00890C321209D40092680E12FBD0BC94F22010C804455C809029E09E46C0218FE9E9B8570C510C00014233585964E204713C0F02FBDABA9DF850006C0';
wwv_flow_imp.g_varchar2_table(135) := '851EC742203102399900867F62CD47BAE2086000C449424210084B200713C0F00FDB23442F830006A00C9DA91202FD08A46C0218FE343304FC10C000F8E14814082447204513C0F04FAECD485830010C806071480D02A1096813F0A3EF77AA29932685DE';
wwv_flow_imp.g_varchar2_table(136) := 'CA393EC3DF19210120D08F000680868040E1045A5B5AD4AA65B7AAE96DC78A25D1F9C3BBD4A6C79F109B1F8941204502188014552367087826A04DC03F5D7F9D3A7DD64CCF91DDC2BDBB7FBFFA873BEE545BBAB6BB05E26808406010010C004D0101081C';
wwv_flow_imp.g_varchar2_table(137) := '2470C9B9F3D4A22BBF2582C84B3D2FABCE3BEE542FF6F488C8872420901B010C406E8A520F041C09E8FB02165F75853AB97D8663A46A87EB4FFD6B366E52F73CB8B65A008E8200048C0860008C30B10802E5119837778EBAFAE28E5A6F10D437FAE9C1BF';
wwv_flow_imp.g_varchar2_table(138) := '67EFDEF2805331046A268001A81938DB41203502DA08E84B03A16E12D49FF89FECDACEE04FAD31C83779021880E425A40008D443405F1AD066E08CD933BD9C15F84DD7F6C6E0DFB2AD4BEDDBBFBF9E22D8050210384800034033400002D604A64C9EAC4E';
wwv_flow_imp.g_varchar2_table(139) := '39B15D695370FCB436757CDBB16A6C4BCBB071F40D7D7AC83FB363877A664777E30F2F0840202E010C405CFEEC0E81EC08E8AF144E9D3C99BBF7B353968272238001C84D51EA810004200001081810C000184062090420000108402037021880DC14A51E';
wwv_flow_imp.g_varchar2_table(140) := '0840000210808001010C800124964000021080000472238001C84D51EA810004200001081810C000184062090420000108402037021880DC14A51E0840000210808001010C800124964000021080000472238001C84D51EA810004200001081810C00018';
wwv_flow_imp.g_varchar2_table(141) := '4062090420000108402037021880DC14A51E0840000210808001010C800124964000021080000472238001C84D51EA810004200001081810C000184062090420000108402037021880DC14A51E0840000210808001010C80012496400002108000047223';
wwv_flow_imp.g_varchar2_table(142) := '8001C84D51EA810004200001081810C000184062090420000108402037021880DC14A51E0840000210808001010C800124964000021080000472238001C84D51EA810004200001081810C000184062090420000108402037021880DC14A51E0840000210';
wwv_flow_imp.g_varchar2_table(143) := '808001010C800124964000021080000472238001C84D51EA810004200001081810C000184062090420000108402037021880DC14A51E0840000210808001010C800124964000021080000472238001C84D51EA810004200001081810C000184062090420';
wwv_flow_imp.g_varchar2_table(144) := '000108402037021880DC14A51E0840000210808001010C800124964000021080000472238001C84D51EA810004200001081810C000184062090420000108402037021880DC14A51E0840000210808001010C800124964000021080000472238001C84D51';
wwv_flow_imp.g_varchar2_table(145) := 'EA810004200001081810C000184062090420000108402037021880DC14A51E0840000210808001010C800124964000021080000472238001C84D51EA810004200001081810C000184062090420000108402037021880DC14A51E0840000210808001010C';
wwv_flow_imp.g_varchar2_table(146) := '800124964000021080000472238001C84D51EA810004200001081810C000184062090420000108402037021880DC14A51E0840000210808001010C800124964000021080000472238001C84D51EA810004200001081810C0001840620904200001084020';
wwv_flow_imp.g_varchar2_table(147) := '37021880DC14A51E0840000210808001010C800124964000021080000472238001C84D51EA810004200001081810C000184062090420000108402037021880DC14A51E0840000210808001010C800124964000021080000472238001C84D51EA81000420';
wwv_flow_imp.g_varchar2_table(148) := '0001081810C000184062090420000108402037021880DC14A51E0840000210808001010C800124964000021080000472238001C84D51EA810004200001081810C000184062090420000108402037021880DC14A51E0840000210808001010C8001249640';
wwv_flow_imp.g_varchar2_table(149) := '00021080000472238001C84D51EA810004200001081810C000184062090420000108402037021880DC14A51E0840000210808001010C800124964000021080000472238001C84D51EA810004200001081810C000184062090420000108402037021880DC';
wwv_flow_imp.g_varchar2_table(150) := '14A51E0840000210808001010C800124964000021080000472238001C84D51EA810004200001081810C000184062090420000108402037021880DC14A51E0840000210808001010C800124964000021080000472238001C84D51EA810004200001081810';
wwv_flow_imp.g_varchar2_table(151) := 'C000184062090420000108402037021880DC14A51E084000021080800181FF0FF8F5685AD345F9770000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(36326576564623470309)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/excanvas_min_js
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A2A0A202A206A71506C6F740A202A2050757265204A61766153637269707420706C6F7474696E6720706C7567696E207573696E67206A51756572790A202A0A202A2056657273696F6E3A204056455253494F4E0A202A0A202A20436F707972696768';
wwv_flow_imp.g_varchar2_table(2) := '742028632920323030392D32303131204368726973204C656F6E656C6C6F0A202A206A71506C6F742069732063757272656E746C7920617661696C61626C6520666F722075736520696E20616C6C20706572736F6E616C206F7220636F6D6D6572636961';
wwv_flow_imp.g_varchar2_table(3) := '6C2070726F6A65637473200A202A20756E64657220626F746820746865204D49542028687474703A2F2F7777772E6F70656E736F757263652E6F72672F6C6963656E7365732F6D69742D6C6963656E73652E7068702920616E642047504C200A202A2076';
wwv_flow_imp.g_varchar2_table(4) := '657273696F6E20322E302028687474703A2F2F7777772E676E752E6F72672F6C6963656E7365732F67706C2D322E302E68746D6C29206C6963656E7365732E2054686973206D65616E73207468617420796F752063616E200A202A2063686F6F73652074';
wwv_flow_imp.g_varchar2_table(5) := '6865206C6963656E73652074686174206265737420737569747320796F75722070726F6A65637420616E6420757365206974206163636F7264696E676C792E200A202A0A202A20416C74686F756768206E6F742072657175697265642C20746865206175';
wwv_flow_imp.g_varchar2_table(6) := '74686F7220776F756C64206170707265636961746520616E20656D61696C206C657474696E672068696D200A202A206B6E6F77206F6620616E79207375627374616E7469616C20757365206F66206A71506C6F742E2020596F752063616E207265616368';
wwv_flow_imp.g_varchar2_table(7) := '2074686520617574686F722061743A200A202A206368726973206174206A71706C6F7420646F7420636F6D206F722073656520687474703A2F2F7777772E6A71706C6F742E636F6D2F696E666F2E706870202E0A202A0A202A20496620796F7520617265';
wwv_flow_imp.g_varchar2_table(8) := '206665656C696E67206B696E6420616E642067656E65726F75732C20636F6E736964657220737570706F7274696E67207468652070726F6A6563742062790A202A206D616B696E67206120646F6E6174696F6E2061743A20687474703A2F2F7777772E6A';
wwv_flow_imp.g_varchar2_table(9) := '71706C6F742E636F6D2F646F6E6174652E706870202E0A202A0A202A20737072696E74662066756E6374696F6E7320636F6E7461696E656420696E206A71706C6F742E737072696E74662E6A732062792041736820536561726C653A0A202A0A202A2020';
wwv_flow_imp.g_varchar2_table(10) := '20202076657273696F6E20323030372E30342E32370A202A2020202020617574686F722041736820536561726C650A202A2020202020687474703A2F2F6865786D656E2E636F6D2F626C6F672F323030372F30332F7072696E74662D737072696E74662F';
wwv_flow_imp.g_varchar2_table(11) := '0A202A2020202020687474703A2F2F6865786D656E2E636F6D2F6A732F737072696E74662E6A730A202A202020202054686520617574686F72202841736820536561726C65292068617320706C61636564207468697320636F646520696E207468652070';
wwv_flow_imp.g_varchar2_table(12) := '75626C696320646F6D61696E3A0A202A2020202020225468697320636F646520697320756E726573747269637465643A20796F7520617265206672656520746F2075736520697420686F776576657220796F75206C696B652E220A202A0A202A20696E63';
wwv_flow_imp.g_varchar2_table(13) := '6C75646564206A7344617465206C696272617279206279204368726973204C656F6E656C6C6F3A0A202A0A202A20436F707972696768742028632920323031302D32303131204368726973204C656F6E656C6C6F0A202A0A202A206A7344617465206973';
wwv_flow_imp.g_varchar2_table(14) := '2063757272656E746C7920617661696C61626C6520666F722075736520696E20616C6C20706572736F6E616C206F7220636F6D6D65726369616C2070726F6A65637473200A202A20756E64657220626F746820746865204D495420616E642047504C2076';
wwv_flow_imp.g_varchar2_table(15) := '657273696F6E20322E30206C6963656E7365732E2054686973206D65616E73207468617420796F752063616E200A202A2063686F6F736520746865206C6963656E73652074686174206265737420737569747320796F75722070726F6A65637420616E64';
wwv_flow_imp.g_varchar2_table(16) := '20757365206974206163636F7264696E676C792E0A202A0A202A206A734461746520626F72726F7773206D616E7920636F6E636570747320616E642069646561732066726F6D20746865204461746520496E7374616E6365200A202A204D6574686F6473';
wwv_flow_imp.g_varchar2_table(17) := '206279204B656E20536E7964657220616C6F6E67207769746820736F6D65207061727473206F66204B656E27732061637475616C20636F64652E0A202A200A202A204B656E2773206F72696769616E6C204461746520496E7374616E6365204D6574686F';
wwv_flow_imp.g_varchar2_table(18) := '647320616E6420636F70797269676874206E6F746963653A0A202A200A202A204B656E20536E7964657220286B656E206420736E7964657220617420676D61696C20646F7420636F6D290A202A20323030382D30392D31300A202A2076657273696F6E20';
wwv_flow_imp.g_varchar2_table(19) := '322E302E322028687474703A2F2F6B656E64736E796465722E636F6D2F73616E64626F782F646174652F2920202020200A202A20437265617469766520436F6D6D6F6E73204174747269627574696F6E204C6963656E736520332E302028687474703A2F';
wwv_flow_imp.g_varchar2_table(20) := '2F6372656174697665636F6D6D6F6E732E6F72672F6C6963656E7365732F62792F332E302F290A202A0A202A206A71706C6F74546F496D6167652066756E6374696F6E206261736564206F6E204C6172727920536964656E2773206578706F72742D6A71';
wwv_flow_imp.g_varchar2_table(21) := '706C6F742D746F2D706E672E6A732E0A202A204C61727279206861732067656E65726F75736C7920676976656E207065726D697373696F6E20746F2061646170742068697320636F646520666F7220696E636C7573696F6E0A202A20696E746F206A7150';
wwv_flow_imp.g_varchar2_table(22) := '6C6F742E0A202A0A202A204C617272792773206F726967696E616C20636F64652063616E20626520666F756E6420686572653A0A202A0A202A2068747470733A2F2F6769746875622E636F6D2F6C736964656E2F6578706F72742D6A71706C6F742D746F';
wwv_flow_imp.g_varchar2_table(23) := '2D706E670A202A200A202A200A202A2F0A69662821646F63756D656E742E637265617465456C656D656E74282263616E76617322292E676574436F6E74657874297B2866756E6374696F6E28297B7661722061623D4D6174683B766172206E3D61622E72';
wwv_flow_imp.g_varchar2_table(24) := '6F756E643B766172206C3D61622E73696E3B76617220413D61622E636F733B76617220483D61622E6162733B766172204E3D61622E737172743B76617220643D31303B76617220663D642F323B766172207A3D2B6E6176696761746F722E757365724167';
wwv_flow_imp.g_varchar2_table(25) := '656E742E6D61746368282F4D53494520285B5C642E5D2B293F2F295B315D3B66756E6374696F6E207928297B72657475726E20746869732E636F6E746578745F7C7C28746869732E636F6E746578745F3D6E65772044287468697329297D76617220743D';
wwv_flow_imp.g_varchar2_table(26) := '41727261792E70726F746F747970652E736C6963653B66756E6374696F6E2067286A2C6D2C70297B76617220693D742E63616C6C28617267756D656E74732C32293B72657475726E2066756E6374696F6E28297B72657475726E206A2E6170706C79286D';
wwv_flow_imp.g_varchar2_table(27) := '2C692E636F6E63617428742E63616C6C28617267756D656E74732929297D7D66756E6374696F6E2061662869297B72657475726E20537472696E672869292E7265706C616365282F262F672C2226616D703B22292E7265706C616365282F222F672C2226';
wwv_flow_imp.g_varchar2_table(28) := '71756F743B22297D66756E6374696F6E2059286D2C6A2C69297B696628216D2E6E616D657370616365735B6A5D297B6D2E6E616D657370616365732E616464286A2C692C222364656661756C7423564D4C22297D7D66756E6374696F6E2052286A297B59';
wwv_flow_imp.g_varchar2_table(29) := '286A2C22675F766D6C5F222C2275726E3A736368656D61732D6D6963726F736F66742D636F6D3A766D6C22293B59286A2C22675F6F5F222C2275726E3A736368656D61732D6D6963726F736F66742D636F6D3A6F66666963653A6F666669636522293B69';
wwv_flow_imp.g_varchar2_table(30) := '6628216A2E7374796C655368656574732E65785F63616E7661735F297B76617220693D6A2E6372656174655374796C65536865657428293B692E6F776E696E67456C656D656E742E69643D2265785F63616E7661735F223B692E637373546578743D2263';
wwv_flow_imp.g_varchar2_table(31) := '616E7661737B646973706C61793A696E6C696E652D626C6F636B3B6F766572666C6F773A68696464656E3B746578742D616C69676E3A6C6566743B77696474683A33303070783B6865696768743A31353070787D227D7D5228646F63756D656E74293B76';
wwv_flow_imp.g_varchar2_table(32) := '617220653D7B696E69743A66756E6374696F6E2869297B766172206A3D697C7C646F63756D656E743B6A2E637265617465456C656D656E74282263616E76617322293B6A2E6174746163684576656E7428226F6E726561647973746174656368616E6765';
wwv_flow_imp.g_varchar2_table(33) := '222C6728746869732E696E69745F2C746869732C6A29297D2C696E69745F3A66756E6374696F6E2870297B766172206D3D702E676574456C656D656E747342795461674E616D65282263616E76617322293B666F7228766172206A3D303B6A3C6D2E6C65';
wwv_flow_imp.g_varchar2_table(34) := '6E6774683B6A2B2B297B746869732E696E6974456C656D656E74286D5B6A5D297D7D2C696E6974456C656D656E743A66756E6374696F6E286A297B696628216A2E676574436F6E74657874297B6A2E676574436F6E746578743D793B52286A2E6F776E65';
wwv_flow_imp.g_varchar2_table(35) := '72446F63756D656E74293B6A2E696E6E657248544D4C3D22223B6A2E6174746163684576656E7428226F6E70726F70657274796368616E6765222C78293B6A2E6174746163684576656E7428226F6E726573697A65222C57293B76617220693D6A2E6174';
wwv_flow_imp.g_varchar2_table(36) := '74726962757465733B696628692E77696474682626692E77696474682E737065636966696564297B6A2E7374796C652E77696474683D692E77696474682E6E6F646556616C75652B227078227D656C73657B6A2E77696474683D6A2E636C69656E745769';
wwv_flow_imp.g_varchar2_table(37) := '6474687D696628692E6865696768742626692E6865696768742E737065636966696564297B6A2E7374796C652E6865696768743D692E6865696768742E6E6F646556616C75652B227078227D656C73657B6A2E6865696768743D6A2E636C69656E744865';
wwv_flow_imp.g_varchar2_table(38) := '696768747D7D72657475726E206A7D2C756E696E6974456C656D656E743A66756E6374696F6E286A297B6966286A2E676574436F6E74657874297B76617220693D6A2E676574436F6E7465787428293B64656C65746520692E656C656D656E745F3B6465';
wwv_flow_imp.g_varchar2_table(39) := '6C65746520692E63616E7661733B6A2E696E6E657248544D4C3D22223B6A2E636F6E746578745F3D6E756C6C3B6A2E676574436F6E746578743D6E756C6C3B6A2E6465746163684576656E7428226F6E70726F70657274796368616E6765222C78293B6A';
wwv_flow_imp.g_varchar2_table(40) := '2E6465746163684576656E7428226F6E726573697A65222C57297D7D7D3B66756E6374696F6E2078286A297B76617220693D6A2E737263456C656D656E743B737769746368286A2E70726F70657274794E616D65297B63617365227769647468223A692E';
wwv_flow_imp.g_varchar2_table(41) := '676574436F6E7465787428292E636C6561725265637428293B692E7374796C652E77696474683D692E617474726962757465732E77696474682E6E6F646556616C75652B227078223B692E66697273744368696C642E7374796C652E77696474683D692E';
wwv_flow_imp.g_varchar2_table(42) := '636C69656E7457696474682B227078223B627265616B3B6361736522686569676874223A692E676574436F6E7465787428292E636C6561725265637428293B692E7374796C652E6865696768743D692E617474726962757465732E6865696768742E6E6F';
wwv_flow_imp.g_varchar2_table(43) := '646556616C75652B227078223B692E66697273744368696C642E7374796C652E6865696768743D692E636C69656E744865696768742B227078223B627265616B7D7D66756E6374696F6E2057286A297B76617220693D6A2E737263456C656D656E743B69';
wwv_flow_imp.g_varchar2_table(44) := '6628692E66697273744368696C64297B692E66697273744368696C642E7374796C652E77696474683D692E636C69656E7457696474682B227078223B692E66697273744368696C642E7374796C652E6865696768743D692E636C69656E74486569676874';
wwv_flow_imp.g_varchar2_table(45) := '2B227078227D7D652E696E697428293B766172206B3D5B5D3B666F72287661722061653D303B61653C31363B61652B2B297B666F72287661722061643D303B61643C31363B61642B2B297B6B5B61652A31362B61645D3D61652E746F537472696E672831';
wwv_flow_imp.g_varchar2_table(46) := '36292B61642E746F537472696E67283136297D7D66756E6374696F6E204228297B72657475726E5B5B312C302C305D2C5B302C312C305D2C5B302C302C315D5D7D66756E6374696F6E204A28702C6D297B766172206A3D4228293B666F72287661722069';
wwv_flow_imp.g_varchar2_table(47) := '3D303B693C333B692B2B297B666F72287661722061683D303B61683C333B61682B2B297B766172205A3D303B666F72287661722061673D303B61673C333B61672B2B297B5A2B3D705B695D5B61675D2A6D5B61675D5B61685D7D6A5B695D5B61685D3D5A';
wwv_flow_imp.g_varchar2_table(48) := '7D7D72657475726E206A7D66756E6374696F6E2076286A2C69297B692E66696C6C5374796C653D6A2E66696C6C5374796C653B692E6C696E654361703D6A2E6C696E654361703B692E6C696E654A6F696E3D6A2E6C696E654A6F696E3B692E6C696E6557';
wwv_flow_imp.g_varchar2_table(49) := '696474683D6A2E6C696E6557696474683B692E6D697465724C696D69743D6A2E6D697465724C696D69743B692E736861646F77426C75723D6A2E736861646F77426C75723B692E736861646F77436F6C6F723D6A2E736861646F77436F6C6F723B692E73';
wwv_flow_imp.g_varchar2_table(50) := '6861646F774F6666736574583D6A2E736861646F774F6666736574583B692E736861646F774F6666736574593D6A2E736861646F774F6666736574593B692E7374726F6B655374796C653D6A2E7374726F6B655374796C653B692E676C6F62616C416C70';
wwv_flow_imp.g_varchar2_table(51) := '68613D6A2E676C6F62616C416C7068613B692E666F6E743D6A2E666F6E743B692E74657874416C69676E3D6A2E74657874416C69676E3B692E74657874426173656C696E653D6A2E74657874426173656C696E653B692E6172635363616C65585F3D6A2E';
wwv_flow_imp.g_varchar2_table(52) := '6172635363616C65585F3B692E6172635363616C65595F3D6A2E6172635363616C65595F3B692E6C696E655363616C655F3D6A2E6C696E655363616C655F7D76617220623D7B616C696365626C75653A2223463046384646222C616E7469717565776869';
wwv_flow_imp.g_varchar2_table(53) := '74653A2223464145424437222C617175616D6172696E653A2223374646464434222C617A7572653A2223463046464646222C62656967653A2223463546354443222C6269737175653A2223464645344334222C626C61636B3A2223303030303030222C62';
wwv_flow_imp.g_varchar2_table(54) := '6C616E63686564616C6D6F6E643A2223464645424344222C626C756576696F6C65743A2223384132424532222C62726F776E3A2223413532413241222C6275726C79776F6F643A2223444542383837222C6361646574626C75653A222335463945413022';
wwv_flow_imp.g_varchar2_table(55) := '2C636861727472657573653A2223374646463030222C63686F636F6C6174653A2223443236393145222C636F72616C3A2223464637463530222C636F726E666C6F776572626C75653A2223363439354544222C636F726E73696C6B3A2223464646384443';
wwv_flow_imp.g_varchar2_table(56) := '222C6372696D736F6E3A2223444331343343222C6379616E3A2223303046464646222C6461726B626C75653A2223303030303842222C6461726B6379616E3A2223303038423842222C6461726B676F6C64656E726F643A2223423838363042222C646172';
wwv_flow_imp.g_varchar2_table(57) := '6B677261793A2223413941394139222C6461726B677265656E3A2223303036343030222C6461726B677265793A2223413941394139222C6461726B6B68616B693A2223424442373642222C6461726B6D6167656E74613A2223384230303842222C646172';
wwv_flow_imp.g_varchar2_table(58) := '6B6F6C697665677265656E3A2223353536423246222C6461726B6F72616E67653A2223464638433030222C6461726B6F72636869643A2223393933324343222C6461726B7265643A2223384230303030222C6461726B73616C6D6F6E3A22234539393637';
wwv_flow_imp.g_varchar2_table(59) := '41222C6461726B736561677265656E3A2223384642433846222C6461726B736C617465626C75653A2223343833443842222C6461726B736C617465677261793A2223324634463446222C6461726B736C617465677265793A2223324634463446222C6461';
wwv_flow_imp.g_varchar2_table(60) := '726B74757271756F6973653A2223303043454431222C6461726B76696F6C65743A2223393430304433222C6465657070696E6B3A2223464631343933222C64656570736B79626C75653A2223303042464646222C64696D677261793A2223363936393639';
wwv_flow_imp.g_varchar2_table(61) := '222C64696D677265793A2223363936393639222C646F64676572626C75653A2223314539304646222C66697265627269636B3A2223423232323232222C666C6F72616C77686974653A2223464646414630222C666F72657374677265656E3A2223323238';
wwv_flow_imp.g_varchar2_table(62) := '423232222C6761696E73626F726F3A2223444344434443222C67686F737477686974653A2223463846384646222C676F6C643A2223464644373030222C676F6C64656E726F643A2223444141353230222C677265793A2223383038303830222C67726565';
wwv_flow_imp.g_varchar2_table(63) := '6E79656C6C6F773A2223414446463246222C686F6E65796465773A2223463046464630222C686F7470696E6B3A2223464636394234222C696E6469616E7265643A2223434435433543222C696E6469676F3A2223344230303832222C69766F72793A2223';
wwv_flow_imp.g_varchar2_table(64) := '464646464630222C6B68616B693A2223463045363843222C6C6176656E6465723A2223453645364641222C6C6176656E646572626C7573683A2223464646304635222C6C61776E677265656E3A2223374346433030222C6C656D6F6E63686966666F6E3A';
wwv_flow_imp.g_varchar2_table(65) := '2223464646414344222C6C69676874626C75653A2223414444384536222C6C69676874636F72616C3A2223463038303830222C6C696768746379616E3A2223453046464646222C6C69676874676F6C64656E726F6479656C6C6F773A2223464146414432';
wwv_flow_imp.g_varchar2_table(66) := '222C6C69676874677265656E3A2223393045453930222C6C69676874677265793A2223443344334433222C6C6967687470696E6B3A2223464642364331222C6C6967687473616C6D6F6E3A2223464641303741222C6C69676874736561677265656E3A22';
wwv_flow_imp.g_varchar2_table(67) := '23323042324141222C6C69676874736B79626C75653A2223383743454641222C6C69676874736C617465677261793A2223373738383939222C6C69676874736C617465677265793A2223373738383939222C6C69676874737465656C626C75653A222342';
wwv_flow_imp.g_varchar2_table(68) := '3043344445222C6C6967687479656C6C6F773A2223464646464530222C6C696D65677265656E3A2223333243443332222C6C696E656E3A2223464146304536222C6D6167656E74613A2223464630304646222C6D656469756D617175616D6172696E653A';
wwv_flow_imp.g_varchar2_table(69) := '2223363643444141222C6D656469756D626C75653A2223303030304344222C6D656469756D6F72636869643A2223424135354433222C6D656469756D707572706C653A2223393337304442222C6D656469756D736561677265656E3A2223334342333731';
wwv_flow_imp.g_varchar2_table(70) := '222C6D656469756D736C617465626C75653A2223374236384545222C6D656469756D737072696E67677265656E3A2223303046413941222C6D656469756D74757271756F6973653A2223343844314343222C6D656469756D76696F6C65747265643A2223';
wwv_flow_imp.g_varchar2_table(71) := '433731353835222C6D69646E69676874626C75653A2223313931393730222C6D696E74637265616D3A2223463546464641222C6D69737479726F73653A2223464645344531222C6D6F63636173696E3A2223464645344235222C6E6176616A6F77686974';
wwv_flow_imp.g_varchar2_table(72) := '653A2223464644454144222C6F6C646C6163653A2223464446354536222C6F6C697665647261623A2223364238453233222C6F72616E67653A2223464641353030222C6F72616E67657265643A2223464634353030222C6F72636869643A222344413730';
wwv_flow_imp.g_varchar2_table(73) := '4436222C70616C65676F6C64656E726F643A2223454545384141222C70616C65677265656E3A2223393846423938222C70616C6574757271756F6973653A2223414645454545222C70616C6576696F6C65747265643A2223444237303933222C70617061';
wwv_flow_imp.g_varchar2_table(74) := '7961776869703A2223464645464435222C7065616368707566663A2223464644414239222C706572753A2223434438353346222C70696E6B3A2223464643304342222C706C756D3A2223444441304444222C706F77646572626C75653A22234230453045';
wwv_flow_imp.g_varchar2_table(75) := '36222C726F737962726F776E3A2223424338463846222C726F79616C626C75653A2223343136394531222C736164646C6562726F776E3A2223384234353133222C73616C6D6F6E3A2223464138303732222C73616E647962726F776E3A22234634413436';
wwv_flow_imp.g_varchar2_table(76) := '30222C736561677265656E3A2223324538423537222C7365617368656C6C3A2223464646354545222C7369656E6E613A2223413035323244222C736B79626C75653A2223383743454542222C736C617465626C75653A2223364135414344222C736C6174';
wwv_flow_imp.g_varchar2_table(77) := '65677261793A2223373038303930222C736C617465677265793A2223373038303930222C736E6F773A2223464646414641222C737072696E67677265656E3A2223303046463746222C737465656C626C75653A2223343638324234222C74616E3A222344';
wwv_flow_imp.g_varchar2_table(78) := '3242343843222C74686973746C653A2223443842464438222C746F6D61746F3A2223464636333437222C74757271756F6973653A2223343045304430222C76696F6C65743A2223454538324545222C77686561743A2223463544454233222C7768697465';
wwv_flow_imp.g_varchar2_table(79) := '736D6F6B653A2223463546354635222C79656C6C6F77677265656E3A2223394143443332227D3B66756E6374696F6E204D286A297B76617220703D6A2E696E6465784F66282228222C33293B76617220693D6A2E696E6465784F66282229222C702B3129';
wwv_flow_imp.g_varchar2_table(80) := '3B766172206D3D6A2E737562737472696E6728702B312C69292E73706C697428222C22293B6966286D2E6C656E677468213D347C7C6A2E636861724174283329213D226122297B6D5B335D3D317D72657475726E206D7D66756E6374696F6E2063286929';
wwv_flow_imp.g_varchar2_table(81) := '7B72657475726E207061727365466C6F61742869292F3130307D66756E6374696F6E2072286A2C6D2C69297B72657475726E204D6174682E6D696E28692C4D6174682E6D6178286D2C6A29297D66756E6374696F6E2049286167297B76617220692C6169';
wwv_flow_imp.g_varchar2_table(82) := '2C616A2C61682C616B2C5A3B61683D7061727365466C6F61742861675B305D292F333630253336303B69662861683C30297B61682B2B7D616B3D7228632861675B315D292C302C31293B5A3D7228632861675B325D292C302C31293B696628616B3D3D30';
wwv_flow_imp.g_varchar2_table(83) := '297B693D61693D616A3D5A7D656C73657B766172206A3D5A3C302E353F5A2A28312B616B293A5A2B616B2D5A2A616B3B766172206D3D322A5A2D6A3B693D61286D2C6A2C61682B312F33293B61693D61286D2C6A2C6168293B616A3D61286D2C6A2C6168';
wwv_flow_imp.g_varchar2_table(84) := '2D312F33297D72657475726E2223222B6B5B4D6174682E666C6F6F7228692A323535295D2B6B5B4D6174682E666C6F6F722861692A323535295D2B6B5B4D6174682E666C6F6F7228616A2A323535295D7D66756E6374696F6E2061286A2C692C6D297B69';
wwv_flow_imp.g_varchar2_table(85) := '66286D3C30297B6D2B2B7D6966286D3E31297B6D2D2D7D696628362A6D3C31297B72657475726E206A2B28692D6A292A362A6D7D656C73657B696628322A6D3C31297B72657475726E20697D656C73657B696628332A6D3C32297B72657475726E206A2B';
wwv_flow_imp.g_varchar2_table(86) := '28692D6A292A28322F332D6D292A367D656C73657B72657475726E206A7D7D7D7D76617220433D7B7D3B66756E6374696F6E2046286A297B6966286A20696E2043297B72657475726E20435B6A5D7D7661722061672C5A3D313B6A3D537472696E67286A';
wwv_flow_imp.g_varchar2_table(87) := '293B6966286A2E6368617241742830293D3D222322297B61673D6A7D656C73657B6966282F5E7267622F2E74657374286A29297B76617220703D4D286A293B7661722061673D2223222C61683B666F7228766172206D3D303B6D3C333B6D2B2B297B6966';
wwv_flow_imp.g_varchar2_table(88) := '28705B6D5D2E696E6465784F662822252229213D2D31297B61683D4D6174682E666C6F6F72286328705B6D5D292A323535297D656C73657B61683D2B705B6D5D7D61672B3D6B5B722861682C302C323535295D7D5A3D2B705B335D7D656C73657B696628';
wwv_flow_imp.g_varchar2_table(89) := '2F5E68736C2F2E74657374286A29297B76617220703D4D286A293B61673D492870293B5A3D705B335D7D656C73657B61673D625B6A5D7C7C6A7D7D7D72657475726E20435B6A5D3D7B636F6C6F723A61672C616C7068613A5A7D7D766172206F3D7B7374';
wwv_flow_imp.g_varchar2_table(90) := '796C653A226E6F726D616C222C76617269616E743A226E6F726D616C222C7765696768743A226E6F726D616C222C73697A653A31302C66616D696C793A2273616E732D7365726966227D3B766172204C3D7B7D3B66756E6374696F6E20452869297B6966';
wwv_flow_imp.g_varchar2_table(91) := '284C5B695D297B72657475726E204C5B695D7D76617220703D646F63756D656E742E637265617465456C656D656E74282264697622293B766172206D3D702E7374796C653B7472797B6D2E666F6E743D697D6361746368286A297B7D72657475726E204C';
wwv_flow_imp.g_varchar2_table(92) := '5B695D3D7B7374796C653A6D2E666F6E745374796C657C7C6F2E7374796C652C76617269616E743A6D2E666F6E7456617269616E747C7C6F2E76617269616E742C7765696768743A6D2E666F6E745765696768747C7C6F2E7765696768742C73697A653A';
wwv_flow_imp.g_varchar2_table(93) := '6D2E666F6E7453697A657C7C6F2E73697A652C66616D696C793A6D2E666F6E7446616D696C797C7C6F2E66616D696C797D7D66756E6374696F6E2075286D2C6A297B76617220693D7B7D3B666F722876617220616820696E206D297B695B61685D3D6D5B';
wwv_flow_imp.g_varchar2_table(94) := '61685D7D7661722061673D7061727365466C6F6174286A2E63757272656E745374796C652E666F6E7453697A65292C5A3D7061727365466C6F6174286D2E73697A65293B696628747970656F66206D2E73697A653D3D226E756D62657222297B692E7369';
wwv_flow_imp.g_varchar2_table(95) := '7A653D6D2E73697A657D656C73657B6966286D2E73697A652E696E6465784F66282270782229213D2D31297B692E73697A653D5A7D656C73657B6966286D2E73697A652E696E6465784F662822656D2229213D2D31297B692E73697A653D61672A5A7D65';
wwv_flow_imp.g_varchar2_table(96) := '6C73657B6966286D2E73697A652E696E6465784F662822252229213D2D31297B692E73697A653D2861672F313030292A5A7D656C73657B6966286D2E73697A652E696E6465784F66282270742229213D2D31297B692E73697A653D5A2F302E37357D656C';
wwv_flow_imp.g_varchar2_table(97) := '73657B692E73697A653D61677D7D7D7D7D692E73697A652A3D302E3938313B692E66616D696C793D2227222B692E66616D696C792E7265706C616365282F285C277C5C22292F672C2222292E7265706C616365282F5C732A2C5C732A2F672C22272C2027';
wwv_flow_imp.g_varchar2_table(98) := '22292B2227223B72657475726E20697D66756E6374696F6E2061632869297B72657475726E20692E7374796C652B2220222B692E76617269616E742B2220222B692E7765696768742B2220222B692E73697A652B22707820222B692E66616D696C797D76';
wwv_flow_imp.g_varchar2_table(99) := '617220733D7B627574743A22666C6174222C726F756E643A22726F756E64227D3B66756E6374696F6E20532869297B72657475726E20735B695D7C7C22737175617265227D66756E6374696F6E20442869297B746869732E6D5F3D4228293B746869732E';
wwv_flow_imp.g_varchar2_table(100) := '6D537461636B5F3D5B5D3B746869732E61537461636B5F3D5B5D3B746869732E63757272656E74506174685F3D5B5D3B746869732E7374726F6B655374796C653D2223303030223B746869732E66696C6C5374796C653D2223303030223B746869732E6C';
wwv_flow_imp.g_varchar2_table(101) := '696E6557696474683D313B746869732E6C696E654A6F696E3D226D69746572223B746869732E6C696E654361703D2262757474223B746869732E6D697465724C696D69743D642A313B746869732E676C6F62616C416C7068613D313B746869732E666F6E';
wwv_flow_imp.g_varchar2_table(102) := '743D22313070782073616E732D7365726966223B746869732E74657874416C69676E3D226C656674223B746869732E74657874426173656C696E653D22616C7068616265746963223B746869732E63616E7661733D693B766172206D3D2277696474683A';
wwv_flow_imp.g_varchar2_table(103) := '222B692E636C69656E7457696474682B2270783B6865696768743A222B692E636C69656E744865696768742B2270783B6F766572666C6F773A68696464656E3B706F736974696F6E3A6162736F6C757465223B766172206A3D692E6F776E6572446F6375';
wwv_flow_imp.g_varchar2_table(104) := '6D656E742E637265617465456C656D656E74282264697622293B6A2E7374796C652E637373546578743D6D3B692E617070656E644368696C64286A293B76617220703D6A2E636C6F6E654E6F64652866616C7365293B702E7374796C652E6261636B6772';
wwv_flow_imp.g_varchar2_table(105) := '6F756E64436F6C6F723D22726564223B702E7374796C652E66696C7465723D22616C706861286F7061636974793D3029223B692E617070656E644368696C642870293B746869732E656C656D656E745F3D6A3B746869732E6172635363616C65585F3D31';
wwv_flow_imp.g_varchar2_table(106) := '3B746869732E6172635363616C65595F3D313B746869732E6C696E655363616C655F3D317D76617220713D442E70726F746F747970653B712E636C656172526563743D66756E6374696F6E28297B696628746869732E746578744D656173757265456C5F';
wwv_flow_imp.g_varchar2_table(107) := '297B746869732E746578744D656173757265456C5F2E72656D6F76654E6F64652874727565293B746869732E746578744D656173757265456C5F3D6E756C6C7D746869732E656C656D656E745F2E696E6E657248544D4C3D22227D3B712E626567696E50';
wwv_flow_imp.g_varchar2_table(108) := '6174683D66756E6374696F6E28297B746869732E63757272656E74506174685F3D5B5D7D3B712E6D6F7665546F3D66756E6374696F6E286A2C69297B766172206D3D5628746869732C6A2C69293B746869732E63757272656E74506174685F2E70757368';
wwv_flow_imp.g_varchar2_table(109) := '287B747970653A226D6F7665546F222C783A6D2E782C793A6D2E797D293B746869732E63757272656E74585F3D6D2E783B746869732E63757272656E74595F3D6D2E797D3B712E6C696E65546F3D66756E6374696F6E286A2C69297B766172206D3D5628';
wwv_flow_imp.g_varchar2_table(110) := '746869732C6A2C69293B746869732E63757272656E74506174685F2E70757368287B747970653A226C696E65546F222C783A6D2E782C793A6D2E797D293B746869732E63757272656E74585F3D6D2E783B746869732E63757272656E74595F3D6D2E797D';
wwv_flow_imp.g_varchar2_table(111) := '3B712E62657A6965724375727665546F3D66756E6374696F6E286D2C6A2C616B2C616A2C61692C6167297B76617220693D5628746869732C61692C6167293B7661722061683D5628746869732C6D2C6A293B766172205A3D5628746869732C616B2C616A';
wwv_flow_imp.g_varchar2_table(112) := '293B4B28746869732C61682C5A2C69297D3B66756E6374696F6E204B28692C5A2C6D2C6A297B692E63757272656E74506174685F2E70757368287B747970653A2262657A6965724375727665546F222C637031783A5A2E782C637031793A5A2E792C6370';
wwv_flow_imp.g_varchar2_table(113) := '32783A6D2E782C637032793A6D2E792C783A6A2E782C793A6A2E797D293B692E63757272656E74585F3D6A2E783B692E63757272656E74595F3D6A2E797D712E7175616472617469634375727665546F3D66756E6374696F6E2861692C6D2C6A2C69297B';
wwv_flow_imp.g_varchar2_table(114) := '7661722061683D5628746869732C61692C6D293B7661722061673D5628746869732C6A2C69293B76617220616A3D7B783A746869732E63757272656E74585F2B322F332A2861682E782D746869732E63757272656E74585F292C793A746869732E637572';
wwv_flow_imp.g_varchar2_table(115) := '72656E74595F2B322F332A2861682E792D746869732E63757272656E74595F297D3B766172205A3D7B783A616A2E782B2861672E782D746869732E63757272656E74585F292F332C793A616A2E792B2861672E792D746869732E63757272656E74595F29';
wwv_flow_imp.g_varchar2_table(116) := '2F337D3B4B28746869732C616A2C5A2C6167297D3B712E6172633D66756E6374696F6E28616C2C616A2C616B2C61672C6A2C6D297B616B2A3D643B7661722061703D6D3F226174223A227761223B76617220616D3D616C2B41286167292A616B2D663B76';
wwv_flow_imp.g_varchar2_table(117) := '617220616F3D616A2B6C286167292A616B2D663B76617220693D616C2B41286A292A616B2D663B76617220616E3D616A2B6C286A292A616B2D663B696628616D3D3D692626216D297B616D2B3D302E3132357D766172205A3D5628746869732C616C2C61';
wwv_flow_imp.g_varchar2_table(118) := '6A293B7661722061693D5628746869732C616D2C616F293B7661722061683D5628746869732C692C616E293B746869732E63757272656E74506174685F2E70757368287B747970653A61702C783A5A2E782C793A5A2E792C7261646975733A616B2C7853';
wwv_flow_imp.g_varchar2_table(119) := '746172743A61692E782C7953746172743A61692E792C78456E643A61682E782C79456E643A61682E797D297D3B712E726563743D66756E6374696F6E286D2C6A2C692C70297B746869732E6D6F7665546F286D2C6A293B746869732E6C696E65546F286D';
wwv_flow_imp.g_varchar2_table(120) := '2B692C6A293B746869732E6C696E65546F286D2B692C6A2B70293B746869732E6C696E65546F286D2C6A2B70293B746869732E636C6F73655061746828297D3B712E7374726F6B65526563743D66756E6374696F6E286D2C6A2C692C70297B766172205A';
wwv_flow_imp.g_varchar2_table(121) := '3D746869732E63757272656E74506174685F3B746869732E626567696E5061746828293B746869732E6D6F7665546F286D2C6A293B746869732E6C696E65546F286D2B692C6A293B746869732E6C696E65546F286D2B692C6A2B70293B746869732E6C69';
wwv_flow_imp.g_varchar2_table(122) := '6E65546F286D2C6A2B70293B746869732E636C6F73655061746828293B746869732E7374726F6B6528293B746869732E63757272656E74506174685F3D5A7D3B712E66696C6C526563743D66756E6374696F6E286D2C6A2C692C70297B766172205A3D74';
wwv_flow_imp.g_varchar2_table(123) := '6869732E63757272656E74506174685F3B746869732E626567696E5061746828293B746869732E6D6F7665546F286D2C6A293B746869732E6C696E65546F286D2B692C6A293B746869732E6C696E65546F286D2B692C6A2B70293B746869732E6C696E65';
wwv_flow_imp.g_varchar2_table(124) := '546F286D2C6A2B70293B746869732E636C6F73655061746828293B746869732E66696C6C28293B746869732E63757272656E74506174685F3D5A7D3B712E6372656174654C696E6561724772616469656E743D66756E6374696F6E286A2C702C692C6D29';
wwv_flow_imp.g_varchar2_table(125) := '7B766172205A3D6E6577205528226772616469656E7422293B5A2E78305F3D6A3B5A2E79305F3D703B5A2E78315F3D693B5A2E79315F3D6D3B72657475726E205A7D3B712E63726561746552616469616C4772616469656E743D66756E6374696F6E2870';
wwv_flow_imp.g_varchar2_table(126) := '2C61672C6D2C6A2C5A2C69297B7661722061683D6E6577205528226772616469656E7472616469616C22293B61682E78305F3D703B61682E79305F3D61673B61682E72305F3D6D3B61682E78315F3D6A3B61682E79315F3D5A3B61682E72315F3D693B72';
wwv_flow_imp.g_varchar2_table(127) := '657475726E2061687D3B712E64726177496D6167653D66756E6374696F6E2861712C6D297B76617220616A2C61682C616C2C61792C616F2C616D2C61742C61413B76617220616B3D61712E72756E74696D655374796C652E77696474683B766172206170';
wwv_flow_imp.g_varchar2_table(128) := '3D61712E72756E74696D655374796C652E6865696768743B61712E72756E74696D655374796C652E77696474683D226175746F223B61712E72756E74696D655374796C652E6865696768743D226175746F223B7661722061693D61712E77696474683B76';
wwv_flow_imp.g_varchar2_table(129) := '61722061773D61712E6865696768743B61712E72756E74696D655374796C652E77696474683D616B3B61712E72756E74696D655374796C652E6865696768743D61703B696628617267756D656E74732E6C656E6774683D3D33297B616A3D617267756D65';
wwv_flow_imp.g_varchar2_table(130) := '6E74735B315D3B61683D617267756D656E74735B325D3B616F3D616D3D303B61743D616C3D61693B61413D61793D61777D656C73657B696628617267756D656E74732E6C656E6774683D3D35297B616A3D617267756D656E74735B315D3B61683D617267';
wwv_flow_imp.g_varchar2_table(131) := '756D656E74735B325D3B616C3D617267756D656E74735B335D3B61793D617267756D656E74735B345D3B616F3D616D3D303B61743D61693B61413D61777D656C73657B696628617267756D656E74732E6C656E6774683D3D39297B616F3D617267756D65';
wwv_flow_imp.g_varchar2_table(132) := '6E74735B315D3B616D3D617267756D656E74735B325D3B61743D617267756D656E74735B335D3B61413D617267756D656E74735B345D3B616A3D617267756D656E74735B355D3B61683D617267756D656E74735B365D3B616C3D617267756D656E74735B';
wwv_flow_imp.g_varchar2_table(133) := '375D3B61793D617267756D656E74735B385D7D656C73657B7468726F77204572726F722822496E76616C6964206E756D626572206F6620617267756D656E747322297D7D7D76617220617A3D5628746869732C616A2C6168293B76617220703D61742F32';
wwv_flow_imp.g_varchar2_table(134) := '3B766172206A3D61412F323B7661722061783D5B5D3B76617220693D31303B7661722061673D31303B61782E707573682822203C675F766D6C5F3A67726F7570222C2720636F6F726473697A653D22272C642A692C222C222C642A61672C2722272C2720';
wwv_flow_imp.g_varchar2_table(135) := '636F6F72646F726967696E3D22302C3022272C27207374796C653D2277696474683A272C692C2270783B6865696768743A222C61672C2270783B706F736974696F6E3A6162736F6C7574653B22293B696628746869732E6D5F5B305D5B305D213D317C7C';
wwv_flow_imp.g_varchar2_table(136) := '746869732E6D5F5B305D5B315D7C7C746869732E6D5F5B315D5B315D213D317C7C746869732E6D5F5B315D5B305D297B766172205A3D5B5D3B5A2E7075736828224D31313D222C746869732E6D5F5B305D5B305D2C222C222C224D31323D222C74686973';
wwv_flow_imp.g_varchar2_table(137) := '2E6D5F5B315D5B305D2C222C222C224D32313D222C746869732E6D5F5B305D5B315D2C222C222C224D32323D222C746869732E6D5F5B315D5B315D2C222C222C2244783D222C6E28617A2E782F64292C222C222C2244793D222C6E28617A2E792F64292C';
wwv_flow_imp.g_varchar2_table(138) := '2222293B7661722061763D617A3B7661722061753D5628746869732C616A2B616C2C6168293B7661722061723D5628746869732C616A2C61682B6179293B76617220616E3D5628746869732C616A2B616C2C61682B6179293B61762E783D61622E6D6178';
wwv_flow_imp.g_varchar2_table(139) := '2861762E782C61752E782C61722E782C616E2E78293B61762E793D61622E6D61782861762E792C61752E792C61722E792C616E2E79293B61782E70757368282270616464696E673A3020222C6E2861762E782F64292C22707820222C6E2861762E792F64';
wwv_flow_imp.g_varchar2_table(140) := '292C22707820303B66696C7465723A70726F6769643A4458496D6167655472616E73666F726D2E4D6963726F736F66742E4D617472697828222C5A2E6A6F696E282222292C222C2073697A696E676D6574686F643D27636C697027293B22297D656C7365';
wwv_flow_imp.g_varchar2_table(141) := '7B61782E707573682822746F703A222C6E28617A2E792F64292C2270783B6C6566743A222C6E28617A2E782F64292C2270783B22297D61782E70757368282720223E272C273C675F766D6C5F3A696D616765207372633D22272C61712E7372632C272227';
wwv_flow_imp.g_varchar2_table(142) := '2C27207374796C653D2277696474683A272C642A616C2C2270783B222C22206865696768743A222C642A61792C27707822272C272063726F706C6566743D22272C616F2F61692C2722272C272063726F70746F703D22272C616D2F61772C2722272C2720';
wwv_flow_imp.g_varchar2_table(143) := '63726F7072696768743D22272C2861692D616F2D6174292F61692C2722272C272063726F70626F74746F6D3D22272C2861772D616D2D6141292F61772C2722272C22202F3E222C223C2F675F766D6C5F3A67726F75703E22293B746869732E656C656D65';
wwv_flow_imp.g_varchar2_table(144) := '6E745F2E696E7365727441646A6163656E7448544D4C28224265666F7265456E64222C61782E6A6F696E28222229297D3B712E7374726F6B653D66756E6374696F6E28616C297B76617220616A3D5B5D3B766172205A3D66616C73653B766172206D3D31';
wwv_flow_imp.g_varchar2_table(145) := '303B76617220616D3D31303B616A2E7075736828223C675F766D6C5F3A7368617065222C272066696C6C65643D22272C2121616C2C2722272C27207374796C653D22706F736974696F6E3A6162736F6C7574653B77696474683A272C6D2C2270783B6865';
wwv_flow_imp.g_varchar2_table(146) := '696768743A222C616D2C2770783B22272C2720636F6F72646F726967696E3D22302C3022272C2720636F6F726473697A653D22272C642A6D2C222C222C642A616D2C2722272C27207374726F6B65643D22272C21616C2C2722272C2720706174683D2227';
wwv_flow_imp.g_varchar2_table(147) := '293B76617220616E3D66616C73653B7661722061673D7B783A6E756C6C2C793A6E756C6C7D3B76617220616B3D7B783A6E756C6C2C793A6E756C6C7D3B666F72287661722061683D303B61683C746869732E63757272656E74506174685F2E6C656E6774';
wwv_flow_imp.g_varchar2_table(148) := '683B61682B2B297B766172206A3D746869732E63757272656E74506174685F5B61685D3B7661722061693B737769746368286A2E74797065297B63617365226D6F7665546F223A61693D6A3B616A2E707573682822206D20222C6E286A2E78292C222C22';
wwv_flow_imp.g_varchar2_table(149) := '2C6E286A2E7929293B627265616B3B63617365226C696E65546F223A616A2E707573682822206C20222C6E286A2E78292C222C222C6E286A2E7929293B627265616B3B6361736522636C6F7365223A616A2E70757368282220782022293B6A3D6E756C6C';
wwv_flow_imp.g_varchar2_table(150) := '3B627265616B3B636173652262657A6965724375727665546F223A616A2E707573682822206320222C6E286A2E63703178292C222C222C6E286A2E63703179292C222C222C6E286A2E63703278292C222C222C6E286A2E63703279292C222C222C6E286A';
wwv_flow_imp.g_varchar2_table(151) := '2E78292C222C222C6E286A2E7929293B627265616B3B63617365226174223A63617365227761223A616A2E70757368282220222C6A2E747970652C2220222C6E286A2E782D746869732E6172635363616C65585F2A6A2E726164697573292C222C222C6E';
wwv_flow_imp.g_varchar2_table(152) := '286A2E792D746869732E6172635363616C65595F2A6A2E726164697573292C2220222C6E286A2E782B746869732E6172635363616C65585F2A6A2E726164697573292C222C222C6E286A2E792B746869732E6172635363616C65595F2A6A2E7261646975';
wwv_flow_imp.g_varchar2_table(153) := '73292C2220222C6E286A2E785374617274292C222C222C6E286A2E795374617274292C2220222C6E286A2E78456E64292C222C222C6E286A2E79456E6429293B627265616B7D6966286A297B69662861672E783D3D6E756C6C7C7C6A2E783C61672E7829';
wwv_flow_imp.g_varchar2_table(154) := '7B61672E783D6A2E787D696628616B2E783D3D6E756C6C7C7C6A2E783E616B2E78297B616B2E783D6A2E787D69662861672E793D3D6E756C6C7C7C6A2E793C61672E79297B61672E793D6A2E797D696628616B2E793D3D6E756C6C7C7C6A2E793E616B2E';
wwv_flow_imp.g_varchar2_table(155) := '79297B616B2E793D6A2E797D7D7D616A2E70757368282720223E27293B69662821616C297B7728746869732C616A297D656C73657B4728746869732C616A2C61672C616B297D616A2E7075736828223C2F675F766D6C5F3A73686170653E22293B746869';
wwv_flow_imp.g_varchar2_table(156) := '732E656C656D656E745F2E696E7365727441646A6163656E7448544D4C28226265666F7265456E64222C616A2E6A6F696E28222229297D3B66756E6374696F6E2077286D2C6167297B766172206A3D46286D2E7374726F6B655374796C65293B76617220';
wwv_flow_imp.g_varchar2_table(157) := '703D6A2E636F6C6F723B766172205A3D6A2E616C7068612A6D2E676C6F62616C416C7068613B76617220693D6D2E6C696E655363616C655F2A6D2E6C696E6557696474683B696628693C31297B5A2A3D697D61672E7075736828223C675F766D6C5F3A73';
wwv_flow_imp.g_varchar2_table(158) := '74726F6B65222C27206F7061636974793D22272C5A2C2722272C27206A6F696E7374796C653D22272C6D2E6C696E654A6F696E2C2722272C27206D697465726C696D69743D22272C6D2E6D697465724C696D69742C2722272C2720656E646361703D2227';
wwv_flow_imp.g_varchar2_table(159) := '2C53286D2E6C696E65436170292C2722272C27207765696768743D22272C692C27707822272C2720636F6C6F723D22272C702C2722202F3E27297D66756E6374696F6E20472861712C61692C614B2C6172297B76617220616A3D61712E66696C6C537479';
wwv_flow_imp.g_varchar2_table(160) := '6C653B7661722061423D61712E6172635363616C65585F3B7661722061413D61712E6172635363616C65595F3B766172206A3D61722E782D614B2E783B76617220703D61722E792D614B2E793B696628616A20696E7374616E63656F662055297B766172';
wwv_flow_imp.g_varchar2_table(161) := '20616E3D303B7661722061463D7B783A302C793A307D3B7661722061783D303B76617220616D3D313B696628616A2E747970655F3D3D226772616469656E7422297B76617220616C3D616A2E78305F2F61423B766172206D3D616A2E79305F2F61413B76';
wwv_flow_imp.g_varchar2_table(162) := '617220616B3D616A2E78315F2F61423B76617220614D3D616A2E79315F2F61413B76617220614A3D562861712C616C2C6D293B7661722061493D562861712C616B2C614D293B7661722061673D61492E782D614A2E783B766172205A3D61492E792D614A';
wwv_flow_imp.g_varchar2_table(163) := '2E793B616E3D4D6174682E6174616E322861672C5A292A3138302F4D6174682E50493B696628616E3C30297B616E2B3D3336307D696628616E3C302E303030303031297B616E3D307D7D656C73657B76617220614A3D562861712C616A2E78305F2C616A';
wwv_flow_imp.g_varchar2_table(164) := '2E79305F293B61463D7B783A28614A2E782D614B2E78292F6A2C793A28614A2E792D614B2E79292F707D3B6A2F3D61422A643B702F3D61412A643B7661722061443D61622E6D6178286A2C70293B61783D322A616A2E72305F2F61443B616D3D322A616A';
wwv_flow_imp.g_varchar2_table(165) := '2E72315F2F61442D61787D7661722061763D616A2E636F6C6F72735F3B61762E736F72742866756E6374696F6E28614E2C69297B72657475726E20614E2E6F66667365742D692E6F66667365747D293B7661722061703D61762E6C656E6774683B766172';
wwv_flow_imp.g_varchar2_table(166) := '2061753D61765B305D2E636F6C6F723B7661722061743D61765B61702D315D2E636F6C6F723B76617220617A3D61765B305D2E616C7068612A61712E676C6F62616C416C7068613B7661722061793D61765B61702D315D2E616C7068612A61712E676C6F';
wwv_flow_imp.g_varchar2_table(167) := '62616C416C7068613B7661722061453D5B5D3B666F72287661722061483D303B61483C61703B61482B2B297B76617220616F3D61765B61485D3B61452E7075736828616F2E6F66667365742A616D2B61782B2220222B616F2E636F6C6F72297D61692E70';
wwv_flow_imp.g_varchar2_table(168) := '75736828273C675F766D6C5F3A66696C6C20747970653D22272C616A2E747970655F2C2722272C27206D6574686F643D226E6F6E652220666F6375733D223130302522272C2720636F6C6F723D22272C61752C2722272C2720636F6C6F72323D22272C61';
wwv_flow_imp.g_varchar2_table(169) := '742C2722272C2720636F6C6F72733D22272C61452E6A6F696E28222C22292C2722272C27206F7061636974793D22272C61792C2722272C2720675F6F5F3A6F706163697479323D22272C617A2C2722272C2720616E676C653D22272C616E2C2722272C27';
wwv_flow_imp.g_varchar2_table(170) := '20666F637573706F736974696F6E3D22272C61462E782C222C222C61462E792C2722202F3E27297D656C73657B696628616A20696E7374616E63656F662054297B6966286A262670297B7661722061683D2D614B2E783B7661722061433D2D614B2E793B';
wwv_flow_imp.g_varchar2_table(171) := '61692E7075736828223C675F766D6C5F3A66696C6C222C2720706F736974696F6E3D22272C61682F6A2A61422A61422C222C222C61432F702A61412A61412C2722272C2720747970653D2274696C6522272C27207372633D22272C616A2E7372635F2C27';
wwv_flow_imp.g_varchar2_table(172) := '22202F3E27297D7D656C73657B76617220614C3D462861712E66696C6C5374796C65293B7661722061773D614C2E636F6C6F723B7661722061473D614C2E616C7068612A61712E676C6F62616C416C7068613B61692E7075736828273C675F766D6C5F3A';
wwv_flow_imp.g_varchar2_table(173) := '66696C6C20636F6C6F723D22272C61772C2722206F7061636974793D22272C61472C2722202F3E27297D7D7D712E66696C6C3D66756E6374696F6E28297B746869732E7374726F6B652874727565297D3B712E636C6F7365506174683D66756E6374696F';
wwv_flow_imp.g_varchar2_table(174) := '6E28297B746869732E63757272656E74506174685F2E70757368287B747970653A22636C6F7365227D297D3B66756E6374696F6E2056286A2C5A2C70297B76617220693D6A2E6D5F3B72657475726E7B783A642A285A2A695B305D5B305D2B702A695B31';
wwv_flow_imp.g_varchar2_table(175) := '5D5B305D2B695B325D5B305D292D662C793A642A285A2A695B305D5B315D2B702A695B315D5B315D2B695B325D5B315D292D667D7D712E736176653D66756E6374696F6E28297B76617220693D7B7D3B7628746869732C69293B746869732E6153746163';
wwv_flow_imp.g_varchar2_table(176) := '6B5F2E707573682869293B746869732E6D537461636B5F2E7075736828746869732E6D5F293B746869732E6D5F3D4A284228292C746869732E6D5F297D3B712E726573746F72653D66756E6374696F6E28297B696628746869732E61537461636B5F2E6C';
wwv_flow_imp.g_varchar2_table(177) := '656E677468297B7628746869732E61537461636B5F2E706F7028292C74686973293B746869732E6D5F3D746869732E6D537461636B5F2E706F7028297D7D3B66756E6374696F6E20682869297B72657475726E20697346696E69746528695B305D5B305D';
wwv_flow_imp.g_varchar2_table(178) := '292626697346696E69746528695B305D5B315D292626697346696E69746528695B315D5B305D292626697346696E69746528695B315D5B315D292626697346696E69746528695B325D5B305D292626697346696E69746528695B325D5B315D297D66756E';
wwv_flow_imp.g_varchar2_table(179) := '6374696F6E206161286A2C692C70297B6966282168286929297B72657475726E7D6A2E6D5F3D693B69662870297B766172205A3D695B305D5B305D2A695B315D5B315D2D695B305D5B315D2A695B315D5B305D3B6A2E6C696E655363616C655F3D4E2848';
wwv_flow_imp.g_varchar2_table(180) := '285A29297D7D712E7472616E736C6174653D66756E6374696F6E286D2C6A297B76617220693D5B5B312C302C305D2C5B302C312C305D2C5B6D2C6A2C315D5D3B616128746869732C4A28692C746869732E6D5F292C66616C7365297D3B712E726F746174';
wwv_flow_imp.g_varchar2_table(181) := '653D66756E6374696F6E286A297B76617220703D41286A293B766172206D3D6C286A293B76617220693D5B5B702C6D2C305D2C5B2D6D2C702C305D2C5B302C302C315D5D3B616128746869732C4A28692C746869732E6D5F292C66616C7365297D3B712E';
wwv_flow_imp.g_varchar2_table(182) := '7363616C653D66756E6374696F6E286D2C6A297B746869732E6172635363616C65585F2A3D6D3B746869732E6172635363616C65595F2A3D6A3B76617220693D5B5B6D2C302C305D2C5B302C6A2C305D2C5B302C302C315D5D3B616128746869732C4A28';
wwv_flow_imp.g_varchar2_table(183) := '692C746869732E6D5F292C74727565297D3B712E7472616E73666F726D3D66756E6374696F6E285A2C702C61682C61672C6A2C69297B766172206D3D5B5B5A2C702C305D2C5B61682C61672C305D2C5B6A2C692C315D5D3B616128746869732C4A286D2C';
wwv_flow_imp.g_varchar2_table(184) := '746869732E6D5F292C74727565297D3B712E7365745472616E73666F726D3D66756E6374696F6E2861672C5A2C61692C61682C702C6A297B76617220693D5B5B61672C5A2C305D2C5B61692C61682C305D2C5B702C6A2C315D5D3B616128746869732C69';
wwv_flow_imp.g_varchar2_table(185) := '2C74727565297D3B712E64726177546578745F3D66756E6374696F6E28616D2C616B2C616A2C61702C6169297B76617220616F3D746869732E6D5F2C61743D313030302C6A3D302C61723D61742C61683D7B783A302C793A307D2C61673D5B5D3B766172';
wwv_flow_imp.g_varchar2_table(186) := '20693D75284528746869732E666F6E74292C746869732E656C656D656E745F293B76617220703D61632869293B7661722061753D746869732E656C656D656E745F2E63757272656E745374796C653B766172205A3D746869732E74657874416C69676E2E';
wwv_flow_imp.g_varchar2_table(187) := '746F4C6F7765724361736528293B737769746368285A297B63617365226C656674223A636173652263656E746572223A63617365227269676874223A627265616B3B6361736522656E64223A5A3D61752E646972656374696F6E3D3D226C7472223F2272';
wwv_flow_imp.g_varchar2_table(188) := '69676874223A226C656674223B627265616B3B63617365227374617274223A5A3D61752E646972656374696F6E3D3D2272746C223F227269676874223A226C656674223B627265616B3B64656661756C743A5A3D226C656674227D737769746368287468';
wwv_flow_imp.g_varchar2_table(189) := '69732E74657874426173656C696E65297B636173652268616E67696E67223A6361736522746F70223A61682E793D692E73697A652F312E37353B627265616B3B63617365226D6964646C65223A627265616B3B64656661756C743A63617365206E756C6C';
wwv_flow_imp.g_varchar2_table(190) := '3A6361736522616C7068616265746963223A63617365226964656F67726170686963223A6361736522626F74746F6D223A61682E793D2D692E73697A652F322E32353B627265616B7D737769746368285A297B63617365227269676874223A6A3D61743B';
wwv_flow_imp.g_varchar2_table(191) := '61723D302E30353B627265616B3B636173652263656E746572223A6A3D61723D61742F323B627265616B7D7661722061713D5628746869732C616B2B61682E782C616A2B61682E79293B61672E7075736828273C675F766D6C5F3A6C696E652066726F6D';
wwv_flow_imp.g_varchar2_table(192) := '3D22272C2D6A2C2720302220746F3D22272C61722C2720302E30352220272C2720636F6F726473697A653D22313030203130302220636F6F72646F726967696E3D2230203022272C272066696C6C65643D22272C2161692C2722207374726F6B65643D22';
wwv_flow_imp.g_varchar2_table(193) := '272C212161692C2722207374796C653D22706F736974696F6E3A6162736F6C7574653B77696474683A3170783B6865696768743A3170783B223E27293B6966286169297B7728746869732C6167297D656C73657B4728746869732C61672C7B783A2D6A2C';
wwv_flow_imp.g_varchar2_table(194) := '793A307D2C7B783A61722C793A692E73697A657D297D76617220616E3D616F5B305D5B305D2E746F46697865642833292B222C222B616F5B315D5B305D2E746F46697865642833292B222C222B616F5B305D5B315D2E746F46697865642833292B222C22';
wwv_flow_imp.g_varchar2_table(195) := '2B616F5B315D5B315D2E746F46697865642833292B222C302C30223B76617220616C3D6E2861712E782F642B312D616F5B305D5B305D292B222C222B6E2861712E792F642D322A616F5B315D5B305D293B61672E7075736828273C675F766D6C5F3A736B';
wwv_flow_imp.g_varchar2_table(196) := '6577206F6E3D227422206D61747269783D22272C616E2C272220272C27206F66667365743D22272C616C2C2722206F726967696E3D22272C6A2C27203022202F3E272C273C675F766D6C5F3A706174682074657874706174686F6B3D227472756522202F';
wwv_flow_imp.g_varchar2_table(197) := '3E272C273C675F766D6C5F3A7465787470617468206F6E3D22747275652220737472696E673D22272C616628616D292C2722207374796C653D22762D746578742D616C69676E3A272C5A2C223B666F6E743A222C61662870292C2722202F3E3C2F675F76';
wwv_flow_imp.g_varchar2_table(198) := '6D6C5F3A6C696E653E27293B746869732E656C656D656E745F2E696E7365727441646A6163656E7448544D4C28226265666F7265456E64222C61672E6A6F696E28222229297D3B712E66696C6C546578743D66756E6374696F6E286D2C692C702C6A297B';
wwv_flow_imp.g_varchar2_table(199) := '746869732E64726177546578745F286D2C692C702C6A2C66616C7365297D3B712E7374726F6B65546578743D66756E6374696F6E286D2C692C702C6A297B746869732E64726177546578745F286D2C692C702C6A2C74727565297D3B712E6D6561737572';
wwv_flow_imp.g_varchar2_table(200) := '65546578743D66756E6374696F6E286D297B69662821746869732E746578744D656173757265456C5F297B76617220693D273C7370616E207374796C653D22706F736974696F6E3A6162736F6C7574653B746F703A2D323030303070783B6C6566743A30';
wwv_flow_imp.g_varchar2_table(201) := '3B70616464696E673A303B6D617267696E3A303B626F726465723A6E6F6E653B77686974652D73706163653A7072653B223E3C2F7370616E3E273B746869732E656C656D656E745F2E696E7365727441646A6163656E7448544D4C28226265666F726545';
wwv_flow_imp.g_varchar2_table(202) := '6E64222C69293B746869732E746578744D656173757265456C5F3D746869732E656C656D656E745F2E6C6173744368696C647D766172206A3D746869732E656C656D656E745F2E6F776E6572446F63756D656E743B746869732E746578744D6561737572';
wwv_flow_imp.g_varchar2_table(203) := '65456C5F2E696E6E657248544D4C3D22223B746869732E746578744D656173757265456C5F2E7374796C652E666F6E743D746869732E666F6E743B746869732E746578744D656173757265456C5F2E617070656E644368696C64286A2E63726561746554';
wwv_flow_imp.g_varchar2_table(204) := '6578744E6F6465286D29293B72657475726E7B77696474683A746869732E746578744D656173757265456C5F2E6F666673657457696474687D7D3B712E636C69703D66756E6374696F6E28297B7D3B712E617263546F3D66756E6374696F6E28297B7D3B';
wwv_flow_imp.g_varchar2_table(205) := '712E6372656174655061747465726E3D66756E6374696F6E286A2C69297B72657475726E206E65772054286A2C69297D3B66756E6374696F6E20552869297B746869732E747970655F3D693B746869732E78305F3D303B746869732E79305F3D303B7468';
wwv_flow_imp.g_varchar2_table(206) := '69732E72305F3D303B746869732E78315F3D303B746869732E79315F3D303B746869732E72315F3D303B746869732E636F6C6F72735F3D5B5D7D552E70726F746F747970652E616464436F6C6F7253746F703D66756E6374696F6E286A2C69297B693D46';
wwv_flow_imp.g_varchar2_table(207) := '2869293B746869732E636F6C6F72735F2E70757368287B6F66667365743A6A2C636F6C6F723A692E636F6C6F722C616C7068613A692E616C7068617D297D3B66756E6374696F6E2054286A2C69297B51286A293B7377697463682869297B636173652272';
wwv_flow_imp.g_varchar2_table(208) := '6570656174223A63617365206E756C6C3A6361736522223A746869732E72657065746974696F6E5F3D22726570656174223B627265616B3B63617365227265706561742D78223A63617365227265706561742D79223A63617365226E6F2D726570656174';
wwv_flow_imp.g_varchar2_table(209) := '223A746869732E72657065746974696F6E5F3D693B627265616B3B64656661756C743A4F282253594E5441585F45525222297D746869732E7372635F3D6A2E7372633B746869732E77696474685F3D6A2E77696474683B746869732E6865696768745F3D';
wwv_flow_imp.g_varchar2_table(210) := '6A2E6865696768747D66756E6374696F6E204F2869297B7468726F77206E657720502869297D66756E6374696F6E20512869297B69662821697C7C692E6E6F646554797065213D317C7C692E7461674E616D65213D22494D4722297B4F2822545950455F';
wwv_flow_imp.g_varchar2_table(211) := '4D49534D415443485F45525222297D696628692E72656164795374617465213D22636F6D706C65746522297B4F2822494E56414C49445F53544154455F45525222297D7D66756E6374696F6E20502869297B746869732E636F64653D746869735B695D3B';
wwv_flow_imp.g_varchar2_table(212) := '746869732E6D6573736167653D692B223A20444F4D20457863657074696F6E20222B746869732E636F64657D76617220583D502E70726F746F747970653D6E6577204572726F723B582E494E4445585F53495A455F4552523D313B582E444F4D53545249';
wwv_flow_imp.g_varchar2_table(213) := '4E475F53495A455F4552523D323B582E4849455241524348595F524551554553545F4552523D333B582E57524F4E475F444F43554D454E545F4552523D343B582E494E56414C49445F4348415241435445525F4552523D353B582E4E4F5F444154415F41';
wwv_flow_imp.g_varchar2_table(214) := '4C4C4F5745445F4552523D363B582E4E4F5F4D4F44494649434154494F4E5F414C4C4F5745445F4552523D373B582E4E4F545F464F554E445F4552523D383B582E4E4F545F535550504F525445445F4552523D393B582E494E5553455F41545452494255';
wwv_flow_imp.g_varchar2_table(215) := '54455F4552523D31303B582E494E56414C49445F53544154455F4552523D31313B582E53594E5441585F4552523D31323B582E494E56414C49445F4D4F44494649434154494F4E5F4552523D31333B582E4E414D4553504143455F4552523D31343B582E';
wwv_flow_imp.g_varchar2_table(216) := '494E56414C49445F4143434553535F4552523D31353B582E56414C49444154494F4E5F4552523D31363B582E545950455F4D49534D415443485F4552523D31373B475F766D6C43616E7661734D616E616765723D653B43616E76617352656E646572696E';
wwv_flow_imp.g_varchar2_table(217) := '67436F6E7465787432443D443B43616E7661734772616469656E743D553B43616E7661735061747465726E3D543B444F4D457863657074696F6E3D503B475F766D6C43616E7661734D616E616765722E5F76657273696F6E3D3838387D2928297D3B';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(37522499160970427657)
,p_file_name=>'excanvas.min.js'
,p_mime_type=>'text/javascript'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/jquery_flot_min_js
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A21204A61766173637269707420706C6F7474696E67206C69627261727920666F72206A51756572792C20762E20302E372E0A200A202052656C656173656420756E64657220746865204D4954206C6963656E736520627920494F4C412C2044656365';
wwv_flow_imp.g_varchar2_table(2) := '6D62657220323030372E0A200A202A2F2866756E6374696F6E2842297B422E636F6C6F723D7B7D3B422E636F6C6F722E6D616B653D66756E6374696F6E28462C452C432C44297B76617220473D7B7D3B472E723D467C7C303B472E673D457C7C303B472E';
wwv_flow_imp.g_varchar2_table(3) := '623D437C7C303B472E613D44213D6E756C6C3F443A313B472E6164643D66756E6374696F6E284A2C49297B666F722876617220483D303B483C4A2E6C656E6774683B2B2B48297B475B4A2E6368617241742848295D2B3D497D72657475726E20472E6E6F';
wwv_flow_imp.g_varchar2_table(4) := '726D616C697A6528297D3B472E7363616C653D66756E6374696F6E284A2C49297B666F722876617220483D303B483C4A2E6C656E6774683B2B2B48297B475B4A2E6368617241742848295D2A3D497D72657475726E20472E6E6F726D616C697A6528297D';
wwv_flow_imp.g_varchar2_table(5) := '3B472E746F537472696E673D66756E6374696F6E28297B696628472E613E3D31297B72657475726E2272676228222B5B472E722C472E672C472E625D2E6A6F696E28222C22292B2229227D656C73657B72657475726E227267626128222B5B472E722C47';
wwv_flow_imp.g_varchar2_table(6) := '2E672C472E622C472E615D2E6A6F696E28222C22292B2229227D7D3B472E6E6F726D616C697A653D66756E6374696F6E28297B66756E6374696F6E2048284A2C4B2C49297B72657475726E204B3C4A3F4A3A284B3E493F493A4B297D472E723D4828302C';
wwv_flow_imp.g_varchar2_table(7) := '7061727365496E7428472E72292C323535293B472E673D4828302C7061727365496E7428472E67292C323535293B472E623D4828302C7061727365496E7428472E62292C323535293B472E613D4828302C472E612C31293B72657475726E20477D3B472E';
wwv_flow_imp.g_varchar2_table(8) := '636C6F6E653D66756E6374696F6E28297B72657475726E20422E636F6C6F722E6D616B6528472E722C472E622C472E672C472E61297D3B72657475726E20472E6E6F726D616C697A6528297D3B422E636F6C6F722E657874726163743D66756E6374696F';
wwv_flow_imp.g_varchar2_table(9) := '6E28442C43297B76617220453B646F7B453D442E6373732843292E746F4C6F7765724361736528293B69662845213D2222262645213D227472616E73706172656E7422297B627265616B7D443D442E706172656E7428297D7768696C652821422E6E6F64';
wwv_flow_imp.g_varchar2_table(10) := '654E616D6528442E6765742830292C22626F64792229293B696628453D3D227267626128302C20302C20302C20302922297B453D227472616E73706172656E74227D72657475726E20422E636F6C6F722E70617273652845297D3B422E636F6C6F722E70';
wwv_flow_imp.g_varchar2_table(11) := '617273653D66756E6374696F6E2846297B76617220452C433D422E636F6C6F722E6D616B653B696628453D2F7267625C285C732A285B302D395D7B312C337D295C732A2C5C732A285B302D395D7B312C337D295C732A2C5C732A285B302D395D7B312C33';
wwv_flow_imp.g_varchar2_table(12) := '7D295C732A5C292F2E65786563284629297B72657475726E2043287061727365496E7428455B315D2C3130292C7061727365496E7428455B325D2C3130292C7061727365496E7428455B335D2C313029297D696628453D2F726762615C285C732A285B30';
wwv_flow_imp.g_varchar2_table(13) := '2D395D7B312C337D295C732A2C5C732A285B302D395D7B312C337D295C732A2C5C732A285B302D395D7B312C337D295C732A2C5C732A285B302D395D2B283F3A5C2E5B302D395D2B293F295C732A5C292F2E65786563284629297B72657475726E204328';
wwv_flow_imp.g_varchar2_table(14) := '7061727365496E7428455B315D2C3130292C7061727365496E7428455B325D2C3130292C7061727365496E7428455B335D2C3130292C7061727365466C6F617428455B345D29297D696628453D2F7267625C285C732A285B302D395D2B283F3A5C2E5B30';
wwv_flow_imp.g_varchar2_table(15) := '2D395D2B293F295C255C732A2C5C732A285B302D395D2B283F3A5C2E5B302D395D2B293F295C255C732A2C5C732A285B302D395D2B283F3A5C2E5B302D395D2B293F295C255C732A5C292F2E65786563284629297B72657475726E204328706172736546';
wwv_flow_imp.g_varchar2_table(16) := '6C6F617428455B315D292A322E35352C7061727365466C6F617428455B325D292A322E35352C7061727365466C6F617428455B335D292A322E3535297D696628453D2F726762615C285C732A285B302D395D2B283F3A5C2E5B302D395D2B293F295C255C';
wwv_flow_imp.g_varchar2_table(17) := '732A2C5C732A285B302D395D2B283F3A5C2E5B302D395D2B293F295C255C732A2C5C732A285B302D395D2B283F3A5C2E5B302D395D2B293F295C255C732A2C5C732A285B302D395D2B283F3A5C2E5B302D395D2B293F295C732A5C292F2E657865632846';
wwv_flow_imp.g_varchar2_table(18) := '29297B72657475726E2043287061727365466C6F617428455B315D292A322E35352C7061727365466C6F617428455B325D292A322E35352C7061727365466C6F617428455B335D292A322E35352C7061727365466C6F617428455B345D29297D69662845';
wwv_flow_imp.g_varchar2_table(19) := '3D2F23285B612D66412D46302D395D7B327D29285B612D66412D46302D395D7B327D29285B612D66412D46302D395D7B327D292F2E65786563284629297B72657475726E2043287061727365496E7428455B315D2C3136292C7061727365496E7428455B';
wwv_flow_imp.g_varchar2_table(20) := '325D2C3136292C7061727365496E7428455B335D2C313629297D696628453D2F23285B612D66412D46302D395D29285B612D66412D46302D395D29285B612D66412D46302D395D292F2E65786563284629297B72657475726E2043287061727365496E74';
wwv_flow_imp.g_varchar2_table(21) := '28455B315D2B455B315D2C3136292C7061727365496E7428455B325D2B455B325D2C3136292C7061727365496E7428455B335D2B455B335D2C313629297D76617220443D422E7472696D2846292E746F4C6F7765724361736528293B696628443D3D2274';
wwv_flow_imp.g_varchar2_table(22) := '72616E73706172656E7422297B72657475726E2043283235352C3235352C3235352C30297D656C73657B453D415B445D7C7C5B302C302C305D3B72657475726E204328455B305D2C455B315D2C455B325D297D7D3B76617220413D7B617175613A5B302C';
wwv_flow_imp.g_varchar2_table(23) := '3235352C3235355D2C617A7572653A5B3234302C3235352C3235355D2C62656967653A5B3234352C3234352C3232305D2C626C61636B3A5B302C302C305D2C626C75653A5B302C302C3235355D2C62726F776E3A5B3136352C34322C34325D2C6379616E';
wwv_flow_imp.g_varchar2_table(24) := '3A5B302C3235352C3235355D2C6461726B626C75653A5B302C302C3133395D2C6461726B6379616E3A5B302C3133392C3133395D2C6461726B677265793A5B3136392C3136392C3136395D2C6461726B677265656E3A5B302C3130302C305D2C6461726B';
wwv_flow_imp.g_varchar2_table(25) := '6B68616B693A5B3138392C3138332C3130375D2C6461726B6D6167656E74613A5B3133392C302C3133395D2C6461726B6F6C697665677265656E3A5B38352C3130372C34375D2C6461726B6F72616E67653A5B3235352C3134302C305D2C6461726B6F72';
wwv_flow_imp.g_varchar2_table(26) := '636869643A5B3135332C35302C3230345D2C6461726B7265643A5B3133392C302C305D2C6461726B73616C6D6F6E3A5B3233332C3135302C3132325D2C6461726B76696F6C65743A5B3134382C302C3231315D2C667563687369613A5B3235352C302C32';
wwv_flow_imp.g_varchar2_table(27) := '35355D2C676F6C643A5B3235352C3231352C305D2C677265656E3A5B302C3132382C305D2C696E6469676F3A5B37352C302C3133305D2C6B68616B693A5B3234302C3233302C3134305D2C6C69676874626C75653A5B3137332C3231362C3233305D2C6C';
wwv_flow_imp.g_varchar2_table(28) := '696768746379616E3A5B3232342C3235352C3235355D2C6C69676874677265656E3A5B3134342C3233382C3134345D2C6C69676874677265793A5B3231312C3231312C3231315D2C6C6967687470696E6B3A5B3235352C3138322C3139335D2C6C696768';
wwv_flow_imp.g_varchar2_table(29) := '7479656C6C6F773A5B3235352C3235352C3232345D2C6C696D653A5B302C3235352C305D2C6D6167656E74613A5B3235352C302C3235355D2C6D61726F6F6E3A5B3132382C302C305D2C6E6176793A5B302C302C3132385D2C6F6C6976653A5B3132382C';
wwv_flow_imp.g_varchar2_table(30) := '3132382C305D2C6F72616E67653A5B3235352C3136352C305D2C70696E6B3A5B3235352C3139322C3230335D2C707572706C653A5B3132382C302C3132385D2C76696F6C65743A5B3132382C302C3132385D2C7265643A5B3235352C302C305D2C73696C';
wwv_flow_imp.g_varchar2_table(31) := '7665723A5B3139322C3139322C3139325D2C77686974653A5B3235352C3235352C3235355D2C79656C6C6F773A5B3235352C3235352C305D7D7D29286A5175657279293B2866756E6374696F6E2824297B66756E6374696F6E20506C6F7428706C616365';
wwv_flow_imp.g_varchar2_table(32) := '686F6C6465722C646174615F2C6F7074696F6E735F2C706C7567696E73297B766172207365726965733D5B5D2C6F7074696F6E733D7B636F6C6F72733A5B2223656463323430222C2223616664386638222C2223636234623462222C2223346461373464';
wwv_flow_imp.g_varchar2_table(33) := '222C2223393434306564225D2C6C6567656E643A7B73686F773A747275652C6E6F436F6C756D6E733A312C6C6162656C466F726D61747465723A6E756C6C2C6C6162656C426F78426F72646572436F6C6F723A2223636363222C636F6E7461696E65723A';
wwv_flow_imp.g_varchar2_table(34) := '6E756C6C2C706F736974696F6E3A226E65222C6D617267696E3A352C6261636B67726F756E64436F6C6F723A6E756C6C2C6261636B67726F756E644F7061636974793A302E38357D2C78617869733A7B73686F773A6E756C6C2C706F736974696F6E3A22';
wwv_flow_imp.g_varchar2_table(35) := '626F74746F6D222C6D6F64653A6E756C6C2C636F6C6F723A6E756C6C2C7469636B436F6C6F723A6E756C6C2C7472616E73666F726D3A6E756C6C2C696E76657273655472616E73666F726D3A6E756C6C2C6D696E3A6E756C6C2C6D61783A6E756C6C2C61';
wwv_flow_imp.g_varchar2_table(36) := '75746F7363616C654D617267696E3A6E756C6C2C7469636B733A6E756C6C2C7469636B466F726D61747465723A6E756C6C2C6C6162656C57696474683A6E756C6C2C6C6162656C4865696768743A6E756C6C2C7265736572766553706163653A6E756C6C';
wwv_flow_imp.g_varchar2_table(37) := '2C7469636B4C656E6774683A6E756C6C2C616C69676E5469636B7357697468417869733A6E756C6C2C7469636B446563696D616C733A6E756C6C2C7469636B53697A653A6E756C6C2C6D696E5469636B53697A653A6E756C6C2C6D6F6E74684E616D6573';
wwv_flow_imp.g_varchar2_table(38) := '3A6E756C6C2C74696D65666F726D61743A6E756C6C2C7477656C7665486F7572436C6F636B3A66616C73657D2C79617869733A7B6175746F7363616C654D617267696E3A302E30322C706F736974696F6E3A226C656674227D2C78617865733A5B5D2C79';
wwv_flow_imp.g_varchar2_table(39) := '617865733A5B5D2C7365726965733A7B706F696E74733A7B73686F773A66616C73652C7261646975733A332C6C696E6557696474683A322C66696C6C3A747275652C66696C6C436F6C6F723A2223666666666666222C73796D626F6C3A22636972636C65';
wwv_flow_imp.g_varchar2_table(40) := '227D2C6C696E65733A7B6C696E6557696474683A322C66696C6C3A66616C73652C66696C6C436F6C6F723A6E756C6C2C73746570733A66616C73657D2C626172733A7B73686F773A66616C73652C6C696E6557696474683A322C62617257696474683A31';
wwv_flow_imp.g_varchar2_table(41) := '2C66696C6C3A747275652C66696C6C436F6C6F723A6E756C6C2C616C69676E3A226C656674222C686F72697A6F6E74616C3A66616C73657D2C736861646F7753697A653A337D2C677269643A7B73686F773A747275652C61626F7665446174613A66616C';
wwv_flow_imp.g_varchar2_table(42) := '73652C636F6C6F723A2223353435343534222C6261636B67726F756E64436F6C6F723A6E756C6C2C626F72646572436F6C6F723A6E756C6C2C7469636B436F6C6F723A6E756C6C2C6C6162656C4D617267696E3A352C617869734D617267696E3A382C62';
wwv_flow_imp.g_varchar2_table(43) := '6F7264657257696474683A322C6D696E426F726465724D617267696E3A6E756C6C2C6D61726B696E67733A6E756C6C2C6D61726B696E6773436F6C6F723A2223663466346634222C6D61726B696E67734C696E6557696474683A322C636C69636B61626C';
wwv_flow_imp.g_varchar2_table(44) := '653A66616C73652C686F76657261626C653A66616C73652C6175746F486967686C696768743A747275652C6D6F7573654163746976655261646975733A31307D2C686F6F6B733A7B7D7D2C63616E7661733D6E756C6C2C6F7665726C61793D6E756C6C2C';
wwv_flow_imp.g_varchar2_table(45) := '6576656E74486F6C6465723D6E756C6C2C6374783D6E756C6C2C6F6374783D6E756C6C2C78617865733D5B5D2C79617865733D5B5D2C706C6F744F66667365743D7B6C6566743A302C72696768743A302C746F703A302C626F74746F6D3A307D2C63616E';
wwv_flow_imp.g_varchar2_table(46) := '76617357696474683D302C63616E7661734865696768743D302C706C6F7457696474683D302C706C6F744865696768743D302C686F6F6B733D7B70726F636573734F7074696F6E733A5B5D2C70726F63657373526177446174613A5B5D2C70726F636573';
wwv_flow_imp.g_varchar2_table(47) := '7344617461706F696E74733A5B5D2C647261775365726965733A5B5D2C647261773A5B5D2C62696E644576656E74733A5B5D2C647261774F7665726C61793A5B5D2C73687574646F776E3A5B5D7D2C706C6F743D746869733B706C6F742E736574446174';
wwv_flow_imp.g_varchar2_table(48) := '613D736574446174613B706C6F742E7365747570477269643D7365747570477269643B706C6F742E647261773D647261773B706C6F742E676574506C616365686F6C6465723D66756E6374696F6E28297B72657475726E20706C616365686F6C6465723B';
wwv_flow_imp.g_varchar2_table(49) := '7D3B706C6F742E67657443616E7661733D66756E6374696F6E28297B72657475726E2063616E7661733B7D3B706C6F742E676574506C6F744F66667365743D66756E6374696F6E28297B72657475726E20706C6F744F66667365743B7D3B706C6F742E77';
wwv_flow_imp.g_varchar2_table(50) := '696474683D66756E6374696F6E28297B72657475726E20706C6F7457696474683B7D3B706C6F742E6865696768743D66756E6374696F6E28297B72657475726E20706C6F744865696768743B7D3B706C6F742E6F66667365743D66756E6374696F6E2829';
wwv_flow_imp.g_varchar2_table(51) := '7B766172206F3D6576656E74486F6C6465722E6F666673657428293B6F2E6C6566742B3D706C6F744F66667365742E6C6566743B6F2E746F702B3D706C6F744F66667365742E746F703B72657475726E206F3B7D3B706C6F742E676574446174613D6675';
wwv_flow_imp.g_varchar2_table(52) := '6E6374696F6E28297B72657475726E207365726965733B7D3B706C6F742E676574417865733D66756E6374696F6E28297B766172207265733D7B7D2C693B242E656163682878617865732E636F6E636174287961786573292C66756E6374696F6E285F2C';
wwv_flow_imp.g_varchar2_table(53) := '61786973297B69662861786973290A7265735B617869732E646972656374696F6E2B28617869732E6E213D313F617869732E6E3A2222292B2261786973225D3D617869733B7D293B72657475726E207265733B7D3B706C6F742E67657458417865733D66';
wwv_flow_imp.g_varchar2_table(54) := '756E6374696F6E28297B72657475726E2078617865733B7D3B706C6F742E67657459417865733D66756E6374696F6E28297B72657475726E2079617865733B7D3B706C6F742E6332703D63616E766173546F41786973436F6F7264733B706C6F742E7032';
wwv_flow_imp.g_varchar2_table(55) := '633D61786973546F43616E766173436F6F7264733B706C6F742E6765744F7074696F6E733D66756E6374696F6E28297B72657475726E206F7074696F6E733B7D3B706C6F742E686967686C696768743D686967686C696768743B706C6F742E756E686967';
wwv_flow_imp.g_varchar2_table(56) := '686C696768743D756E686967686C696768743B706C6F742E747269676765725265647261774F7665726C61793D747269676765725265647261774F7665726C61793B706C6F742E706F696E744F66667365743D66756E6374696F6E28706F696E74297B72';
wwv_flow_imp.g_varchar2_table(57) := '657475726E7B6C6566743A7061727365496E742878617865735B617869734E756D62657228706F696E742C227822292D315D2E703263282B706F696E742E78292B706C6F744F66667365742E6C656674292C746F703A7061727365496E74287961786573';
wwv_flow_imp.g_varchar2_table(58) := '5B617869734E756D62657228706F696E742C227922292D315D2E703263282B706F696E742E79292B706C6F744F66667365742E746F70297D3B7D3B706C6F742E73687574646F776E3D73687574646F776E3B706C6F742E726573697A653D66756E637469';
wwv_flow_imp.g_varchar2_table(59) := '6F6E28297B67657443616E76617344696D656E73696F6E7328293B726573697A6543616E7661732863616E766173293B726573697A6543616E766173286F7665726C6179293B7D3B706C6F742E686F6F6B733D686F6F6B733B696E6974506C7567696E73';
wwv_flow_imp.g_varchar2_table(60) := '28706C6F74293B70617273654F7074696F6E73286F7074696F6E735F293B736574757043616E766173657328293B7365744461746128646174615F293B73657475704772696428293B6472617728293B62696E644576656E747328293B66756E6374696F';
wwv_flow_imp.g_varchar2_table(61) := '6E2065786563757465486F6F6B7328686F6F6B2C61726773297B617267733D5B706C6F745D2E636F6E6361742861726773293B666F722876617220693D303B693C686F6F6B2E6C656E6774683B2B2B69290A686F6F6B5B695D2E6170706C792874686973';
wwv_flow_imp.g_varchar2_table(62) := '2C61726773293B7D0A66756E6374696F6E20696E6974506C7567696E7328297B666F722876617220693D303B693C706C7567696E732E6C656E6774683B2B2B69297B76617220703D706C7567696E735B695D3B702E696E697428706C6F74293B69662870';
wwv_flow_imp.g_varchar2_table(63) := '2E6F7074696F6E73290A242E657874656E6428747275652C6F7074696F6E732C702E6F7074696F6E73293B7D7D0A66756E6374696F6E2070617273654F7074696F6E73286F707473297B76617220693B242E657874656E6428747275652C6F7074696F6E';
wwv_flow_imp.g_varchar2_table(64) := '732C6F707473293B6966286F7074696F6E732E78617869732E636F6C6F723D3D6E756C6C290A6F7074696F6E732E78617869732E636F6C6F723D6F7074696F6E732E677269642E636F6C6F723B6966286F7074696F6E732E79617869732E636F6C6F723D';
wwv_flow_imp.g_varchar2_table(65) := '3D6E756C6C290A6F7074696F6E732E79617869732E636F6C6F723D6F7074696F6E732E677269642E636F6C6F723B6966286F7074696F6E732E78617869732E7469636B436F6C6F723D3D6E756C6C290A6F7074696F6E732E78617869732E7469636B436F';
wwv_flow_imp.g_varchar2_table(66) := '6C6F723D6F7074696F6E732E677269642E7469636B436F6C6F723B6966286F7074696F6E732E79617869732E7469636B436F6C6F723D3D6E756C6C290A6F7074696F6E732E79617869732E7469636B436F6C6F723D6F7074696F6E732E677269642E7469';
wwv_flow_imp.g_varchar2_table(67) := '636B436F6C6F723B6966286F7074696F6E732E677269642E626F72646572436F6C6F723D3D6E756C6C290A6F7074696F6E732E677269642E626F72646572436F6C6F723D6F7074696F6E732E677269642E636F6C6F723B6966286F7074696F6E732E6772';
wwv_flow_imp.g_varchar2_table(68) := '69642E7469636B436F6C6F723D3D6E756C6C290A6F7074696F6E732E677269642E7469636B436F6C6F723D242E636F6C6F722E7061727365286F7074696F6E732E677269642E636F6C6F72292E7363616C65282761272C302E3232292E746F537472696E';
wwv_flow_imp.g_varchar2_table(69) := '6728293B666F7228693D303B693C4D6174682E6D617828312C6F7074696F6E732E78617865732E6C656E677468293B2B2B69290A6F7074696F6E732E78617865735B695D3D242E657874656E6428747275652C7B7D2C6F7074696F6E732E78617869732C';
wwv_flow_imp.g_varchar2_table(70) := '6F7074696F6E732E78617865735B695D293B666F7228693D303B693C4D6174682E6D617828312C6F7074696F6E732E79617865732E6C656E677468293B2B2B69290A6F7074696F6E732E79617865735B695D3D242E657874656E6428747275652C7B7D2C';
wwv_flow_imp.g_varchar2_table(71) := '6F7074696F6E732E79617869732C6F7074696F6E732E79617865735B695D293B6966286F7074696F6E732E78617869732E6E6F5469636B7326266F7074696F6E732E78617869732E7469636B733D3D6E756C6C290A6F7074696F6E732E78617869732E74';
wwv_flow_imp.g_varchar2_table(72) := '69636B733D6F7074696F6E732E78617869732E6E6F5469636B733B6966286F7074696F6E732E79617869732E6E6F5469636B7326266F7074696F6E732E79617869732E7469636B733D3D6E756C6C290A6F7074696F6E732E79617869732E7469636B733D';
wwv_flow_imp.g_varchar2_table(73) := '6F7074696F6E732E79617869732E6E6F5469636B733B6966286F7074696F6E732E783261786973297B6F7074696F6E732E78617865735B315D3D242E657874656E6428747275652C7B7D2C6F7074696F6E732E78617869732C6F7074696F6E732E783261';
wwv_flow_imp.g_varchar2_table(74) := '786973293B6F7074696F6E732E78617865735B315D2E706F736974696F6E3D22746F70223B7D0A6966286F7074696F6E732E793261786973297B6F7074696F6E732E79617865735B315D3D242E657874656E6428747275652C7B7D2C6F7074696F6E732E';
wwv_flow_imp.g_varchar2_table(75) := '79617869732C6F7074696F6E732E793261786973293B6F7074696F6E732E79617865735B315D2E706F736974696F6E3D227269676874223B7D0A6966286F7074696F6E732E677269642E636F6C6F7265644172656173290A6F7074696F6E732E67726964';
wwv_flow_imp.g_varchar2_table(76) := '2E6D61726B696E67733D6F7074696F6E732E677269642E636F6C6F72656441726561733B6966286F7074696F6E732E677269642E636F6C6F7265644172656173436F6C6F72290A6F7074696F6E732E677269642E6D61726B696E6773436F6C6F723D6F70';
wwv_flow_imp.g_varchar2_table(77) := '74696F6E732E677269642E636F6C6F7265644172656173436F6C6F723B6966286F7074696F6E732E6C696E6573290A242E657874656E6428747275652C6F7074696F6E732E7365726965732E6C696E65732C6F7074696F6E732E6C696E6573293B696628';
wwv_flow_imp.g_varchar2_table(78) := '6F7074696F6E732E706F696E7473290A242E657874656E6428747275652C6F7074696F6E732E7365726965732E706F696E74732C6F7074696F6E732E706F696E7473293B6966286F7074696F6E732E62617273290A242E657874656E6428747275652C6F';
wwv_flow_imp.g_varchar2_table(79) := '7074696F6E732E7365726965732E626172732C6F7074696F6E732E62617273293B6966286F7074696F6E732E736861646F7753697A65213D6E756C6C290A6F7074696F6E732E7365726965732E736861646F7753697A653D6F7074696F6E732E73686164';
wwv_flow_imp.g_varchar2_table(80) := '6F7753697A653B666F7228693D303B693C6F7074696F6E732E78617865732E6C656E6774683B2B2B69290A6765744F72437265617465417869732878617865732C692B31292E6F7074696F6E733D6F7074696F6E732E78617865735B695D3B666F722869';
wwv_flow_imp.g_varchar2_table(81) := '3D303B693C6F7074696F6E732E79617865732E6C656E6774683B2B2B69290A6765744F72437265617465417869732879617865732C692B31292E6F7074696F6E733D6F7074696F6E732E79617865735B695D3B666F7228766172206E20696E20686F6F6B';
wwv_flow_imp.g_varchar2_table(82) := '73290A6966286F7074696F6E732E686F6F6B735B6E5D26266F7074696F6E732E686F6F6B735B6E5D2E6C656E677468290A686F6F6B735B6E5D3D686F6F6B735B6E5D2E636F6E636174286F7074696F6E732E686F6F6B735B6E5D293B6578656375746548';
wwv_flow_imp.g_varchar2_table(83) := '6F6F6B7328686F6F6B732E70726F636573734F7074696F6E732C5B6F7074696F6E735D293B7D0A66756E6374696F6E20736574446174612864297B7365726965733D7061727365446174612864293B66696C6C496E5365726965734F7074696F6E732829';
wwv_flow_imp.g_varchar2_table(84) := '3B70726F636573734461746128293B7D0A66756E6374696F6E207061727365446174612864297B766172207265733D5B5D3B666F722876617220693D303B693C642E6C656E6774683B2B2B69297B76617220733D242E657874656E6428747275652C7B7D';
wwv_flow_imp.g_varchar2_table(85) := '2C6F7074696F6E732E736572696573293B696628645B695D2E64617461213D6E756C6C297B732E646174613D645B695D2E646174613B64656C65746520645B695D2E646174613B242E657874656E6428747275652C732C645B695D293B645B695D2E6461';
wwv_flow_imp.g_varchar2_table(86) := '74613D732E646174613B7D0A656C73650A732E646174613D645B695D3B7265732E707573682873293B7D0A72657475726E207265733B7D0A66756E6374696F6E20617869734E756D626572286F626A2C636F6F7264297B76617220613D6F626A5B636F6F';
wwv_flow_imp.g_varchar2_table(87) := '72642B2261786973225D3B696628747970656F6620613D3D226F626A65637422290A613D612E6E3B696628747970656F662061213D226E756D62657222290A613D313B72657475726E20613B7D0A66756E6374696F6E20616C6C4178657328297B726574';
wwv_flow_imp.g_varchar2_table(88) := '75726E20242E677265702878617865732E636F6E636174287961786573292C66756E6374696F6E2861297B72657475726E20613B7D293B7D0A66756E6374696F6E2063616E766173546F41786973436F6F72647328706F73297B766172207265733D7B7D';
wwv_flow_imp.g_varchar2_table(89) := '2C692C617869733B666F7228693D303B693C78617865732E6C656E6774683B2B2B69297B617869733D78617865735B695D3B696628617869732626617869732E75736564290A7265735B2278222B617869732E6E5D3D617869732E63327028706F732E6C';
wwv_flow_imp.g_varchar2_table(90) := '656674293B7D0A666F7228693D303B693C79617865732E6C656E6774683B2B2B69297B617869733D79617865735B695D3B696628617869732626617869732E75736564290A7265735B2279222B617869732E6E5D3D617869732E63327028706F732E746F';
wwv_flow_imp.g_varchar2_table(91) := '70293B7D0A6966287265732E7831213D3D756E646566696E6564290A7265732E783D7265732E78313B6966287265732E7931213D3D756E646566696E6564290A7265732E793D7265732E79313B72657475726E207265733B7D0A66756E6374696F6E2061';
wwv_flow_imp.g_varchar2_table(92) := '786973546F43616E766173436F6F72647328706F73297B766172207265733D7B7D2C692C617869732C6B65793B666F7228693D303B693C78617865732E6C656E6774683B2B2B69297B617869733D78617865735B695D3B69662861786973262661786973';
wwv_flow_imp.g_varchar2_table(93) := '2E75736564297B6B65793D2278222B617869732E6E3B696628706F735B6B65795D3D3D6E756C6C2626617869732E6E3D3D31290A6B65793D2278223B696628706F735B6B65795D213D6E756C6C297B7265732E6C6566743D617869732E70326328706F73';
wwv_flow_imp.g_varchar2_table(94) := '5B6B65795D293B627265616B3B7D7D7D0A666F7228693D303B693C79617865732E6C656E6774683B2B2B69297B617869733D79617865735B695D3B696628617869732626617869732E75736564297B6B65793D2279222B617869732E6E3B696628706F73';
wwv_flow_imp.g_varchar2_table(95) := '5B6B65795D3D3D6E756C6C2626617869732E6E3D3D31290A6B65793D2279223B696628706F735B6B65795D213D6E756C6C297B7265732E746F703D617869732E70326328706F735B6B65795D293B627265616B3B7D7D7D0A72657475726E207265733B7D';
wwv_flow_imp.g_varchar2_table(96) := '0A66756E6374696F6E206765744F724372656174654178697328617865732C6E756D626572297B69662821617865735B6E756D6265722D315D290A617865735B6E756D6265722D315D3D7B6E3A6E756D6265722C646972656374696F6E3A617865733D3D';
wwv_flow_imp.g_varchar2_table(97) := '78617865733F2278223A2279222C6F7074696F6E733A242E657874656E6428747275652C7B7D2C617865733D3D78617865733F6F7074696F6E732E78617869733A6F7074696F6E732E7961786973297D3B72657475726E20617865735B6E756D6265722D';
wwv_flow_imp.g_varchar2_table(98) := '315D3B7D0A66756E6374696F6E2066696C6C496E5365726965734F7074696F6E7328297B76617220693B766172206E6565646564436F6C6F72733D7365726965732E6C656E6774682C75736564436F6C6F72733D5B5D2C61737369676E6564436F6C6F72';
wwv_flow_imp.g_varchar2_table(99) := '733D5B5D3B666F7228693D303B693C7365726965732E6C656E6774683B2B2B69297B7661722073633D7365726965735B695D2E636F6C6F723B6966287363213D6E756C6C297B2D2D6E6565646564436F6C6F72733B696628747970656F662073633D3D22';
wwv_flow_imp.g_varchar2_table(100) := '6E756D62657222290A61737369676E6564436F6C6F72732E70757368287363293B656C73650A75736564436F6C6F72732E7075736828242E636F6C6F722E7061727365287365726965735B695D2E636F6C6F7229293B7D7D0A666F7228693D303B693C61';
wwv_flow_imp.g_varchar2_table(101) := '737369676E6564436F6C6F72732E6C656E6774683B2B2B69297B6E6565646564436F6C6F72733D4D6174682E6D6178286E6565646564436F6C6F72732C61737369676E6564436F6C6F72735B695D2B31293B7D0A76617220636F6C6F72733D5B5D2C7661';
wwv_flow_imp.g_varchar2_table(102) := '72696174696F6E3D303B693D303B7768696C6528636F6C6F72732E6C656E6774683C6E6565646564436F6C6F7273297B76617220633B6966286F7074696F6E732E636F6C6F72732E6C656E6774683D3D69290A633D242E636F6C6F722E6D616B65283130';
wwv_flow_imp.g_varchar2_table(103) := '302C3130302C313030293B656C73650A633D242E636F6C6F722E7061727365286F7074696F6E732E636F6C6F72735B695D293B766172207369676E3D766172696174696F6E25323D3D313F2D313A313B632E7363616C652827726762272C312B7369676E';
wwv_flow_imp.g_varchar2_table(104) := '2A4D6174682E6365696C28766172696174696F6E2F32292A302E32290A636F6C6F72732E707573682863293B2B2B693B696628693E3D6F7074696F6E732E636F6C6F72732E6C656E677468297B693D303B2B2B766172696174696F6E3B7D7D0A76617220';
wwv_flow_imp.g_varchar2_table(105) := '636F6C6F72693D302C733B666F7228693D303B693C7365726965732E6C656E6774683B2B2B69297B733D7365726965735B695D3B696628732E636F6C6F723D3D6E756C6C297B732E636F6C6F723D636F6C6F72735B636F6C6F72695D2E746F537472696E';
wwv_flow_imp.g_varchar2_table(106) := '6728293B2B2B636F6C6F72693B7D0A656C736520696628747970656F6620732E636F6C6F723D3D226E756D62657222290A732E636F6C6F723D636F6C6F72735B732E636F6C6F725D2E746F537472696E6728293B696628732E6C696E65732E73686F773D';
wwv_flow_imp.g_varchar2_table(107) := '3D6E756C6C297B76617220762C73686F773D747275653B666F72287620696E2073290A696628735B765D2626735B765D2E73686F77297B73686F773D66616C73653B627265616B3B7D0A69662873686F77290A732E6C696E65732E73686F773D74727565';
wwv_flow_imp.g_varchar2_table(108) := '3B7D0A732E78617869733D6765744F72437265617465417869732878617865732C617869734E756D62657228732C22782229293B732E79617869733D6765744F72437265617465417869732879617865732C617869734E756D62657228732C2279222929';
wwv_flow_imp.g_varchar2_table(109) := '3B7D7D0A66756E6374696F6E2070726F636573734461746128297B76617220746F7053656E7472793D4E756D6265722E504F5349544956455F494E46494E4954592C626F74746F6D53656E7472793D4E756D6265722E4E454741544956455F494E46494E';
wwv_flow_imp.g_varchar2_table(110) := '4954592C66616B65496E66696E6974793D4E756D6265722E4D41585F56414C55452C692C6A2C6B2C6D2C6C656E6774682C732C706F696E74732C70732C782C792C617869732C76616C2C662C703B66756E6374696F6E2075706461746541786973286178';
wwv_flow_imp.g_varchar2_table(111) := '69732C6D696E2C6D6178297B6966286D696E3C617869732E646174616D696E26266D696E213D2D66616B65496E66696E697479290A617869732E646174616D696E3D6D696E3B6966286D61783E617869732E646174616D617826266D6178213D66616B65';
wwv_flow_imp.g_varchar2_table(112) := '496E66696E697479290A617869732E646174616D61783D6D61783B7D0A242E6561636828616C6C4178657328292C66756E6374696F6E285F2C61786973297B617869732E646174616D696E3D746F7053656E7472793B617869732E646174616D61783D62';
wwv_flow_imp.g_varchar2_table(113) := '6F74746F6D53656E7472793B617869732E757365643D66616C73653B7D293B666F7228693D303B693C7365726965732E6C656E6774683B2B2B69297B733D7365726965735B695D3B732E64617461706F696E74733D7B706F696E74733A5B5D7D3B657865';
wwv_flow_imp.g_varchar2_table(114) := '63757465486F6F6B7328686F6F6B732E70726F63657373526177446174612C5B732C732E646174612C732E64617461706F696E74735D293B7D0A666F7228693D303B693C7365726965732E6C656E6774683B2B2B69297B733D7365726965735B695D3B76';
wwv_flow_imp.g_varchar2_table(115) := '617220646174613D732E646174612C666F726D61743D732E64617461706F696E74732E666F726D61743B69662821666F726D6174297B666F726D61743D5B5D3B666F726D61742E70757368287B783A747275652C6E756D6265723A747275652C72657175';
wwv_flow_imp.g_varchar2_table(116) := '697265643A747275657D293B666F726D61742E70757368287B793A747275652C6E756D6265723A747275652C72657175697265643A747275657D293B696628732E626172732E73686F777C7C28732E6C696E65732E73686F772626732E6C696E65732E66';
wwv_flow_imp.g_varchar2_table(117) := '696C6C29297B666F726D61742E70757368287B793A747275652C6E756D6265723A747275652C72657175697265643A66616C73652C64656661756C7456616C75653A307D293B696628732E626172732E686F72697A6F6E74616C297B64656C6574652066';
wwv_flow_imp.g_varchar2_table(118) := '6F726D61745B666F726D61742E6C656E6774682D315D2E793B666F726D61745B666F726D61742E6C656E6774682D315D2E783D747275653B7D7D0A732E64617461706F696E74732E666F726D61743D666F726D61743B7D0A696628732E64617461706F69';
wwv_flow_imp.g_varchar2_table(119) := '6E74732E706F696E7473697A65213D6E756C6C290A636F6E74696E75653B732E64617461706F696E74732E706F696E7473697A653D666F726D61742E6C656E6774683B70733D732E64617461706F696E74732E706F696E7473697A653B706F696E74733D';
wwv_flow_imp.g_varchar2_table(120) := '732E64617461706F696E74732E706F696E74733B696E7365727453746570733D732E6C696E65732E73686F772626732E6C696E65732E73746570733B732E78617869732E757365643D732E79617869732E757365643D747275653B666F72286A3D6B3D30';
wwv_flow_imp.g_varchar2_table(121) := '3B6A3C646174612E6C656E6774683B2B2B6A2C6B2B3D7073297B703D646174615B6A5D3B766172206E756C6C6966793D703D3D6E756C6C3B696628216E756C6C696679297B666F72286D3D303B6D3C70733B2B2B6D297B76616C3D705B6D5D3B663D666F';
wwv_flow_imp.g_varchar2_table(122) := '726D61745B6D5D3B69662866297B696628662E6E756D626572262676616C213D6E756C6C297B76616C3D2B76616C3B69662869734E614E2876616C29290A76616C3D6E756C6C3B656C73652069662876616C3D3D496E66696E697479290A76616C3D6661';
wwv_flow_imp.g_varchar2_table(123) := '6B65496E66696E6974793B656C73652069662876616C3D3D2D496E66696E697479290A76616C3D2D66616B65496E66696E6974793B7D0A69662876616C3D3D6E756C6C297B696628662E7265717569726564290A6E756C6C6966793D747275653B696628';
wwv_flow_imp.g_varchar2_table(124) := '662E64656661756C7456616C7565213D6E756C6C290A76616C3D662E64656661756C7456616C75653B7D7D0A706F696E74735B6B2B6D5D3D76616C3B7D7D0A6966286E756C6C696679297B666F72286D3D303B6D3C70733B2B2B6D297B76616C3D706F69';
wwv_flow_imp.g_varchar2_table(125) := '6E74735B6B2B6D5D3B69662876616C213D6E756C6C297B663D666F726D61745B6D5D3B696628662E78290A7570646174654178697328732E78617869732C76616C2C76616C293B696628662E79290A7570646174654178697328732E79617869732C7661';
wwv_flow_imp.g_varchar2_table(126) := '6C2C76616C293B7D0A706F696E74735B6B2B6D5D3D6E756C6C3B7D7D0A656C73657B696628696E73657274537465707326266B3E302626706F696E74735B6B2D70735D213D6E756C6C2626706F696E74735B6B2D70735D213D706F696E74735B6B5D2626';
wwv_flow_imp.g_varchar2_table(127) := '706F696E74735B6B2D70732B315D213D706F696E74735B6B2B315D297B666F72286D3D303B6D3C70733B2B2B6D290A706F696E74735B6B2B70732B6D5D3D706F696E74735B6B2B6D5D3B706F696E74735B6B2B315D3D706F696E74735B6B2D70732B315D';
wwv_flow_imp.g_varchar2_table(128) := '3B6B2B3D70733B7D7D7D7D0A666F7228693D303B693C7365726965732E6C656E6774683B2B2B69297B733D7365726965735B695D3B65786563757465486F6F6B7328686F6F6B732E70726F6365737344617461706F696E74732C5B732C732E6461746170';
wwv_flow_imp.g_varchar2_table(129) := '6F696E74735D293B7D0A666F7228693D303B693C7365726965732E6C656E6774683B2B2B69297B733D7365726965735B695D3B706F696E74733D732E64617461706F696E74732E706F696E74732C70733D732E64617461706F696E74732E706F696E7473';
wwv_flow_imp.g_varchar2_table(130) := '697A653B76617220786D696E3D746F7053656E7472792C796D696E3D746F7053656E7472792C786D61783D626F74746F6D53656E7472792C796D61783D626F74746F6D53656E7472793B666F72286A3D303B6A3C706F696E74732E6C656E6774683B6A2B';
wwv_flow_imp.g_varchar2_table(131) := '3D7073297B696628706F696E74735B6A5D3D3D6E756C6C290A636F6E74696E75653B666F72286D3D303B6D3C70733B2B2B6D297B76616C3D706F696E74735B6A2B6D5D3B663D666F726D61745B6D5D3B69662821667C7C76616C3D3D66616B65496E6669';
wwv_flow_imp.g_varchar2_table(132) := '6E6974797C7C76616C3D3D2D66616B65496E66696E697479290A636F6E74696E75653B696628662E78297B69662876616C3C786D696E290A786D696E3D76616C3B69662876616C3E786D6178290A786D61783D76616C3B7D0A696628662E79297B696628';
wwv_flow_imp.g_varchar2_table(133) := '76616C3C796D696E290A796D696E3D76616C3B69662876616C3E796D6178290A796D61783D76616C3B7D7D7D0A696628732E626172732E73686F77297B7661722064656C74613D732E626172732E616C69676E3D3D226C656674223F303A2D732E626172';
wwv_flow_imp.g_varchar2_table(134) := '732E62617257696474682F323B696628732E626172732E686F72697A6F6E74616C297B796D696E2B3D64656C74613B796D61782B3D64656C74612B732E626172732E62617257696474683B7D0A656C73657B786D696E2B3D64656C74613B786D61782B3D';
wwv_flow_imp.g_varchar2_table(135) := '64656C74612B732E626172732E62617257696474683B7D7D0A7570646174654178697328732E78617869732C786D696E2C786D6178293B7570646174654178697328732E79617869732C796D696E2C796D6178293B7D0A242E6561636828616C6C417865';
wwv_flow_imp.g_varchar2_table(136) := '7328292C66756E6374696F6E285F2C61786973297B696628617869732E646174616D696E3D3D746F7053656E747279290A617869732E646174616D696E3D6E756C6C3B696628617869732E646174616D61783D3D626F74746F6D53656E747279290A6178';
wwv_flow_imp.g_varchar2_table(137) := '69732E646174616D61783D6E756C6C3B7D293B7D0A66756E6374696F6E206D616B6543616E76617328736B6970506F736974696F6E696E672C636C73297B76617220633D646F63756D656E742E637265617465456C656D656E74282763616E7661732729';
wwv_flow_imp.g_varchar2_table(138) := '3B632E636C6173734E616D653D636C733B632E77696474683D63616E76617357696474683B632E6865696768743D63616E7661734865696768743B69662821736B6970506F736974696F6E696E67290A242863292E637373287B706F736974696F6E3A27';
wwv_flow_imp.g_varchar2_table(139) := '6162736F6C757465272C6C6566743A302C746F703A307D293B242863292E617070656E64546F28706C616365686F6C646572293B69662821632E676574436F6E74657874290A633D77696E646F772E475F766D6C43616E7661734D616E616765722E696E';
wwv_flow_imp.g_varchar2_table(140) := '6974456C656D656E742863293B632E676574436F6E746578742822326422292E7361766528293B72657475726E20633B7D0A66756E6374696F6E2067657443616E76617344696D656E73696F6E7328297B63616E76617357696474683D706C616365686F';
wwv_flow_imp.g_varchar2_table(141) := '6C6465722E776964746828293B63616E7661734865696768743D706C616365686F6C6465722E68656967687428293B69662863616E76617357696474683C3D307C7C63616E7661734865696768743C3D30290A7468726F7722496E76616C69642064696D';
wwv_flow_imp.g_varchar2_table(142) := '656E73696F6E7320666F7220706C6F742C207769647468203D20222B63616E76617357696474682B222C20686569676874203D20222B63616E7661734865696768743B7D0A66756E6374696F6E20726573697A6543616E7661732863297B696628632E77';
wwv_flow_imp.g_varchar2_table(143) := '69647468213D63616E7661735769647468290A632E77696474683D63616E76617357696474683B696628632E686569676874213D63616E766173486569676874290A632E6865696768743D63616E7661734865696768743B76617220636374783D632E67';
wwv_flow_imp.g_varchar2_table(144) := '6574436F6E746578742822326422293B636374782E726573746F726528293B636374782E7361766528293B7D0A66756E6374696F6E20736574757043616E766173657328297B766172207265757365642C6578697374696E6743616E7661733D706C6163';
wwv_flow_imp.g_varchar2_table(145) := '65686F6C6465722E6368696C6472656E282263616E7661732E6261736522292C6578697374696E674F7665726C61793D706C616365686F6C6465722E6368696C6472656E282263616E7661732E6F7665726C617922293B6966286578697374696E674361';
wwv_flow_imp.g_varchar2_table(146) := '6E7661732E6C656E6774683D3D307C7C6578697374696E674F7665726C61793D3D30297B706C616365686F6C6465722E68746D6C282222293B706C616365686F6C6465722E637373287B70616464696E673A307D293B696628706C616365686F6C646572';
wwv_flow_imp.g_varchar2_table(147) := '2E6373732822706F736974696F6E22293D3D2773746174696327290A706C616365686F6C6465722E6373732822706F736974696F6E222C2272656C617469766522293B67657443616E76617344696D656E73696F6E7328293B63616E7661733D6D616B65';
wwv_flow_imp.g_varchar2_table(148) := '43616E76617328747275652C226261736522293B6F7665726C61793D6D616B6543616E7661732866616C73652C226F7665726C617922293B7265757365643D66616C73653B7D0A656C73657B63616E7661733D6578697374696E6743616E7661732E6765';
wwv_flow_imp.g_varchar2_table(149) := '742830293B6F7665726C61793D6578697374696E674F7665726C61792E6765742830293B7265757365643D747275653B7D0A6374783D63616E7661732E676574436F6E746578742822326422293B6F6374783D6F7665726C61792E676574436F6E746578';
wwv_flow_imp.g_varchar2_table(150) := '742822326422293B6576656E74486F6C6465723D24285B6F7665726C61792C63616E7661735D293B696628726575736564297B706C616365686F6C6465722E646174612822706C6F7422292E73687574646F776E28293B706C6F742E726573697A652829';
wwv_flow_imp.g_varchar2_table(151) := '3B6F6374782E636C6561725265637428302C302C63616E76617357696474682C63616E766173486569676874293B6576656E74486F6C6465722E756E62696E6428293B706C616365686F6C6465722E6368696C6472656E28292E6E6F74285B63616E7661';
wwv_flow_imp.g_varchar2_table(152) := '732C6F7665726C61795D292E72656D6F766528293B7D0A706C616365686F6C6465722E646174612822706C6F74222C706C6F74293B7D0A66756E6374696F6E2062696E644576656E747328297B6966286F7074696F6E732E677269642E686F7665726162';
wwv_flow_imp.g_varchar2_table(153) := '6C65297B6576656E74486F6C6465722E6D6F7573656D6F7665286F6E4D6F7573654D6F7665293B6576656E74486F6C6465722E6D6F7573656C65617665286F6E4D6F7573654C65617665293B7D0A6966286F7074696F6E732E677269642E636C69636B61';
wwv_flow_imp.g_varchar2_table(154) := '626C65290A6576656E74486F6C6465722E636C69636B286F6E436C69636B293B65786563757465486F6F6B7328686F6F6B732E62696E644576656E74732C5B6576656E74486F6C6465725D293B7D0A66756E6374696F6E2073687574646F776E28297B69';
wwv_flow_imp.g_varchar2_table(155) := '662872656472617754696D656F7574290A636C65617254696D656F75742872656472617754696D656F7574293B6576656E74486F6C6465722E756E62696E6428226D6F7573656D6F7665222C6F6E4D6F7573654D6F7665293B6576656E74486F6C646572';
wwv_flow_imp.g_varchar2_table(156) := '2E756E62696E6428226D6F7573656C65617665222C6F6E4D6F7573654C65617665293B6576656E74486F6C6465722E756E62696E642822636C69636B222C6F6E436C69636B293B65786563757465486F6F6B7328686F6F6B732E73687574646F776E2C5B';
wwv_flow_imp.g_varchar2_table(157) := '6576656E74486F6C6465725D293B7D0A66756E6374696F6E207365745472616E73666F726D6174696F6E48656C706572732861786973297B66756E6374696F6E206964656E746974792878297B72657475726E20783B7D0A76617220732C6D2C743D6178';
wwv_flow_imp.g_varchar2_table(158) := '69732E6F7074696F6E732E7472616E73666F726D7C7C6964656E746974792C69743D617869732E6F7074696F6E732E696E76657273655472616E73666F726D3B696628617869732E646972656374696F6E3D3D227822297B733D617869732E7363616C65';
wwv_flow_imp.g_varchar2_table(159) := '3D706C6F7457696474682F4D6174682E616273287428617869732E6D6178292D7428617869732E6D696E29293B6D3D4D6174682E6D696E287428617869732E6D6178292C7428617869732E6D696E29293B7D0A656C73657B733D617869732E7363616C65';
wwv_flow_imp.g_varchar2_table(160) := '3D706C6F744865696768742F4D6174682E616273287428617869732E6D6178292D7428617869732E6D696E29293B733D2D733B6D3D4D6174682E6D6178287428617869732E6D6178292C7428617869732E6D696E29293B7D0A696628743D3D6964656E74';
wwv_flow_imp.g_varchar2_table(161) := '697479290A617869732E7032633D66756E6374696F6E2870297B72657475726E28702D6D292A733B7D3B656C73650A617869732E7032633D66756E6374696F6E2870297B72657475726E28742870292D6D292A733B7D3B696628216974290A617869732E';
wwv_flow_imp.g_varchar2_table(162) := '6332703D66756E6374696F6E2863297B72657475726E206D2B632F733B7D3B656C73650A617869732E6332703D66756E6374696F6E2863297B72657475726E206974286D2B632F73293B7D3B7D0A66756E6374696F6E206D6561737572655469636B4C61';
wwv_flow_imp.g_varchar2_table(163) := '62656C732861786973297B766172206F7074733D617869732E6F7074696F6E732C692C7469636B733D617869732E7469636B737C7C5B5D2C6C6162656C733D5B5D2C6C2C773D6F7074732E6C6162656C57696474682C683D6F7074732E6C6162656C4865';
wwv_flow_imp.g_varchar2_table(164) := '696768742C64756D6D794469763B66756E6374696F6E206D616B6544756D6D79446976286C6162656C732C7769647468297B72657475726E202428273C646976207374796C653D22706F736974696F6E3A6162736F6C7574653B746F703A2D3130303030';
wwv_flow_imp.g_varchar2_table(165) := '70783B272B77696474682B27666F6E742D73697A653A736D616C6C6572223E272B273C64697620636C6173733D22272B617869732E646972656374696F6E2B274178697320272B617869732E646972656374696F6E2B617869732E6E2B2741786973223E';
wwv_flow_imp.g_varchar2_table(166) := '270A2B6C6162656C732E6A6F696E282222292B273C2F6469763E3C2F6469763E27292E617070656E64546F28706C616365686F6C646572293B7D0A696628617869732E646972656374696F6E3D3D227822297B696628773D3D6E756C6C290A773D4D6174';
wwv_flow_imp.g_varchar2_table(167) := '682E666C6F6F722863616E76617357696474682F287469636B732E6C656E6774683E303F7469636B732E6C656E6774683A3129293B696628683D3D6E756C6C297B6C6162656C733D5B5D3B666F7228693D303B693C7469636B732E6C656E6774683B2B2B';
wwv_flow_imp.g_varchar2_table(168) := '69297B6C3D7469636B735B695D2E6C6162656C3B6966286C290A6C6162656C732E7075736828273C64697620636C6173733D227469636B4C6162656C22207374796C653D22666C6F61743A6C6566743B77696474683A272B772B277078223E272B6C2B27';
wwv_flow_imp.g_varchar2_table(169) := '3C2F6469763E27293B7D0A6966286C6162656C732E6C656E6774683E30297B6C6162656C732E7075736828273C646976207374796C653D22636C6561723A6C656674223E3C2F6469763E27293B64756D6D794469763D6D616B6544756D6D79446976286C';
wwv_flow_imp.g_varchar2_table(170) := '6162656C732C2277696474683A313030303070783B22293B683D64756D6D794469762E68656967687428293B64756D6D794469762E72656D6F766528293B7D7D7D0A656C736520696628773D3D6E756C6C7C7C683D3D6E756C6C297B666F7228693D303B';
wwv_flow_imp.g_varchar2_table(171) := '693C7469636B732E6C656E6774683B2B2B69297B6C3D7469636B735B695D2E6C6162656C3B6966286C290A6C6162656C732E7075736828273C64697620636C6173733D227469636B4C6162656C223E272B6C2B273C2F6469763E27293B7D0A6966286C61';
wwv_flow_imp.g_varchar2_table(172) := '62656C732E6C656E6774683E30297B64756D6D794469763D6D616B6544756D6D79446976286C6162656C732C2222293B696628773D3D6E756C6C290A773D64756D6D794469762E6368696C6472656E28292E776964746828293B696628683D3D6E756C6C';
wwv_flow_imp.g_varchar2_table(173) := '290A683D64756D6D794469762E66696E6428226469762E7469636B4C6162656C22292E68656967687428293B64756D6D794469762E72656D6F766528293B7D7D0A696628773D3D6E756C6C290A773D303B696628683D3D6E756C6C290A683D303B617869';
wwv_flow_imp.g_varchar2_table(174) := '732E6C6162656C57696474683D773B617869732E6C6162656C4865696768743D683B7D0A66756E6374696F6E20616C6C6F6361746541786973426F78466972737450686173652861786973297B766172206C773D617869732E6C6162656C57696474682C';
wwv_flow_imp.g_varchar2_table(175) := '6C683D617869732E6C6162656C4865696768742C706F733D617869732E6F7074696F6E732E706F736974696F6E2C7469636B4C656E6774683D617869732E6F7074696F6E732E7469636B4C656E6774682C617869736D617267696E3D6F7074696F6E732E';
wwv_flow_imp.g_varchar2_table(176) := '677269642E617869734D617267696E2C70616464696E673D6F7074696F6E732E677269642E6C6162656C4D617267696E2C616C6C3D617869732E646972656374696F6E3D3D2278223F78617865733A79617865732C696E6465783B7661722073616D6550';
wwv_flow_imp.g_varchar2_table(177) := '6F736974696F6E3D242E6772657028616C6C2C66756E6374696F6E2861297B72657475726E20612626612E6F7074696F6E732E706F736974696F6E3D3D706F732626612E7265736572766553706163653B7D293B696628242E696E417272617928617869';
wwv_flow_imp.g_varchar2_table(178) := '732C73616D65506F736974696F6E293D3D73616D65506F736974696F6E2E6C656E6774682D31290A617869736D617267696E3D303B6966287469636B4C656E6774683D3D6E756C6C290A7469636B4C656E6774683D2266756C6C223B7661722073616D65';
wwv_flow_imp.g_varchar2_table(179) := '446972656374696F6E3D242E6772657028616C6C2C66756E6374696F6E2861297B72657475726E20612626612E7265736572766553706163653B7D293B76617220696E6E65726D6F73743D242E696E417272617928617869732C73616D65446972656374';
wwv_flow_imp.g_varchar2_table(180) := '696F6E293D3D303B69662821696E6E65726D6F737426267469636B4C656E6774683D3D2266756C6C22290A7469636B4C656E6774683D353B6966282169734E614E282B7469636B4C656E67746829290A70616464696E672B3D2B7469636B4C656E677468';
wwv_flow_imp.g_varchar2_table(181) := '3B696628617869732E646972656374696F6E3D3D227822297B6C682B3D70616464696E673B696628706F733D3D22626F74746F6D22297B706C6F744F66667365742E626F74746F6D2B3D6C682B617869736D617267696E3B617869732E626F783D7B746F';
wwv_flow_imp.g_varchar2_table(182) := '703A63616E7661734865696768742D706C6F744F66667365742E626F74746F6D2C6865696768743A6C687D3B7D0A656C73657B617869732E626F783D7B746F703A706C6F744F66667365742E746F702B617869736D617267696E2C6865696768743A6C68';
wwv_flow_imp.g_varchar2_table(183) := '7D3B706C6F744F66667365742E746F702B3D6C682B617869736D617267696E3B7D7D0A656C73657B6C772B3D70616464696E673B696628706F733D3D226C65667422297B617869732E626F783D7B6C6566743A706C6F744F66667365742E6C6566742B61';
wwv_flow_imp.g_varchar2_table(184) := '7869736D617267696E2C77696474683A6C777D3B706C6F744F66667365742E6C6566742B3D6C772B617869736D617267696E3B7D0A656C73657B706C6F744F66667365742E72696768742B3D6C772B617869736D617267696E3B617869732E626F783D7B';
wwv_flow_imp.g_varchar2_table(185) := '6C6566743A63616E76617357696474682D706C6F744F66667365742E72696768742C77696474683A6C777D3B7D7D0A617869732E706F736974696F6E3D706F733B617869732E7469636B4C656E6774683D7469636B4C656E6774683B617869732E626F78';
wwv_flow_imp.g_varchar2_table(186) := '2E70616464696E673D70616464696E673B617869732E696E6E65726D6F73743D696E6E65726D6F73743B7D0A66756E6374696F6E20616C6C6F6361746541786973426F785365636F6E6450686173652861786973297B696628617869732E646972656374';
wwv_flow_imp.g_varchar2_table(187) := '696F6E3D3D227822297B617869732E626F782E6C6566743D706C6F744F66667365742E6C6566743B617869732E626F782E77696474683D706C6F7457696474683B7D0A656C73657B617869732E626F782E746F703D706C6F744F66667365742E746F703B';
wwv_flow_imp.g_varchar2_table(188) := '617869732E626F782E6865696768743D706C6F744865696768743B7D7D0A66756E6374696F6E2073657475704772696428297B76617220692C617865733D616C6C4178657328293B242E6561636828617865732C66756E6374696F6E285F2C6178697329';
wwv_flow_imp.g_varchar2_table(189) := '7B617869732E73686F773D617869732E6F7074696F6E732E73686F773B696628617869732E73686F773D3D6E756C6C290A617869732E73686F773D617869732E757365643B617869732E7265736572766553706163653D617869732E73686F777C7C6178';
wwv_flow_imp.g_varchar2_table(190) := '69732E6F7074696F6E732E7265736572766553706163653B73657452616E67652861786973293B7D293B616C6C6F6361746564417865733D242E6772657028617865732C66756E6374696F6E2861786973297B72657475726E20617869732E7265736572';
wwv_flow_imp.g_varchar2_table(191) := '766553706163653B7D293B706C6F744F66667365742E6C6566743D706C6F744F66667365742E72696768743D706C6F744F66667365742E746F703D706C6F744F66667365742E626F74746F6D3D303B6966286F7074696F6E732E677269642E73686F7729';
wwv_flow_imp.g_varchar2_table(192) := '7B242E6561636828616C6C6F6361746564417865732C66756E6374696F6E285F2C61786973297B73657475705469636B47656E65726174696F6E2861786973293B7365745469636B732861786973293B736E617052616E6765546F5469636B7328617869';
wwv_flow_imp.g_varchar2_table(193) := '732C617869732E7469636B73293B6D6561737572655469636B4C6162656C732861786973293B7D293B666F7228693D616C6C6F6361746564417865732E6C656E6774682D313B693E3D303B2D2D69290A616C6C6F6361746541786973426F784669727374';
wwv_flow_imp.g_varchar2_table(194) := '506861736528616C6C6F6361746564417865735B695D293B766172206D696E4D617267696E3D6F7074696F6E732E677269642E6D696E426F726465724D617267696E3B6966286D696E4D617267696E3D3D6E756C6C297B6D696E4D617267696E3D303B66';
wwv_flow_imp.g_varchar2_table(195) := '6F7228693D303B693C7365726965732E6C656E6774683B2B2B69290A6D696E4D617267696E3D4D6174682E6D6178286D696E4D617267696E2C7365726965735B695D2E706F696E74732E7261646975732B7365726965735B695D2E706F696E74732E6C69';
wwv_flow_imp.g_varchar2_table(196) := '6E6557696474682F32293B7D0A666F7228766172206120696E20706C6F744F6666736574297B706C6F744F66667365745B615D2B3D6F7074696F6E732E677269642E626F7264657257696474683B706C6F744F66667365745B615D3D4D6174682E6D6178';
wwv_flow_imp.g_varchar2_table(197) := '286D696E4D617267696E2C706C6F744F66667365745B615D293B7D7D0A706C6F7457696474683D63616E76617357696474682D706C6F744F66667365742E6C6566742D706C6F744F66667365742E72696768743B706C6F744865696768743D63616E7661';
wwv_flow_imp.g_varchar2_table(198) := '734865696768742D706C6F744F66667365742E626F74746F6D2D706C6F744F66667365742E746F703B242E6561636828617865732C66756E6374696F6E285F2C61786973297B7365745472616E73666F726D6174696F6E48656C70657273286178697329';
wwv_flow_imp.g_varchar2_table(199) := '3B7D293B6966286F7074696F6E732E677269642E73686F77297B242E6561636828616C6C6F6361746564417865732C66756E6374696F6E285F2C61786973297B616C6C6F6361746541786973426F785365636F6E6450686173652861786973293B7D293B';
wwv_flow_imp.g_varchar2_table(200) := '696E73657274417869734C6162656C7328293B7D0A696E736572744C6567656E6428293B7D0A66756E6374696F6E2073657452616E67652861786973297B766172206F7074733D617869732E6F7074696F6E732C6D696E3D2B286F7074732E6D696E213D';
wwv_flow_imp.g_varchar2_table(201) := '6E756C6C3F6F7074732E6D696E3A617869732E646174616D696E292C6D61783D2B286F7074732E6D6178213D6E756C6C3F6F7074732E6D61783A617869732E646174616D6178292C64656C74613D6D61782D6D696E3B69662864656C74613D3D302E3029';
wwv_flow_imp.g_varchar2_table(202) := '7B76617220776964656E3D6D61783D3D303F313A302E30313B6966286F7074732E6D696E3D3D6E756C6C290A6D696E2D3D776964656E3B6966286F7074732E6D61783D3D6E756C6C7C7C6F7074732E6D696E213D6E756C6C290A6D61782B3D776964656E';
wwv_flow_imp.g_varchar2_table(203) := '3B7D0A656C73657B766172206D617267696E3D6F7074732E6175746F7363616C654D617267696E3B6966286D617267696E213D6E756C6C297B6966286F7074732E6D696E3D3D6E756C6C297B6D696E2D3D64656C74612A6D617267696E3B6966286D696E';
wwv_flow_imp.g_varchar2_table(204) := '3C302626617869732E646174616D696E213D6E756C6C2626617869732E646174616D696E3E3D30290A6D696E3D303B7D0A6966286F7074732E6D61783D3D6E756C6C297B6D61782B3D64656C74612A6D617267696E3B6966286D61783E30262661786973';
wwv_flow_imp.g_varchar2_table(205) := '2E646174616D6178213D6E756C6C2626617869732E646174616D61783C3D30290A6D61783D303B7D7D7D0A617869732E6D696E3D6D696E3B617869732E6D61783D6D61783B7D0A66756E6374696F6E2073657475705469636B47656E65726174696F6E28';
wwv_flow_imp.g_varchar2_table(206) := '61786973297B766172206F7074733D617869732E6F7074696F6E733B766172206E6F5469636B733B696628747970656F66206F7074732E7469636B733D3D226E756D6265722226266F7074732E7469636B733E30290A6E6F5469636B733D6F7074732E74';
wwv_flow_imp.g_varchar2_table(207) := '69636B733B656C73650A6E6F5469636B733D302E332A4D6174682E7371727428617869732E646972656374696F6E3D3D2278223F63616E76617357696474683A63616E766173486569676874293B7661722064656C74613D28617869732E6D61782D6178';
wwv_flow_imp.g_varchar2_table(208) := '69732E6D696E292F6E6F5469636B732C73697A652C67656E657261746F722C756E69742C666F726D61747465722C692C6D61676E2C6E6F726D3B6966286F7074732E6D6F64653D3D2274696D6522297B7661722074696D65556E697453697A653D7B2273';
wwv_flow_imp.g_varchar2_table(209) := '65636F6E64223A313030302C226D696E757465223A36302A313030302C22686F7572223A36302A36302A313030302C22646179223A32342A36302A36302A313030302C226D6F6E7468223A33302A32342A36302A36302A313030302C2279656172223A33';
wwv_flow_imp.g_varchar2_table(210) := '36352E323432352A32342A36302A36302A313030307D3B76617220737065633D5B5B312C227365636F6E64225D2C5B322C227365636F6E64225D2C5B352C227365636F6E64225D2C5B31302C227365636F6E64225D2C5B33302C227365636F6E64225D2C';
wwv_flow_imp.g_varchar2_table(211) := '5B312C226D696E757465225D2C5B322C226D696E757465225D2C5B352C226D696E757465225D2C5B31302C226D696E757465225D2C5B33302C226D696E757465225D2C5B312C22686F7572225D2C5B322C22686F7572225D2C5B342C22686F7572225D2C';
wwv_flow_imp.g_varchar2_table(212) := '5B382C22686F7572225D2C5B31322C22686F7572225D2C5B312C22646179225D2C5B322C22646179225D2C5B332C22646179225D2C5B302E32352C226D6F6E7468225D2C5B302E352C226D6F6E7468225D2C5B312C226D6F6E7468225D2C5B322C226D6F';
wwv_flow_imp.g_varchar2_table(213) := '6E7468225D2C5B332C226D6F6E7468225D2C5B362C226D6F6E7468225D2C5B312C2279656172225D5D3B766172206D696E53697A653D303B6966286F7074732E6D696E5469636B53697A65213D6E756C6C297B696628747970656F66206F7074732E7469';
wwv_flow_imp.g_varchar2_table(214) := '636B53697A653D3D226E756D62657222290A6D696E53697A653D6F7074732E7469636B53697A653B656C73650A6D696E53697A653D6F7074732E6D696E5469636B53697A655B305D2A74696D65556E697453697A655B6F7074732E6D696E5469636B5369';
wwv_flow_imp.g_varchar2_table(215) := '7A655B315D5D3B7D0A666F722876617220693D303B693C737065632E6C656E6774682D313B2B2B69290A69662864656C74613C28737065635B695D5B305D2A74696D65556E697453697A655B737065635B695D5B315D5D0A2B737065635B692B315D5B30';
wwv_flow_imp.g_varchar2_table(216) := '5D2A74696D65556E697453697A655B737065635B692B315D5B315D5D292F322626737065635B695D5B305D2A74696D65556E697453697A655B737065635B695D5B315D5D3E3D6D696E53697A65290A627265616B3B73697A653D737065635B695D5B305D';
wwv_flow_imp.g_varchar2_table(217) := '3B756E69743D737065635B695D5B315D3B696628756E69743D3D227965617222297B6D61676E3D4D6174682E706F772831302C4D6174682E666C6F6F72284D6174682E6C6F672864656C74612F74696D65556E697453697A652E79656172292F4D617468';
wwv_flow_imp.g_varchar2_table(218) := '2E4C4E313029293B6E6F726D3D2864656C74612F74696D65556E697453697A652E79656172292F6D61676E3B6966286E6F726D3C312E35290A73697A653D313B656C7365206966286E6F726D3C33290A73697A653D323B656C7365206966286E6F726D3C';
wwv_flow_imp.g_varchar2_table(219) := '372E35290A73697A653D353B656C73650A73697A653D31303B73697A652A3D6D61676E3B7D0A617869732E7469636B53697A653D6F7074732E7469636B53697A657C7C5B73697A652C756E69745D3B67656E657261746F723D66756E6374696F6E286178';
wwv_flow_imp.g_varchar2_table(220) := '6973297B766172207469636B733D5B5D2C7469636B53697A653D617869732E7469636B53697A655B305D2C756E69743D617869732E7469636B53697A655B315D2C643D6E6577204461746528617869732E6D696E293B76617220737465703D7469636B53';
wwv_flow_imp.g_varchar2_table(221) := '697A652A74696D65556E697453697A655B756E69745D3B696628756E69743D3D227365636F6E6422290A642E7365745554435365636F6E647328666C6F6F72496E4261736528642E6765745554435365636F6E647328292C7469636B53697A6529293B69';
wwv_flow_imp.g_varchar2_table(222) := '6628756E69743D3D226D696E75746522290A642E7365745554434D696E7574657328666C6F6F72496E4261736528642E6765745554434D696E7574657328292C7469636B53697A6529293B696628756E69743D3D22686F757222290A642E736574555443';
wwv_flow_imp.g_varchar2_table(223) := '486F75727328666C6F6F72496E4261736528642E676574555443486F75727328292C7469636B53697A6529293B696628756E69743D3D226D6F6E746822290A642E7365745554434D6F6E746828666C6F6F72496E4261736528642E6765745554434D6F6E';
wwv_flow_imp.g_varchar2_table(224) := '746828292C7469636B53697A6529293B696628756E69743D3D227965617222290A642E73657455544346756C6C5965617228666C6F6F72496E4261736528642E67657455544346756C6C5965617228292C7469636B53697A6529293B642E736574555443';
wwv_flow_imp.g_varchar2_table(225) := '4D696C6C697365636F6E64732830293B696628737465703E3D74696D65556E697453697A652E6D696E757465290A642E7365745554435365636F6E64732830293B696628737465703E3D74696D65556E697453697A652E686F7572290A642E7365745554';
wwv_flow_imp.g_varchar2_table(226) := '434D696E757465732830293B696628737465703E3D74696D65556E697453697A652E646179290A642E736574555443486F7572732830293B696628737465703E3D74696D65556E697453697A652E6461792A34290A642E73657455544344617465283129';
wwv_flow_imp.g_varchar2_table(227) := '3B696628737465703E3D74696D65556E697453697A652E79656172290A642E7365745554434D6F6E74682830293B7661722063617272793D302C763D4E756D6265722E4E614E2C707265763B646F7B707265763D763B763D642E67657454696D6528293B';
wwv_flow_imp.g_varchar2_table(228) := '7469636B732E707573682876293B696628756E69743D3D226D6F6E746822297B6966287469636B53697A653C31297B642E736574555443446174652831293B7661722073746172743D642E67657454696D6528293B642E7365745554434D6F6E74682864';
wwv_flow_imp.g_varchar2_table(229) := '2E6765745554434D6F6E746828292B31293B76617220656E643D642E67657454696D6528293B642E73657454696D6528762B63617272792A74696D65556E697453697A652E686F75722B28656E642D7374617274292A7469636B53697A65293B63617272';
wwv_flow_imp.g_varchar2_table(230) := '793D642E676574555443486F75727328293B642E736574555443486F7572732830293B7D0A656C73650A642E7365745554434D6F6E746828642E6765745554434D6F6E746828292B7469636B53697A65293B7D0A656C736520696628756E69743D3D2279';
wwv_flow_imp.g_varchar2_table(231) := '65617222297B642E73657455544346756C6C5965617228642E67657455544346756C6C5965617228292B7469636B53697A65293B7D0A656C73650A642E73657454696D6528762B73746570293B7D7768696C6528763C617869732E6D6178262676213D70';
wwv_flow_imp.g_varchar2_table(232) := '726576293B72657475726E207469636B733B7D3B666F726D61747465723D66756E6374696F6E28762C61786973297B76617220643D6E657720446174652876293B6966286F7074732E74696D65666F726D6174213D6E756C6C290A72657475726E20242E';
wwv_flow_imp.g_varchar2_table(233) := '706C6F742E666F726D61744461746528642C6F7074732E74696D65666F726D61742C6F7074732E6D6F6E74684E616D6573293B76617220743D617869732E7469636B53697A655B305D2A74696D65556E697453697A655B617869732E7469636B53697A65';
wwv_flow_imp.g_varchar2_table(234) := '5B315D5D3B766172207370616E3D617869732E6D61782D617869732E6D696E3B766172207375666669783D286F7074732E7477656C7665486F7572436C6F636B293F22202570223A22223B696628743C74696D65556E697453697A652E6D696E75746529';
wwv_flow_imp.g_varchar2_table(235) := '0A666D743D2225683A254D3A2553222B7375666669783B656C736520696628743C74696D65556E697453697A652E646179297B6966287370616E3C322A74696D65556E697453697A652E646179290A666D743D2225683A254D222B7375666669783B656C';
wwv_flow_imp.g_varchar2_table(236) := '73650A666D743D2225622025642025683A254D222B7375666669783B7D0A656C736520696628743C74696D65556E697453697A652E6D6F6E7468290A666D743D222562202564223B656C736520696628743C74696D65556E697453697A652E7965617229';
wwv_flow_imp.g_varchar2_table(237) := '7B6966287370616E3C74696D65556E697453697A652E79656172290A666D743D222562223B656C73650A666D743D222562202579223B7D0A656C73650A666D743D222579223B72657475726E20242E706C6F742E666F726D61744461746528642C666D74';
wwv_flow_imp.g_varchar2_table(238) := '2C6F7074732E6D6F6E74684E616D6573293B7D3B7D0A656C73657B766172206D61784465633D6F7074732E7469636B446563696D616C733B766172206465633D2D4D6174682E666C6F6F72284D6174682E6C6F672864656C7461292F4D6174682E4C4E31';
wwv_flow_imp.g_varchar2_table(239) := '30293B6966286D6178446563213D6E756C6C26266465633E6D6178446563290A6465633D6D61784465633B6D61676E3D4D6174682E706F772831302C2D646563293B6E6F726D3D64656C74612F6D61676E3B6966286E6F726D3C312E35290A73697A653D';
wwv_flow_imp.g_varchar2_table(240) := '313B656C7365206966286E6F726D3C33297B73697A653D323B6966286E6F726D3E322E32352626286D61784465633D3D6E756C6C7C7C6465632B313C3D6D617844656329297B73697A653D322E353B2B2B6465633B7D7D0A656C7365206966286E6F726D';
wwv_flow_imp.g_varchar2_table(241) := '3C372E35290A73697A653D353B656C73650A73697A653D31303B73697A652A3D6D61676E3B6966286F7074732E6D696E5469636B53697A65213D6E756C6C262673697A653C6F7074732E6D696E5469636B53697A65290A73697A653D6F7074732E6D696E';
wwv_flow_imp.g_varchar2_table(242) := '5469636B53697A653B617869732E7469636B446563696D616C733D4D6174682E6D617828302C6D6178446563213D6E756C6C3F6D61784465633A646563293B617869732E7469636B53697A653D6F7074732E7469636B53697A657C7C73697A653B67656E';
wwv_flow_imp.g_varchar2_table(243) := '657261746F723D66756E6374696F6E2861786973297B766172207469636B733D5B5D3B7661722073746172743D666C6F6F72496E4261736528617869732E6D696E2C617869732E7469636B53697A65292C693D302C763D4E756D6265722E4E614E2C7072';
wwv_flow_imp.g_varchar2_table(244) := '65763B646F7B707265763D763B763D73746172742B692A617869732E7469636B53697A653B7469636B732E707573682876293B2B2B693B7D7768696C6528763C617869732E6D6178262676213D70726576293B72657475726E207469636B733B7D3B666F';
wwv_flow_imp.g_varchar2_table(245) := '726D61747465723D66756E6374696F6E28762C61786973297B72657475726E20762E746F466978656428617869732E7469636B446563696D616C73293B7D3B7D0A6966286F7074732E616C69676E5469636B735769746841786973213D6E756C6C297B76';
wwv_flow_imp.g_varchar2_table(246) := '6172206F74686572417869733D28617869732E646972656374696F6E3D3D2278223F78617865733A7961786573295B6F7074732E616C69676E5469636B7357697468417869732D315D3B6966286F746865724178697326266F74686572417869732E7573';
wwv_flow_imp.g_varchar2_table(247) := '656426266F7468657241786973213D61786973297B766172206E6963655469636B733D67656E657261746F722861786973293B6966286E6963655469636B732E6C656E6774683E30297B6966286F7074732E6D696E3D3D6E756C6C290A617869732E6D69';
wwv_flow_imp.g_varchar2_table(248) := '6E3D4D6174682E6D696E28617869732E6D696E2C6E6963655469636B735B305D293B6966286F7074732E6D61783D3D6E756C6C26266E6963655469636B732E6C656E6774683E31290A617869732E6D61783D4D6174682E6D617828617869732E6D61782C';
wwv_flow_imp.g_varchar2_table(249) := '6E6963655469636B735B6E6963655469636B732E6C656E6774682D315D293B7D0A67656E657261746F723D66756E6374696F6E2861786973297B766172207469636B733D5B5D2C762C693B666F7228693D303B693C6F74686572417869732E7469636B73';
wwv_flow_imp.g_varchar2_table(250) := '2E6C656E6774683B2B2B69297B763D286F74686572417869732E7469636B735B695D2E762D6F74686572417869732E6D696E292F286F74686572417869732E6D61782D6F74686572417869732E6D696E293B763D617869732E6D696E2B762A2861786973';
wwv_flow_imp.g_varchar2_table(251) := '2E6D61782D617869732E6D696E293B7469636B732E707573682876293B7D0A72657475726E207469636B733B7D3B696628617869732E6D6F6465213D2274696D652226266F7074732E7469636B446563696D616C733D3D6E756C6C297B76617220657874';
wwv_flow_imp.g_varchar2_table(252) := '72614465633D4D6174682E6D617828302C2D4D6174682E666C6F6F72284D6174682E6C6F672864656C7461292F4D6174682E4C4E3130292B31292C74733D67656E657261746F722861786973293B696628212874732E6C656E6774683E3126262F5C2E2E';
wwv_flow_imp.g_varchar2_table(253) := '2A30242F2E74657374282874735B315D2D74735B305D292E746F4669786564286578747261446563292929290A617869732E7469636B446563696D616C733D65787472614465633B7D7D7D0A617869732E7469636B47656E657261746F723D67656E6572';
wwv_flow_imp.g_varchar2_table(254) := '61746F723B696628242E697346756E6374696F6E286F7074732E7469636B466F726D617474657229290A617869732E7469636B466F726D61747465723D66756E6374696F6E28762C61786973297B72657475726E22222B6F7074732E7469636B466F726D';
wwv_flow_imp.g_varchar2_table(255) := '617474657228762C61786973293B7D3B656C73650A617869732E7469636B466F726D61747465723D666F726D61747465723B7D0A66756E6374696F6E207365745469636B732861786973297B766172206F7469636B733D617869732E6F7074696F6E732E';
wwv_flow_imp.g_varchar2_table(256) := '7469636B732C7469636B733D5B5D3B6966286F7469636B733D3D6E756C6C7C7C28747970656F66206F7469636B733D3D226E756D6265722226266F7469636B733E3029290A7469636B733D617869732E7469636B47656E657261746F722861786973293B';
wwv_flow_imp.g_varchar2_table(257) := '656C7365206966286F7469636B73297B696628242E697346756E6374696F6E286F7469636B7329290A7469636B733D6F7469636B73287B6D696E3A617869732E6D696E2C6D61783A617869732E6D61787D293B656C73650A7469636B733D6F7469636B73';
wwv_flow_imp.g_varchar2_table(258) := '3B7D0A76617220692C763B617869732E7469636B733D5B5D3B666F7228693D303B693C7469636B732E6C656E6774683B2B2B69297B766172206C6162656C3D6E756C6C3B76617220743D7469636B735B695D3B696628747970656F6620743D3D226F626A';
wwv_flow_imp.g_varchar2_table(259) := '65637422297B763D2B745B305D3B696628742E6C656E6774683E31290A6C6162656C3D745B315D3B7D0A656C73650A763D2B743B6966286C6162656C3D3D6E756C6C290A6C6162656C3D617869732E7469636B466F726D617474657228762C6178697329';
wwv_flow_imp.g_varchar2_table(260) := '3B6966282169734E614E287629290A617869732E7469636B732E70757368287B763A762C6C6162656C3A6C6162656C7D293B7D7D0A66756E6374696F6E20736E617052616E6765546F5469636B7328617869732C7469636B73297B696628617869732E6F';
wwv_flow_imp.g_varchar2_table(261) := '7074696F6E732E6175746F7363616C654D617267696E26267469636B732E6C656E6774683E30297B696628617869732E6F7074696F6E732E6D696E3D3D6E756C6C290A617869732E6D696E3D4D6174682E6D696E28617869732E6D696E2C7469636B735B';
wwv_flow_imp.g_varchar2_table(262) := '305D2E76293B696628617869732E6F7074696F6E732E6D61783D3D6E756C6C26267469636B732E6C656E6774683E31290A617869732E6D61783D4D6174682E6D617828617869732E6D61782C7469636B735B7469636B732E6C656E6774682D315D2E7629';
wwv_flow_imp.g_varchar2_table(263) := '3B7D7D0A66756E6374696F6E206472617728297B6374782E636C6561725265637428302C302C63616E76617357696474682C63616E766173486569676874293B76617220677269643D6F7074696F6E732E677269643B696628677269642E73686F772626';
wwv_flow_imp.g_varchar2_table(264) := '677269642E6261636B67726F756E64436F6C6F72290A647261774261636B67726F756E6428293B696628677269642E73686F77262621677269642E61626F766544617461290A647261774772696428293B666F722876617220693D303B693C7365726965';
wwv_flow_imp.g_varchar2_table(265) := '732E6C656E6774683B2B2B69297B65786563757465486F6F6B7328686F6F6B732E647261775365726965732C5B6374782C7365726965735B695D5D293B64726177536572696573287365726965735B695D293B7D0A65786563757465486F6F6B7328686F';
wwv_flow_imp.g_varchar2_table(266) := '6F6B732E647261772C5B6374785D293B696628677269642E73686F772626677269642E61626F766544617461290A647261774772696428293B7D0A66756E6374696F6E206578747261637452616E67652872616E6765732C636F6F7264297B7661722061';
wwv_flow_imp.g_varchar2_table(267) := '7869732C66726F6D2C746F2C6B65792C617865733D616C6C4178657328293B666F7228693D303B693C617865732E6C656E6774683B2B2B69297B617869733D617865735B695D3B696628617869732E646972656374696F6E3D3D636F6F7264297B6B6579';
wwv_flow_imp.g_varchar2_table(268) := '3D636F6F72642B617869732E6E2B2261786973223B6966282172616E6765735B6B65795D2626617869732E6E3D3D31290A6B65793D636F6F72642B2261786973223B69662872616E6765735B6B65795D297B66726F6D3D72616E6765735B6B65795D2E66';
wwv_flow_imp.g_varchar2_table(269) := '726F6D3B746F3D72616E6765735B6B65795D2E746F3B627265616B3B7D7D7D0A6966282172616E6765735B6B65795D297B617869733D636F6F72643D3D2278223F78617865735B305D3A79617865735B305D3B66726F6D3D72616E6765735B636F6F7264';
wwv_flow_imp.g_varchar2_table(270) := '2B2231225D3B746F3D72616E6765735B636F6F72642B2232225D3B7D0A69662866726F6D213D6E756C6C2626746F213D6E756C6C262666726F6D3E746F297B76617220746D703D66726F6D3B66726F6D3D746F3B746F3D746D703B7D0A72657475726E7B';
wwv_flow_imp.g_varchar2_table(271) := '66726F6D3A66726F6D2C746F3A746F2C617869733A617869737D3B7D0A66756E6374696F6E20647261774261636B67726F756E6428297B6374782E7361766528293B6374782E7472616E736C61746528706C6F744F66667365742E6C6566742C706C6F74';
wwv_flow_imp.g_varchar2_table(272) := '4F66667365742E746F70293B6374782E66696C6C5374796C653D676574436F6C6F724F724772616469656E74286F7074696F6E732E677269642E6261636B67726F756E64436F6C6F722C706C6F744865696768742C302C2272676261283235352C203235';
wwv_flow_imp.g_varchar2_table(273) := '352C203235352C20302922293B6374782E66696C6C5265637428302C302C706C6F7457696474682C706C6F74486569676874293B6374782E726573746F726528293B7D0A66756E6374696F6E20647261774772696428297B76617220693B6374782E7361';
wwv_flow_imp.g_varchar2_table(274) := '766528293B6374782E7472616E736C61746528706C6F744F66667365742E6C6566742C706C6F744F66667365742E746F70293B766172206D61726B696E67733D6F7074696F6E732E677269642E6D61726B696E67733B6966286D61726B696E6773297B69';
wwv_flow_imp.g_varchar2_table(275) := '6628242E697346756E6374696F6E286D61726B696E677329297B76617220617865733D706C6F742E6765744178657328293B617865732E786D696E3D617865732E78617869732E6D696E3B617865732E786D61783D617865732E78617869732E6D61783B';
wwv_flow_imp.g_varchar2_table(276) := '617865732E796D696E3D617865732E79617869732E6D696E3B617865732E796D61783D617865732E79617869732E6D61783B6D61726B696E67733D6D61726B696E67732861786573293B7D0A666F7228693D303B693C6D61726B696E67732E6C656E6774';
wwv_flow_imp.g_varchar2_table(277) := '683B2B2B69297B766172206D3D6D61726B696E67735B695D2C7872616E67653D6578747261637452616E6765286D2C227822292C7972616E67653D6578747261637452616E6765286D2C227922293B6966287872616E67652E66726F6D3D3D6E756C6C29';
wwv_flow_imp.g_varchar2_table(278) := '0A7872616E67652E66726F6D3D7872616E67652E617869732E6D696E3B6966287872616E67652E746F3D3D6E756C6C290A7872616E67652E746F3D7872616E67652E617869732E6D61783B6966287972616E67652E66726F6D3D3D6E756C6C290A797261';
wwv_flow_imp.g_varchar2_table(279) := '6E67652E66726F6D3D7972616E67652E617869732E6D696E3B6966287972616E67652E746F3D3D6E756C6C290A7972616E67652E746F3D7972616E67652E617869732E6D61783B6966287872616E67652E746F3C7872616E67652E617869732E6D696E7C';
wwv_flow_imp.g_varchar2_table(280) := '7C7872616E67652E66726F6D3E7872616E67652E617869732E6D61787C7C7972616E67652E746F3C7972616E67652E617869732E6D696E7C7C7972616E67652E66726F6D3E7972616E67652E617869732E6D6178290A636F6E74696E75653B7872616E67';
wwv_flow_imp.g_varchar2_table(281) := '652E66726F6D3D4D6174682E6D6178287872616E67652E66726F6D2C7872616E67652E617869732E6D696E293B7872616E67652E746F3D4D6174682E6D696E287872616E67652E746F2C7872616E67652E617869732E6D6178293B7972616E67652E6672';
wwv_flow_imp.g_varchar2_table(282) := '6F6D3D4D6174682E6D6178287972616E67652E66726F6D2C7972616E67652E617869732E6D696E293B7972616E67652E746F3D4D6174682E6D696E287972616E67652E746F2C7972616E67652E617869732E6D6178293B6966287872616E67652E66726F';
wwv_flow_imp.g_varchar2_table(283) := '6D3D3D7872616E67652E746F26267972616E67652E66726F6D3D3D7972616E67652E746F290A636F6E74696E75653B7872616E67652E66726F6D3D7872616E67652E617869732E703263287872616E67652E66726F6D293B7872616E67652E746F3D7872';
wwv_flow_imp.g_varchar2_table(284) := '616E67652E617869732E703263287872616E67652E746F293B7972616E67652E66726F6D3D7972616E67652E617869732E703263287972616E67652E66726F6D293B7972616E67652E746F3D7972616E67652E617869732E703263287972616E67652E74';
wwv_flow_imp.g_varchar2_table(285) := '6F293B6966287872616E67652E66726F6D3D3D7872616E67652E746F7C7C7972616E67652E66726F6D3D3D7972616E67652E746F297B6374782E626567696E5061746828293B6374782E7374726F6B655374796C653D6D2E636F6C6F727C7C6F7074696F';
wwv_flow_imp.g_varchar2_table(286) := '6E732E677269642E6D61726B696E6773436F6C6F723B6374782E6C696E6557696474683D6D2E6C696E6557696474687C7C6F7074696F6E732E677269642E6D61726B696E67734C696E6557696474683B6374782E6D6F7665546F287872616E67652E6672';
wwv_flow_imp.g_varchar2_table(287) := '6F6D2C7972616E67652E66726F6D293B6374782E6C696E65546F287872616E67652E746F2C7972616E67652E746F293B6374782E7374726F6B6528293B7D0A656C73657B6374782E66696C6C5374796C653D6D2E636F6C6F727C7C6F7074696F6E732E67';
wwv_flow_imp.g_varchar2_table(288) := '7269642E6D61726B696E6773436F6C6F723B6374782E66696C6C52656374287872616E67652E66726F6D2C7972616E67652E746F2C7872616E67652E746F2D7872616E67652E66726F6D2C7972616E67652E66726F6D2D7972616E67652E746F293B7D7D';
wwv_flow_imp.g_varchar2_table(289) := '7D0A76617220617865733D616C6C4178657328292C62773D6F7074696F6E732E677269642E626F7264657257696474683B666F7228766172206A3D303B6A3C617865732E6C656E6774683B2B2B6A297B76617220617869733D617865735B6A5D2C626F78';
wwv_flow_imp.g_varchar2_table(290) := '3D617869732E626F782C743D617869732E7469636B4C656E6774682C782C792C786F66662C796F66663B69662821617869732E73686F777C7C617869732E7469636B732E6C656E6774683D3D30290A636F6E74696E75650A6374782E7374726F6B655374';
wwv_flow_imp.g_varchar2_table(291) := '796C653D617869732E6F7074696F6E732E7469636B436F6C6F727C7C242E636F6C6F722E706172736528617869732E6F7074696F6E732E636F6C6F72292E7363616C65282761272C302E3232292E746F537472696E6728293B6374782E6C696E65576964';
wwv_flow_imp.g_varchar2_table(292) := '74683D313B696628617869732E646972656374696F6E3D3D227822297B783D303B696628743D3D2266756C6C22290A793D28617869732E706F736974696F6E3D3D22746F70223F303A706C6F74486569676874293B656C73650A793D626F782E746F702D';
wwv_flow_imp.g_varchar2_table(293) := '706C6F744F66667365742E746F702B28617869732E706F736974696F6E3D3D22746F70223F626F782E6865696768743A30293B7D0A656C73657B793D303B696628743D3D2266756C6C22290A783D28617869732E706F736974696F6E3D3D226C65667422';
wwv_flow_imp.g_varchar2_table(294) := '3F303A706C6F745769647468293B656C73650A783D626F782E6C6566742D706C6F744F66667365742E6C6566742B28617869732E706F736974696F6E3D3D226C656674223F626F782E77696474683A30293B7D0A69662821617869732E696E6E65726D6F';
wwv_flow_imp.g_varchar2_table(295) := '7374297B6374782E626567696E5061746828293B786F66663D796F66663D303B696628617869732E646972656374696F6E3D3D227822290A786F66663D706C6F7457696474683B656C73650A796F66663D706C6F744865696768743B6966286374782E6C';
wwv_flow_imp.g_varchar2_table(296) := '696E6557696474683D3D31297B783D4D6174682E666C6F6F722878292B302E353B793D4D6174682E666C6F6F722879292B302E353B7D0A6374782E6D6F7665546F28782C79293B6374782E6C696E65546F28782B786F66662C792B796F6666293B637478';
wwv_flow_imp.g_varchar2_table(297) := '2E7374726F6B6528293B7D0A6374782E626567696E5061746828293B666F7228693D303B693C617869732E7469636B732E6C656E6774683B2B2B69297B76617220763D617869732E7469636B735B695D2E763B786F66663D796F66663D303B696628763C';
wwv_flow_imp.g_varchar2_table(298) := '617869732E6D696E7C7C763E617869732E6D61787C7C28743D3D2266756C6C22262662773E30262628763D3D617869732E6D696E7C7C763D3D617869732E6D61782929290A636F6E74696E75653B696628617869732E646972656374696F6E3D3D227822';
wwv_flow_imp.g_varchar2_table(299) := '297B783D617869732E7032632876293B796F66663D743D3D2266756C6C223F2D706C6F744865696768743A743B696628617869732E706F736974696F6E3D3D22746F7022290A796F66663D2D796F66663B7D0A656C73657B793D617869732E7032632876';
wwv_flow_imp.g_varchar2_table(300) := '293B786F66663D743D3D2266756C6C223F2D706C6F7457696474683A743B696628617869732E706F736974696F6E3D3D226C65667422290A786F66663D2D786F66663B7D0A6966286374782E6C696E6557696474683D3D31297B696628617869732E6469';
wwv_flow_imp.g_varchar2_table(301) := '72656374696F6E3D3D227822290A783D4D6174682E666C6F6F722878292B302E353B656C73650A793D4D6174682E666C6F6F722879292B302E353B7D0A6374782E6D6F7665546F28782C79293B6374782E6C696E65546F28782B786F66662C792B796F66';
wwv_flow_imp.g_varchar2_table(302) := '66293B7D0A6374782E7374726F6B6528293B7D0A6966286277297B6374782E6C696E6557696474683D62773B6374782E7374726F6B655374796C653D6F7074696F6E732E677269642E626F72646572436F6C6F723B6374782E7374726F6B655265637428';
wwv_flow_imp.g_varchar2_table(303) := '2D62772F322C2D62772F322C706C6F7457696474682B62772C706C6F744865696768742B6277293B7D0A6374782E726573746F726528293B7D0A66756E6374696F6E20696E73657274417869734C6162656C7328297B706C616365686F6C6465722E6669';
wwv_flow_imp.g_varchar2_table(304) := '6E6428222E7469636B4C6162656C7322292E72656D6F766528293B7661722068746D6C3D5B273C64697620636C6173733D227469636B4C6162656C7322207374796C653D22666F6E742D73697A653A736D616C6C6572223E275D3B76617220617865733D';
wwv_flow_imp.g_varchar2_table(305) := '616C6C4178657328293B666F7228766172206A3D303B6A3C617865732E6C656E6774683B2B2B6A297B76617220617869733D617865735B6A5D2C626F783D617869732E626F783B69662821617869732E73686F77290A636F6E74696E75653B68746D6C2E';
wwv_flow_imp.g_varchar2_table(306) := '7075736828273C64697620636C6173733D22272B617869732E646972656374696F6E2B274178697320272B617869732E646972656374696F6E2B617869732E6E2B274178697322207374796C653D22636F6C6F723A272B617869732E6F7074696F6E732E';
wwv_flow_imp.g_varchar2_table(307) := '636F6C6F722B27223E27293B666F722876617220693D303B693C617869732E7469636B732E6C656E6774683B2B2B69297B766172207469636B3D617869732E7469636B735B695D3B696628217469636B2E6C6162656C7C7C7469636B2E763C617869732E';
wwv_flow_imp.g_varchar2_table(308) := '6D696E7C7C7469636B2E763E617869732E6D6178290A636F6E74696E75653B76617220706F733D7B7D2C616C69676E3B696628617869732E646972656374696F6E3D3D227822297B616C69676E3D2263656E746572223B706F732E6C6566743D4D617468';
wwv_flow_imp.g_varchar2_table(309) := '2E726F756E6428706C6F744F66667365742E6C6566742B617869732E703263287469636B2E76292D617869732E6C6162656C57696474682F32293B696628617869732E706F736974696F6E3D3D22626F74746F6D22290A706F732E746F703D626F782E74';
wwv_flow_imp.g_varchar2_table(310) := '6F702B626F782E70616464696E673B656C73650A706F732E626F74746F6D3D63616E7661734865696768742D28626F782E746F702B626F782E6865696768742D626F782E70616464696E67293B7D0A656C73657B706F732E746F703D4D6174682E726F75';
wwv_flow_imp.g_varchar2_table(311) := '6E6428706C6F744F66667365742E746F702B617869732E703263287469636B2E76292D617869732E6C6162656C4865696768742F32293B696628617869732E706F736974696F6E3D3D226C65667422297B706F732E72696768743D63616E766173576964';
wwv_flow_imp.g_varchar2_table(312) := '74682D28626F782E6C6566742B626F782E77696474682D626F782E70616464696E67290A616C69676E3D227269676874223B7D0A656C73657B706F732E6C6566743D626F782E6C6566742B626F782E70616464696E673B616C69676E3D226C656674223B';
wwv_flow_imp.g_varchar2_table(313) := '7D7D0A706F732E77696474683D617869732E6C6162656C57696474683B766172207374796C653D5B22706F736974696F6E3A6162736F6C757465222C22746578742D616C69676E3A222B616C69676E5D3B666F7228766172206120696E20706F73290A73';
wwv_flow_imp.g_varchar2_table(314) := '74796C652E7075736828612B223A222B706F735B615D2B22707822290A68746D6C2E7075736828273C64697620636C6173733D227469636B4C6162656C22207374796C653D22272B7374796C652E6A6F696E28273B27292B27223E272B7469636B2E6C61';
wwv_flow_imp.g_varchar2_table(315) := '62656C2B273C2F6469763E27293B7D0A68746D6C2E7075736828273C2F6469763E27293B7D0A68746D6C2E7075736828273C2F6469763E27293B706C616365686F6C6465722E617070656E642868746D6C2E6A6F696E28222229293B7D0A66756E637469';
wwv_flow_imp.g_varchar2_table(316) := '6F6E206472617753657269657328736572696573297B6966287365726965732E6C696E65732E73686F77290A647261775365726965734C696E657328736572696573293B6966287365726965732E626172732E73686F77290A6472617753657269657342';
wwv_flow_imp.g_varchar2_table(317) := '61727328736572696573293B6966287365726965732E706F696E74732E73686F77290A64726177536572696573506F696E747328736572696573293B7D0A66756E6374696F6E20647261775365726965734C696E657328736572696573297B66756E6374';
wwv_flow_imp.g_varchar2_table(318) := '696F6E20706C6F744C696E652864617461706F696E74732C786F66667365742C796F66667365742C61786973782C6178697379297B76617220706F696E74733D64617461706F696E74732E706F696E74732C70733D64617461706F696E74732E706F696E';
wwv_flow_imp.g_varchar2_table(319) := '7473697A652C70726576783D6E756C6C2C70726576793D6E756C6C3B6374782E626567696E5061746828293B666F722876617220693D70733B693C706F696E74732E6C656E6774683B692B3D7073297B7661722078313D706F696E74735B692D70735D2C';
wwv_flow_imp.g_varchar2_table(320) := '79313D706F696E74735B692D70732B315D2C78323D706F696E74735B695D2C79323D706F696E74735B692B315D3B69662878313D3D6E756C6C7C7C78323D3D6E756C6C290A636F6E74696E75653B69662879313C3D7932262679313C61786973792E6D69';
wwv_flow_imp.g_varchar2_table(321) := '6E297B69662879323C61786973792E6D696E290A636F6E74696E75653B78313D2861786973792E6D696E2D7931292F2879322D7931292A2878322D7831292B78313B79313D61786973792E6D696E3B7D0A656C73652069662879323C3D7931262679323C';
wwv_flow_imp.g_varchar2_table(322) := '61786973792E6D696E297B69662879313C61786973792E6D696E290A636F6E74696E75653B78323D2861786973792E6D696E2D7931292F2879322D7931292A2878322D7831292B78313B79323D61786973792E6D696E3B7D0A69662879313E3D79322626';
wwv_flow_imp.g_varchar2_table(323) := '79313E61786973792E6D6178297B69662879323E61786973792E6D6178290A636F6E74696E75653B78313D2861786973792E6D61782D7931292F2879322D7931292A2878322D7831292B78313B79313D61786973792E6D61783B7D0A656C736520696628';
wwv_flow_imp.g_varchar2_table(324) := '79323E3D7931262679323E61786973792E6D6178297B69662879313E61786973792E6D6178290A636F6E74696E75653B78323D2861786973792E6D61782D7931292F2879322D7931292A2878322D7831292B78313B79323D61786973792E6D61783B7D0A';
wwv_flow_imp.g_varchar2_table(325) := '69662878313C3D7832262678313C61786973782E6D696E297B69662878323C61786973782E6D696E290A636F6E74696E75653B79313D2861786973782E6D696E2D7831292F2878322D7831292A2879322D7931292B79313B78313D61786973782E6D696E';
wwv_flow_imp.g_varchar2_table(326) := '3B7D0A656C73652069662878323C3D7831262678323C61786973782E6D696E297B69662878313C61786973782E6D696E290A636F6E74696E75653B79323D2861786973782E6D696E2D7831292F2878322D7831292A2879322D7931292B79313B78323D61';
wwv_flow_imp.g_varchar2_table(327) := '786973782E6D696E3B7D0A69662878313E3D7832262678313E61786973782E6D6178297B69662878323E61786973782E6D6178290A636F6E74696E75653B79313D2861786973782E6D61782D7831292F2878322D7831292A2879322D7931292B79313B78';
wwv_flow_imp.g_varchar2_table(328) := '313D61786973782E6D61783B7D0A656C73652069662878323E3D7831262678323E61786973782E6D6178297B69662878313E61786973782E6D6178290A636F6E74696E75653B79323D2861786973782E6D61782D7831292F2878322D7831292A2879322D';
wwv_flow_imp.g_varchar2_table(329) := '7931292B79313B78323D61786973782E6D61783B7D0A6966287831213D70726576787C7C7931213D7072657679290A6374782E6D6F7665546F2861786973782E703263287831292B786F66667365742C61786973792E703263287931292B796F66667365';
wwv_flow_imp.g_varchar2_table(330) := '74293B70726576783D78323B70726576793D79323B6374782E6C696E65546F2861786973782E703263287832292B786F66667365742C61786973792E703263287932292B796F6666736574293B7D0A6374782E7374726F6B6528293B7D0A66756E637469';
wwv_flow_imp.g_varchar2_table(331) := '6F6E20706C6F744C696E65417265612864617461706F696E74732C61786973782C6178697379297B76617220706F696E74733D64617461706F696E74732E706F696E74732C70733D64617461706F696E74732E706F696E7473697A652C626F74746F6D3D';
wwv_flow_imp.g_varchar2_table(332) := '4D6174682E6D696E284D6174682E6D617828302C61786973792E6D696E292C61786973792E6D6178292C693D302C746F702C617265614F70656E3D66616C73652C79706F733D312C7365676D656E7453746172743D302C7365676D656E74456E643D303B';
wwv_flow_imp.g_varchar2_table(333) := '7768696C652874727565297B69662870733E302626693E706F696E74732E6C656E6774682B7073290A627265616B3B692B3D70733B7661722078313D706F696E74735B692D70735D2C79313D706F696E74735B692D70732B79706F735D2C78323D706F69';
wwv_flow_imp.g_varchar2_table(334) := '6E74735B695D2C79323D706F696E74735B692B79706F735D3B696628617265614F70656E297B69662870733E3026267831213D6E756C6C262678323D3D6E756C6C297B7365676D656E74456E643D693B70733D2D70733B79706F733D323B636F6E74696E';
wwv_flow_imp.g_varchar2_table(335) := '75653B7D0A69662870733C302626693D3D7365676D656E7453746172742B7073297B6374782E66696C6C28293B617265614F70656E3D66616C73653B70733D2D70733B79706F733D313B693D7365676D656E7453746172743D7365676D656E74456E642B';
wwv_flow_imp.g_varchar2_table(336) := '70733B636F6E74696E75653B7D7D0A69662878313D3D6E756C6C7C7C78323D3D6E756C6C290A636F6E74696E75653B69662878313C3D7832262678313C61786973782E6D696E297B69662878323C61786973782E6D696E290A636F6E74696E75653B7931';
wwv_flow_imp.g_varchar2_table(337) := '3D2861786973782E6D696E2D7831292F2878322D7831292A2879322D7931292B79313B78313D61786973782E6D696E3B7D0A656C73652069662878323C3D7831262678323C61786973782E6D696E297B69662878313C61786973782E6D696E290A636F6E';
wwv_flow_imp.g_varchar2_table(338) := '74696E75653B79323D2861786973782E6D696E2D7831292F2878322D7831292A2879322D7931292B79313B78323D61786973782E6D696E3B7D0A69662878313E3D7832262678313E61786973782E6D6178297B69662878323E61786973782E6D6178290A';
wwv_flow_imp.g_varchar2_table(339) := '636F6E74696E75653B79313D2861786973782E6D61782D7831292F2878322D7831292A2879322D7931292B79313B78313D61786973782E6D61783B7D0A656C73652069662878323E3D7831262678323E61786973782E6D6178297B69662878313E617869';
wwv_flow_imp.g_varchar2_table(340) := '73782E6D6178290A636F6E74696E75653B79323D2861786973782E6D61782D7831292F2878322D7831292A2879322D7931292B79313B78323D61786973782E6D61783B7D0A69662821617265614F70656E297B6374782E626567696E5061746828293B63';
wwv_flow_imp.g_varchar2_table(341) := '74782E6D6F7665546F2861786973782E703263287831292C61786973792E70326328626F74746F6D29293B617265614F70656E3D747275653B7D0A69662879313E3D61786973792E6D6178262679323E3D61786973792E6D6178297B6374782E6C696E65';
wwv_flow_imp.g_varchar2_table(342) := '546F2861786973782E703263287831292C61786973792E7032632861786973792E6D617829293B6374782E6C696E65546F2861786973782E703263287832292C61786973792E7032632861786973792E6D617829293B636F6E74696E75653B7D0A656C73';
wwv_flow_imp.g_varchar2_table(343) := '652069662879313C3D61786973792E6D696E262679323C3D61786973792E6D696E297B6374782E6C696E65546F2861786973782E703263287831292C61786973792E7032632861786973792E6D696E29293B6374782E6C696E65546F2861786973782E70';
wwv_flow_imp.g_varchar2_table(344) := '3263287832292C61786973792E7032632861786973792E6D696E29293B636F6E74696E75653B7D0A7661722078316F6C643D78312C78326F6C643D78323B69662879313C3D7932262679313C61786973792E6D696E262679323E3D61786973792E6D696E';
wwv_flow_imp.g_varchar2_table(345) := '297B78313D2861786973792E6D696E2D7931292F2879322D7931292A2878322D7831292B78313B79313D61786973792E6D696E3B7D0A656C73652069662879323C3D7931262679323C61786973792E6D696E262679313E3D61786973792E6D696E297B78';
wwv_flow_imp.g_varchar2_table(346) := '323D2861786973792E6D696E2D7931292F2879322D7931292A2878322D7831292B78313B79323D61786973792E6D696E3B7D0A69662879313E3D7932262679313E61786973792E6D6178262679323C3D61786973792E6D6178297B78313D286178697379';
wwv_flow_imp.g_varchar2_table(347) := '2E6D61782D7931292F2879322D7931292A2878322D7831292B78313B79313D61786973792E6D61783B7D0A656C73652069662879323E3D7931262679323E61786973792E6D6178262679313C3D61786973792E6D6178297B78323D2861786973792E6D61';
wwv_flow_imp.g_varchar2_table(348) := '782D7931292F2879322D7931292A2878322D7831292B78313B79323D61786973792E6D61783B7D0A6966287831213D78316F6C64297B6374782E6C696E65546F2861786973782E7032632878316F6C64292C61786973792E70326328793129293B7D0A63';
wwv_flow_imp.g_varchar2_table(349) := '74782E6C696E65546F2861786973782E703263287831292C61786973792E70326328793129293B6374782E6C696E65546F2861786973782E703263287832292C61786973792E70326328793229293B6966287832213D78326F6C64297B6374782E6C696E';
wwv_flow_imp.g_varchar2_table(350) := '65546F2861786973782E703263287832292C61786973792E70326328793229293B6374782E6C696E65546F2861786973782E7032632878326F6C64292C61786973792E70326328793229293B7D7D7D0A6374782E7361766528293B6374782E7472616E73';
wwv_flow_imp.g_varchar2_table(351) := '6C61746528706C6F744F66667365742E6C6566742C706C6F744F66667365742E746F70293B6374782E6C696E654A6F696E3D22726F756E64223B766172206C773D7365726965732E6C696E65732E6C696E6557696474682C73773D7365726965732E7368';
wwv_flow_imp.g_varchar2_table(352) := '61646F7753697A653B6966286C773E30262673773E30297B6374782E6C696E6557696474683D73773B6374782E7374726F6B655374796C653D227267626128302C302C302C302E3129223B76617220616E676C653D4D6174682E50492F31383B706C6F74';
wwv_flow_imp.g_varchar2_table(353) := '4C696E65287365726965732E64617461706F696E74732C4D6174682E73696E28616E676C65292A286C772F322B73772F32292C4D6174682E636F7328616E676C65292A286C772F322B73772F32292C7365726965732E78617869732C7365726965732E79';
wwv_flow_imp.g_varchar2_table(354) := '61786973293B6374782E6C696E6557696474683D73772F323B706C6F744C696E65287365726965732E64617461706F696E74732C4D6174682E73696E28616E676C65292A286C772F322B73772F34292C4D6174682E636F7328616E676C65292A286C772F';
wwv_flow_imp.g_varchar2_table(355) := '322B73772F34292C7365726965732E78617869732C7365726965732E7961786973293B7D0A6374782E6C696E6557696474683D6C773B6374782E7374726F6B655374796C653D7365726965732E636F6C6F723B7661722066696C6C5374796C653D676574';
wwv_flow_imp.g_varchar2_table(356) := '46696C6C5374796C65287365726965732E6C696E65732C7365726965732E636F6C6F722C302C706C6F74486569676874293B69662866696C6C5374796C65297B6374782E66696C6C5374796C653D66696C6C5374796C653B706C6F744C696E6541726561';
wwv_flow_imp.g_varchar2_table(357) := '287365726965732E64617461706F696E74732C7365726965732E78617869732C7365726965732E7961786973293B7D0A6966286C773E30290A706C6F744C696E65287365726965732E64617461706F696E74732C302C302C7365726965732E7861786973';
wwv_flow_imp.g_varchar2_table(358) := '2C7365726965732E7961786973293B6374782E726573746F726528293B7D0A66756E6374696F6E2064726177536572696573506F696E747328736572696573297B66756E6374696F6E20706C6F74506F696E74732864617461706F696E74732C72616469';
wwv_flow_imp.g_varchar2_table(359) := '75732C66696C6C5374796C652C6F66667365742C736861646F772C61786973782C61786973792C73796D626F6C297B76617220706F696E74733D64617461706F696E74732E706F696E74732C70733D64617461706F696E74732E706F696E7473697A653B';
wwv_flow_imp.g_varchar2_table(360) := '666F722876617220693D303B693C706F696E74732E6C656E6774683B692B3D7073297B76617220783D706F696E74735B695D2C793D706F696E74735B692B315D3B696628783D3D6E756C6C7C7C783C61786973782E6D696E7C7C783E61786973782E6D61';
wwv_flow_imp.g_varchar2_table(361) := '787C7C793C61786973792E6D696E7C7C793E61786973792E6D6178290A636F6E74696E75653B6374782E626567696E5061746828293B783D61786973782E7032632878293B793D61786973792E7032632879292B6F66667365743B69662873796D626F6C';
wwv_flow_imp.g_varchar2_table(362) := '3D3D22636972636C6522290A6374782E61726328782C792C7261646975732C302C736861646F773F4D6174682E50493A4D6174682E50492A322C66616C7365293B656C73650A73796D626F6C286374782C782C792C7261646975732C736861646F77293B';
wwv_flow_imp.g_varchar2_table(363) := '6374782E636C6F73655061746828293B69662866696C6C5374796C65297B6374782E66696C6C5374796C653D66696C6C5374796C653B6374782E66696C6C28293B7D0A6374782E7374726F6B6528293B7D7D0A6374782E7361766528293B6374782E7472';
wwv_flow_imp.g_varchar2_table(364) := '616E736C61746528706C6F744F66667365742E6C6566742C706C6F744F66667365742E746F70293B766172206C773D7365726965732E706F696E74732E6C696E6557696474682C73773D7365726965732E736861646F7753697A652C7261646975733D73';
wwv_flow_imp.g_varchar2_table(365) := '65726965732E706F696E74732E7261646975732C73796D626F6C3D7365726965732E706F696E74732E73796D626F6C3B6966286C773E30262673773E30297B76617220773D73772F323B6374782E6C696E6557696474683D773B6374782E7374726F6B65';
wwv_flow_imp.g_varchar2_table(366) := '5374796C653D227267626128302C302C302C302E3129223B706C6F74506F696E7473287365726965732E64617461706F696E74732C7261646975732C6E756C6C2C772B772F322C747275652C7365726965732E78617869732C7365726965732E79617869';
wwv_flow_imp.g_varchar2_table(367) := '732C73796D626F6C293B6374782E7374726F6B655374796C653D227267626128302C302C302C302E3229223B706C6F74506F696E7473287365726965732E64617461706F696E74732C7261646975732C6E756C6C2C772F322C747275652C736572696573';
wwv_flow_imp.g_varchar2_table(368) := '2E78617869732C7365726965732E79617869732C73796D626F6C293B7D0A6374782E6C696E6557696474683D6C773B6374782E7374726F6B655374796C653D7365726965732E636F6C6F723B706C6F74506F696E7473287365726965732E64617461706F';
wwv_flow_imp.g_varchar2_table(369) := '696E74732C7261646975732C67657446696C6C5374796C65287365726965732E706F696E74732C7365726965732E636F6C6F72292C302C66616C73652C7365726965732E78617869732C7365726965732E79617869732C73796D626F6C293B6374782E72';
wwv_flow_imp.g_varchar2_table(370) := '6573746F726528293B7D0A66756E6374696F6E206472617742617228782C792C622C6261724C6566742C62617252696768742C6F66667365742C66696C6C5374796C6543616C6C6261636B2C61786973782C61786973792C632C686F72697A6F6E74616C';
wwv_flow_imp.g_varchar2_table(371) := '2C6C696E655769647468297B766172206C6566742C72696768742C626F74746F6D2C746F702C647261774C6566742C6472617752696768742C64726177546F702C64726177426F74746F6D2C746D703B696628686F72697A6F6E74616C297B6472617742';
wwv_flow_imp.g_varchar2_table(372) := '6F74746F6D3D6472617752696768743D64726177546F703D747275653B647261774C6566743D66616C73653B6C6566743D623B72696768743D783B746F703D792B6261724C6566743B626F74746F6D3D792B62617252696768743B69662872696768743C';
wwv_flow_imp.g_varchar2_table(373) := '6C656674297B746D703D72696768743B72696768743D6C6566743B6C6566743D746D703B647261774C6566743D747275653B6472617752696768743D66616C73653B7D7D0A656C73657B647261774C6566743D6472617752696768743D64726177546F70';
wwv_flow_imp.g_varchar2_table(374) := '3D747275653B64726177426F74746F6D3D66616C73653B6C6566743D782B6261724C6566743B72696768743D782B62617252696768743B626F74746F6D3D623B746F703D793B696628746F703C626F74746F6D297B746D703D746F703B746F703D626F74';
wwv_flow_imp.g_varchar2_table(375) := '746F6D3B626F74746F6D3D746D703B64726177426F74746F6D3D747275653B64726177546F703D66616C73653B7D7D0A69662872696768743C61786973782E6D696E7C7C6C6566743E61786973782E6D61787C7C746F703C61786973792E6D696E7C7C62';
wwv_flow_imp.g_varchar2_table(376) := '6F74746F6D3E61786973792E6D6178290A72657475726E3B6966286C6566743C61786973782E6D696E297B6C6566743D61786973782E6D696E3B647261774C6566743D66616C73653B7D0A69662872696768743E61786973782E6D6178297B7269676874';
wwv_flow_imp.g_varchar2_table(377) := '3D61786973782E6D61783B6472617752696768743D66616C73653B7D0A696628626F74746F6D3C61786973792E6D696E297B626F74746F6D3D61786973792E6D696E3B64726177426F74746F6D3D66616C73653B7D0A696628746F703E61786973792E6D';
wwv_flow_imp.g_varchar2_table(378) := '6178297B746F703D61786973792E6D61783B64726177546F703D66616C73653B7D0A6C6566743D61786973782E703263286C656674293B626F74746F6D3D61786973792E70326328626F74746F6D293B72696768743D61786973782E7032632872696768';
wwv_flow_imp.g_varchar2_table(379) := '74293B746F703D61786973792E70326328746F70293B69662866696C6C5374796C6543616C6C6261636B297B632E626567696E5061746828293B632E6D6F7665546F286C6566742C626F74746F6D293B632E6C696E65546F286C6566742C746F70293B63';
wwv_flow_imp.g_varchar2_table(380) := '2E6C696E65546F2872696768742C746F70293B632E6C696E65546F2872696768742C626F74746F6D293B632E66696C6C5374796C653D66696C6C5374796C6543616C6C6261636B28626F74746F6D2C746F70293B632E66696C6C28293B7D0A6966286C69';
wwv_flow_imp.g_varchar2_table(381) := '6E6557696474683E30262628647261774C6566747C7C6472617752696768747C7C64726177546F707C7C64726177426F74746F6D29297B632E626567696E5061746828293B632E6D6F7665546F286C6566742C626F74746F6D2B6F6666736574293B6966';
wwv_flow_imp.g_varchar2_table(382) := '28647261774C656674290A632E6C696E65546F286C6566742C746F702B6F6666736574293B656C73650A632E6D6F7665546F286C6566742C746F702B6F6666736574293B69662864726177546F70290A632E6C696E65546F2872696768742C746F702B6F';
wwv_flow_imp.g_varchar2_table(383) := '6666736574293B656C73650A632E6D6F7665546F2872696768742C746F702B6F6666736574293B696628647261775269676874290A632E6C696E65546F2872696768742C626F74746F6D2B6F6666736574293B656C73650A632E6D6F7665546F28726967';
wwv_flow_imp.g_varchar2_table(384) := '68742C626F74746F6D2B6F6666736574293B69662864726177426F74746F6D290A632E6C696E65546F286C6566742C626F74746F6D2B6F6666736574293B656C73650A632E6D6F7665546F286C6566742C626F74746F6D2B6F6666736574293B632E7374';
wwv_flow_imp.g_varchar2_table(385) := '726F6B6528293B7D7D0A66756E6374696F6E20647261775365726965734261727328736572696573297B66756E6374696F6E20706C6F74426172732864617461706F696E74732C6261724C6566742C62617252696768742C6F66667365742C66696C6C53';
wwv_flow_imp.g_varchar2_table(386) := '74796C6543616C6C6261636B2C61786973782C6178697379297B76617220706F696E74733D64617461706F696E74732E706F696E74732C70733D64617461706F696E74732E706F696E7473697A653B666F722876617220693D303B693C706F696E74732E';
wwv_flow_imp.g_varchar2_table(387) := '6C656E6774683B692B3D7073297B696628706F696E74735B695D3D3D6E756C6C290A636F6E74696E75653B6472617742617228706F696E74735B695D2C706F696E74735B692B315D2C706F696E74735B692B325D2C6261724C6566742C62617252696768';
wwv_flow_imp.g_varchar2_table(388) := '742C6F66667365742C66696C6C5374796C6543616C6C6261636B2C61786973782C61786973792C6374782C7365726965732E626172732E686F72697A6F6E74616C2C7365726965732E626172732E6C696E655769647468293B7D7D0A6374782E73617665';
wwv_flow_imp.g_varchar2_table(389) := '28293B6374782E7472616E736C61746528706C6F744F66667365742E6C6566742C706C6F744F66667365742E746F70293B6374782E6C696E6557696474683D7365726965732E626172732E6C696E6557696474683B6374782E7374726F6B655374796C65';
wwv_flow_imp.g_varchar2_table(390) := '3D7365726965732E636F6C6F723B766172206261724C6566743D7365726965732E626172732E616C69676E3D3D226C656674223F303A2D7365726965732E626172732E62617257696474682F323B7661722066696C6C5374796C6543616C6C6261636B3D';
wwv_flow_imp.g_varchar2_table(391) := '7365726965732E626172732E66696C6C3F66756E6374696F6E28626F74746F6D2C746F70297B72657475726E2067657446696C6C5374796C65287365726965732E626172732C7365726965732E636F6C6F722C626F74746F6D2C746F70293B7D3A6E756C';
wwv_flow_imp.g_varchar2_table(392) := '6C3B706C6F7442617273287365726965732E64617461706F696E74732C6261724C6566742C6261724C6566742B7365726965732E626172732E62617257696474682C302C66696C6C5374796C6543616C6C6261636B2C7365726965732E78617869732C73';
wwv_flow_imp.g_varchar2_table(393) := '65726965732E7961786973293B6374782E726573746F726528293B7D0A66756E6374696F6E2067657446696C6C5374796C652866696C6C6F7074696F6E732C736572696573436F6C6F722C626F74746F6D2C746F70297B7661722066696C6C3D66696C6C';
wwv_flow_imp.g_varchar2_table(394) := '6F7074696F6E732E66696C6C3B6966282166696C6C290A72657475726E206E756C6C3B69662866696C6C6F7074696F6E732E66696C6C436F6C6F72290A72657475726E20676574436F6C6F724F724772616469656E742866696C6C6F7074696F6E732E66';
wwv_flow_imp.g_varchar2_table(395) := '696C6C436F6C6F722C626F74746F6D2C746F702C736572696573436F6C6F72293B76617220633D242E636F6C6F722E706172736528736572696573436F6C6F72293B632E613D747970656F662066696C6C3D3D226E756D626572223F66696C6C3A302E34';
wwv_flow_imp.g_varchar2_table(396) := '3B632E6E6F726D616C697A6528293B72657475726E20632E746F537472696E6728293B7D0A66756E6374696F6E20696E736572744C6567656E6428297B706C616365686F6C6465722E66696E6428222E6C6567656E6422292E72656D6F766528293B6966';
wwv_flow_imp.g_varchar2_table(397) := '28216F7074696F6E732E6C6567656E642E73686F77290A72657475726E3B76617220667261676D656E74733D5B5D2C726F77537461727465643D66616C73652C6C663D6F7074696F6E732E6C6567656E642E6C6162656C466F726D61747465722C732C6C';
wwv_flow_imp.g_varchar2_table(398) := '6162656C3B666F722876617220693D303B693C7365726965732E6C656E6774683B2B2B69297B733D7365726965735B695D3B6C6162656C3D732E6C6162656C3B696628216C6162656C290A636F6E74696E75653B69662869256F7074696F6E732E6C6567';
wwv_flow_imp.g_varchar2_table(399) := '656E642E6E6F436F6C756D6E733D3D30297B696628726F7753746172746564290A667261676D656E74732E7075736828273C2F74723E27293B667261676D656E74732E7075736828273C74723E27293B726F77537461727465643D747275653B7D0A6966';
wwv_flow_imp.g_varchar2_table(400) := '286C66290A6C6162656C3D6C66286C6162656C2C73293B667261676D656E74732E7075736828273C746420636C6173733D226C6567656E64436F6C6F72426F78223E3C646976207374796C653D22626F726465723A31707820736F6C696420272B6F7074';
wwv_flow_imp.g_varchar2_table(401) := '696F6E732E6C6567656E642E6C6162656C426F78426F72646572436F6C6F722B273B70616464696E673A317078223E3C646976207374796C653D2277696474683A3470783B6865696768743A303B626F726465723A35707820736F6C696420272B732E63';
wwv_flow_imp.g_varchar2_table(402) := '6F6C6F722B273B6F766572666C6F773A68696464656E223E3C2F6469763E3C2F6469763E3C2F74643E272B273C746420636C6173733D226C6567656E644C6162656C223E272B6C6162656C2B273C2F74643E27293B7D0A696628726F7753746172746564';
wwv_flow_imp.g_varchar2_table(403) := '290A667261676D656E74732E7075736828273C2F74723E27293B696628667261676D656E74732E6C656E6774683D3D30290A72657475726E3B766172207461626C653D273C7461626C65207374796C653D22666F6E742D73697A653A736D616C6C65723B';
wwv_flow_imp.g_varchar2_table(404) := '636F6C6F723A272B6F7074696F6E732E677269642E636F6C6F722B27223E272B667261676D656E74732E6A6F696E282222292B273C2F7461626C653E273B6966286F7074696F6E732E6C6567656E642E636F6E7461696E6572213D6E756C6C290A24286F';
wwv_flow_imp.g_varchar2_table(405) := '7074696F6E732E6C6567656E642E636F6E7461696E6572292E68746D6C287461626C65293B656C73657B76617220706F733D22222C703D6F7074696F6E732E6C6567656E642E706F736974696F6E2C6D3D6F7074696F6E732E6C6567656E642E6D617267';
wwv_flow_imp.g_varchar2_table(406) := '696E3B6966286D5B305D3D3D6E756C6C290A6D3D5B6D2C6D5D3B696628702E6368617241742830293D3D226E22290A706F732B3D27746F703A272B286D5B315D2B706C6F744F66667365742E746F70292B2770783B273B656C736520696628702E636861';
wwv_flow_imp.g_varchar2_table(407) := '7241742830293D3D227322290A706F732B3D27626F74746F6D3A272B286D5B315D2B706C6F744F66667365742E626F74746F6D292B2770783B273B696628702E6368617241742831293D3D226522290A706F732B3D2772696768743A272B286D5B305D2B';
wwv_flow_imp.g_varchar2_table(408) := '706C6F744F66667365742E7269676874292B2770783B273B656C736520696628702E6368617241742831293D3D227722290A706F732B3D276C6566743A272B286D5B305D2B706C6F744F66667365742E6C656674292B2770783B273B766172206C656765';
wwv_flow_imp.g_varchar2_table(409) := '6E643D2428273C64697620636C6173733D226C6567656E64223E272B7461626C652E7265706C61636528277374796C653D22272C277374796C653D22706F736974696F6E3A6162736F6C7574653B272B706F732B273B27292B273C2F6469763E27292E61';
wwv_flow_imp.g_varchar2_table(410) := '7070656E64546F28706C616365686F6C646572293B6966286F7074696F6E732E6C6567656E642E6261636B67726F756E644F706163697479213D302E30297B76617220633D6F7074696F6E732E6C6567656E642E6261636B67726F756E64436F6C6F723B';
wwv_flow_imp.g_varchar2_table(411) := '696628633D3D6E756C6C297B633D6F7074696F6E732E677269642E6261636B67726F756E64436F6C6F723B696628632626747970656F6620633D3D22737472696E6722290A633D242E636F6C6F722E70617273652863293B656C73650A633D242E636F6C';
wwv_flow_imp.g_varchar2_table(412) := '6F722E65787472616374286C6567656E642C276261636B67726F756E642D636F6C6F7227293B632E613D313B633D632E746F537472696E6728293B7D0A766172206469763D6C6567656E642E6368696C6472656E28293B2428273C646976207374796C65';
wwv_flow_imp.g_varchar2_table(413) := '3D22706F736974696F6E3A6162736F6C7574653B77696474683A272B6469762E776964746828292B2770783B6865696768743A272B6469762E68656967687428292B2770783B272B706F732B276261636B67726F756E642D636F6C6F723A272B632B273B';
wwv_flow_imp.g_varchar2_table(414) := '223E203C2F6469763E27292E70726570656E64546F286C6567656E64292E63737328276F706163697479272C6F7074696F6E732E6C6567656E642E6261636B67726F756E644F706163697479293B7D7D7D0A76617220686967686C69676874733D5B5D2C';
wwv_flow_imp.g_varchar2_table(415) := '72656472617754696D656F75743D6E756C6C3B66756E6374696F6E2066696E644E65617262794974656D286D6F757365582C6D6F757365592C73657269657346696C746572297B766172206D617844697374616E63653D6F7074696F6E732E677269642E';
wwv_flow_imp.g_varchar2_table(416) := '6D6F7573654163746976655261646975732C736D616C6C65737444697374616E63653D6D617844697374616E63652A6D617844697374616E63652B312C6974656D3D6E756C6C2C666F756E64506F696E743D66616C73652C692C6A3B666F7228693D7365';
wwv_flow_imp.g_varchar2_table(417) := '726965732E6C656E6774682D313B693E3D303B2D2D69297B6966282173657269657346696C746572287365726965735B695D29290A636F6E74696E75653B76617220733D7365726965735B695D2C61786973783D732E78617869732C61786973793D732E';
wwv_flow_imp.g_varchar2_table(418) := '79617869732C706F696E74733D732E64617461706F696E74732E706F696E74732C70733D732E64617461706F696E74732E706F696E7473697A652C6D783D61786973782E633270286D6F75736558292C6D793D61786973792E633270286D6F7573655929';
wwv_flow_imp.g_varchar2_table(419) := '2C6D6178783D6D617844697374616E63652F61786973782E7363616C652C6D6178793D6D617844697374616E63652F61786973792E7363616C653B69662861786973782E6F7074696F6E732E696E76657273655472616E73666F726D290A6D6178783D4E';
wwv_flow_imp.g_varchar2_table(420) := '756D6265722E4D41585F56414C55453B69662861786973792E6F7074696F6E732E696E76657273655472616E73666F726D290A6D6178793D4E756D6265722E4D41585F56414C55453B696628732E6C696E65732E73686F777C7C732E706F696E74732E73';
wwv_flow_imp.g_varchar2_table(421) := '686F77297B666F72286A3D303B6A3C706F696E74732E6C656E6774683B6A2B3D7073297B76617220783D706F696E74735B6A5D2C793D706F696E74735B6A2B315D3B696628783D3D6E756C6C290A636F6E74696E75653B696628782D6D783E6D6178787C';
wwv_flow_imp.g_varchar2_table(422) := '7C782D6D783C2D6D6178787C7C792D6D793E6D6178797C7C792D6D793C2D6D617879290A636F6E74696E75653B7661722064783D4D6174682E6162732861786973782E7032632878292D6D6F75736558292C64793D4D6174682E6162732861786973792E';
wwv_flow_imp.g_varchar2_table(423) := '7032632879292D6D6F75736559292C646973743D64782A64782B64792A64793B696628646973743C736D616C6C65737444697374616E6365297B736D616C6C65737444697374616E63653D646973743B6974656D3D5B692C6A2F70735D3B7D7D7D0A6966';
wwv_flow_imp.g_varchar2_table(424) := '28732E626172732E73686F772626216974656D297B766172206261724C6566743D732E626172732E616C69676E3D3D226C656674223F303A2D732E626172732E62617257696474682F322C62617252696768743D6261724C6566742B732E626172732E62';
wwv_flow_imp.g_varchar2_table(425) := '617257696474683B666F72286A3D303B6A3C706F696E74732E6C656E6774683B6A2B3D7073297B76617220783D706F696E74735B6A5D2C793D706F696E74735B6A2B315D2C623D706F696E74735B6A2B325D3B696628783D3D6E756C6C290A636F6E7469';
wwv_flow_imp.g_varchar2_table(426) := '6E75653B6966287365726965735B695D2E626172732E686F72697A6F6E74616C3F286D783C3D4D6174682E6D617828622C782926266D783E3D4D6174682E6D696E28622C782926266D793E3D792B6261724C65667426266D793C3D792B62617252696768';
wwv_flow_imp.g_varchar2_table(427) := '74293A286D783E3D782B6261724C65667426266D783C3D782B626172526967687426266D793E3D4D6174682E6D696E28622C792926266D793C3D4D6174682E6D617828622C792929290A6974656D3D5B692C6A2F70735D3B7D7D7D0A6966286974656D29';
wwv_flow_imp.g_varchar2_table(428) := '7B693D6974656D5B305D3B6A3D6974656D5B315D3B70733D7365726965735B695D2E64617461706F696E74732E706F696E7473697A653B72657475726E7B64617461706F696E743A7365726965735B695D2E64617461706F696E74732E706F696E74732E';
wwv_flow_imp.g_varchar2_table(429) := '736C696365286A2A70732C286A2B31292A7073292C64617461496E6465783A6A2C7365726965733A7365726965735B695D2C736572696573496E6465783A697D3B7D0A72657475726E206E756C6C3B7D0A66756E6374696F6E206F6E4D6F7573654D6F76';
wwv_flow_imp.g_varchar2_table(430) := '652865297B6966286F7074696F6E732E677269642E686F76657261626C65290A74726967676572436C69636B486F7665724576656E742822706C6F74686F766572222C652C66756E6374696F6E2873297B72657475726E20735B22686F76657261626C65';
wwv_flow_imp.g_varchar2_table(431) := '225D213D66616C73653B7D293B7D0A66756E6374696F6E206F6E4D6F7573654C656176652865297B6966286F7074696F6E732E677269642E686F76657261626C65290A74726967676572436C69636B486F7665724576656E742822706C6F74686F766572';
wwv_flow_imp.g_varchar2_table(432) := '222C652C66756E6374696F6E2873297B72657475726E2066616C73653B7D293B7D0A66756E6374696F6E206F6E436C69636B2865297B74726967676572436C69636B486F7665724576656E742822706C6F74636C69636B222C652C66756E6374696F6E28';
wwv_flow_imp.g_varchar2_table(433) := '73297B72657475726E20735B22636C69636B61626C65225D213D66616C73653B7D293B7D0A66756E6374696F6E2074726967676572436C69636B486F7665724576656E74286576656E746E616D652C6576656E742C73657269657346696C746572297B76';
wwv_flow_imp.g_varchar2_table(434) := '6172206F66667365743D6576656E74486F6C6465722E6F666673657428292C63616E766173583D6576656E742E70616765582D6F66667365742E6C6566742D706C6F744F66667365742E6C6566742C63616E766173593D6576656E742E70616765592D6F';
wwv_flow_imp.g_varchar2_table(435) := '66667365742E746F702D706C6F744F66667365742E746F702C706F733D63616E766173546F41786973436F6F726473287B6C6566743A63616E766173582C746F703A63616E766173597D293B706F732E70616765583D6576656E742E70616765583B706F';
wwv_flow_imp.g_varchar2_table(436) := '732E70616765593D6576656E742E70616765593B766172206974656D3D66696E644E65617262794974656D2863616E766173582C63616E766173592C73657269657346696C746572293B6966286974656D297B6974656D2E70616765583D706172736549';
wwv_flow_imp.g_varchar2_table(437) := '6E74286974656D2E7365726965732E78617869732E703263286974656D2E64617461706F696E745B305D292B6F66667365742E6C6566742B706C6F744F66667365742E6C656674293B6974656D2E70616765593D7061727365496E74286974656D2E7365';
wwv_flow_imp.g_varchar2_table(438) := '726965732E79617869732E703263286974656D2E64617461706F696E745B315D292B6F66667365742E746F702B706C6F744F66667365742E746F70293B7D0A6966286F7074696F6E732E677269642E6175746F486967686C69676874297B666F72287661';
wwv_flow_imp.g_varchar2_table(439) := '7220693D303B693C686967686C69676874732E6C656E6774683B2B2B69297B76617220683D686967686C69676874735B695D3B696628682E6175746F3D3D6576656E746E616D65262621286974656D2626682E7365726965733D3D6974656D2E73657269';
wwv_flow_imp.g_varchar2_table(440) := '65732626682E706F696E745B305D3D3D6974656D2E64617461706F696E745B305D2626682E706F696E745B315D3D3D6974656D2E64617461706F696E745B315D29290A756E686967686C6967687428682E7365726965732C682E706F696E74293B7D0A69';
wwv_flow_imp.g_varchar2_table(441) := '66286974656D290A686967686C69676874286974656D2E7365726965732C6974656D2E64617461706F696E742C6576656E746E616D65293B7D0A706C616365686F6C6465722E74726967676572286576656E746E616D652C5B706F732C6974656D5D293B';
wwv_flow_imp.g_varchar2_table(442) := '7D0A66756E6374696F6E20747269676765725265647261774F7665726C617928297B6966282172656472617754696D656F7574290A72656472617754696D656F75743D73657454696D656F757428647261774F7665726C61792C3330293B7D0A66756E63';
wwv_flow_imp.g_varchar2_table(443) := '74696F6E20647261774F7665726C617928297B72656472617754696D656F75743D6E756C6C3B6F6374782E7361766528293B6F6374782E636C6561725265637428302C302C63616E76617357696474682C63616E766173486569676874293B6F6374782E';
wwv_flow_imp.g_varchar2_table(444) := '7472616E736C61746528706C6F744F66667365742E6C6566742C706C6F744F66667365742E746F70293B76617220692C68693B666F7228693D303B693C686967686C69676874732E6C656E6774683B2B2B69297B68693D686967686C69676874735B695D';
wwv_flow_imp.g_varchar2_table(445) := '3B69662868692E7365726965732E626172732E73686F77290A64726177426172486967686C696768742868692E7365726965732C68692E706F696E74293B656C73650A64726177506F696E74486967686C696768742868692E7365726965732C68692E70';
wwv_flow_imp.g_varchar2_table(446) := '6F696E74293B7D0A6F6374782E726573746F726528293B65786563757465486F6F6B7328686F6F6B732E647261774F7665726C61792C5B6F6374785D293B7D0A66756E6374696F6E20686967686C6967687428732C706F696E742C6175746F297B696628';
wwv_flow_imp.g_varchar2_table(447) := '747970656F6620733D3D226E756D62657222290A733D7365726965735B735D3B696628747970656F6620706F696E743D3D226E756D62657222297B7661722070733D732E64617461706F696E74732E706F696E7473697A653B706F696E743D732E646174';
wwv_flow_imp.g_varchar2_table(448) := '61706F696E74732E706F696E74732E736C6963652870732A706F696E742C70732A28706F696E742B3129293B7D0A76617220693D696E6465784F66486967686C6967687428732C706F696E74293B696628693D3D2D31297B686967686C69676874732E70';
wwv_flow_imp.g_varchar2_table(449) := '757368287B7365726965733A732C706F696E743A706F696E742C6175746F3A6175746F7D293B747269676765725265647261774F7665726C617928293B7D0A656C736520696628216175746F290A686967686C69676874735B695D2E6175746F3D66616C';
wwv_flow_imp.g_varchar2_table(450) := '73653B7D0A66756E6374696F6E20756E686967686C6967687428732C706F696E74297B696628733D3D6E756C6C2626706F696E743D3D6E756C6C297B686967686C69676874733D5B5D3B747269676765725265647261774F7665726C617928293B7D0A69';
wwv_flow_imp.g_varchar2_table(451) := '6628747970656F6620733D3D226E756D62657222290A733D7365726965735B735D3B696628747970656F6620706F696E743D3D226E756D62657222290A706F696E743D732E646174615B706F696E745D3B76617220693D696E6465784F66486967686C69';
wwv_flow_imp.g_varchar2_table(452) := '67687428732C706F696E74293B69662869213D2D31297B686967686C69676874732E73706C69636528692C31293B747269676765725265647261774F7665726C617928293B7D7D0A66756E6374696F6E20696E6465784F66486967686C6967687428732C';
wwv_flow_imp.g_varchar2_table(453) := '70297B666F722876617220693D303B693C686967686C69676874732E6C656E6774683B2B2B69297B76617220683D686967686C69676874735B695D3B696628682E7365726965733D3D732626682E706F696E745B305D3D3D705B305D2626682E706F696E';
wwv_flow_imp.g_varchar2_table(454) := '745B315D3D3D705B315D290A72657475726E20693B7D0A72657475726E2D313B7D0A66756E6374696F6E2064726177506F696E74486967686C69676874287365726965732C706F696E74297B76617220783D706F696E745B305D2C793D706F696E745B31';
wwv_flow_imp.g_varchar2_table(455) := '5D2C61786973783D7365726965732E78617869732C61786973793D7365726965732E79617869733B696628783C61786973782E6D696E7C7C783E61786973782E6D61787C7C793C61786973792E6D696E7C7C793E61786973792E6D6178290A7265747572';
wwv_flow_imp.g_varchar2_table(456) := '6E3B76617220706F696E745261646975733D7365726965732E706F696E74732E7261646975732B7365726965732E706F696E74732E6C696E6557696474682F323B6F6374782E6C696E6557696474683D706F696E745261646975733B6F6374782E737472';
wwv_flow_imp.g_varchar2_table(457) := '6F6B655374796C653D242E636F6C6F722E7061727365287365726965732E636F6C6F72292E7363616C65282761272C302E35292E746F537472696E6728293B766172207261646975733D312E352A706F696E745261646975732C783D61786973782E7032';
wwv_flow_imp.g_varchar2_table(458) := '632878292C793D61786973792E7032632879293B6F6374782E626567696E5061746828293B6966287365726965732E706F696E74732E73796D626F6C3D3D22636972636C6522290A6F6374782E61726328782C792C7261646975732C302C322A4D617468';
wwv_flow_imp.g_varchar2_table(459) := '2E50492C66616C7365293B656C73650A7365726965732E706F696E74732E73796D626F6C286F6374782C782C792C7261646975732C66616C7365293B6F6374782E636C6F73655061746828293B6F6374782E7374726F6B6528293B7D0A66756E6374696F';
wwv_flow_imp.g_varchar2_table(460) := '6E2064726177426172486967686C69676874287365726965732C706F696E74297B6F6374782E6C696E6557696474683D7365726965732E626172732E6C696E6557696474683B6F6374782E7374726F6B655374796C653D242E636F6C6F722E7061727365';
wwv_flow_imp.g_varchar2_table(461) := '287365726965732E636F6C6F72292E7363616C65282761272C302E35292E746F537472696E6728293B7661722066696C6C5374796C653D242E636F6C6F722E7061727365287365726965732E636F6C6F72292E7363616C65282761272C302E35292E746F';
wwv_flow_imp.g_varchar2_table(462) := '537472696E6728293B766172206261724C6566743D7365726965732E626172732E616C69676E3D3D226C656674223F303A2D7365726965732E626172732E62617257696474682F323B6472617742617228706F696E745B305D2C706F696E745B315D2C70';
wwv_flow_imp.g_varchar2_table(463) := '6F696E745B325D7C7C302C6261724C6566742C6261724C6566742B7365726965732E626172732E62617257696474682C302C66756E6374696F6E28297B72657475726E2066696C6C5374796C653B7D2C7365726965732E78617869732C7365726965732E';
wwv_flow_imp.g_varchar2_table(464) := '79617869732C6F6374782C7365726965732E626172732E686F72697A6F6E74616C2C7365726965732E626172732E6C696E655769647468293B7D0A66756E6374696F6E20676574436F6C6F724F724772616469656E7428737065632C626F74746F6D2C74';
wwv_flow_imp.g_varchar2_table(465) := '6F702C64656661756C74436F6C6F72297B696628747970656F6620737065633D3D22737472696E6722290A72657475726E20737065633B656C73657B766172206772616469656E743D6374782E6372656174654C696E6561724772616469656E7428302C';
wwv_flow_imp.g_varchar2_table(466) := '746F702C302C626F74746F6D293B666F722876617220693D302C6C3D737065632E636F6C6F72732E6C656E6774683B693C6C3B2B2B69297B76617220633D737065632E636F6C6F72735B695D3B696628747970656F662063213D22737472696E6722297B';
wwv_flow_imp.g_varchar2_table(467) := '76617220636F3D242E636F6C6F722E70617273652864656661756C74436F6C6F72293B696628632E6272696768746E657373213D6E756C6C290A636F3D636F2E7363616C652827726762272C632E6272696768746E657373290A696628632E6F70616369';
wwv_flow_imp.g_varchar2_table(468) := '7479213D6E756C6C290A636F2E612A3D632E6F7061636974793B633D636F2E746F537472696E6728293B7D0A6772616469656E742E616464436F6C6F7253746F7028692F286C2D31292C63293B7D0A72657475726E206772616469656E743B7D7D7D0A24';
wwv_flow_imp.g_varchar2_table(469) := '2E706C6F743D66756E6374696F6E28706C616365686F6C6465722C646174612C6F7074696F6E73297B76617220706C6F743D6E657720506C6F74282428706C616365686F6C646572292C646174612C6F7074696F6E732C242E706C6F742E706C7567696E';
wwv_flow_imp.g_varchar2_table(470) := '73293B72657475726E20706C6F743B7D3B242E706C6F742E76657273696F6E3D22302E37223B242E706C6F742E706C7567696E733D5B5D3B242E706C6F742E666F726D6174446174653D66756E6374696F6E28642C666D742C6D6F6E74684E616D657329';
wwv_flow_imp.g_varchar2_table(471) := '7B766172206C6566745061643D66756E6374696F6E286E297B6E3D22222B6E3B72657475726E206E2E6C656E6774683D3D313F2230222B6E3A6E3B7D3B76617220723D5B5D3B766172206573636170653D66616C73652C7061644E6578743D66616C7365';
wwv_flow_imp.g_varchar2_table(472) := '3B76617220686F7572733D642E676574555443486F75727328293B766172206973414D3D686F7572733C31323B6966286D6F6E74684E616D65733D3D6E756C6C290A6D6F6E74684E616D65733D5B224A616E222C22466562222C224D6172222C22417072';
wwv_flow_imp.g_varchar2_table(473) := '222C224D6179222C224A756E222C224A756C222C22417567222C22536570222C224F6374222C224E6F76222C22446563225D3B696628666D742E736561726368282F25707C25502F29213D2D31297B696628686F7572733E3132297B686F7572733D686F';
wwv_flow_imp.g_varchar2_table(474) := '7572732D31323B7D656C736520696628686F7572733D3D30297B686F7572733D31323B7D7D0A666F722876617220693D303B693C666D742E6C656E6774683B2B2B69297B76617220633D666D742E6368617241742869293B696628657363617065297B73';
wwv_flow_imp.g_varchar2_table(475) := '77697463682863297B636173652768273A633D22222B686F7572733B627265616B3B636173652748273A633D6C65667450616428686F757273293B627265616B3B63617365274D273A633D6C65667450616428642E6765745554434D696E757465732829';
wwv_flow_imp.g_varchar2_table(476) := '293B627265616B3B636173652753273A633D6C65667450616428642E6765745554435365636F6E64732829293B627265616B3B636173652764273A633D22222B642E6765745554434461746528293B627265616B3B63617365276D273A633D22222B2864';
wwv_flow_imp.g_varchar2_table(477) := '2E6765745554434D6F6E746828292B31293B627265616B3B636173652779273A633D22222B642E67657455544346756C6C5965617228293B627265616B3B636173652762273A633D22222B6D6F6E74684E616D65735B642E6765745554434D6F6E746828';
wwv_flow_imp.g_varchar2_table(478) := '295D3B627265616B3B636173652770273A633D286973414D293F2822222B22616D22293A2822222B22706D22293B627265616B3B636173652750273A633D286973414D293F2822222B22414D22293A2822222B22504D22293B627265616B3B6361736527';
wwv_flow_imp.g_varchar2_table(479) := '30273A633D22223B7061644E6578743D747275653B627265616B3B7D0A6966286326267061644E657874297B633D6C6566745061642863293B7061644E6578743D66616C73653B7D0A722E707573682863293B696628217061644E657874290A65736361';
wwv_flow_imp.g_varchar2_table(480) := '70653D66616C73653B7D0A656C73657B696628633D3D222522290A6573636170653D747275653B656C73650A722E707573682863293B7D7D0A72657475726E20722E6A6F696E282222293B7D3B66756E6374696F6E20666C6F6F72496E42617365286E2C';
wwv_flow_imp.g_varchar2_table(481) := '62617365297B72657475726E20626173652A4D6174682E666C6F6F72286E2F62617365293B7D7D29286A5175657279293B';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(37522499401288427673)
,p_file_name=>'jquery.flot.min.js'
,p_mime_type=>'text/javascript'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/jquery_flot_resize_js
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A0A466C6F7420706C7567696E20666F72206175746F6D61746963616C6C7920726564726177696E6720706C6F7473207768656E2074686520706C616365686F6C6465720A73697A65206368616E6765732C20652E672E206F6E2077696E646F772072';
wwv_flow_imp.g_varchar2_table(2) := '6573697A65732E0A0A497420776F726B73206279206C697374656E696E6720666F72206368616E676573206F6E2074686520706C616365686F6C6465722064697620287468726F756768207468650A6A517565727920726573697A65206576656E742070';
wwv_flow_imp.g_varchar2_table(3) := '6C7567696E29202D206966207468652073697A65206368616E6765732C2069742077696C6C20726564726177207468650A706C6F742E0A0A546865726520617265206E6F206F7074696F6E732E20496620796F75206E65656420746F2064697361626C65';
wwv_flow_imp.g_varchar2_table(4) := '2074686520706C7567696E20666F7220736F6D650A706C6F74732C20796F752063616E206A75737420666978207468652073697A65206F6620746865697220706C616365686F6C646572732E0A2A2F0A0A0A2F2A20496E6C696E6520646570656E64656E';
wwv_flow_imp.g_varchar2_table(5) := '63793A200A202A206A517565727920726573697A65206576656E74202D2076312E31202D20332F31342F323031300A202A20687474703A2F2F62656E616C6D616E2E636F6D2F70726F6A656374732F6A71756572792D726573697A652D706C7567696E2F';
wwv_flow_imp.g_varchar2_table(6) := '0A202A200A202A20436F707972696768742028632920323031302022436F77626F79222042656E20416C6D616E0A202A204475616C206C6963656E73656420756E64657220746865204D495420616E642047504C206C6963656E7365732E0A202A206874';
wwv_flow_imp.g_varchar2_table(7) := '74703A2F2F62656E616C6D616E2E636F6D2F61626F75742F6C6963656E73652F0A202A2F0A2866756E6374696F6E28242C682C63297B76617220613D24285B5D292C653D242E726573697A653D242E657874656E6428242E726573697A652C7B7D292C69';
wwv_flow_imp.g_varchar2_table(8) := '2C6B3D2273657454696D656F7574222C6A3D22726573697A65222C643D6A2B222D7370656369616C2D6576656E74222C623D2264656C6179222C663D227468726F74746C6557696E646F77223B655B625D3D3235303B655B665D3D747275653B242E6576';
wwv_flow_imp.g_varchar2_table(9) := '656E742E7370656369616C5B6A5D3D7B73657475703A66756E6374696F6E28297B69662821655B665D2626746869735B6B5D297B72657475726E2066616C73657D766172206C3D242874686973293B613D612E616464286C293B242E6461746128746869';
wwv_flow_imp.g_varchar2_table(10) := '732C642C7B773A6C2E776964746828292C683A6C2E68656967687428297D293B696628612E6C656E6774683D3D3D31297B6728297D7D2C74656172646F776E3A66756E6374696F6E28297B69662821655B665D2626746869735B6B5D297B72657475726E';
wwv_flow_imp.g_varchar2_table(11) := '2066616C73657D766172206C3D242874686973293B613D612E6E6F74286C293B6C2E72656D6F7665446174612864293B69662821612E6C656E677468297B636C65617254696D656F75742869297D7D2C6164643A66756E6374696F6E286C297B69662821';
wwv_flow_imp.g_varchar2_table(12) := '655B665D2626746869735B6B5D297B72657475726E2066616C73657D766172206E3B66756E6374696F6E206D28732C6F2C70297B76617220713D242874686973292C723D242E6461746128746869732C64293B722E773D6F213D3D633F6F3A712E776964';
wwv_flow_imp.g_varchar2_table(13) := '746828293B722E683D70213D3D633F703A712E68656967687428293B6E2E6170706C7928746869732C617267756D656E7473297D696628242E697346756E6374696F6E286C29297B6E3D6C3B72657475726E206D7D656C73657B6E3D6C2E68616E646C65';
wwv_flow_imp.g_varchar2_table(14) := '723B6C2E68616E646C65723D6D7D7D7D3B66756E6374696F6E206728297B693D685B6B5D2866756E6374696F6E28297B612E656163682866756E6374696F6E28297B766172206E3D242874686973292C6D3D6E2E776964746828292C6C3D6E2E68656967';
wwv_flow_imp.g_varchar2_table(15) := '687428292C6F3D242E6461746128746869732C64293B6966286D213D3D6F2E777C7C6C213D3D6F2E68297B6E2E74726967676572286A2C5B6F2E773D6D2C6F2E683D6C5D297D7D293B6728297D2C655B625D297D7D29286A51756572792C74686973293B';
wwv_flow_imp.g_varchar2_table(16) := '0A0A0A2866756E6374696F6E20282429207B0A20202020766172206F7074696F6E73203D207B207D3B202F2F206E6F206F7074696F6E730A0A2020202066756E6374696F6E20696E697428706C6F7429207B0A202020202020202066756E6374696F6E20';
wwv_flow_imp.g_varchar2_table(17) := '6F6E526573697A652829207B0A20202020202020202020202076617220706C616365686F6C646572203D20706C6F742E676574506C616365686F6C64657228293B0A0A2020202020202020202020202F2F20736F6D65626F6479206D6967687420686176';
wwv_flow_imp.g_varchar2_table(18) := '652068696464656E20757320616E642077652063616E277420706C6F740A2020202020202020202020202F2F207768656E20776520646F6E27742068617665207468652064696D656E73696F6E730A20202020202020202020202069662028706C616365';
wwv_flow_imp.g_varchar2_table(19) := '686F6C6465722E77696474682829203D3D2030207C7C20706C616365686F6C6465722E6865696768742829203D3D2030290A2020202020202020202020202020202072657475726E3B0A0A202020202020202020202020706C6F742E726573697A652829';
wwv_flow_imp.g_varchar2_table(20) := '3B0A202020202020202020202020706C6F742E73657475704772696428293B0A202020202020202020202020706C6F742E6472617728293B0A20202020202020207D0A20202020202020200A202020202020202066756E6374696F6E2062696E64457665';
wwv_flow_imp.g_varchar2_table(21) := '6E747328706C6F742C206576656E74486F6C64657229207B0A202020202020202020202020706C6F742E676574506C616365686F6C64657228292E726573697A65286F6E526573697A65293B0A20202020202020207D0A0A202020202020202066756E63';
wwv_flow_imp.g_varchar2_table(22) := '74696F6E2073687574646F776E28706C6F742C206576656E74486F6C64657229207B0A202020202020202020202020706C6F742E676574506C616365686F6C64657228292E756E62696E642822726573697A65222C206F6E526573697A65293B0A202020';
wwv_flow_imp.g_varchar2_table(23) := '20202020207D0A20202020202020200A2020202020202020706C6F742E686F6F6B732E62696E644576656E74732E707573682862696E644576656E7473293B0A2020202020202020706C6F742E686F6F6B732E73687574646F776E2E7075736828736875';
wwv_flow_imp.g_varchar2_table(24) := '74646F776E293B0A202020207D0A202020200A20202020242E706C6F742E706C7567696E732E70757368287B0A2020202020202020696E69743A20696E69742C0A20202020202020206F7074696F6E733A206F7074696F6E732C0A20202020202020206E';
wwv_flow_imp.g_varchar2_table(25) := '616D653A2027726573697A65272C0A202020202020202076657273696F6E3A2027312E30270A202020207D293B0A7D29286A5175657279293B0A';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(37522499561751427676)
,p_file_name=>'jquery.flot.resize.js'
,p_mime_type=>'text/javascript'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/jquery_flot_selection_js
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A0A466C6F7420706C7567696E20666F722073656C656374696E6720726567696F6E732E0A0A54686520706C7567696E20646566696E65732074686520666F6C6C6F77696E67206F7074696F6E733A0A0A202073656C656374696F6E3A207B0A202020';
wwv_flow_imp.g_varchar2_table(2) := '206D6F64653A206E756C6C206F7220227822206F7220227922206F7220227879222C0A20202020636F6C6F723A20636F6C6F720A20207D0A0A53656C656374696F6E20737570706F727420697320656E61626C65642062792073657474696E6720746865';
wwv_flow_imp.g_varchar2_table(3) := '206D6F646520746F206F6E65206F66202278222C20227922206F720A227879222E20496E20227822206D6F64652C2074686520757365722077696C6C206F6E6C792062652061626C6520746F20737065636966792074686520782072616E67652C0A7369';
wwv_flow_imp.g_varchar2_table(4) := '6D696C61726C7920666F7220227922206D6F64652E20466F7220227879222C207468652073656C656374696F6E206265636F6D657320612072656374616E676C650A776865726520626F74682072616E6765732063616E20626520737065636966696564';
wwv_flow_imp.g_varchar2_table(5) := '2E2022636F6C6F722220697320636F6C6F72206F66207468652073656C656374696F6E0A28696620796F75206E65656420746F206368616E67652074686520636F6C6F72206C61746572206F6E2C20796F752063616E2067657420746F20697420776974';
wwv_flow_imp.g_varchar2_table(6) := '680A706C6F742E6765744F7074696F6E7328292E73656C656374696F6E2E636F6C6F72292E0A0A5768656E2073656C656374696F6E20737570706F727420697320656E61626C65642C20612022706C6F7473656C656374656422206576656E742077696C';
wwv_flow_imp.g_varchar2_table(7) := '6C2062650A656D6974746564206F6E2074686520444F4D20656C656D656E7420796F752070617373656420696E746F2074686520706C6F742066756E6374696F6E2E205468650A6576656E742068616E646C65722067657473206120706172616D657465';
wwv_flow_imp.g_varchar2_table(8) := '722077697468207468652072616E6765732073656C6563746564206F6E2074686520617865732C0A6C696B6520746869733A0A0A2020706C616365686F6C6465722E62696E642822706C6F7473656C6563746564222C2066756E6374696F6E286576656E';
wwv_flow_imp.g_varchar2_table(9) := '742C2072616E67657329207B0A20202020616C6572742822596F752073656C65637465642022202B2072616E6765732E78617869732E66726F6D202B202220746F2022202B2072616E6765732E78617869732E746F290A202020202F2F2073696D696C61';
wwv_flow_imp.g_varchar2_table(10) := '7220666F72207961786973202D2077697468206D756C7469706C6520617865732C20746865206578747261206F6E65732061726520696E0A202020202F2F207832617869732C207833617869732C202E2E2E0A20207D293B0A0A5468652022706C6F7473';
wwv_flow_imp.g_varchar2_table(11) := '656C656374656422206576656E74206973206F6E6C79206669726564207768656E207468652075736572206861732066696E69736865640A6D616B696E67207468652073656C656374696F6E2E20412022706C6F7473656C656374696E6722206576656E';
wwv_flow_imp.g_varchar2_table(12) := '7420697320666972656420647572696E67207468650A70726F636573732077697468207468652073616D6520706172616D6574657273206173207468652022706C6F7473656C656374656422206576656E742C20696E20636173650A796F752077616E74';
wwv_flow_imp.g_varchar2_table(13) := '20746F206B6E6F77207768617427732068617070656E696E67207768696C6520697427732068617070656E696E672C0A0A412022706C6F74756E73656C656374656422206576656E742077697468206E6F20617267756D656E747320697320656D697474';
wwv_flow_imp.g_varchar2_table(14) := '6564207768656E2074686520757365720A636C69636B7320746865206D6F75736520746F2072656D6F7665207468652073656C656374696F6E2E0A0A54686520706C7567696E20616C6C736F20616464732074686520666F6C6C6F77696E67206D657468';
wwv_flow_imp.g_varchar2_table(15) := '6F647320746F2074686520706C6F74206F626A6563743A0A0A2D2073657453656C656374696F6E2872616E6765732C2070726576656E744576656E74290A0A2020536574207468652073656C656374696F6E2072656374616E676C652E20546865207061';
wwv_flow_imp.g_varchar2_table(16) := '7373656420696E2072616E676573206973206F6E207468652073616D650A2020666F726D2061732072657475726E656420696E207468652022706C6F7473656C656374656422206576656E742E204966207468652073656C656374696F6E206D6F64650A';
wwv_flow_imp.g_varchar2_table(17) := '20206973202278222C20796F752073686F756C642070757420696E2065697468657220616E2078617869732072616E67652C20696620746865206D6F6465206973202279220A2020796F75206E65656420746F2070757420696E20616E20796178697320';
wwv_flow_imp.g_varchar2_table(18) := '72616E676520616E6420626F746820786178697320616E64207961786973206966207468650A202073656C656374696F6E206D6F646520697320227879222C206C696B6520746869733A0A0A2020202073657453656C656374696F6E287B207861786973';
wwv_flow_imp.g_varchar2_table(19) := '3A207B2066726F6D3A20302C20746F3A203130207D2C2079617869733A207B2066726F6D3A2034302C20746F3A203630207D207D293B0A0A202073657453656C656374696F6E2077696C6C2074726967676572207468652022706C6F7473656C65637465';
wwv_flow_imp.g_varchar2_table(20) := '6422206576656E74207768656E2063616C6C65642E2049660A2020796F7520646F6E27742077616E74207468617420746F2068617070656E2C20652E672E20696620796F7527726520696E7369646520610A202022706C6F7473656C6563746564222068';
wwv_flow_imp.g_varchar2_table(21) := '616E646C65722C2070617373207472756520617320746865207365636F6E6420706172616D657465722E20496620796F750A2020617265207573696E67206D756C7469706C6520617865732C20796F752063616E2073706563696679207468652072616E';
wwv_flow_imp.g_varchar2_table(22) := '676573206F6E20616E79206F662074686F73652C0A2020652E672E206173207832617869732F7833617869732F2E2E2E20696E7374656164206F662078617869732C2074686520706C7567696E207069636B73207468650A20206669727374206F6E6520';
wwv_flow_imp.g_varchar2_table(23) := '697420736565732E0A20200A2D20636C65617253656C656374696F6E2870726576656E744576656E74290A0A2020436C656172207468652073656C656374696F6E2072656374616E676C652E205061737320696E207472756520746F2061766F69642067';
wwv_flow_imp.g_varchar2_table(24) := '657474696E6720610A202022706C6F74756E73656C656374656422206576656E742E0A0A2D2067657453656C656374696F6E28290A0A202052657475726E73207468652063757272656E742073656C656374696F6E20696E207468652073616D6520666F';
wwv_flow_imp.g_varchar2_table(25) := '726D6174206173207468650A202022706C6F7473656C656374656422206576656E742E20496620746865726527732063757272656E746C79206E6F2073656C656374696F6E2C207468650A202066756E6374696F6E2072657475726E73206E756C6C2E0A';
wwv_flow_imp.g_varchar2_table(26) := '0A2A2F0A0A2866756E6374696F6E20282429207B0A2020202066756E6374696F6E20696E697428706C6F7429207B0A20202020202020207661722073656C656374696F6E203D207B0A2020202020202020202020202020202066697273743A207B20783A';
wwv_flow_imp.g_varchar2_table(27) := '202D312C20793A202D317D2C207365636F6E643A207B20783A202D312C20793A202D317D2C0A2020202020202020202020202020202073686F773A2066616C73652C0A202020202020202020202020202020206163746976653A2066616C73650A202020';
wwv_flow_imp.g_varchar2_table(28) := '2020202020202020207D3B0A0A20202020202020202F2F204649584D453A2054686520647261672068616E646C696E6720696D706C656D656E74656420686572652073686F756C642062650A20202020202020202F2F2061627374726163746564206F75';
wwv_flow_imp.g_varchar2_table(29) := '742C207468657265277320736F6D652073696D696C617220636F64652066726F6D2061206C69627261727920696E0A20202020202020202F2F20746865206E617669676174696F6E20706C7567696E2C20746869732073686F756C64206265206D617373';
wwv_flow_imp.g_varchar2_table(30) := '6167656420612062697420746F206669740A20202020202020202F2F2074686520466C6F7420636173657320686572652062657474657220616E64207265757365642E20446F696E67207468697320776F756C640A20202020202020202F2F206D616B65';
wwv_flow_imp.g_varchar2_table(31) := '207468697320706C7567696E206D75636820736C696D6D65722E0A202020202020202076617220736176656468616E646C657273203D207B7D3B0A0A2020202020202020766172206D6F757365557048616E646C6572203D206E756C6C3B0A2020202020';
wwv_flow_imp.g_varchar2_table(32) := '2020200A202020202020202066756E6374696F6E206F6E4D6F7573654D6F7665286529207B0A2020202020202020202020206966202873656C656374696F6E2E61637469766529207B0A2020202020202020202020202020202075706461746553656C65';
wwv_flow_imp.g_varchar2_table(33) := '6374696F6E2865293B0A202020202020202020202020202020200A20202020202020202020202020202020706C6F742E676574506C616365686F6C64657228292E747269676765722822706C6F7473656C656374696E67222C205B2067657453656C6563';
wwv_flow_imp.g_varchar2_table(34) := '74696F6E2829205D293B0A2020202020202020202020207D0A20202020202020207D0A0A202020202020202066756E6374696F6E206F6E4D6F757365446F776E286529207B0A20202020202020202020202069662028652E776869636820213D20312920';
wwv_flow_imp.g_varchar2_table(35) := '202F2F206F6E6C7920616363657074206C6566742D636C69636B0A2020202020202020202020202020202072657475726E3B0A2020202020202020202020200A2020202020202020202020202F2F2063616E63656C206F757420616E7920746578742073';
wwv_flow_imp.g_varchar2_table(36) := '656C656374696F6E730A202020202020202020202020646F63756D656E742E626F64792E666F63757328293B0A0A2020202020202020202020202F2F2070726576656E7420746578742073656C656374696F6E20616E64206472616720696E206F6C642D';
wwv_flow_imp.g_varchar2_table(37) := '7363686F6F6C2062726F77736572730A20202020202020202020202069662028646F63756D656E742E6F6E73656C656374737461727420213D3D20756E646566696E656420262620736176656468616E646C6572732E6F6E73656C656374737461727420';
wwv_flow_imp.g_varchar2_table(38) := '3D3D206E756C6C29207B0A20202020202020202020202020202020736176656468616E646C6572732E6F6E73656C6563747374617274203D20646F63756D656E742E6F6E73656C65637473746172743B0A20202020202020202020202020202020646F63';
wwv_flow_imp.g_varchar2_table(39) := '756D656E742E6F6E73656C6563747374617274203D2066756E6374696F6E202829207B2072657475726E2066616C73653B207D3B0A2020202020202020202020207D0A20202020202020202020202069662028646F63756D656E742E6F6E647261672021';
wwv_flow_imp.g_varchar2_table(40) := '3D3D20756E646566696E656420262620736176656468616E646C6572732E6F6E64726167203D3D206E756C6C29207B0A20202020202020202020202020202020736176656468616E646C6572732E6F6E64726167203D20646F63756D656E742E6F6E6472';
wwv_flow_imp.g_varchar2_table(41) := '61673B0A20202020202020202020202020202020646F63756D656E742E6F6E64726167203D2066756E6374696F6E202829207B2072657475726E2066616C73653B207D3B0A2020202020202020202020207D0A0A20202020202020202020202073657453';
wwv_flow_imp.g_varchar2_table(42) := '656C656374696F6E506F732873656C656374696F6E2E66697273742C2065293B0A0A20202020202020202020202073656C656374696F6E2E616374697665203D20747275653B0A0A2020202020202020202020202F2F2074686973206973206120626974';
wwv_flow_imp.g_varchar2_table(43) := '2073696C6C792C20627574207765206861766520746F20757365206120636C6F7375726520746F2062650A2020202020202020202020202F2F2061626C6520746F20776861636B207468652073616D652068616E646C657220616761696E0A2020202020';
wwv_flow_imp.g_varchar2_table(44) := '202020202020206D6F757365557048616E646C6572203D2066756E6374696F6E20286529207B206F6E4D6F75736555702865293B207D3B0A2020202020202020202020200A2020202020202020202020202428646F63756D656E74292E6F6E6528226D6F';
wwv_flow_imp.g_varchar2_table(45) := '7573657570222C206D6F757365557048616E646C6572293B0A20202020202020207D0A0A202020202020202066756E6374696F6E206F6E4D6F7573655570286529207B0A2020202020202020202020206D6F757365557048616E646C6572203D206E756C';
wwv_flow_imp.g_varchar2_table(46) := '6C3B0A2020202020202020202020200A2020202020202020202020202F2F20726576657274206472616720737475666620666F72206F6C642D7363686F6F6C2062726F77736572730A20202020202020202020202069662028646F63756D656E742E6F6E';
wwv_flow_imp.g_varchar2_table(47) := '73656C656374737461727420213D3D20756E646566696E6564290A20202020202020202020202020202020646F63756D656E742E6F6E73656C6563747374617274203D20736176656468616E646C6572732E6F6E73656C65637473746172743B0A202020';
wwv_flow_imp.g_varchar2_table(48) := '20202020202020202069662028646F63756D656E742E6F6E6472616720213D3D20756E646566696E6564290A20202020202020202020202020202020646F63756D656E742E6F6E64726167203D20736176656468616E646C6572732E6F6E647261673B0A';
wwv_flow_imp.g_varchar2_table(49) := '0A2020202020202020202020202F2F206E6F206D6F7265206472616767696E670A20202020202020202020202073656C656374696F6E2E616374697665203D2066616C73653B0A20202020202020202020202075706461746553656C656374696F6E2865';
wwv_flow_imp.g_varchar2_table(50) := '293B0A0A2020202020202020202020206966202873656C656374696F6E497353616E652829290A202020202020202020202020202020207472696767657253656C65637465644576656E7428293B0A202020202020202020202020656C7365207B0A2020';
wwv_flow_imp.g_varchar2_table(51) := '20202020202020202020202020202F2F207468697320636F756E7473206173206120636C6561720A20202020202020202020202020202020706C6F742E676574506C616365686F6C64657228292E747269676765722822706C6F74756E73656C65637465';
wwv_flow_imp.g_varchar2_table(52) := '64222C205B205D293B0A20202020202020202020202020202020706C6F742E676574506C616365686F6C64657228292E747269676765722822706C6F7473656C656374696E67222C205B206E756C6C205D293B0A2020202020202020202020207D0A0A20';
wwv_flow_imp.g_varchar2_table(53) := '202020202020202020202072657475726E2066616C73653B0A20202020202020207D0A0A202020202020202066756E6374696F6E2067657453656C656374696F6E2829207B0A202020202020202020202020696620282173656C656374696F6E49735361';
wwv_flow_imp.g_varchar2_table(54) := '6E652829290A2020202020202020202020202020202072657475726E206E756C6C3B0A0A2020202020202020202020207661722072203D207B7D2C206331203D2073656C656374696F6E2E66697273742C206332203D2073656C656374696F6E2E736563';
wwv_flow_imp.g_varchar2_table(55) := '6F6E643B0A202020202020202020202020242E6561636828706C6F742E6765744178657328292C2066756E6374696F6E20286E616D652C206178697329207B0A2020202020202020202020202020202069662028617869732E7573656429207B0A202020';
wwv_flow_imp.g_varchar2_table(56) := '2020202020202020202020202020202020766172207031203D20617869732E6332702863315B617869732E646972656374696F6E5D292C207032203D20617869732E6332702863325B617869732E646972656374696F6E5D293B200A2020202020202020';
wwv_flow_imp.g_varchar2_table(57) := '202020202020202020202020725B6E616D655D203D207B2066726F6D3A204D6174682E6D696E2870312C207032292C20746F3A204D6174682E6D61782870312C20703229207D3B0A202020202020202020202020202020207D0A20202020202020202020';
wwv_flow_imp.g_varchar2_table(58) := '20207D293B0A20202020202020202020202072657475726E20723B0A20202020202020207D0A0A202020202020202066756E6374696F6E207472696767657253656C65637465644576656E742829207B0A2020202020202020202020207661722072203D';
wwv_flow_imp.g_varchar2_table(59) := '2067657453656C656374696F6E28293B0A0A202020202020202020202020706C6F742E676574506C616365686F6C64657228292E747269676765722822706C6F7473656C6563746564222C205B2072205D293B0A0A2020202020202020202020202F2F20';
wwv_flow_imp.g_varchar2_table(60) := '6261636B77617264732D636F6D7061742073747566662C20746F2062652072656D6F76656420696E206675747572650A20202020202020202020202069662028722E786178697320262620722E7961786973290A20202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(61) := '706C6F742E676574506C616365686F6C64657228292E74726967676572282273656C6563746564222C205B207B2078313A20722E78617869732E66726F6D2C2079313A20722E79617869732E66726F6D2C2078323A20722E78617869732E746F2C207932';
wwv_flow_imp.g_varchar2_table(62) := '3A20722E79617869732E746F207D205D293B0A20202020202020207D0A0A202020202020202066756E6374696F6E20636C616D70286D696E2C2076616C75652C206D617829207B0A20202020202020202020202072657475726E2076616C7565203C206D';
wwv_flow_imp.g_varchar2_table(63) := '696E203F206D696E3A202876616C7565203E206D6178203F206D61783A2076616C7565293B0A20202020202020207D0A0A202020202020202066756E6374696F6E2073657453656C656374696F6E506F7328706F732C206529207B0A2020202020202020';
wwv_flow_imp.g_varchar2_table(64) := '20202020766172206F203D20706C6F742E6765744F7074696F6E7328293B0A202020202020202020202020766172206F6666736574203D20706C6F742E676574506C616365686F6C64657228292E6F666673657428293B0A202020202020202020202020';
wwv_flow_imp.g_varchar2_table(65) := '76617220706C6F744F6666736574203D20706C6F742E676574506C6F744F666673657428293B0A202020202020202020202020706F732E78203D20636C616D7028302C20652E7061676558202D206F66667365742E6C656674202D20706C6F744F666673';
wwv_flow_imp.g_varchar2_table(66) := '65742E6C6566742C20706C6F742E77696474682829293B0A202020202020202020202020706F732E79203D20636C616D7028302C20652E7061676559202D206F66667365742E746F70202D20706C6F744F66667365742E746F702C20706C6F742E686569';
wwv_flow_imp.g_varchar2_table(67) := '6768742829293B0A0A202020202020202020202020696620286F2E73656C656374696F6E2E6D6F6465203D3D20227922290A20202020202020202020202020202020706F732E78203D20706F73203D3D2073656C656374696F6E2E6669727374203F2030';
wwv_flow_imp.g_varchar2_table(68) := '203A20706C6F742E776964746828293B0A0A202020202020202020202020696620286F2E73656C656374696F6E2E6D6F6465203D3D20227822290A20202020202020202020202020202020706F732E79203D20706F73203D3D2073656C656374696F6E2E';
wwv_flow_imp.g_varchar2_table(69) := '6669727374203F2030203A20706C6F742E68656967687428293B0A20202020202020207D0A0A202020202020202066756E6374696F6E2075706461746553656C656374696F6E28706F7329207B0A20202020202020202020202069662028706F732E7061';
wwv_flow_imp.g_varchar2_table(70) := '676558203D3D206E756C6C290A2020202020202020202020202020202072657475726E3B0A0A20202020202020202020202073657453656C656374696F6E506F732873656C656374696F6E2E7365636F6E642C20706F73293B0A20202020202020202020';
wwv_flow_imp.g_varchar2_table(71) := '20206966202873656C656374696F6E497353616E65282929207B0A2020202020202020202020202020202073656C656374696F6E2E73686F77203D20747275653B0A20202020202020202020202020202020706C6F742E74726967676572526564726177';
wwv_flow_imp.g_varchar2_table(72) := '4F7665726C617928293B0A2020202020202020202020207D0A202020202020202020202020656C73650A20202020202020202020202020202020636C65617253656C656374696F6E2874727565293B0A20202020202020207D0A0A202020202020202066';
wwv_flow_imp.g_varchar2_table(73) := '756E6374696F6E20636C65617253656C656374696F6E2870726576656E744576656E7429207B0A2020202020202020202020206966202873656C656374696F6E2E73686F7729207B0A2020202020202020202020202020202073656C656374696F6E2E73';
wwv_flow_imp.g_varchar2_table(74) := '686F77203D2066616C73653B0A20202020202020202020202020202020706C6F742E747269676765725265647261774F7665726C617928293B0A20202020202020202020202020202020696620282170726576656E744576656E74290A20202020202020';
wwv_flow_imp.g_varchar2_table(75) := '20202020202020202020202020706C6F742E676574506C616365686F6C64657228292E747269676765722822706C6F74756E73656C6563746564222C205B205D293B0A2020202020202020202020207D0A20202020202020207D0A0A2020202020202020';
wwv_flow_imp.g_varchar2_table(76) := '2F2F2066756E6374696F6E2074616B656E2066726F6D206D61726B696E677320737570706F727420696E20466C6F740A202020202020202066756E6374696F6E206578747261637452616E67652872616E6765732C20636F6F726429207B0A2020202020';
wwv_flow_imp.g_varchar2_table(77) := '2020202020202076617220617869732C2066726F6D2C20746F2C206B65792C2061786573203D20706C6F742E6765744178657328293B0A0A202020202020202020202020666F722028766172206B20696E206178657329207B0A20202020202020202020';
wwv_flow_imp.g_varchar2_table(78) := '20202020202061786973203D20617865735B6B5D3B0A2020202020202020202020202020202069662028617869732E646972656374696F6E203D3D20636F6F726429207B0A20202020202020202020202020202020202020206B6579203D20636F6F7264';
wwv_flow_imp.g_varchar2_table(79) := '202B20617869732E6E202B202261786973223B0A2020202020202020202020202020202020202020696620282172616E6765735B6B65795D20262620617869732E6E203D3D2031290A2020202020202020202020202020202020202020202020206B6579';
wwv_flow_imp.g_varchar2_table(80) := '203D20636F6F7264202B202261786973223B202F2F20737570706F7274207831617869732061732078617869730A20202020202020202020202020202020202020206966202872616E6765735B6B65795D29207B0A202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(81) := '20202020202020202066726F6D203D2072616E6765735B6B65795D2E66726F6D3B0A202020202020202020202020202020202020202020202020746F203D2072616E6765735B6B65795D2E746F3B0A202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(82) := '202020627265616B3B0A20202020202020202020202020202020202020207D0A202020202020202020202020202020207D0A2020202020202020202020207D0A0A2020202020202020202020202F2F206261636B77617264732D636F6D70617420737475';
wwv_flow_imp.g_varchar2_table(83) := '6666202D20746F2062652072656D6F76656420696E206675747572650A202020202020202020202020696620282172616E6765735B6B65795D29207B0A2020202020202020202020202020202061786973203D20636F6F7264203D3D20227822203F2070';
wwv_flow_imp.g_varchar2_table(84) := '6C6F742E676574584178657328295B305D203A20706C6F742E676574594178657328295B305D3B0A2020202020202020202020202020202066726F6D203D2072616E6765735B636F6F7264202B202231225D3B0A20202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(85) := '746F203D2072616E6765735B636F6F7264202B202232225D3B0A2020202020202020202020207D0A0A2020202020202020202020202F2F206175746F2D7265766572736520617320616E20616464656420626F6E75730A20202020202020202020202069';
wwv_flow_imp.g_varchar2_table(86) := '66202866726F6D20213D206E756C6C20262620746F20213D206E756C6C2026262066726F6D203E20746F29207B0A2020202020202020202020202020202076617220746D70203D2066726F6D3B0A2020202020202020202020202020202066726F6D203D';
wwv_flow_imp.g_varchar2_table(87) := '20746F3B0A20202020202020202020202020202020746F203D20746D703B0A2020202020202020202020207D0A2020202020202020202020200A20202020202020202020202072657475726E207B2066726F6D3A2066726F6D2C20746F3A20746F2C2061';
wwv_flow_imp.g_varchar2_table(88) := '7869733A2061786973207D3B0A20202020202020207D0A20202020202020200A202020202020202066756E6374696F6E2073657453656C656374696F6E2872616E6765732C2070726576656E744576656E7429207B0A2020202020202020202020207661';
wwv_flow_imp.g_varchar2_table(89) := '7220617869732C2072616E67652C206F203D20706C6F742E6765744F7074696F6E7328293B0A0A202020202020202020202020696620286F2E73656C656374696F6E2E6D6F6465203D3D2022792229207B0A202020202020202020202020202020207365';
wwv_flow_imp.g_varchar2_table(90) := '6C656374696F6E2E66697273742E78203D20303B0A2020202020202020202020202020202073656C656374696F6E2E7365636F6E642E78203D20706C6F742E776964746828293B0A2020202020202020202020207D0A202020202020202020202020656C';
wwv_flow_imp.g_varchar2_table(91) := '7365207B0A2020202020202020202020202020202072616E6765203D206578747261637452616E67652872616E6765732C20227822293B0A0A2020202020202020202020202020202073656C656374696F6E2E66697273742E78203D2072616E67652E61';
wwv_flow_imp.g_varchar2_table(92) := '7869732E7032632872616E67652E66726F6D293B0A2020202020202020202020202020202073656C656374696F6E2E7365636F6E642E78203D2072616E67652E617869732E7032632872616E67652E746F293B0A2020202020202020202020207D0A0A20';
wwv_flow_imp.g_varchar2_table(93) := '2020202020202020202020696620286F2E73656C656374696F6E2E6D6F6465203D3D2022782229207B0A2020202020202020202020202020202073656C656374696F6E2E66697273742E79203D20303B0A2020202020202020202020202020202073656C';
wwv_flow_imp.g_varchar2_table(94) := '656374696F6E2E7365636F6E642E79203D20706C6F742E68656967687428293B0A2020202020202020202020207D0A202020202020202020202020656C7365207B0A2020202020202020202020202020202072616E6765203D206578747261637452616E';
wwv_flow_imp.g_varchar2_table(95) := '67652872616E6765732C20227922293B0A0A2020202020202020202020202020202073656C656374696F6E2E66697273742E79203D2072616E67652E617869732E7032632872616E67652E66726F6D293B0A202020202020202020202020202020207365';
wwv_flow_imp.g_varchar2_table(96) := '6C656374696F6E2E7365636F6E642E79203D2072616E67652E617869732E7032632872616E67652E746F293B0A2020202020202020202020207D0A0A20202020202020202020202073656C656374696F6E2E73686F77203D20747275653B0A2020202020';
wwv_flow_imp.g_varchar2_table(97) := '20202020202020706C6F742E747269676765725265647261774F7665726C617928293B0A202020202020202020202020696620282170726576656E744576656E742026262073656C656374696F6E497353616E652829290A202020202020202020202020';
wwv_flow_imp.g_varchar2_table(98) := '202020207472696767657253656C65637465644576656E7428293B0A20202020202020207D0A0A202020202020202066756E6374696F6E2073656C656374696F6E497353616E652829207B0A202020202020202020202020766172206D696E53697A6520';
wwv_flow_imp.g_varchar2_table(99) := '3D20353B0A20202020202020202020202072657475726E204D6174682E6162732873656C656374696F6E2E7365636F6E642E78202D2073656C656374696F6E2E66697273742E7829203E3D206D696E53697A652026260A20202020202020202020202020';
wwv_flow_imp.g_varchar2_table(100) := '2020204D6174682E6162732873656C656374696F6E2E7365636F6E642E79202D2073656C656374696F6E2E66697273742E7929203E3D206D696E53697A653B0A20202020202020207D0A0A2020202020202020706C6F742E636C65617253656C65637469';
wwv_flow_imp.g_varchar2_table(101) := '6F6E203D20636C65617253656C656374696F6E3B0A2020202020202020706C6F742E73657453656C656374696F6E203D2073657453656C656374696F6E3B0A2020202020202020706C6F742E67657453656C656374696F6E203D2067657453656C656374';
wwv_flow_imp.g_varchar2_table(102) := '696F6E3B0A0A2020202020202020706C6F742E686F6F6B732E62696E644576656E74732E707573682866756E6374696F6E28706C6F742C206576656E74486F6C64657229207B0A202020202020202020202020766172206F203D20706C6F742E6765744F';
wwv_flow_imp.g_varchar2_table(103) := '7074696F6E7328293B0A202020202020202020202020696620286F2E73656C656374696F6E2E6D6F646520213D206E756C6C29207B0A202020202020202020202020202020206576656E74486F6C6465722E6D6F7573656D6F7665286F6E4D6F7573654D';
wwv_flow_imp.g_varchar2_table(104) := '6F7665293B0A202020202020202020202020202020206576656E74486F6C6465722E6D6F757365646F776E286F6E4D6F757365446F776E293B0A2020202020202020202020207D0A20202020202020207D293B0A0A0A2020202020202020706C6F742E68';
wwv_flow_imp.g_varchar2_table(105) := '6F6F6B732E647261774F7665726C61792E707573682866756E6374696F6E2028706C6F742C2063747829207B0A2020202020202020202020202F2F20647261772073656C656374696F6E0A2020202020202020202020206966202873656C656374696F6E';
wwv_flow_imp.g_varchar2_table(106) := '2E73686F772026262073656C656374696F6E497353616E65282929207B0A2020202020202020202020202020202076617220706C6F744F6666736574203D20706C6F742E676574506C6F744F666673657428293B0A202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(107) := '20766172206F203D20706C6F742E6765744F7074696F6E7328293B0A0A202020202020202020202020202020206374782E7361766528293B0A202020202020202020202020202020206374782E7472616E736C61746528706C6F744F66667365742E6C65';
wwv_flow_imp.g_varchar2_table(108) := '66742C20706C6F744F66667365742E746F70293B0A0A202020202020202020202020202020207661722063203D20242E636F6C6F722E7061727365286F2E73656C656374696F6E2E636F6C6F72293B0A0A20202020202020202020202020202020637478';
wwv_flow_imp.g_varchar2_table(109) := '2E7374726F6B655374796C65203D20632E7363616C65282761272C20302E38292E746F537472696E6728293B0A202020202020202020202020202020206374782E6C696E655769647468203D20313B0A202020202020202020202020202020206374782E';
wwv_flow_imp.g_varchar2_table(110) := '6C696E654A6F696E203D2022726F756E64223B0A202020202020202020202020202020206374782E66696C6C5374796C65203D20632E7363616C65282761272C20302E34292E746F537472696E6728293B0A0A2020202020202020202020202020202076';
wwv_flow_imp.g_varchar2_table(111) := '61722078203D204D6174682E6D696E2873656C656374696F6E2E66697273742E782C2073656C656374696F6E2E7365636F6E642E78292C0A202020202020202020202020202020202020202079203D204D6174682E6D696E2873656C656374696F6E2E66';
wwv_flow_imp.g_varchar2_table(112) := '697273742E792C2073656C656374696F6E2E7365636F6E642E79292C0A202020202020202020202020202020202020202077203D204D6174682E6162732873656C656374696F6E2E7365636F6E642E78202D2073656C656374696F6E2E66697273742E78';
wwv_flow_imp.g_varchar2_table(113) := '292C0A202020202020202020202020202020202020202068203D204D6174682E6162732873656C656374696F6E2E7365636F6E642E79202D2073656C656374696F6E2E66697273742E79293B0A0A202020202020202020202020202020206374782E6669';
wwv_flow_imp.g_varchar2_table(114) := '6C6C5265637428782C20792C20772C2068293B0A202020202020202020202020202020206374782E7374726F6B655265637428782C20792C20772C2068293B0A0A202020202020202020202020202020206374782E726573746F726528293B0A20202020';
wwv_flow_imp.g_varchar2_table(115) := '20202020202020207D0A20202020202020207D293B0A20202020202020200A2020202020202020706C6F742E686F6F6B732E73687574646F776E2E707573682866756E6374696F6E2028706C6F742C206576656E74486F6C64657229207B0A2020202020';
wwv_flow_imp.g_varchar2_table(116) := '202020202020206576656E74486F6C6465722E756E62696E6428226D6F7573656D6F7665222C206F6E4D6F7573654D6F7665293B0A2020202020202020202020206576656E74486F6C6465722E756E62696E6428226D6F757365646F776E222C206F6E4D';
wwv_flow_imp.g_varchar2_table(117) := '6F757365446F776E293B0A2020202020202020202020200A202020202020202020202020696620286D6F757365557048616E646C6572290A202020202020202020202020202020202428646F63756D656E74292E756E62696E6428226D6F757365757022';
wwv_flow_imp.g_varchar2_table(118) := '2C206D6F757365557048616E646C6572293B0A20202020202020207D293B0A0A202020207D0A0A20202020242E706C6F742E706C7567696E732E70757368287B0A2020202020202020696E69743A20696E69742C0A20202020202020206F7074696F6E73';
wwv_flow_imp.g_varchar2_table(119) := '3A207B0A20202020202020202020202073656C656374696F6E3A207B0A202020202020202020202020202020206D6F64653A206E756C6C2C202F2F206F6E65206F66206E756C6C2C202278222C20227922206F7220227879220A20202020202020202020';
wwv_flow_imp.g_varchar2_table(120) := '202020202020636F6C6F723A202223653863666163220A2020202020202020202020207D0A20202020202020207D2C0A20202020202020206E616D653A202773656C656374696F6E272C0A202020202020202076657273696F6E3A2027312E31270A2020';
wwv_flow_imp.g_varchar2_table(121) := '20207D293B0A7D29286A5175657279293B0A';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(37522499850144427680)
,p_file_name=>'jquery.flot.selection.js'
,p_mime_type=>'text/javascript'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/blue_marker_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000040000000240806000000390C3C920000001974455874536F6674776172650041646F626520496D616765526561647971C9653C0000036869545874584D4C3A636F6D2E61646F62652E786D700000000000';
wwv_flow_imp.g_varchar2_table(2) := '3C3F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A786D70746B3D2241';
wwv_flow_imp.g_varchar2_table(3) := '646F626520584D5020436F726520352E332D633031312036362E3134353636312C20323031322F30322F30362D31343A35363A32372020202020202020223E203C7264663A52444620786D6C6E733A7264663D22687474703A2F2F7777772E77332E6F72';
wwv_flow_imp.g_varchar2_table(4) := '672F313939392F30322F32322D7264662D73796E7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61626F75743D222220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E30';
wwv_flow_imp.g_varchar2_table(5) := '2F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F75726365526566232220786D6C6E733A786D703D22687474703A2F2F6E732E61646F62652E636F6D2F7861';
wwv_flow_imp.g_varchar2_table(6) := '702F312E302F2220786D704D4D3A4F726967696E616C446F63756D656E7449443D22786D702E6469643A30343830313137343037323036383131384331344530393434304539353933372220786D704D4D3A446F63756D656E7449443D22786D702E6469';
wwv_flow_imp.g_varchar2_table(7) := '643A34383845354232454636394531314531393437334131463432344234323437382220786D704D4D3A496E7374616E636549443D22786D702E6969643A34383845354232444636394531314531393437334131463432344234323437382220786D703A';
wwv_flow_imp.g_varchar2_table(8) := '43726561746F72546F6F6C3D2241646F62652050686F746F73686F702043533620284D6163696E746F736829223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E7374616E636549443D22786D702E6969643A3034383031313734';
wwv_flow_imp.g_varchar2_table(9) := '303732303638313138433134453039343430453935393337222073745265663A646F63756D656E7449443D22786D702E6469643A3034383031313734303732303638313138433134453039343430453935393337222F3E203C2F7264663A446573637269';
wwv_flow_imp.g_varchar2_table(10) := '7074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F787061636B657420656E643D2272223F3E65D4ACEB000008DE4944415478DAD4595D6C1C57153E33FB6B7BBDF6AEBDB683D3A489435A51898AAAAA40500511DA077849';
wwv_flow_imp.g_varchar2_table(11) := '416A5A09898A37D43CB4AAAA36160F3C90001214091E40885294F4210D6A4BFB5835150805A5555355948AB8F9B1E375ECFDDFF5FECFEECC5CCEB97326BE1DEF6E76E320D9237FF6F8DE73CFDEF37FEE5D6D62FE0AF478F6238E22BE85B80F31CDE369C4';
wwv_flow_imp.g_varchar2_table(12) := 'A788F710AFE54ECC5D831DFA68B1F9CB9DC6EF42FC14F1D4C37747F4B9A910CC44FD100DF9E464D9B0205536E16AC6807F2E556D1CFA0BD1174E1C48EE3805C48F7FE61D3B82387D682E1AF9FA5C04427E0D7C3A802EA999420090D416FE324C01E7AF56';
wwv_flow_imp.g_varchar2_table(13) := 'E11F57CB551CFA71FEE4175FDD510A187F7141FDFF19C44B47BF32A91D9C0E41D0A741A16E43B565A3A01A0A2C24914FD750310222411DE2C33AB42D01D77206BCFA618E089E2FFEFCE0AF778C02C65EB8E4BEFF0071EA475F9BD666C7025068D828BCD8';
wwv_flow_imp.g_varchar2_table(14) := '20F42C14CA7B7C5883F8900E6BE536FCE95F699AFA61E917F79CDE090AD041E07E85D88BF8C3930F24B4E9D1005C2FD990AD0A39A50AACE2E638FE43B48B050B1291003CF9C0948683BF1F7FE1D2DE1DA100216CDCAFFDCB87F74747666341B89C35A181';
wwv_flow_imp.g_varchar2_table(15) := '2E8F52E0B800DBDE00FDDF698C6829177C866B676301205EC473478440E4B9FFECC3BF579E3DBC475F2A5AA06B1AC6BE3349214FD6CEAE1BB098ADC26AD990E35F8886605F220289B1900C0D9DE3A365D11A0177C77CF09B73CB9427E72ABFBA6F695B7B';
wwv_flow_imp.g_varchar2_table(16) := '8026C4E35FDD13D593E8F6CD162638CD71EB360AD36C09F878A9047F5FC85CBE5EA87FBF6D5A63047AA7319A231AA2A535B49678102FE289BC8F6EFB10B0857D78361EC6BA6EC972870E006D13A0660858CA356021BDBE80340F21DE409419F4FE10CD11';
wwv_flow_imp.g_varchar2_table(17) := '0DD1D21A5A4B3C569117F124DEDB3F07D8F697EAA64FA679DA3CB9BC81BE5F6D0B58CE9701E7E7112504784063F34423CB24E50370785048104FE2BDDD15E0C7249668B4DDF4AE616263F74705946A4D4A72EFF658FF0ED134D1FA4388B0DFE141BC8827';
wwv_flow_imp.g_varchar2_table(18) := 'F1DEF60AA0545EC5380E60005B72C0497E04740F901AE99944385972C2241E1629C0906B8D9D500617CA35032CDCB545BD2DFEA0F342085D795F7C884AE4B7B95476C2A34413A0F0D19CFE987810AF4ABD45F38BDB5F0196385FA937A5DB13A8DDA51678';
wwv_flow_imp.g_varchar2_table(19) := '08A5FAF2DE18E0FC09C438023CA0B113F723CD4850936B68ADCBA78A3C89F7A6BA8B99F236D1EFD393CFE62A00F69BD55A154CB45E0B9B1972021F1286F110B40BAD7BE8E0C4BD487301F13DC42883DE2FD0DC0CD2102DADB19807F1AA204FE2BDD53E05';
wwv_flow_imp.g_varchar2_table(20) := '9C73989F11448410E10EA0F100D3E91DBAF72E49D0B6CF65CBD5E5C4647B4FD81F847080AC2464362F36001EB97F06E66646EEF9F04AFEF54BA98A5C74EFCC283C786002F64F8FC2E59C533E2D4C02784A96C9AF66B4817822E9B92D08AD0A1E50A00AA8';
wwv_flow_imp.g_varchar2_table(21) := '71FAB639FDB43CB0784EF4A80232CB9D2AAEAFFF24129A9416F4636623549B02B2150B0EA0C0077645D5D3B0CC7A69ACF74443FB30D1FD692DB5C4C88BE2FF94F9C76FD8030AEE532C4D561D52E05A39E851822B3CD5B226A28EA830E8886EF0BCE8E601';
wwv_flow_imp.g_varchar2_table(22) := 'F4F7951B99F4FC543CAE9305836852B91BFCB55212809D304C4534888675E742A46943060F409586231F657D137F35DA746CB60179D1C42B035A3CC0428E20A28851C6884770BFE221EEA37A409385CF53178F2820D097C1ECD607D05FBAD23A9B29149F';
wwv_flow_imp.g_varchar2_table(23) := '0826E218D3C2E9EFF1177D4AB96E23803FE3F38F7331E258BE8EE5147950FD3F6BBF7CE85A9FC2FB5940123646A76BC43822C2960FB0B0A283D27C8A27B80755931538C2BC2D1EEBE8057E61DDF4D293C9D51B47276371AD814D500085D7B8AFD1BAA413';
wwv_flow_imp.g_varchar2_table(24) := 'C1F5DF94B12F6443843CE8434E0E20FC300B3D8548B0F0436C718D376EB065DDB8D65831C38C202B4378BC84D6AD930D95B59F5780B6D1E87C82F85B369F7F2C3035216F7C4870CA055D3308094FD647F7A7660AD702F27BCB3E75F8933E14E063412711';
wwv_flow_imp.g_varchar2_table(25) := 'B37CE13AC661E067610CDE7C8105A973ACEB2CF824AFF37932BF8F1514BC5555D03D8DCDCF566E2C0B4CE2D29DA99C596C65EF8D088DC9D8B71D5A5A436B89C700D68FB200BB1013ECB641DE3059A6C637D0CB8C15C41A8FE539D65B9E7B1AA1E403E356';
wwv_flow_imp.g_varchar2_table(26) := '4950BFD9F73AF80871662D95921635645FE0F406964246EF728C639F68D732299A3C234E3F72B1AF9B2847D008C77D94F3805FB194CDD66E300C1EF331EDB09223D40265327D4951529BD776380B884DE3C733E995C7E2138970D84731A23B1724DAC6C7';
wwv_flow_imp.g_varchar2_table(27) := '6CC4BEC09A6F43AD6941666D8536383F60E677CB5D8005F32A29C4CA69B3C0C0B4231C2E711E773DC6E43029B2A7A41405886E8721EFD875C4EF52A9D5E743BB77A3F04E45A09B604D283E86D6AF93F50D01484B079FDF8A33DFE9F7F6476D5E448F1089';
wwv_flow_imp.g_varchar2_table(28) := 'B070634A19731BA32125C65D6FA972BE487198943879DADD4F83A2A3624E96B2AB4F45A3B144D01F917D3E2544F7EACBE61B2312BE58AE01D266FBCCFCD0C1559BBCF9A0C70B74656C445194E6496A16F32873DD4FB1EB5795CC2F7ADC0AA37236A38498';
wwv_flow_imp.g_varchar2_table(29) := 'CFE5D332BEEB6D21B3BD7B4748EF3446734443B4E2B5EF966E430135DE78B744A52BD93CA434443EA54AACB3B5A9EFA0EFF95615CB9BBD84E724C867FECD78B99E4F5D4867D250369C1A6F73F2A3771AA339A241DA3F0FD8EFBB999A3C20C78A68F7D8AC';
wwv_flow_imp.g_varchar2_table(30) := 'E6B1784B7177AA0EF4E5C69287575F6D78B710703779AC90BCF2FE446CCA17C6300872F35947E1EBD80EE31C6DE69878FD880D833F365BB0C82E3BAA343F5A8F9C61B090AEF079FEDF502C2E06FD62A41B2ED2971C2BAB4B5069D9F2DA9B40EF34465FA6';
wwv_flow_imp.g_varchar2_table(31) := 'A0F017E1F61E350C924A4DB73B086E2A4D51862DFE6FEE0B8A4A83640F227CB732E87DE61B99E49142646CF77878420E140A05C031FAF0E35B3CEFAB5E9054FA776F2FD064974FB2D01525C6AD4185EED508754205F1743EBB7A3347E63354F6C43139B7';
wwv_flow_imp.g_varchar2_table(32) := 'B5C7CD05752EBF59A52AB4787C9D13DC076CF99C92E1CDAD087FAB1CA03E6FB74BB9B3C9E4E2E3641C7CFF2B8EBD7587AEE5D41AFE5FCE05AE65339CD98BCA91D6EA37C1DD4905D0F3F4CAB5C56FBAEF77F86ED20D851C1FCA762909CE6005598326B8FE';
wwv_flow_imp.g_varchar2_table(33) := '14D03FBF9C2278F60E2B40280DCD2287839BF5FF2F82BBCFFF041800F6D2A9335ACD739E0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(37522500231145427683)
,p_file_name=>'blue_marker.png'
,p_mime_type=>'image/png'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/red_marker_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000040000000240806000000390C3C920000001974455874536F6674776172650041646F626520496D616765526561647971C9653C0000036869545874584D4C3A636F6D2E61646F62652E786D700000000000';
wwv_flow_imp.g_varchar2_table(2) := '3C3F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A786D70746B3D2241';
wwv_flow_imp.g_varchar2_table(3) := '646F626520584D5020436F726520352E332D633031312036362E3134353636312C20323031322F30322F30362D31343A35363A32372020202020202020223E203C7264663A52444620786D6C6E733A7264663D22687474703A2F2F7777772E77332E6F72';
wwv_flow_imp.g_varchar2_table(4) := '672F313939392F30322F32322D7264662D73796E7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61626F75743D222220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E30';
wwv_flow_imp.g_varchar2_table(5) := '2F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F75726365526566232220786D6C6E733A786D703D22687474703A2F2F6E732E61646F62652E636F6D2F7861';
wwv_flow_imp.g_varchar2_table(6) := '702F312E302F2220786D704D4D3A4F726967696E616C446F63756D656E7449443D22786D702E6469643A30343830313137343037323036383131384331344530393434304539353933372220786D704D4D3A446F63756D656E7449443D22786D702E6469';
wwv_flow_imp.g_varchar2_table(7) := '643A34383845354232414636394531314531393437334131463432344234323437382220786D704D4D3A496E7374616E636549443D22786D702E6969643A34383845354232394636394531314531393437334131463432344234323437382220786D703A';
wwv_flow_imp.g_varchar2_table(8) := '43726561746F72546F6F6C3D2241646F62652050686F746F73686F702043533620284D6163696E746F736829223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E7374616E636549443D22786D702E6969643A3034383031313734';
wwv_flow_imp.g_varchar2_table(9) := '303732303638313138433134453039343430453935393337222073745265663A646F63756D656E7449443D22786D702E6469643A3034383031313734303732303638313138433134453039343430453935393337222F3E203C2F7264663A446573637269';
wwv_flow_imp.g_varchar2_table(10) := '7074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F787061636B657420656E643D2272223F3EA3F16AEC000009034944415478DAD4595B6C1C67153E337BB3BDBE3BAEE3367112DAA62DA5C00BA90817218840555594422F';
wwv_flow_imp.g_varchar2_table(11) := '4011F4050A6A24782012B578E0A18D84103C80502A216895F20045D006A9AA40691FAA360A0FE5A169E2380989633BF6D66B7BAFB3BBB373F9F9CEBF679C61B25EAF6B3FD8BFF429E37FCE39FB9FFBF927C60CB55C1F011E07BE08DC0B8CC8FE07C039E0';
wwv_flow_imp.g_varchar2_table(12) := '4DE02FBB94BA42DB7419D3CDF777033F079EEC3BF4193375EF3D9418DB4DE6C0807EE9E772E44CCF907D6E820AA7DEF1B1F522D3EF566A66DB1960EAE6BDC3C04B030F7CBEBBF7C1AF10253B886271501A0DF052AA01CF25AAD7A8F8DA3F29F7FA5B65BC';
wwv_flow_imp.g_varchar2_table(13) := 'F9E11EA5FEB4AD0C1089DD1F03BF1EF9DE378DCE4FDC470694574B59A24A89A866C3F55E83CA8C1175A488BA7AC8181A26E5D4A976FE02657EF722AC4247F729F5AB6D63804B379EBF0D9C18FBC9F78DC4D818D1F212A9DC1228564823AC6AE51F636088';
wwv_flow_imp.g_varchar2_table(14) := '6870889C99EB34FDCBE3FCE2BB7728F5D2763080C93E05F600CF8F3EF52D237EEBADE45FBB4ADEE202F908731FEA34A022B8B1CFB4DED4158A8F8ED0E8534F1890757CD230F66C2703FC62E0D0C1746AEF5E722F9E27BF6AC1B1062968A83C4FE037FED6';
wwv_flow_imp.g_varchar2_table(15) := '7BFE8D7DFE9B696B15F09EA3D4DE3DC4B258E67630401C257C1FFE7DB4FF739F26EFF279C4B3492A996AE4BBC25BDFA7EAEC3C15CEBE47D6745133A5C77AA9EFBE8F53E7AE5198D0D43C3A455C4FCB60590BA74E3FFABE61FCF4634A4D6DF50878ACFFE0';
wwv_flow_imp.g_varchar2_table(16) := '274D6F760A5EAC918F02A743DB71C8AF5428FBD6DB74EDB5B72FE5A78B5F7788FA18FCCC7BFC8E69342DF3809765B02C2DB331436CF914F852E7BE7DE467E6C833E3086744806D936F95A87CF1222D4CCC4F82E600F077A028E0E703FC8E699896799897';
wwv_flow_imp.g_varchar2_table(17) := '65F8F373C43259F67630C047636E551733853EAF8B5A1D06281569F1C2242B310EE4A55684C17BE34CC3B49A27900153B04C96BDE56B00469961AA94C9430C1B0CE4B1F62642BB984358139D6AC1FF2FA6F1404BA92E32131D2B8592656AD95BDD005CEA';
wwv_flow_imp.g_varchar2_table(18) := 'BC52410F3DA63E3C57765F577AF6B4BF86006EFA3E680DF0F85C3821C377F16CE599DFDE0E293069E573E4BA0E265B143354731F79EC2552D475FB282B71A849F807F8B2A68927C98F25342FCB6059958236C0D52D6F0084E93B654C7C0A33BD5FAFC37B';
wwv_flow_imp.g_varchar2_table(19) := '0E29CCFEAAB38B063F753F87F173403F4011F0DE738307EE27D595D63CCCCB325856998D0AD9378D9EA8111F12EDAE96729A45C02BF945142C1CDCE516E6B888007482542775A3CF8F7CF6C0DDA039037C0DE811F0F3197ED77DDBA8A6651EE6D532202B';
wwv_flow_imp.g_varchar2_table(20) := '9FB538025ED9E8A8CE67E4541524010C29D4D104BC9F103AB3C9ECBE6A0D78A360D174B5648DA552962E66060F36E8E92EAEBDBBBEFA20F5DC7DD75D99D3A7FF5698F8AF66EABBE776DA79F020F5EDBF83EA9313A4B8FFF37468D7C9B32CB24B16B14C90';
wwv_flow_imp.g_varchar2_table(21) := 'BEB101A5C38A2742082B68046548B2B21E4150C654AB2EC0042796B21FFC6C24DD8D5B5F950C84B311C3405444719C9BA3DEFD7752EF9DFBF1B36254AEF2862267EE3AB9A0D1C590C762F07AD50A411687FF898794F2D7A9782CE469F66A670881979311';
wwv_flow_imp.g_varchar2_table(22) := '2304CA6346A31A80964425015FD16D79AF563300AF17AE2FD2F8D0CEAAA9AC8A6E6746A271EDF567A7C98192F15B7652ACBF5F137BF93CB90B196D20D56803B81223FFC1EBC10890C5877A619D1E4F889269A017E811A4238AC7431112AC7004D444795C';
wwv_flow_imp.g_varchar2_table(23) := '650977795A06AA52BA9AA6002FFE2CF0F24266EE1BC3A8FEB10EB444238D2890C126B78C74585EA50F362E4C3E2E439E55A42C4F9490F5487B9FC90C512825CAF227A741802DDD2D9E4F88B2AA89D162A1485002570C9816D99EEC358D8278C82CC7AE2D';
wwv_flow_imp.g_varchar2_table(24) := 'D2E303836543A5D214435B3312497DD9318C5575D79725FE20E29551F4AC324106EF1E5B87F25DA2F42DD4189CFA45F1A4D07812C6B5505E1B62982E41528CA12251C27C9CA3C5106FD308E075167835BB987D78983F83F160846268C4E3FABABBDA18A4';
wwv_flow_imp.g_varchar2_table(25) := '5C748D2A2A7FB940E0E55F38F9845267DB30404C14DD01DC261F5CFB240DE2A28C2D875F16452A92EBA628BE43F86291CA1F130325D7EA0AF188499EBDBA4C87FBFB11051DDD144B241A5C3A0A8C88F795781F0354C52217A32F78F9D0CFAEC3FBBDA2C0';
wwv_flow_imp.g_varchar2_table(26) := 'A8847F4A0E4FA2A8255FA0E7C50035C9F78037257C41F807A910D4037BAD226846869BFF007F9E5BC0105358D633BE0F0FEB1CD7F0058D8F21FC8E695C5C08340F78BFA3D4BBED0C60E29D6E512050261EF2942F46A80A6CD98B096D57A84618A1C9DC15';
wwv_flow_imp.g_varchar2_table(27) := 'FABC14C292C8F1DB89005ECF4C97E9E1A172BE437574519C5B622AF57F51B0E27D1E9ECA45AA9772041E3EE0F83A2B7FD0EE1221CF878D9412E338A230096D5AD26550F64D51D09534C949D464420650ED1AE01AF0DBD925FBE8581272D01263460C0531';
wwv_flow_imp.g_varchar2_table(28) := 'AE3BC24AE5776E781FB41C63BFF941FB5F7FC2C38B6A9122DDA25C5FA88D0583516728C78368294BBDC848EAE4436943ADE680E83A365BA727FB0AF9E15E7404856E60F210644AEBE59B1FEEFF2E6E91455C7A409B6DB3F2539350ADC9E193912830437B';
wwv_flow_imp.g_varchar2_table(29) := 'E990A18C4851F3444651FA7E4642BF1CAAFCAAD528DC6CB1E5C6E78BF4FBCEE4028E91D251602613FA677D1B85CF2A91935F20D0E88F263F522AFF210C60C9C177482A44ABB5D96406A048A1B3E4BCF3E2F56268F0597312355B5C75FF90F1E94CA6E090';
wwv_flow_imp.g_varchar2_table(30) := 'C305D1E68288C2E778FA99F7F81DD380F68FEB9CF70305F8A08BA284D3C25346C4E3F550B8F39DE302301591D5D618BE5A0404873C72C9A67F0F15F3312389288C77E8176E11DE2FE6E9924E7D3A72747D337F787CB5A5602DC924988C28DBAC66D8A264';
wwv_flow_imp.g_varchar2_table(31) := 'A0FC92FC6D8BD755AB90BF29027C91BC0ADE058E4F21A89CC2123C6F6BF033EFE1DDF347DB6B7B6BA5C18C54EB7AC4732A54DD83A168413CFE1E302B06AC84BCAED67388561110ACF11945877B4AB55D23354B6F2C966A843DFEF1673678DF0F47C14C68';
wwv_flow_imp.g_varchar2_table(32) := '7E8FCE023509F91951BA247BEE5A45AE9DFF18596BF18F3D3D57A793C36E831ACF7CB223F26E232BA8051569BF439206C1BBBABCBB2E395E08750DBFDD3CDF6804F0FA4756D1CB57F2B9C7F80F3CFF15FF9CDCA4CF72E11E3E21B520F02C87FB6589906A';
wwv_flow_imp.g_varchar2_table(33) := '68DFDFA4DF6E2B0282F5F4E565EB0BC1F3267F9B0C5261512E65A3A102678B81BCF516B8CD8C0092C3058A6737D9002A34D05C9574F0435D79D3150FD6FF041800CBD81639086136460000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(37522500521127427685)
,p_file_name=>'red_marker.png'
,p_mime_type=>'image/png'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(71983091706891800)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>187863462
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(76253536071677704)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>37167692709710
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(76253895306677704)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>37167692709710
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(76254319951677705)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>37167692709710
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(15067459878826764991)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>40388824085962
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(22550067121246689461)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'LEGACY')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(22550720952429157199)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(22553671096019690446)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(22555119190183291435)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(23301328887119504617)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(23301328955929504617)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(23537410573625541008)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36645164177410846038)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SELECT_LIST',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(37213710388688974879)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'N')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(37796714929365463898)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'PLUGIN_COM.ORACLE.APEX.D3.BARCHART51253'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', '3',
  'attribute_02', '1.333',
  'attribute_03', '480',
  'attribute_04', 'WINDOW',
  'attribute_05', 'Y',
  'attribute_06', 'Y')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(37821801240805422021)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'PLUGIN_COM.ORACLE.APEX.D3.BUBBLE.TEST'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', '1.333',
  'attribute_02', '3')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(37821981163938519533)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'PLUGIN_COM.ORACLE.APEX.D3.TREEMAP48914'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', '1.33',
  'attribute_02', '3')).to_clob
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
wwv_flow_imp_shared.create_icon_bar_item(
 p_id=>wwv_flow_imp.id(41352520851719910712)
,p_icon_sequence=>10
,p_icon_subtext=>'Administration'
,p_icon_target=>'f?p=&APP_ID.:settings:&SESSION.::&DEBUG.::::'
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond_type=>'NEVER'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_imp_shared.create_icon_bar_item(
 p_id=>wwv_flow_imp.id(44425077011527133455)
,p_icon_sequence=>20
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
prompt --application/shared_components/logic/application_processes/set_globals
begin
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(37268343332337426401)
,p_process_sequence=>1
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set globals'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*) into :STORES from oow_demo_stores;',
'',
'select count(*) into :PRODUCTS from oow_demo_items;'))
,p_process_clob_language=>'PLSQL'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/logic/application_processes/trim_all_page_items
begin
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(37001529669091192487)
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
'           rtrim( ltrim( apex_util.get_session_state( c1.item_name ) ) )',
'        );',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_version_scn=>37170573986135
);
end;
/
prompt --application/shared_components/logic/application_items/in_memory_hint
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(40520815179339651158)
,p_name=>'IN_MEMORY_HINT'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/logic/application_items/last_view
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(36863752569363377084)
,p_name=>'LAST_VIEW'
,p_protection_level=>'S'
,p_escape_on_http_output=>'N'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/logic/application_items/products
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(37268342630792404035)
,p_name=>'PRODUCTS'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/logic/application_items/r1
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(38816923155168269462)
,p_name=>'R1'
,p_protection_level=>'S'
,p_escape_on_http_output=>'N'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/logic/application_items/r2
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(38816922850320268041)
,p_name=>'R2'
,p_protection_level=>'S'
,p_escape_on_http_output=>'N'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/logic/application_items/r3
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(38816923356553269840)
,p_name=>'R3'
,p_protection_level=>'S'
,p_escape_on_http_output=>'N'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/logic/application_items/r4
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(38816923558285270407)
,p_name=>'R4'
,p_protection_level=>'S'
,p_escape_on_http_output=>'N'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/logic/application_items/r5
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(38816923759670270810)
,p_name=>'R5'
,p_protection_level=>'S'
,p_escape_on_http_output=>'N'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/logic/application_items/stores
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(37268342814731404862)
,p_name=>'STORES'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
,p_version_scn=>1
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
prompt --application/shared_components/user_interface/lovs/auto_refresh
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(38816034175957950751)
,p_lov_name=>'AUTO REFRESH'
,p_lov_query=>'.'||wwv_flow_imp.id(38816034175957950751)||'.'
,p_location=>'STATIC'
,p_version_scn=>37167692709754
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(38816191250592012703)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Every Second'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(38816034347317950752)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Every 5 seconds'
,p_lov_return_value=>'5'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(38816034557902950752)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Every 10 seconds'
,p_lov_return_value=>'10'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(38816034778457950752)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Every 30 seconds'
,p_lov_return_value=>'30'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(38816035250462952875)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'Every 1 minute'
,p_lov_return_value=>'40'
);
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(41204080843150353306)
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
,p_version_scn=>37167692709758
);
end;
/
prompt --application/shared_components/user_interface/lovs/food_types
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(36713830560628878601)
,p_lov_name=>'FOOD TYPES'
,p_lov_query=>'.'||wwv_flow_imp.id(36713830560628878601)||'.'
,p_location=>'STATIC'
,p_version_scn=>37167692709758
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(36713830765650878605)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Food'
,p_lov_return_value=>'Food'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(36713831047513878608)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Drink'
,p_lov_return_value=>'Drink'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(36713831375864878609)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Soap'
,p_lov_return_value=>'Soap'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(36713831671800878609)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'Miscellaneous'
,p_lov_return_value=>'Miscellaneous'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(13926863274597841841)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'Snacks'
,p_lov_return_value=>'Snacks'
);
end;
/
prompt --application/shared_components/user_interface/lovs/items
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(38796130547313021455)
,p_lov_name=>'ITEMS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select item_name d, id r',
'from   OOW_DEMO_items ',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>37167692709758
);
end;
/
prompt --application/shared_components/user_interface/lovs/number_of_rows_per_page
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(40832916974584907185)
,p_lov_name=>'NUMBER OF ROWS PER PAGE'
,p_lov_query=>'.'||wwv_flow_imp.id(40832916974584907185)||'.'
,p_location=>'STATIC'
,p_version_scn=>37167692709758
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(40832918372443907193)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'1'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(40832917164721907190)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'5'
,p_lov_return_value=>'5'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(40832917357156907193)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'10'
,p_lov_return_value=>'10'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(40832917568805907193)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'15'
,p_lov_return_value=>'15'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(40832917763537907193)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'20'
,p_lov_return_value=>'20'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(40832917975047907193)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'100'
,p_lov_return_value=>'100'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(40832918176167907193)
,p_lov_disp_sequence=>60
,p_lov_disp_value=>'500'
,p_lov_return_value=>'500'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(40832918559026907193)
,p_lov_disp_sequence=>80
,p_lov_disp_value=>'1,000'
,p_lov_return_value=>'1000'
);
end;
/
prompt --application/shared_components/user_interface/lovs/oow_demo_items_type
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(27761041721470794635)
,p_lov_name=>'OOW_DEMO_ITEMS.TYPE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'OOW_DEMO_ITEMS'
,p_return_column_name=>'ID'
,p_display_column_name=>'TYPE'
,p_default_sort_column_name=>'TYPE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>37167692709758
);
end;
/
prompt --application/shared_components/user_interface/lovs/oow_demo_stores_store_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(27761041502503794633)
,p_lov_name=>'OOW_DEMO_STORES.STORE_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'OOW_DEMO_STORES'
,p_return_column_name=>'ID'
,p_display_column_name=>'STORE_NAME'
,p_default_sort_column_name=>'STORE_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>37167692709758
);
end;
/
prompt --application/shared_components/user_interface/lovs/popularity_view_options_p2
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(37344126081428993370)
,p_lov_name=>'POPULARITY VIEW OPTIONS P2'
,p_lov_query=>'.'||wwv_flow_imp.id(37344126081428993370)||'.'
,p_location=>'STATIC'
,p_version_scn=>37167692709758
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(37344126426437993373)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Bubbles'
,p_lov_return_value=>'B'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(37344126749290993375)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Interactive Report'
,p_lov_return_value=>'IR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(37344127161431993375)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Treemap'
,p_lov_return_value=>'T'
);
end;
/
prompt --application/shared_components/user_interface/lovs/product_types
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(38799604455319295977)
,p_lov_name=>'PRODUCT_TYPES'
,p_lov_query=>'.'||wwv_flow_imp.id(38799604455319295977)||'.'
,p_location=>'STATIC'
,p_version_scn=>37167692709758
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(38799604752422295981)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Drink'
,p_lov_return_value=>'Drink'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(38799604964485295981)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Food'
,p_lov_return_value=>'Food'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(38799605168727295981)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Miscellaneous'
,p_lov_return_value=>'Miscellaneous'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(38799605360275295981)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Soap'
,p_lov_return_value=>'Soap'
);
end;
/
prompt --application/shared_components/user_interface/lovs/regions
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(38796925058372554770)
,p_lov_name=>'REGIONS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select region_name, id ',
'from OOW_DEMO_REGIONS ',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>37167692709758
);
end;
/
prompt --application/shared_components/user_interface/lovs/sales_history_navigation
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(13959387031438190987)
,p_lov_name=>'SALES HISTORY NAVIGATION'
,p_lov_query=>'.'||wwv_flow_imp.id(13959387031438190987)||'.'
,p_location=>'STATIC'
,p_version_scn=>37167692709758
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(13959387716240190990)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Classic Report'
,p_lov_return_value=>'50'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(13959388882631190991)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Interactive Report'
,p_lov_return_value=>'51'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14283145151386506580)
,p_lov_disp_sequence=>25
,p_lov_disp_value=>'Interactive Grid'
,p_lov_return_value=>'23'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(13959387272743190989)
,p_lov_disp_sequence=>27
,p_lov_disp_value=>'Faceted Classic Report'
,p_lov_return_value=>'13'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14284139821024005369)
,p_lov_disp_sequence=>28
,p_lov_disp_value=>'Faceted Calendar'
,p_lov_return_value=>'42'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(13959388061300190990)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Faceted Content Row'
,p_lov_return_value=>'2'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(13959388460235190991)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'Faceted Content Row with Menus'
,p_lov_return_value=>'38'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(13960417968210495673)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'Smart Search with Classic Cards'
,p_lov_return_value=>'46'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(13959894145264375531)
,p_lov_disp_sequence=>60
,p_lov_disp_value=>'Smart Search Content Row with Menu'
,p_lov_return_value=>'45'
);
end;
/
prompt --application/shared_components/user_interface/lovs/store_type
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(38796930277746759046)
,p_lov_name=>'STORE TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(38796930277746759046)||'.'
,p_location=>'STATIC'
,p_version_scn=>37167692709758
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(38796930455312759046)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Flagship'
,p_lov_return_value=>'Flagship'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(38796930668134759049)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Branch'
,p_lov_return_value=>'Branch'
);
end;
/
prompt --application/shared_components/user_interface/lovs/stores
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(38796130369907009011)
,p_lov_name=>'STORES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select STORE_NAME d, ID r',
'from   OOW_DEMO_stores',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>37167692709758
);
end;
/
prompt --application/shared_components/user_interface/lovs/storetype
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(38796012360899730665)
,p_lov_name=>'STORETYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(38796012360899730665)||'.'
,p_location=>'STATIC'
,p_version_scn=>37167692709758
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(38796012652052730666)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Branch'
,p_lov_return_value=>'Branch'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(38796012849373730666)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Flagship'
,p_lov_return_value=>'Flagship'
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe_2_weeks
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(38799626262170461243)
,p_lov_name=>'TIMEFRAME (2 WEEKS)'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select wwv_flow_lang.system_message(''N_MINUTES'',''15'') d, ',
'trim(to_char(15/(24*60),''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_MINUTES'',''30'') d, ',
'trim(to_char(30/(24*60),''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOUR'',''1'') d, ',
'trim(to_char(1/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_MINUTES'',''90'') d, ',
'trim(to_char(90/(24*60),''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''2'') d, ',
'trim(to_char(1/12,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''3'') d, ',
'trim(to_char(3/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''4'') d, ',
'trim(to_char(4/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''5'') d, ',
'trim(to_char(5/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''6'') d, ',
'trim(to_char(6/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''8'') d, ',
'trim(to_char(8/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''10'') d, ',
'trim(to_char(10/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''12'') d, ',
'trim(to_char(12/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''16'') d, ',
'trim(to_char(16/24,''00000.9999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_DAY'',''1'') d, trim(to_char(1,''00000.9999999999'')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_DAYS'',''2'') d, trim(to_char(2,''00000.9999999999'')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_DAYS'',''3'') d, trim(to_char(3,''00000.9999999999'')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_DAYS'',''4'') d, trim(to_char(4,''00000.9999999999'')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_DAYS'',''5'') d, trim(to_char(5,''00000.9999999999'')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_WEEK'',''1'') d, trim(to_char(7,''00000.9999999999'')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_WEEKS'',''2'') d, trim(to_char(14,''00000.9999999999'')) t from dual',
'order by 2'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>37167692709758
);
end;
/
prompt --application/shared_components/user_interface/lovs/truncation_options
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(38815917049134288592)
,p_lov_name=>'TRUNCATION OPTIONS'
,p_lov_query=>'.'||wwv_flow_imp.id(38815917049134288592)||'.'
,p_location=>'STATIC'
,p_version_scn=>37167692709758
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(38815917246511288594)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Retain existing history and generate additional history'
,p_lov_return_value=>'N'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(38815917446382288595)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Truncate existing sales history and generate new history'
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(41204081543285353316)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_lov_query=>'.'||wwv_flow_imp.id(41204081543285353316)||'.'
,p_location=>'STATIC'
,p_version_scn=>37167692709758
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(41204081864860353317)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allow End Users to choose Theme Style'
,p_lov_return_value=>'Yes'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(39780759288359211484)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(39781911520494635885)
,p_group_name=>'Data Generation'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(39780858241780598888)
,p_group_name=>'Regions'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(39780716619966210174)
,p_group_name=>'Reporting'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(39780713597028209169)
,p_group_name=>'Stores'
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
 p_id=>wwv_flow_imp.id(44425078801060133467)
,p_name=>' Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(13900425544307197707)
,p_short_name=>'Sales History'
,p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(13957199773808152256)
,p_short_name=>'&P18_PROCUCT_NAME.'
,p_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
,p_page_id=>18
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(13958927452620645550)
,p_short_name=>'Sales History'
,p_link=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:::'
,p_page_id=>38
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(13960057732186873183)
,p_short_name=>'Sales History'
,p_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:RP::'
,p_page_id=>50
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(13960096372110897856)
,p_short_name=>'Sales History'
,p_link=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:::'
,p_page_id=>51
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(13960207577638948445)
,p_short_name=>'Sales History'
,p_link=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:::'
,p_page_id=>45
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(13960625825448065187)
,p_short_name=>'Sales History'
,p_link=>'f?p=&APP_ID.:46:&SESSION.::&DEBUG.:::'
,p_page_id=>46
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14282435006807447948)
,p_short_name=>'Sales History'
,p_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_page_id=>23
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14284110287584997944)
,p_short_name=>'Sales History'
,p_link=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::'
,p_page_id=>42
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(24561032197579029248)
,p_short_name=>'Page Views'
,p_link=>'f?p=&APP_ID.:39:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>39
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(37354791650993392091)
,p_parent_id=>wwv_flow_imp.id(38799092163178965207)
,p_short_name=>'Recent Sales'
,p_link=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:::'
,p_page_id=>43
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38796830576292623486)
,p_short_name=>'Stores'
,p_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38796923467860504088)
,p_short_name=>'Regions'
,p_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38796923758361504089)
,p_parent_id=>wwv_flow_imp.id(38796923467860504088)
,p_short_name=>'Region'
,p_link=>'f?p=&FLOW_ID.:9:&SESSION.'
,p_page_id=>9
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38797100467661725411)
,p_short_name=>'Products'
,p_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP::'
,p_page_id=>11
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38797100756667725412)
,p_parent_id=>wwv_flow_imp.id(38797100467661725411)
,p_short_name=>'Product'
,p_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_page_id=>12
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38797116761968296176)
,p_short_name=>'Store'
,p_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38799092163178965207)
,p_short_name=>'&P3_STORE_NAME.'
,p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38799602747028283236)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38799626174661461243)
,p_short_name=>'Top Users'
,p_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_page_id=>16
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38799637755924488010)
,p_short_name=>'Activity Calendar'
,p_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
,p_page_id=>17
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38800517851982041323)
,p_short_name=>'Sales Dashboard'
,p_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38800519459860080764)
,p_short_name=>'Sales History'
,p_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::'
,p_page_id=>13
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38800557359298323758)
,p_short_name=>'Reports'
,p_link=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::'
,p_page_id=>19
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38800561774769352177)
,p_short_name=>'Sales by Region by Week'
,p_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:::'
,p_page_id=>22
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38801563673004652054)
,p_parent_id=>wwv_flow_imp.id(38799602747028283236)
,p_short_name=>'Sales History Generation Log'
,p_link=>'f?p=&APP_ID.:24:&SESSION.'
,p_page_id=>24
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38815878062833500909)
,p_short_name=>'Sales by Product and Region by Week'
,p_link=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:::'
,p_page_id=>25
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38815895859160613053)
,p_short_name=>'Sales by Store by Day'
,p_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_page_id=>20
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38815909259202675770)
,p_short_name=>'Product Availability by Store'
,p_link=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:::'
,p_page_id=>27
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38815915171956290116)
,p_short_name=>'Generate Transactions'
,p_link=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
,p_page_id=>28
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38815919677468328318)
,p_short_name=>'Generate Transaction'
,p_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::'
,p_page_id=>29
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38815924862624842319)
,p_short_name=>'Transaction'
,p_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
,p_page_id=>30
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38815929669437883019)
,p_short_name=>'Transaction Details'
,p_link=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:::'
,p_page_id=>31
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38816036646850066404)
,p_short_name=>'Table Counts'
,p_link=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:::'
,p_page_id=>32
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38816051855945291868)
,p_short_name=>'Transaction Log'
,p_link=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:::'
,p_page_id=>33
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38816376169673119535)
,p_short_name=>'Transaction Summary by Minute'
,p_link=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:::'
,p_page_id=>34
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38816380963041194556)
,p_short_name=>'Transaction Summary by Hour'
,p_link=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:::'
,p_page_id=>35
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38819360363287490277)
,p_short_name=>'Event Log'
,p_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:::'
,p_page_id=>21
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38828606754855401852)
,p_short_name=>'Reset Sample Data'
,p_link=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:::'
,p_page_id=>40
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38828616454275541665)
,p_short_name=>'Load Data Results'
,p_link=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:::'
,p_page_id=>41
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38962022914601585784)
,p_short_name=>'Remove Transaction History'
,p_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
,p_page_id=>26
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(39062624477654562292)
,p_short_name=>'&P15_REGION_NAME. Region'
,p_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_page_id=>15
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(41305530756112818856)
,p_short_name=>'Store Locations Map'
,p_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(41394273170680409774)
,p_short_name=>'About'
,p_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::'
,p_page_id=>14
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(44425079212908133470)
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
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(36297984803147869561)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(36298589065781878391)
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
,p_files_version=>65
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
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(36298589065781878391)
,p_theme_id=>42
,p_name=>'Redwood Light (dark header)'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_FILES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_css_classes=>'rw-mode-header--dark rw-mode-nav--light rw-mode-body-header--dark'
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Redwood-Theme.less'
,p_theme_roller_config=>'{"classes":["rw-mode-header--dark","rw-mode-nav--light","rw-mode-body-header--dark"],"vars":{},"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#36241067123375379568.css'
,p_theme_roller_read_only=>false
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A210D0A20436F707972696768742028632920323032302C20323032342C204F7261636C6520616E642F6F722069747320616666696C69617465732E0D0A202A2F0D0A';
wwv_flow_imp_shared.create_theme_file(
 p_id=>wwv_flow_imp.id(72590371955021294)
,p_theme_id=>42
,p_file_name=>'36241067123375379568.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A210D0A20436F707972696768742028632920323032302C20323032342C204F7261636C6520616E642F6F722069747320616666696C69617465732E0D0A202A2F0D0A';
wwv_flow_imp_shared.create_theme_file(
 p_id=>wwv_flow_imp.id(77188659986709479)
,p_theme_id=>42
,p_file_name=>'36226606587370986596.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(81546380413780434)
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
 p_id=>wwv_flow_imp.id(81550452630780437)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(81552410699780438)
,p_theme_id=>42
,p_name=>'ICON_STYLE'
,p_display_name=>'Icon Style'
,p_display_sequence=>35
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(81555615488780440)
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
 p_id=>wwv_flow_imp.id(81563904629780445)
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
 p_id=>wwv_flow_imp.id(81573933765780451)
,p_theme_id=>42
,p_name=>'RESULT_SEPARATOR'
,p_display_name=>'Result Separator'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_null_text=>'Show'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(81577947581780454)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416444191429221859)
,p_theme_id=>142
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416444463283221859)
,p_theme_id=>142
,p_name=>'DISPLAY_TYPE'
,p_display_name=>'Display Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416446418377221863)
,p_theme_id=>142
,p_name=>'REGION_STYLE'
,p_display_name=>'Region Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416446827254221864)
,p_theme_id=>142
,p_name=>'REGION_PADDING'
,p_display_name=>'Region Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416448483589221869)
,p_theme_id=>142
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Extend to Fit Contents'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416449012763221871)
,p_theme_id=>142
,p_name=>'REGION_HEADER'
,p_display_name=>'Region Header'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416449273199221871)
,p_theme_id=>142
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416450407528221871)
,p_theme_id=>142
,p_name=>'REGION_TYPE'
,p_display_name=>'Region Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Normal - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416451389938221873)
,p_theme_id=>142
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416452056604221874)
,p_theme_id=>142
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416452345586221874)
,p_theme_id=>142
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416454524192221878)
,p_theme_id=>142
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416454888901221878)
,p_theme_id=>142
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416455233948221878)
,p_theme_id=>142
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416456573430221882)
,p_theme_id=>142
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416457527994221883)
,p_theme_id=>142
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416459008517221885)
,p_theme_id=>142
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416460072329221886)
,p_theme_id=>142
,p_name=>'ICON_STYLE'
,p_display_name=>'Icon Style'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416461992008221890)
,p_theme_id=>142
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416463229673221892)
,p_theme_id=>142
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416463911484221893)
,p_theme_id=>142
,p_name=>'BREADCRUMB_DIVIDER'
,p_display_name=>'Breadcrumb Divider'
,p_display_sequence=>1
,p_template_types=>'BREADCRUMB'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416465227688221895)
,p_theme_id=>142
,p_name=>'BUTTON_TYPE'
,p_display_name=>'Button Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416465460473221895)
,p_theme_id=>142
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416465777642221895)
,p_theme_id=>142
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416466236715221896)
,p_theme_id=>142
,p_name=>'BUTTON_SIZE'
,p_display_name=>'Button Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Size'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416466507292221896)
,p_theme_id=>142
,p_name=>'BUTTON_STYLE'
,p_display_name=>'Button Style'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Style'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416466971089221896)
,p_theme_id=>142
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416467801063221896)
,p_theme_id=>142
,p_name=>'BUTTON_WIDTH'
,p_display_name=>'Button Width'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Width'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416468329228221897)
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
 p_id=>wwv_flow_imp.id(36416468746061221897)
,p_theme_id=>142
,p_name=>'FORM_LABEL_POSITION'
,p_display_name=>'Form Label Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416469068607221897)
,p_theme_id=>142
,p_name=>'FORM_ITEMS_SIZE'
,p_display_name=>'Form Items Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Size'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36416469412327221897)
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
 p_id=>wwv_flow_imp.id(36416469698381221897)
,p_theme_id=>142
,p_name=>'FORM_ITEM_PADDING'
,p_display_name=>'Form Item Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Padding'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36480668989233622162)
,p_theme_id=>142
,p_name=>'NAVIGATION_COLOR_SCHEME'
,p_display_name=>'Navigation Color Scheme'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36503420594786704902)
,p_theme_id=>142
,p_name=>'CURRENT_PAGE'
,p_display_name=>'Current Page'
,p_display_sequence=>1
,p_template_types=>'BREADCRUMB'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36662636056390276919)
,p_theme_id=>142
,p_name=>'REGION_ACCENT'
,p_display_name=>'Region Accent'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36662641947771276927)
,p_theme_id=>142
,p_name=>'LIST_STYLE'
,p_display_name=>'List Style'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36699559892759488517)
,p_theme_id=>142
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36699562252175488519)
,p_theme_id=>142
,p_name=>'DISPLAY'
,p_display_name=>'Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36699581430451488549)
,p_theme_id=>142
,p_name=>'FORM_ITEM_WIDTH'
,p_display_name=>'Form Item Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36786462411655526982)
,p_theme_id=>142
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(36789995826933884382)
,p_theme_id=>142
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
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
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(38815931759832039124)
,p_build_option_name=>'Maps'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>1
,p_build_option_comment=>'Show store locations on a map.  Including provides the ability to show store locations on a map.  Excluding removes this capability from users.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(41204077179329353289)
,p_build_option_name=>'Feature: Theme Style Selection'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>1
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>'Allow administrators to select a default color scheme (theme style) for the application. Administrators can also choose to allow end users to choose their own theme style. '
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(41205995154213003401)
,p_build_option_name=>'Feature: Configuration Options'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>1
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>'Allow application administrators to enable or disable specific functionality, associated with an Oracle APEX build option, from within the application.'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(40701644573702766027)
,p_name=>'ADMINISTRATION'
,p_message_text=>'Administration'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(40701648675434766569)
,p_name=>'HELP'
,p_message_text=>'Help'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(37344677054142502860)
,p_name=>'HELP_SIDEBAR'
,p_message_text=>'<h1 class="appNameHeader"> <img src="%0f_spacer.gif" class="appIcon %1" alt="" /> %2 </h1> <ul class="vapList"> <li> <span class="vLabel">App Version</span> <span class="vValue">%3</span> </li> <li> <span class="vLabel">Pages</span> <span class="vVal'
||'ue">%4</span> </li> <li> <span class="vLabel">Vendor</span> <span class="vValue">%5 </span> </li> </ul>'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(40701652778204767309)
,p_name=>'LOGOUT'
,p_message_text=>'Logout'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(36673752374752567935)
,p_name=>'N_DAY'
,p_message_text=>'%0 day'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(36673752573027568774)
,p_name=>'N_DAYS'
,p_message_text=>'%0 days'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(36673752770007570187)
,p_name=>'N_HOUR'
,p_message_text=>'%0 hour'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(36673752967204571413)
,p_name=>'N_HOURS'
,p_message_text=>'%0 hours'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(36673753163969572973)
,p_name=>'N_MINUTES'
,p_message_text=>'%0 minutes'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(36673753361381574116)
,p_name=>'N_WEEK'
,p_message_text=>'%0 week'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(36673753558146575683)
,p_name=>'N_WEEKS'
,p_message_text=>'%0 weeks'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(40829375459873540408)
,p_name=>'USER'
,p_message_text=>'User'
,p_version_scn=>1
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
 p_id=>wwv_flow_imp.id(40704538276752176118)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_version_scn=>37167692709792
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(44425077500209133457)
,p_name=>'APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_logout_url=>'f?p=&APP_ID.:1'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>187906107
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_content_row77208
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(27109980987515025553)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$CONTENT_ROW77208'
,p_display_name=>'Copy of Content Row'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$CONTENT_ROW77208'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <div class="t-ContentRow-wrap">',
'',
'      <div class="t-ContentRow-badge #BADGE_COL_WIDTH!ATTR#">',
'        {with/}',
'          LABEL:=',
'          VALUE:=',
'          SIZE:=#BADGE_SIZE#',
'          SHAPE:=#BADGE_SHAPE#',
'        {apply THEME$BADGE/}',
'      </div>',
'',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        <div class="t-ContentRow-overline">#OVERLINE!RAW#</div>',
'        <h3 class="t-ContentRow-title"><a href="#TITLE_LINK!ATTR#" #TITLE_LINK_ATTR!RAW#>#TITLE!RAW#</a></h3>',
'        <div class="t-ContentRow-description">#DESCRIPTION!RAW#</div>',
'      </div>',
'',
'    </div>',
'  </div>',
'',
''))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>'<ul class="t-ContentRow{if ?STYLE/} #STYLE!ATTR#{endif/}{if ?ALIGN/} #ALIGN!ATTR#{endif/}{if APPLY_THEME_COLORS/} u-colors{endif/} #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>'
,p_report_row_template=>'<li class="t-ContentRow-item{if ?ITEM_CLASSES/} #ITEM_CLASSES#{endif/}" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>'
,p_report_placeholder_count=>3
,p_standard_attributes=>'REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_version_scn=>37167710487712
,p_subscribe_plugin_settings=>true
,p_is_quick_pick=>true
,p_help_text=>'Display content in a formatted row with a title, description, and more. Supports avatars and badges. Available for a single row or as a report with multiple rows.'
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(34379256588979473878)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_title=>'Avatar'
,p_display_sequence=>10
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(34379256033967473877)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_title=>'Badge'
,p_display_sequence=>20
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(27109982110501025573)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'OVERLINE'
,p_prompt=>'Overline'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_demo_value=>'Category'
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter some text and/or column substitution strings to display at the top of each row above the title and description.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(27109982580469025576)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'TITLE'
,p_prompt=>'Title'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_demo_value=>'Lorem ipsum dolor sit amet'
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter some text and/or column substitution strings to be used as the title in each row.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(27109983097183025577)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_demo_value=>'Nunc sit amet nunc quis magna ornare suscipit. Etiam aliquet maximus sapien, at sagittis sem gravida nec.'
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter some text and/or column substitution strings to be used as the description in each row.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(27109983540565025578)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'MISC'
,p_prompt=>'Miscellaneous'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter miscellaneous content such as additional text and/or column substitution strings to display in each row.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(27109984054975025579)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'DISPLAY_AVATAR'
,p_prompt=>'Display Avatar'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the avatar for each row. When set to Yes, an avatar will be displayed with the assigned image, icon, or initials. When set to No, no avatar will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(27109984585754025579)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'DISPLAY_BADGE'
,p_prompt=>'Display Badge'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the badge for each row. When set to Yes, a badge will be displayed in each row. When set to No, no badge will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(27109985093316025579)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'AVATAR_TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'icon'
,p_demo_value=>'icon'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(27109984054975025579)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(34379256588979473878)
,p_help_text=>'Select the type of content that will be displayed in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(27109985610839025580)
,p_plugin_attribute_id=>wwv_flow_imp.id(27109985093316025579)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'image'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(27109986152493025583)
,p_plugin_attribute_id=>wwv_flow_imp.id(27109985093316025579)
,p_display_sequence=>20
,p_display_value=>'Initials'
,p_return_value=>'initials'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(27109986763444025583)
,p_plugin_attribute_id=>wwv_flow_imp.id(27109985093316025579)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'icon'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(27109987346523025584)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'AVATAR_IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(27109985093316025579)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'image'
,p_attribute_group_id=>wwv_flow_imp.id(34379256588979473878)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Media popup dialog to select a source for the avatar image.</p>',
'',
'<p>Available options include:',
'<ul>',
'<li>URL</li>',
'<li>BLOB Column</li>',
'<li>URL Column</li>',
'</ul>',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(27109987855835025584)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'AVATAR_IMAGE_ALT'
,p_prompt=>'Image Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(27109987346523025584)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(34379256588979473878)
,p_help_text=>'Enter a short description of the image or select a source column from the quick pick options. This will be used as alt text for the avatar image.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(27109988379278025585)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'AVATAR_INITIALS'
,p_prompt=>'Initials'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(27109985093316025579)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'initials'
,p_attribute_group_id=>wwv_flow_imp.id(34379256588979473878)
,p_help_text=>'Select the source column to be displayed within each avatar. Only varchar2 data types are supported.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(27109988873517025585)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'AVATAR_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>true
,p_default_value=>'fa-user'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(27109985093316025579)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'icon'
,p_attribute_group_id=>wwv_flow_imp.id(34379256588979473878)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(27109989346892025585)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'AVATAR_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-Avatar--rounded'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(27109984054975025579)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(34379256588979473878)
,p_help_text=>'Select the shape of the avatar. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(27109989876629025586)
,p_plugin_attribute_id=>wwv_flow_imp.id(27109989346892025585)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Avatar--rounded'
,p_help_text=>'Displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(27109990441187025586)
,p_plugin_attribute_id=>wwv_flow_imp.id(27109989346892025585)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Avatar--circle'
,p_help_text=>'Displayed within a circular shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(27109991114713025587)
,p_plugin_attribute_id=>wwv_flow_imp.id(27109989346892025585)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Avatar--square'
,p_help_text=>'Displayed within a square shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(27109991656077025587)
,p_plugin_attribute_id=>wwv_flow_imp.id(27109989346892025585)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(27109992315310025588)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'BADGE_LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(27109984585754025579)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(34379256033967473877)
,p_help_text=>'Enter a value for the badge label or select a source column from the quick pick options.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(27109992746930025588)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_static_id=>'BADGE_VALUE'
,p_prompt=>'Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(27109984585754025579)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(34379256033967473877)
,p_help_text=>'Select a source column for the badge value.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(27109993306649025588)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_static_id=>'BADGE_STATE'
,p_prompt=>'State'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(27109984585754025579)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(34379256033967473877)
,p_help_text=>'Select the source column for the state of the badge. Substitute column value with "danger", "warning", "success" or "info" for default styling.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(27109993799344025589)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>160
,p_static_id=>'BADGE_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(27109984585754025579)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(34379256033967473877)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the badge.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(27109994312985025590)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>170
,p_static_id=>'BADGE_LABEL_DISPLAY'
,p_prompt=>'Display Label'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(27109984585754025579)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(34379256033967473877)
,p_help_text=>'Specify whether to display or hide the badge label. When set to Yes, the badge label will be displayed in addition to the badge value. When set to No, only the badge value will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(27109994887467025591)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>180
,p_static_id=>'BADGE_STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(27109984585754025579)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(34379256033967473877)
,p_null_text=>'Default'
,p_help_text=>'Select the badge style. Default inherits the style set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(27109995408248025591)
,p_plugin_attribute_id=>wwv_flow_imp.id(27109994887467025591)
,p_display_sequence=>10
,p_display_value=>'Subtle'
,p_return_value=>'t-Badge--subtle'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(27109996103095025592)
,p_plugin_attribute_id=>wwv_flow_imp.id(27109994887467025591)
,p_display_sequence=>20
,p_display_value=>'Outline'
,p_return_value=>'t-Badge--outline'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(27109996707063025593)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>190
,p_static_id=>'BADGE_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(27109984585754025579)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(34379256033967473877)
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the badge. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(27109997174070025593)
,p_plugin_attribute_id=>wwv_flow_imp.id(27109996707063025593)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Badge--rounded'
,p_help_text=>'Displayed with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(27109997820761025594)
,p_plugin_attribute_id=>wwv_flow_imp.id(27109996707063025593)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Badge--circle'
,p_help_text=>'Displayed with circular edges.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(27109998388642025594)
,p_plugin_attribute_id=>wwv_flow_imp.id(27109996707063025593)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Badge--square'
,p_help_text=>'Displayed with squared edges.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(27109998970526025595)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>20
,p_display_sequence=>200
,p_static_id=>'AVATAR_SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(27109984054975025579)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(34379256588979473878)
,p_null_text=>'Default'
,p_help_text=>'Set the size of the avatar. The default inherits the sizing set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(27109999483734025595)
,p_plugin_attribute_id=>wwv_flow_imp.id(27109998970526025595)
,p_display_sequence=>10
,p_display_value=>'Extra Extra Small'
,p_return_value=>'t-Avatar--xxs'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(27110000078901025595)
,p_plugin_attribute_id=>wwv_flow_imp.id(27109998970526025595)
,p_display_sequence=>20
,p_display_value=>'Extra Small'
,p_return_value=>'t-Avatar--xs'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(27110000693423025596)
,p_plugin_attribute_id=>wwv_flow_imp.id(27109998970526025595)
,p_display_sequence=>30
,p_display_value=>'Small'
,p_return_value=>'t-Avatar--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(27110001319415025597)
,p_plugin_attribute_id=>wwv_flow_imp.id(27109998970526025595)
,p_display_sequence=>40
,p_display_value=>'Medium'
,p_return_value=>'t-Avatar--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(27110001866216025597)
,p_plugin_attribute_id=>wwv_flow_imp.id(27109998970526025595)
,p_display_sequence=>50
,p_display_value=>'Large'
,p_return_value=>'t-Avatar--lg'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(27110002513416025598)
,p_plugin_attribute_id=>wwv_flow_imp.id(27109998970526025595)
,p_display_sequence=>60
,p_display_value=>'Extra Large'
,p_return_value=>'t-Avatar--xl'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(27110003058891025598)
,p_plugin_attribute_id=>wwv_flow_imp.id(27109998970526025595)
,p_display_sequence=>70
,p_display_value=>'Extra Extra Large'
,p_return_value=>'t-Avatar--xxl'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(27110003677493025598)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>21
,p_display_sequence=>210
,p_static_id=>'BADGE_SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(27109984585754025579)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(34379256033967473877)
,p_null_text=>'Default'
,p_help_text=>'Set the size of the badge. The default inherits the sizing set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(27110004139192025599)
,p_plugin_attribute_id=>wwv_flow_imp.id(27110003677493025598)
,p_display_sequence=>10
,p_display_value=>'Small'
,p_return_value=>'t-Badge--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(27110004732775025600)
,p_plugin_attribute_id=>wwv_flow_imp.id(27110003677493025598)
,p_display_sequence=>20
,p_display_value=>'Medium'
,p_return_value=>'t-Badge--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(27110005376474025601)
,p_plugin_attribute_id=>wwv_flow_imp.id(27110003677493025598)
,p_display_sequence=>30
,p_display_value=>'Large'
,p_return_value=>'t-Badge--lg'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(27110005966830025601)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>22
,p_display_sequence=>220
,p_static_id=>'BADGE_COL_WIDTH'
,p_prompt=>'Column Width'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-ContentRow-badge--md'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(27109984585754025579)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(34379256033967473877)
,p_null_text=>'Default'
,p_help_text=>'Set the width of the content row columns. Default width is medium.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(27110006448231025602)
,p_plugin_attribute_id=>wwv_flow_imp.id(27110005966830025601)
,p_display_sequence=>10
,p_display_value=>'Small'
,p_return_value=>'t-ContentRow-badge--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(27110007060739025603)
,p_plugin_attribute_id=>wwv_flow_imp.id(27110005966830025601)
,p_display_sequence=>20
,p_display_value=>'Medium'
,p_return_value=>'t-ContentRow-badge--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(27110007682141025603)
,p_plugin_attribute_id=>wwv_flow_imp.id(27110005966830025601)
,p_display_sequence=>30
,p_display_value=>'Large'
,p_return_value=>'t-ContentRow-badge--lg'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(27110008305856025604)
,p_plugin_attribute_id=>wwv_flow_imp.id(27110005966830025601)
,p_display_sequence=>40
,p_display_value=>'Auto'
,p_return_value=>'t-ContentRow-badge--auto'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(27110008844474025605)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>23
,p_display_sequence=>230
,p_static_id=>'APPLY_THEME_COLORS'
,p_prompt=>'Apply Theme Colors'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to use the Universal Theme colors for avatar and badge row items. When set to Yes, the u-colors class will be applied to each row. When set to No, a default color will be used instead.'
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(29716254374338152121)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_name=>'Button'
,p_type=>'BUTTON'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{with/}',
'LINK_URL:=#LINK_URL#',
'LINK_ATTR:=#LINK_ATTR!RAW#',
'LABEL:=#LABEL!RAW#',
'ICON_CLASSES:=#ICON_CLASSES#',
'CSS_CLASSES:=#CSS_CLASSES#',
'IS_HOT:=#IS_HOT#',
'IS_ICON_ONLY:=#IS_ICON_ONLY#',
'IS_DISABLED:=#IS_DISABLED#',
'{apply THEME$BUTTON/}'))
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(29716255633858156269)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_name=>'Menu'
,p_type=>'MENU'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{with/}',
'MENU_ID:=#MENU_ID#',
'LABEL:=#LABEL#',
'ICON_CLASSES:=#ICON_CLASSES#',
'CSS_CLASSES:=#CSS_CLASSES#',
'IS_HOT:=#IS_HOT#',
'IS_DISABLED:=#IS_DISABLED#',
'IS_ICON_ONLY:=#IS_ICON_ONLY#',
'{apply THEME$BUTTON/}',
'#MENU#'))
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(29716252439271107135)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_name=>'Avatar Link'
,p_static_id=>'AVATAR_LINK'
,p_display_sequence=>10
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(29716253772661120992)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_name=>'Primary Actions'
,p_static_id=>'PRIMARY_ACTIONS'
,p_display_sequence=>20
,p_type=>'TEMPLATE'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(29741875542307040411)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_name=>'Title Link'
,p_static_id=>'TITLE_LINK'
,p_display_sequence=>30
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(29742554843037123515)
,p_plugin_id=>wwv_flow_imp.id(27109980987515025553)
,p_name=>'Full Row Link'
,p_static_id=>'FULL_ROW_LINK'
,p_display_sequence=>40
,p_type=>'LINK'
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
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37142956811922919537)
,p_plug_name=>'Home'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_region_image=>'#APP_FILES#icons/app-icon-192.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38798987948886760119)
,p_plug_name=>'Application Actions'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--displaySubtitle:t-Cards--featured force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--iconsRounded:t-Cards--animColorFill'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_list_id=>wwv_flow_imp.id(38797542156837024721)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52864343586364704208)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(37142956811922919537)
,p_button_name=>'ABOUT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'About this app'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-info-circle-o'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40520776321650640836)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Sales History Content Row'
,p_alias=>'SALES-HISTORY-CONTENT-ROW'
,p_step_title=>'Sales History Content Row'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(39780716619966210174)
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This page shows sales history with a faceted content row based report.'
,p_page_component_map=>'22'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13253514934827443760)
,p_plug_name=>'Timer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>30
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   x clob;',
'begin',
'    x := to_char(oow_demo_timing.get_elap,''99G9990D000'')||'' seconds'';',
'    return x;',
'end;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50757718120771382018)
,p_plug_name=>'Sales History'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    h.ID            id,',
'    r.REGION_NAME   region,',
'    s.store_name    store,',
'    i.item_Name     product,',
'    h.DATE_OF_SALE,',
'    to_char(h.DATE_OF_SALE,''YYYY.MM'') the_month,',
'    h.QUANTITY,',
'    h.TRANSACTION_ID,',
'    h.ITEM_PRICE,',
'    h.QUANTITY * h.ITEM_PRICE sale,',
'    i.id product_id,',
'    s.id store_id',
'from #OWNER#.OOW_DEMO_SALES_HISTORY h,',
'     #OWNER#.OOW_DEMO_REGIONS r,',
'     #OWNER#.OOW_DEMO_STORES s,',
'     #OWNER#.OOW_DEMO_STORE_PRODUCTS p,',
'     #OWNER#.OOW_DEMO_ITEMS i',
'where s.region_id = r.id and',
'      h.store_id = s.id and',
'      p.ITEM_ID = h.PRODUCT_ID and',
'      p.item_id = i.id',
''))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_plug_query_num_rows=>100
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'AVATAR_ICON', 'fa-tag',
  'AVATAR_SHAPE', 't-Avatar--rounded',
  'AVATAR_TYPE', 'icon',
  'BADGE_COL_WIDTH', 't-ContentRow-badge--md',
  'BADGE_LABEL', 'Sale',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_VALUE', 'SALE',
  'DESCRIPTION', wwv_flow_string.join(wwv_flow_t_varchar2(
    'Location: &REGION.: &STORE.<br>',
    'Date: &DATE_OF_SALE. <br>',
    'Transaction: &TRANSACTION_ID.')),
  'DISPLAY_AVATAR', 'Y',
  'DISPLAY_BADGE', 'Y',
  'HIDE_BORDERS', 'N',
  'MISC', wwv_flow_string.join(wwv_flow_t_varchar2(
    'Price: &ITEM_PRICE. <br>',
    'Quantity: &QUANTITY. ')),
  'REMOVE_PADDING', 'N',
  'TITLE', '&PRODUCT.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13253513115488443742)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13253513230994443743)
,p_name=>'REGION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REGION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13253513336172443744)
,p_name=>'STORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STORE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13253513360215443745)
,p_name=>'PRODUCT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13253513544928443746)
,p_name=>'DATE_OF_SALE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_OF_SALE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13253513611370443747)
,p_name=>'THE_MONTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'THE_MONTH'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13253513659923443748)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13253513853657443749)
,p_name=>'TRANSACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSACTION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13253513875940443750)
,p_name=>'ITEM_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_format_mask=>'FML999G999G999G999G990D00'
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13253513964836443751)
,p_name=>'SALE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_format_mask=>'FML999G999G999G999G990D00'
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13957520409039239847)
,p_name=>'PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13957520476914239848)
,p_name=>'STORE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STORE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50757752755988391663)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50999467029106717033)
,p_plug_name=>'Facets'
,p_region_name=>'active_facets'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51016151884015473459)
,p_plug_name=>'Facets'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(50757718120771382018)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'current_facets_selector', '#active_facets',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'E',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13900513168812617171)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(50757752755988391663)
,p_button_name=>'reset'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13900513613095617172)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(50757752755988391663)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(13958633802977557829)
,p_branch_name=>'branch to requested page'
,p_branch_action=>'f?p=&APP_ID.:&P2_NAVIGATION.:&SESSION.::&DEBUG.:RP,&P2_NAVIGATION.::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13958758100121988850)
,p_name=>'P2_NAVIGATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(50757752755988391663)
,p_item_display_point=>'NEXT'
,p_item_default=>'&APP_PAGE_ID.'
,p_prompt=>'Navigation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SALES HISTORY NAVIGATION'
,p_lov=>'.'||wwv_flow_imp.id(13959387031438190987)||'.'
,p_cHeight=>1
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51016159028559473477)
,p_name=>'P2_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(51016151884015473459)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51016159167426473478)
,p_name=>'P2_REGION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(51016151884015473459)
,p_prompt=>'Region'
,p_source=>'REGION'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51016159264191473479)
,p_name=>'P2_STORE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(51016151884015473459)
,p_prompt=>'Store'
,p_source=>'STORE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51016159334591473480)
,p_name=>'P2_PRODUCT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(51016151884015473459)
,p_prompt=>'Product'
,p_source=>'PRODUCT'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51016159505837473482)
,p_name=>'P2_THE_MONTH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(51016151884015473459)
,p_prompt=>'Month'
,p_source=>'THE_MONTH'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13957517995752239823)
,p_name=>'on navigation click'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_NAVIGATION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13957518082271239824)
,p_event_id=>wwv_flow_imp.id(13957517995752239823)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13253515049823443761)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Start Timer'
,p_process_sql_clob=>'oow_demo_timing.start_timer;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>11310200993318127850
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(13253514463908443756)
,p_region_id=>wwv_flow_imp.id(50757718120771382018)
,p_position_id=>349402277895478545
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP,36:P36_TRANSACTION_ENTRY_ID:&ID.'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_tab_set=>'TS1'
,p_name=>'Store'
,p_step_title=>'Store'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style type="text/css">',
'section#editProduct.uRegion div.uRegionContent table.formlayout {margin-left: 20px;}',
'section#addProduct.uRegion div.uRegionContent table.formlayout {margin-left: 20px;}',
'</style>'))
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38799091856545965201)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(38799098254545196567)
,p_name=>'Store Products'
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    i.item_name product,',
'    i.item_type,',
'    i.item_desc,',
'    i.msrp,',
'    s.ID,',
'    s.STORE_ID,',
'    s.ITEM_ID,',
'    s.SALE_START_DATE,',
'    s.DISCOUNT_PCT,',
'    s.SALE_END_DATE,',
'    nvl(s.ITEM_PRICE,i.msrp) item_price,',
'    nvl(s.item_price,i.msrp) - (nvl(s.item_price,i.msrp) * nvl(s.discount_pct,0) * .01) sale_price,',
'    i.id product_id',
'from OOW_DEMO_STORE_PRODUCTS s,',
'    OOW_DEMO_items i',
'where s.store_id = :P3_ID',
'    and i.id = s.item_id',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>1000
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
 p_id=>wwv_flow_imp.id(38799099546711203784)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT'
,p_column_display_sequence=>20
,p_column_heading=>'Product'
,p_column_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RP,18:P18_ID:#PRODUCT_ID#'
,p_column_linktext=>'#PRODUCT#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(72103028208975924)
,p_query_column_id=>2
,p_column_alias=>'ITEM_TYPE'
,p_column_display_sequence=>140
,p_column_heading=>'Item Type'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38799568248489036648)
,p_query_column_id=>3
,p_column_alias=>'ITEM_DESC'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38799568674780081000)
,p_query_column_id=>4
,p_column_alias=>'MSRP'
,p_column_display_sequence=>130
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38799098576980196569)
,p_query_column_id=>5
,p_column_alias=>'ID'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38799098656641196569)
,p_query_column_id=>6
,p_column_alias=>'STORE_ID'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38799098755609196569)
,p_query_column_id=>7
,p_column_alias=>'ITEM_ID'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38799098869282196569)
,p_query_column_id=>8
,p_column_alias=>'SALE_START_DATE'
,p_column_display_sequence=>90
,p_column_heading=>'Promo Start'
,p_column_format=>'DD-MON-YYYY'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38799098976090196569)
,p_query_column_id=>9
,p_column_alias=>'DISCOUNT_PCT'
,p_column_display_sequence=>80
,p_column_heading=>'Discount %'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38799099063783196569)
,p_query_column_id=>10
,p_column_alias=>'SALE_END_DATE'
,p_column_display_sequence=>100
,p_column_heading=>'Promo End'
,p_column_format=>'DD-MON-YYYY'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38799099146886196569)
,p_query_column_id=>11
,p_column_alias=>'ITEM_PRICE'
,p_column_display_sequence=>30
,p_column_heading=>'Suggested Price'
,p_column_format=>'999G999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38799100164634227881)
,p_query_column_id=>12
,p_column_alias=>'SALE_PRICE'
,p_column_display_sequence=>40
,p_column_heading=>'Sale Price'
,p_column_format=>'999G999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13953920970032688637)
,p_query_column_id=>13
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP,12:P12_ID:#PRODUCT_ID#'
,p_column_linktext=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(39577071346567410210)
,p_name=>'Store Performance'
,p_template=>4072358936313175081
,p_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select store_name, ',
'       STORE_OPEN_DATE,',
'       sysdate - cast(STORE_OPEN_DATE as date)  days_open,',
'       sales_trailing_30_days, ',
'       sales_prior_30_days, ',
'       nvl(sales_trailing_30_days,0) - nvl(sales_prior_30_days,0) sales_trend,',
'       first_sale,',
'       most_recent_sale,',
'       sysdate - cast(first_sale as date) days_since_first_sale',
'from (',
'select s.STORE_OPEN_DATE,',
'       s.store_name,',
'       (select sum(QUANTITY*ITEM_PRICE) qp ',
'        from #OWNER#.OOW_DEMO_SALES_HISTORY h ',
'        where DATE_OF_SALE > sysdate - 30 and ',
'              h.store_id = :P3_ID) sales_trailing_30_days,',
'        (select sum(QUANTITY*ITEM_PRICE) qp ',
'        from #OWNER#.OOW_DEMO_SALES_HISTORY h ',
'        where DATE_OF_SALE > sysdate - 60 and ',
'              date_of_sale < sysdate - 30 and',
'              h.store_id  = :P3_ID) sales_prior_30_days,',
'        (select min(DATE_OF_SALE) from #OWNER#.OOW_DEMO_SALES_HISTORY h where store_id = :P3_ID) first_sale,',
'        (select max(DATE_OF_SALE) from #OWNER#.OOW_DEMO_SALES_HISTORY h where store_id = :P3_ID) most_recent_sale',
'from #OWNER#.OOW_DEMO_STORES s',
'where id = :P3_ID',
') x',
'',
'  '))
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
 p_id=>wwv_flow_imp.id(39828919506587973969)
,p_query_column_id=>1
,p_column_alias=>'STORE_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Store Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39828920123183973975)
,p_query_column_id=>2
,p_column_alias=>'STORE_OPEN_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'Store Open Date'
,p_column_format=>'fmDay, fmDD fmMonth, YYYY'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39828920213485973976)
,p_query_column_id=>3
,p_column_alias=>'DAYS_OPEN'
,p_column_display_sequence=>30
,p_column_heading=>'Days Open'
,p_column_format=>'999G999G999G999G999G999G990'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39577071917591410215)
,p_query_column_id=>4
,p_column_alias=>'SALES_TRAILING_30_DAYS'
,p_column_display_sequence=>40
,p_column_heading=>'Sales Trailing 30 Days'
,p_column_format=>'FML999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39577072002238410216)
,p_query_column_id=>5
,p_column_alias=>'SALES_PRIOR_30_DAYS'
,p_column_display_sequence=>50
,p_column_heading=>'Sales Prior 30 Days'
,p_column_format=>'FML999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39828919862250973973)
,p_query_column_id=>6
,p_column_alias=>'SALES_TREND'
,p_column_display_sequence=>60
,p_column_heading=>'Sales Trend'
,p_column_format=>'FML999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39828919568012973970)
,p_query_column_id=>7
,p_column_alias=>'FIRST_SALE'
,p_column_display_sequence=>70
,p_column_heading=>'First Sale'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39828919939585973974)
,p_query_column_id=>8
,p_column_alias=>'MOST_RECENT_SALE'
,p_column_display_sequence=>80
,p_column_heading=>'Most Recent Sale'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39828919746502973972)
,p_query_column_id=>9
,p_column_alias=>'DAYS_SINCE_FIRST_SALE'
,p_column_display_sequence=>90
,p_column_heading=>'Days Since First Sale'
,p_column_format=>'999G999G999G999G999G999G990'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38799100552559252699)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(38799091856545965201)
,p_button_name=>'EDIT_STORE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Edit Store'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7:P7_ID:&P3_ID.'
,p_icon_css_classes=>'fa-edit'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39064086062669645377)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38799091856545965201)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(38799600764876213602)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 13-SEP-2012 12:08 by ALLAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37026811941311935918)
,p_name=>'P3_STORE_NAME'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38799094373216974833)
,p_name=>'P3_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(39058952358927172197)
,p_computation_sequence=>10
,p_computation_item=>'P3_STORE_NAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select store_name ||'' - ''||',
'STORE_ADDRESS || '' ''||',
'STORE_CITY||'', ''||',
'STORE_STATE ||'' ''||',
'STORE_ZIP x',
'from #OWNER#.oow_demo_stores s where s.id = :P3_ID'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38799645856199109924)
,p_name=>'Change price'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_ADD_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38799646166421109925)
,p_event_id=>wwv_flow_imp.id(38799645856199109924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_ADD_PRICE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select msrp from OOW_DEMO_items where id = :P3_ADD_ID;'
,p_attribute_07=>'P3_ADD_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13958151138149389945)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'start timer'
,p_process_sql_clob=>'oow_demo_timing.start_timer;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>12014837081644074034
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Administration'
,p_alias=>'SETTINGS'
,p_step_title=>'Administration'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(39780759288359211484)
,p_page_css_classes=>'rw-pillar--sienna'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38799602462554283234)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38799607256427305746)
,p_plug_name=>'Administration and Settings'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_imp.id(38799605856489305743)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39055519031135561360)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38799602462554283234)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Sales'
,p_step_title=>'Sales'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.elap-time h2.t-HeroRegion-title {',
'  display: none;',
'}',
'',
'.elap-time h1.t-HeroRegion-title {',
'  font-size: 7.2rem;',
'  font-weight: 300;',
'  line-height: 1;',
'}',
'',
'.elap-time .t-HeroRegion-col {',
'}',
'',
'.elap-time.t-HeroRegion {',
'  border: 1px solid rgba(0,0,0,.15);',
'}',
'',
'span.t-HeroRegion-icon.t-Icon.fa.fa-clock-o:before {font-size: 42px;}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(36972774187331874224)
,p_name=>'Sales Dashboard'
,p_template=>4501440665235496320
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_component_template_options=>'#DEFAULT#:u-colors:t-BadgeList--xlarge:t-BadgeList--dash:t-BadgeList--fixed'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(nvl(quantity,0)) units_sold,',
'       sum(nvl(quantity,0)*nvl(item_price,0)) sales,',
'       count(*) transactions',
'from oow_demo_sales_history sh',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2104643962563030528
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT json_value(SALES_DATA, ''$.PRODUCT_ID'') x',
' FROM OOW_DEMO_SALES_HISTORY;'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35959400690230408490)
,p_query_column_id=>1
,p_column_alias=>'UNITS_SOLD'
,p_column_display_sequence=>20
,p_column_heading=>'Units Sold'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35959400789812408491)
,p_query_column_id=>2
,p_column_alias=>'SALES'
,p_column_display_sequence=>10
,p_column_heading=>'Sales'
,p_column_format=>'FML999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37026810880097935907)
,p_query_column_id=>3
,p_column_alias=>'TRANSACTIONS'
,p_column_display_sequence=>70
,p_column_heading=>'Transactions'
,p_column_format=>'999G999G999G999G999G999G990'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38800517557820041321)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>90
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52864344163158704214)
,p_plug_name=>'Sales Over Time'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(DATE_OF_SALE,''YYYY.MM.DD'') sale_date, ',
'       sum( QUANTITY*ITEM_PRICE) total_sales',
'from #OWNER#.oow_demo_sales_history',
'group by to_char(DATE_OF_SALE,''YYYY.MM.DD'')',
'order by 1'))
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(52864344284345704215)
,p_region_id=>wwv_flow_imp.id(52864344163158704214)
,p_chart_type=>'lineWithArea'
,p_title=>'Daily Sales'
,p_height=>'480'
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
,p_zoom_and_scroll=>'liveScrollOnly'
,p_initial_zooming=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
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
,p_overview_rendered=>'on'
,p_time_axis_type=>'mixedFrequency'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(52864344408186704216)
,p_chart_id=>wwv_flow_imp.id(52864344284345704215)
,p_seq=>10
,p_name=>'Sales Over Time'
,p_location=>'REGION_SOURCE'
,p_items_value_column_name=>'TOTAL_SALES'
,p_items_label_column_name=>'SALE_DATE'
,p_line_style=>'solid'
,p_line_type=>'curved'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(52864344474139704217)
,p_chart_id=>wwv_flow_imp.id(52864344284345704215)
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
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(52864344592071704218)
,p_chart_id=>wwv_flow_imp.id(52864344284345704215)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39042267503749415770)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38800517557820041321)
,p_button_name=>'generate_transaction'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Generate Transaction'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-gear'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39058954030812172213)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(38800517557820041321)
,p_button_name=>'refresh'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Refresh'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37026811565411935914)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38800517557820041321)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39042267600204415771)
,p_name=>'gen xaction refresh content'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39042267503749415770)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39042268435761415779)
,p_event_id=>wwv_flow_imp.id(39042267600204415771)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'oow_demo_gen_data_pkg.exec_n_transactions(1);',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39042267647467415772)
,p_event_id=>wwv_flow_imp.id(39042267600204415771)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52864344163158704214)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39042267794049415773)
,p_event_id=>wwv_flow_imp.id(39042267600204415771)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36972774187331874224)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39042268088853415776)
,p_name=>'Generate Orders'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_AUTO_GENERATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39042268139768415777)
,p_event_id=>wwv_flow_imp.id(39042268088853415776)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'oow_demo_gen_data_pkg.generate_transaction;',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39058954089595172214)
,p_name=>'refresh regions'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39058954030812172213)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39058954164791172215)
,p_event_id=>wwv_flow_imp.id(39058954089595172214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36972774187331874224)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39058954301817172216)
,p_event_id=>wwv_flow_imp.id(39058954089595172214)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52864344163158704214)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Stores Report  - Content Row'
,p_alias=>'STORES-REPORT-CONTENT-ROW'
,p_step_title=>'Stores  - Content Row'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(39780713597028209169)
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'22'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22560721762677652217)
,p_plug_name=>'Stores'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ROWID",',
'    ID,',
'    region_id,',
'    (select REGION_NAME from OOW_DEMO_REGIONS r where s.REGION_ID = r.id) region,',
'    id store_id,',
'    STORE_NAME,',
'    STORE_TYPE,',
'    STORE_ADDRESS,',
'    STORE_CITY,',
'    STORE_STATE,',
'    STORE_ZIP,',
'    store_lat,',
'    store_lng,',
'    (select count(*) from OOW_DEMO_STORE_PRODUCTS sls where sls.store_id = s.id) inventory_count,',
'    decode(greatest(trunc(sysdate),STORE_OPEN_DATE),trunc(sysdate),''Open'',''Closed'') as status,',
'    decode(greatest(trunc(sysdate),STORE_OPEN_DATE),trunc(sysdate),''success'',''danger'') as status_color,',
'    STORE_OPEN_DATE, ',
'    STORE_OPEN_DATE STORE_OPEN_DATE2,',
'    n1,',
'    n2,',
'    n3,',
'    n4,',
'    (select max(date_of_sale) from OOW_DEMO_SALES_HISTORY h where s.ID = h.STORE_ID) last_sale',
'from "#OWNER#"."OOW_DEMO_STORES" s;',
'  '))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'1=1'
,p_plug_display_when_cond2=>'SQL'
,p_entity_title_singular=>'Store'
,p_entity_title_plural=>'Stores'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'AVATAR_ICON', 'fa-user',
  'AVATAR_SHAPE', 't-Avatar--rounded',
  'AVATAR_TYPE', 'icon',
  'BADGE_COL_WIDTH', 't-ContentRow-badge--sm',
  'BADGE_LABEL', 'Status',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_STATE', 'STATUS_COLOR',
  'BADGE_VALUE', 'STATUS',
  'DESCRIPTION', '&STORE_ADDRESS., &STORE_CITY. &STORE_STATE. &STORE_ZIP.',
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'Y',
  'HIDE_BORDERS', 'N',
  'MISC', wwv_flow_string.join(wwv_flow_t_varchar2(
    'Store ID: &ID.<br>',
    'Products: &INVENTORY_COUNT.')),
  'OVERLINE', '&REGION.',
  'REMOVE_PADDING', 'N',
  'TITLE', '&STORE_NAME.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22560724037109652240)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22560724163587652241)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22560724210061652242)
,p_name=>'REGION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REGION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22560724321047652243)
,p_name=>'REGION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REGION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22560724452188652244)
,p_name=>'STORE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STORE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22560724536498652245)
,p_name=>'STORE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STORE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22560724596928652246)
,p_name=>'STORE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STORE_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22560724761438652247)
,p_name=>'STORE_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STORE_ADDRESS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22560724854874652248)
,p_name=>'STORE_CITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STORE_CITY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22560724957213652249)
,p_name=>'STORE_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STORE_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22560725049077652250)
,p_name=>'STORE_ZIP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STORE_ZIP'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22560725160848652251)
,p_name=>'STORE_LAT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STORE_LAT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22560725229050652252)
,p_name=>'STORE_LNG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STORE_LNG'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>130
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22560725323091652253)
,p_name=>'INVENTORY_COUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVENTORY_COUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>140
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22560725458370652254)
,p_name=>'STORE_OPEN_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STORE_OPEN_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>150
,p_format_mask=>'Month YYYY'
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22560725495474652255)
,p_name=>'STORE_OPEN_DATE2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STORE_OPEN_DATE2'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>160
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22560725597956652256)
,p_name=>'N1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'N1'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>170
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22560725736110652257)
,p_name=>'N2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'N2'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>180
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22560725864633652258)
,p_name=>'N3'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'N3'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>190
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22560725936004652259)
,p_name=>'N4'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'N4'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>200
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22560726059063652260)
,p_name=>'LAST_SALE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_SALE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>210
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22566928344814663418)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>220
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22566928464154663419)
,p_name=>'STATUS_COLOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_COLOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>230
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22566927675569663411)
,p_plug_name=>'Facets'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(22560721762677652217)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38796830161636623486)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38796926673675738956)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38796830161636623486)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6,RIR::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38796830057592623486)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(38796830161636623486)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add Store'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39046403857318696228)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38796830161636623486)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22566927779932663412)
,p_name=>'P6_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22566927675569663411)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22566927787962663413)
,p_name=>'P6_REGION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22566927675569663411)
,p_prompt=>'Region'
,p_source=>'REGION'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22566928548051663420)
,p_name=>'P6_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22566927675569663411)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22566928633936663421)
,p_name=>'P6_STORE_STATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22566927675569663411)
,p_prompt=>'State'
,p_source=>'STORE_STATE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(36863787852590855836)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(13953919156134688618)
,p_region_id=>wwv_flow_imp.id(22560721762677652217)
,p_position_id=>349402277895478545
,p_display_sequence=>20
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3:P3_ID:&ID.'
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(22566927916311663414)
,p_region_id=>wwv_flow_imp.id(22560721762677652217)
,p_position_id=>362316004162771045
,p_display_sequence=>10
,p_template_id=>362317865359806322
,p_label=>'Actions'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-ellipsis-v'
,p_action_css_classes=>'t-Button--noUI'
,p_is_hot=>false
,p_show_as_disabled=>false
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(22566928091777663416)
,p_component_action_id=>wwv_flow_imp.id(22566927916311663414)
,p_menu_entry_type=>'ENTRY'
,p_label=>'View Details'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_ID:&ID.'
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(22566928256325663417)
,p_component_action_id=>wwv_flow_imp.id(22566927916311663414)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Edit'
,p_display_sequence=>20
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7:P7_ID:&ID.'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Store'
,p_step_title=>'Store'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(39780713597028209169)
,p_javascript_file_urls=>'https://maps.googleapis.com/maps/api/js?key=&P7_MAPS_API_KEY.&amp;sensor=false'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message = ''"DELETE_CONFIRM_MSG"'';',
'',
'var g_initialAddress = "";',
'var g_addrFieldMap = {',
'    "route": "P7_STORE_ADDRESS",',
'    "sublocality": "P7_STORE_CITY",',
'    "locality": "P7_STORE_CITY",',
'    "administrative_area_level_1": "P7_STORE_STATE",',
'    "postal_code": "P7_STORE_ZIP"',
'};',
'',
'function getAddressString() {',
'    var addr = $v("P7_STORE_ADDRESS") + ", " + $v("P7_STORE_CITY") + ", " + $v("P7_STORE_STATE") + ", " + $v("P7_STORE_ZIP");',
'    return addr;',
'}',
'',
'function updateAddress(result, updateLoc) {',
'    var i, type, value, field, loc, lat, lng, stnum, address, subloc, city,',
'        ok = true,',
'        comps = result.address_components;',
'',
'    for (i = 0; i < comps.length; i++) {',
'        type = comps[i].types[0];',
'        value = comps[i][type == "administrative_area_level_1" ? "short_name" : "long_name"];',
'        if (type == "street_number") {',
'            stnum = value;',
'        } else if (type == "route") {',
'            address = value;',
'        } else if (type == "sublocality") {',
'            subloc = value;',
'        } else if (type == "locality") {',
'            city = value;',
'        } else {',
'            field = g_addrFieldMap[type];',
'            if (field) {',
'                $s(field, value);',
'            }',
'        }',
'    }',
'    if (stnum && address) {',
'        address = stnum + " " + address;',
'    }',
'    if (address) {',
'        field = g_addrFieldMap["route"];',
'        if (field) {',
'            $s(field, address);',
'        }',
'    }',
'    if (subloc) {',
'        city = subloc;',
'    }',
'    if (city) {',
'        field = g_addrFieldMap["locality"];',
'        if (field) {',
'            $s(field, city);',
'        }',
'    }',
'    if (!address || $v("P7_STORE_ADDRESS") === "" || $v("P7_STORE_CITY") === "" || $v("P7_STORE_STATE") === "" || $v("P7_STORE_ZIP") === "") {',
'        ok = false;',
'    }',
'',
'    if (updateLoc) {',
'        loc = result.geometry.location;',
'        lat = loc.lat();',
'        lng = loc.lng();',
'        $s("P7_STORE_LAT", lat);',
'        $s("P7_STORE_LNG", lng);',
'    }',
'    return ok;',
'}',
'',
'function validateAddressAndSubmit(action) {',
'    var gc,',
'        curAddr = getAddressString(),',
'        lat = $v("P7_STORE_LAT"),',
'        lng = $v("P7_STORE_LNG");',
'',
'    // don''t check addresses if there is no API key or required fields are missing (let the server validate), or have lat, lng and no address change',
'    // do check if missing lat or lag or the address has been edited',
'    if ($v("P7_MAPS_API_KEY") !== "" && ',
'          $v("P7_STORE_ADDRESS") !== "" && ',
'          $v("P7_STORE_CITY") !== "" && ',
'          $v("P7_STORE_NAME") !== "" && ',
'          (lat === "" || lng === "" || curAddr !== g_initialAddress)) {',
'',
'        apex.jQuery("#storeForm h1").first().append("<span id=''checking'' style=''padding-left: 40px;''>- Validating Address - </span>");',
'        apex.jQuery(".addressCheckMessage").hide();',
'',
'        gc = new google.maps.Geocoder();',
'        gc.geocode({',
'            address: curAddr',
'        }, function (results, status) {',
'            var i, choices;',
'',
'            apex.jQuery("#checking").remove();',
'            if (status === google.maps.GeocoderStatus.OK) {',
'                if (results.length === 1) {',
'                    if (updateAddress(results[0], true)) {',
'                        apex.submit(action);',
'                        return;',
'                    } else {',
'                        apex.jQuery("#incomplete").show();',
'                    }',
'                } else {',
'                    choices = "";',
'                    for (i = 0; i < results.length; i++) {',
'                        choices += "<li><input id=''addrChoices_" + i + ',
'                                   "'' type=radio name=''addrchoice''><label for=''addrChoices_" + i + "''>" + ',
'                                   results[i].formatted_address + "</label></li>";',
'                    }',
'                    apex.jQuery("#addrChoices").html(choices).off("change").on("change", function (evt) {',
'                        var i = evt.target.id;',
'                        i = i.split("_")[1];',
'                        updateAddress(results[i], false);',
'                    });',
'                    apex.jQuery("#multiple").show();',
'                }',
'            } else {',
'                switch (status) {',
'                case google.maps.GeocoderStatus.ZERO_RESULTS:',
'                    apex.jQuery("#notfound").show();',
'                    break;',
'                case google.maps.GeocoderStatus.OVER_QUERY_LIMIT:',
'                    apex.jQuery("#overlimit").show();',
'                    break;',
'                default:',
'                    apex.jQuery("#checkfailed").show();',
'                }',
'            }',
'            openModal("adrchkres");',
'        });',
'    } else {',
'        apex.submit(action);',
'    }',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(function ($) {',
'    g_initialAddress = getAddressString();',
'})(apex.jQuery);'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.addressCheckMessage {',
'  display: none;',
'}',
'#adrchkres {',
'  width: 80%;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36948269167443413738)
,p_plug_name=>'Address Validation'
,p_region_name=>'adrchkres'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_04'
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
 p_id=>wwv_flow_imp.id(36959301961617365136)
,p_plug_name=>'Incomplete address'
,p_region_name=>'incomplete'
,p_parent_plug_id=>wwv_flow_imp.id(36948269167443413738)
,p_region_css_classes=>'addressCheckMessage'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<p>Not a complete address</p>'
,p_translate_title=>'N'
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
 p_id=>wwv_flow_imp.id(36959302275600378630)
,p_plug_name=>'Multiple addresses'
,p_region_name=>'multiple'
,p_parent_plug_id=>wwv_flow_imp.id(36948269167443413738)
,p_region_css_classes=>'addressCheckMessage'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Multiple results found. Choose one of the following.</p>',
'<ul id="addrChoices">',
'</ul>',
''))
,p_translate_title=>'N'
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
 p_id=>wwv_flow_imp.id(36959317847521843577)
,p_plug_name=>'Not Found'
,p_region_name=>'notfound'
,p_parent_plug_id=>wwv_flow_imp.id(36948269167443413738)
,p_region_css_classes=>'addressCheckMessage'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Address not found. Enter a correct address and try again.</p>',
''))
,p_translate_title=>'N'
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
 p_id=>wwv_flow_imp.id(36959318760596866293)
,p_plug_name=>'Over Limit'
,p_region_name=>'overlimit'
,p_parent_plug_id=>wwv_flow_imp.id(36948269167443413738)
,p_region_css_classes=>'addressCheckMessage'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Over limit try again later.</p>',
''))
,p_translate_title=>'N'
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
 p_id=>wwv_flow_imp.id(36959319651030873021)
,p_plug_name=>'Check Failed'
,p_region_name=>'checkfailed'
,p_parent_plug_id=>wwv_flow_imp.id(36948269167443413738)
,p_region_css_classes=>'addressCheckMessage'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Failed to check address.</p>',
''))
,p_translate_title=>'N'
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
 p_id=>wwv_flow_imp.id(38797111768689296153)
,p_plug_name=>'Store'
,p_region_name=>'storeForm'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38797116452607296176)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38797112074254296155)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(38797116452607296176)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38797112354626296155)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38797116452607296176)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36948276158345054582)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(36948269167443413738)
,p_button_name=>'CLOSE'
,p_button_static_id=>'adrchkclose'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'OK'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38797111947743296155)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(38797116452607296176)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Store'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38797112174437296155)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(38797116452607296176)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(38797112957931296158)
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36959232372180327018)
,p_name=>'P7_MAPS_API_KEY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(38797111768689296153)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38797113175608296163)
,p_name=>'P7_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38797111768689296153)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38797113369010296170)
,p_name=>'P7_STORE_NAME'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(38797111768689296153)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Store Name'
,p_source=>'STORE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38797113573320296172)
,p_name=>'P7_STORE_TYPE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(38797111768689296153)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Store Type'
,p_source=>'STORE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STORE TYPE'
,p_lov=>'.'||wwv_flow_imp.id(38796930277746759046)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Value -'
,p_cHeight=>1
,p_tag_css_classes=>'mnw180'
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38797113774504296172)
,p_name=>'P7_STORE_ADDRESS'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(38797111768689296153)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address'
,p_source=>'STORE_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38797113965096296172)
,p_name=>'P7_STORE_CITY'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(38797111768689296153)
,p_use_cache_before_default=>'NO'
,p_prompt=>'City'
,p_source=>'STORE_CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>50
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38797114176717296172)
,p_name=>'P7_STORE_STATE'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(38797111768689296153)
,p_use_cache_before_default=>'NO'
,p_prompt=>'State'
,p_source=>'STORE_STATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38797114372630296172)
,p_name=>'P7_STORE_ZIP'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(38797111768689296153)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Zip'
,p_source=>'STORE_ZIP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>12
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38797114555749296172)
,p_name=>'P7_STORE_LAT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(38797111768689296153)
,p_use_cache_before_default=>'NO'
,p_source=>'STORE_LAT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38797114763418296173)
,p_name=>'P7_STORE_LNG'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(38797111768689296153)
,p_use_cache_before_default=>'NO'
,p_source=>'STORE_LNG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38797119548752338088)
,p_name=>'P7_STORE_ITEMS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(38797111768689296153)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Store Inventory'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_vc_arr2   apex_application_global.vc_arr2;',
'begin',
'    select item_id',
'    bulk collect into l_vc_arr2 ',
'    from OOW_DEMO_STORE_PRODUCTS',
'    where store_id = :P7_ID;',
' ',
'    return apex_util.table_to_string ( l_vc_arr2 ); ',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select item_name, id',
'from OOW_DEMO_items i',
'order by upper(item_name)'))
,p_cHeight=>10
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'MOVE')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38800553155414259775)
,p_name=>'P7_STORE_OPEN_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(38797111768689296153)
,p_use_cache_before_default=>'NO'
,p_item_default=>'select sysdate from dual'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Store Opened On'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'STORE_OPEN_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38800565060805450601)
,p_name=>'P7_REGION_ID'
,p_is_required=>true
,p_item_sequence=>55
,p_item_plug_id=>wwv_flow_imp.id(38797111768689296153)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Region'
,p_source=>'REGION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select region_name, id from oow_demo_regions order by 1'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Value -'
,p_cHeight=>1
,p_tag_css_classes=>'mnw180'
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(36919462361955625611)
,p_validation_name=>'P7_STORE_NAME Not Null'
,p_validation_sequence=>10
,p_validation=>'return trim(:P7_STORE_NAME) is not null'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(38797113369010296170)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(36948263178290038400)
,p_validation_name=>'P7_STORE_ADDRESS Not Null'
,p_validation_sequence=>20
,p_validation=>'return trim(:P7_STORE_ADDRESS) is not null'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(38797113774504296172)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(36948263365135044485)
,p_validation_name=>'P7_STORE_CITY Not Null'
,p_validation_sequence=>30
,p_validation=>'return trim(:P7_STORE_CITY) is not null'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(38797113965096296172)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38797117469006306125)
,p_name=>'CheckSave'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38797112074254296155)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38797117747075306126)
,p_event_id=>wwv_flow_imp.id(38797117469006306125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_STORE_LAT,P7_STORE_LNG'
,p_attribute_01=>'validateAddressAndSubmit("SAVE");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38797117948012309485)
,p_name=>'CheckCreate'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38797111947743296155)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38797118272510309485)
,p_event_id=>wwv_flow_imp.id(38797117948012309485)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_STORE_LAT,P7_STORE_LNG'
,p_attribute_01=>'validateAddressAndSubmit("CREATE");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36959320661120904341)
,p_name=>'Close Dialog'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(36948276158345054582)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36959320957915904348)
,p_event_id=>wwv_flow_imp.id(36959320661120904341)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'closeModal();'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38797115964533296175)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from OOW_DEMO_STORES'
,p_attribute_02=>'OOW_DEMO_STORES'
,p_attribute_03=>'P7_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_internal_uid=>16574553282555984965
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38797116172016296176)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of OOW_DEMO_STORES'
,p_attribute_02=>'OOW_DEMO_STORES'
,p_attribute_03=>'P7_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P7_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Action Processed.'
,p_return_key_into_item1=>'P7_ID'
,p_internal_uid=>16574553490038984966
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38797119867452343558)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Inventory'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'	l_inv apex_application_global.vc_arr2; ',
'begin ',
'	-- convert the colon separated string into an array ',
'	l_inv := apex_util.string_to_table(:P7_STORE_ITEMS);',
'',
'	delete from OOW_DEMO_STORE_PRODUCTS where store_id = :P7_ID;',
'	for i in 1..l_inv.count loop ',
'		insert into OOW_DEMO_STORE_PRODUCTS (store_id, item_id)',
'		values( :P7_ID, l_inv(i) );',
'	end loop; ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P7_STORE_ITEMS'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Inventory updated.'
,p_internal_uid=>16574557185475032348
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38797116377917296176)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(38797112174437296155)
,p_internal_uid=>16574553695939984966
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36959232075817318948)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate Google Maps API Key'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select preference_value',
'      into :P7_MAPS_API_KEY',
'      from oow_demo_preferences',
'     where preference_name = ''GOOGLE_MAPS_API_KEY'';',
'exception',
'    when no_data_found then',
'        :P7_MAPS_API_KEY := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>14736669393840007738
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Store Regions'
,p_alias=>'STORE-REGIONS'
,p_step_title=>'Store Regions'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(39780858241780598888)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38796922059318504052)
,p_plug_name=>'Store Regions'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id, ',
'       region_name, ',
'       is_default, ',
'       stores, ',
'       sales_trailing_30_days, ',
'       sales_prior_30_days,',
'       --',
'       -- sales trend',
'       --',
'       nvl(sales_trailing_30_days,0) - nvl(sales_prior_30_days,0) sales_trend,',
'       --',
'       -- sales trend percentage accounting for divide by zero errors',
'       --',
'       decode(nvl(sales_prior_30_days,0),0,null,',
'          round(nvl(sales_trailing_30_days,0) / nvl(sales_prior_30_days,0),2)) sales_trend_percentage,',
'       --',
'       -- average sales per store',
'       --',
'       to_number(decode(stores,0,0,sales_trailing_30_days/stores)) avg_store_sales',
'from (',
'--',
'-- inline view',
'--',
'select r.ID, ',
'       r.REGION_NAME,',
'       decode(r.is_default_yn,''Y'',''Yes'',''No'') is_default,',
'       --',
'       nvl((select count(*) ',
'            from #OWNER#.OOW_DEMO_STORES s ',
'            where s.region_id = r.id),0) stores,',
'       --',
'       -- sales in the last 30 days',
'       --',
'       (select sum(QUANTITY*ITEM_PRICE) qp ',
'        from #OWNER#.OOW_DEMO_SALES_HISTORY h ',
'        where DATE_OF_SALE > sysdate - 30 and ',
'              h.store_id in (select id from OOW_DEMO_STORES s where s.region_id = r.id)) sales_trailing_30_days,',
'        --',
'        -- sales in the prior 30 days',
'        --',
'        (select sum(QUANTITY*ITEM_PRICE) qp ',
'        from #OWNER#.OOW_DEMO_SALES_HISTORY h ',
'        where DATE_OF_SALE > sysdate - 60 and ',
'              date_of_sale < sysdate - 30 and',
'              h.store_id in (select id from OOW_DEMO_STORES s where s.region_id = r.id)) sales_prior_30_days',
'from #OWNER#.OOW_DEMO_REGIONS r',
') ilv',
'  '))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(38796922262101504052)
,p_name=>'Map Regions'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'MIKE'
,p_internal_uid=>2708389615873260088
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38796922378309504057)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38796922451794504087)
,p_db_column_name=>'REGION_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Region'
,p_column_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:RP,:P15_REGION_ID:#ID#'
,p_column_linktext=>'#REGION_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38799600446522208310)
,p_db_column_name=>'IS_DEFAULT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Is Default'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39058949636652172169)
,p_db_column_name=>'STORES'
,p_display_order=>16
,p_column_identifier=>'G'
,p_column_label=>'Stores'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39058949721219172170)
,p_db_column_name=>'SALES_TRAILING_30_DAYS'
,p_display_order=>26
,p_column_identifier=>'H'
,p_column_label=>'Sales Trailing 30 Days'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39058949910624172172)
,p_db_column_name=>'AVG_STORE_SALES'
,p_display_order=>36
,p_column_identifier=>'J'
,p_column_label=>'Average Sales per Store'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39577068166954410178)
,p_db_column_name=>'SALES_PRIOR_30_DAYS'
,p_display_order=>46
,p_column_identifier=>'K'
,p_column_label=>'Sales Prior 30 Days'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39577068243819410179)
,p_db_column_name=>'SALES_TREND'
,p_display_order=>56
,p_column_identifier=>'L'
,p_column_label=>'Sales Trend'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21327934770196015311)
,p_db_column_name=>'SALES_TREND_PERCENTAGE'
,p_display_order=>66
,p_column_identifier=>'O'
,p_column_label=>'Sales Trend Percentage'
,p_column_html_expression=>'#SALES_TREND_PERCENTAGE#%'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'S999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(38796923847328504220)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'27083913'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'REGION_NAME:STORES:SALES_TRAILING_30_DAYS:SALES_PRIOR_30_DAYS:SALES_TREND:AVG_STORE_SALES'
,p_sort_column_1=>'AVG_STORE_SALES'
,p_sort_direction_1=>'DESC'
,p_sum_columns_on_break=>'SALES_TRAILING_30_DAYS:STORES:SALES_PRIOR_30_DAYS:SALES_TREND'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38796923071441504088)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38796922978981504088)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(38796923071441504088)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add Region'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:9::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38797257953365897711)
,p_button_sequence=>4
,p_button_plug_id=>wwv_flow_imp.id(38796922059318504052)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8,RIR::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39055568930761580307)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38796923071441504088)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Region'
,p_page_mode=>'MODAL'
,p_step_title=>'Region'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(39780858241780598888)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38796918277056504022)
,p_plug_name=>'Regions'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38796923275761504088)
,p_plug_name=>'buttonbar'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38796918558240504023)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(38796923275761504088)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38796918872859504024)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38796923275761504088)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38796918465942504023)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(38796923275761504088)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Region'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38796918659130504023)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(38796923275761504088)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(38796919477871504026)
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38796919661099504032)
,p_name=>'P9_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38796918277056504022)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38796920046508504040)
,p_name=>'P9_REGION_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(38796918277056504022)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Region Name'
,p_source=>'REGION_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39058954432401172217)
,p_name=>'on click'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38796918872859504024)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39058954521559172218)
,p_event_id=>wwv_flow_imp.id(39058954432401172217)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38796921078782504044)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from OOW_DEMO_REGIONS'
,p_attribute_02=>'OOW_DEMO_REGIONS'
,p_attribute_03=>'P9_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_internal_uid=>16574358396805192834
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38796921247644504044)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of OOW_DEMO_REGIONS'
,p_attribute_02=>'OOW_DEMO_REGIONS'
,p_attribute_03=>'P9_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>16574358565667192834
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38796921476759504045)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(38796918659130504023)
,p_internal_uid=>16574358794782192835
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Store Locations Map'
,p_alias=>'STORE-LOCATIONS-MAP'
,p_step_title=>'Store Locations Map'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(39780716619966210174)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(38815931759832039124)
,p_protection_level=>'C'
,p_page_component_map=>'19'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37026811695045935915)
,p_plug_name=>'Store Locations'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'SQL'
,p_plug_source=>'select * from OOW_DEMO_STORES'
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(37026811772821935916)
,p_region_id=>wwv_flow_imp.id(37026811695045935915)
,p_height=>640
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'RECTANGLE_ZOOM:SCALE_BAR'
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(37026811925030935917)
,p_map_region_id=>wwv_flow_imp.id(37026811772821935916)
,p_name=>'stores'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'REGION_SOURCE'
,p_has_spatial_index=>false
,p_geometry_column_data_type=>'LONLAT_COLUMNS'
,p_longitude_column=>'STORE_LNG'
,p_latitude_column=>'STORE_LAT'
,p_stroke_color=>'#ffffff'
,p_stroke_width=>2
,p_fill_color=>'#ff3b30'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Pin Circle'
,p_point_svg_shape_scale=>'2'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>false
,p_info_window_adv_formatting=>false
,p_display_in_legend=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41305530474417818855)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39037834460929184475)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(41305530474417818855)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_tab_set=>'TS1'
,p_name=>'Products'
,p_step_title=>'Products'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38797099064503725400)
,p_plug_name=>'Items'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID", ',
'       null edit,',
'       "ITEM_NAME",',
'       "ITEM_TYPE",',
'       "ITEM_DESC",',
'       "MSRP",',
'       (select count(*) from OOW_DEMO_SALES_HISTORY h where h.PRODUCT_ID = i.id ) units_sold,',
'       (select count(*) from OOW_DEMO_STORE_PRODUCTS p where p.item_id = i.id) store_count',
'from "#OWNER#"."OOW_DEMO_ITEMS" i',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(38797099271376725401)
,p_name=>'Items'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'MIKE'
,p_internal_uid=>2708566625148481437
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13953921192157688639)
,p_db_column_name=>'EDIT'
,p_display_order=>10
,p_column_identifier=>'H'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP,12:P12_ID:#ID#'
,p_column_linktext=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38797099374855725406)
,p_db_column_name=>'ID'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Product ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38797099474364725408)
,p_db_column_name=>'ITEM_NAME'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Product'
,p_column_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RP,18:P18_ID:#ID#'
,p_column_linktext=>'#ITEM_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38797099564448725408)
,p_db_column_name=>'ITEM_DESC'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38799554467816776155)
,p_db_column_name=>'MSRP'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'MSRP'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40484411380903380064)
,p_db_column_name=>'UNITS_SOLD'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Units Sold'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40257628461735380872)
,p_db_column_name=>'STORE_COUNT'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Store Count'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72103121457975925)
,p_db_column_name=>'ITEM_TYPE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Item Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(38797100857550725570)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'27085683'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDIT:ITEM_NAME:MSRP:ITEM_DESC:ID:UNITS_SOLD:STORE_COUNT'
,p_sort_column_1=>'ITEM_NAME'
,p_sort_direction_1=>'ASC'
,p_sum_columns_on_break=>'UNITS_SOLD'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55218017051983380778)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38797534347290482621)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(55218017051983380778)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,11,RIR::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38797099975754725410)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(55218017051983380778)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add Store Item'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:12::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39053321939217724701)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(55218017051983380778)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(36863769566996636421)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Product'
,p_page_mode=>'MODAL'
,p_step_title=>'Product'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38797094450629725355)
,p_plug_name=>'Product'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38797100254044725411)
,p_plug_name=>'button bar'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38797094763836725360)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(38797100254044725411)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P12_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38797095075383725361)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38797100254044725411)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38797094657757725360)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(38797100254044725411)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Store Item'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P12_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38797094848159725360)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(38797100254044725411)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P12_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(38797095674697725367)
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38797095853085725375)
,p_name=>'P12_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38797094450629725355)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38797096257377725383)
,p_name=>'P12_ITEM_TYPE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(38797094450629725355)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Type'
,p_source=>'ITEM_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FOOD TYPES'
,p_lov=>'.'||wwv_flow_imp.id(36713830560628878601)||'.'
,p_cHeight=>1
,p_tag_css_classes=>'mnw180'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38797096463326725383)
,p_name=>'P12_ITEM_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(38797094450629725355)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Name'
,p_source=>'ITEM_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>48
,p_cMaxlength=>60
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38797096663296725383)
,p_name=>'P12_ITEM_DESC'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(38797094450629725355)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'ITEM_DESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>255
,p_cHeight=>5
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38799556461283802635)
,p_name=>'P12_MSRP'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(38797094450629725355)
,p_use_cache_before_default=>'NO'
,p_prompt=>'MSRP'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'MSRP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '0',
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(36863796947759964492)
,p_validation_name=>'P12_ITEM_NAME Not Null'
,p_validation_sequence=>10
,p_validation=>'return trim(:P12_ITEM_NAME) is not null'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(38797096463326725383)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23664541270369551459)
,p_name=>'close dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38797095075383725361)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23664541294026551460)
,p_event_id=>wwv_flow_imp.id(23664541270369551459)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38797098070328725386)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from OOW_DEMO_ITEMS'
,p_attribute_02=>'OOW_DEMO_ITEMS'
,p_attribute_03=>'P12_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_internal_uid=>16574535388351414176
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38797098270081725389)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of OOW_DEMO_ITEMS'
,p_attribute_02=>'OOW_DEMO_ITEMS'
,p_attribute_03=>'P12_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>16574535588104414179
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38797098462126725389)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(38797094848159725360)
,p_internal_uid=>16574535780149414179
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Sales History Classic'
,p_alias=>'SALES-HISTORY-CLASSIC'
,p_step_title=>'Sales History - Classic'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(39780716619966210174)
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'22'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25264124879401819977)
,p_plug_name=>'Timer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>30
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   x clob;',
'begin',
'    x := to_char(oow_demo_timing.get_elap,''99G9990D000'')||'' seconds'';',
'    return x;',
'end;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38800519175104080758)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(38800519553373080765)
,p_name=>'Sales History'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    h.ID            id,',
'    r.REGION_NAME   region,',
'    s.store_name    store,',
'    i.item_Name     product,',
'    h.DATE_OF_SALE,',
'    to_char(h.DATE_OF_SALE,''YYYY.MM'') the_month,',
'    h.QUANTITY,',
'    h.TRANSACTION_ID,',
'    h.ITEM_PRICE,',
'    h.QUANTITY * h.ITEM_PRICE sale,',
'    i.id product_id,',
'    s.id store_id',
'from #OWNER#.OOW_DEMO_SALES_HISTORY h,',
'     #OWNER#.OOW_DEMO_REGIONS r,',
'     #OWNER#.OOW_DEMO_STORES s,',
'     #OWNER#.OOW_DEMO_STORE_PRODUCTS p,',
'     #OWNER#.OOW_DEMO_ITEMS i',
'where s.region_id = r.id and',
'      h.store_id = s.id and',
'      p.ITEM_ID = h.PRODUCT_ID and',
'      p.item_id = i.id',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39058952532033172198)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39058952602959172199)
,p_query_column_id=>2
,p_column_alias=>'REGION'
,p_column_display_sequence=>30
,p_column_heading=>'Region'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39058952674104172200)
,p_query_column_id=>3
,p_column_alias=>'STORE'
,p_column_display_sequence=>40
,p_column_heading=>'Store'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39058952809809172201)
,p_query_column_id=>4
,p_column_alias=>'PRODUCT'
,p_column_display_sequence=>50
,p_column_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39058952899643172202)
,p_query_column_id=>5
,p_column_alias=>'DATE_OF_SALE'
,p_column_display_sequence=>60
,p_column_heading=>'Date of Sale'
,p_column_format=>'DD-MON-YYYY HH24:MI:SS'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39058953756857172211)
,p_query_column_id=>6
,p_column_alias=>'THE_MONTH'
,p_column_display_sequence=>110
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39058952941662172203)
,p_query_column_id=>7
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>70
,p_column_heading=>'Quantity'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39058953074024172204)
,p_query_column_id=>8
,p_column_alias=>'TRANSACTION_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Transaction ID'
,p_column_link=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP,36:P36_TRANSACTION_ENTRY_ID:#ID#'
,p_column_linktext=>'#TRANSACTION_ID#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39058953175021172205)
,p_query_column_id=>9
,p_column_alias=>'ITEM_PRICE'
,p_column_display_sequence=>90
,p_column_heading=>'Item Price'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24534780744061818461)
,p_query_column_id=>10
,p_column_alias=>'SALE'
,p_column_display_sequence=>100
,p_column_heading=>'Sale'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13957519973131239843)
,p_query_column_id=>11
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13957520080850239844)
,p_query_column_id=>12
,p_column_alias=>'STORE_ID'
,p_column_display_sequence=>130
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39042268461708415780)
,p_plug_name=>'Facets'
,p_region_name=>'active_facets'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39058953316617172206)
,p_plug_name=>'Facets'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(38800519553373080765)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'current_facets_selector', '#active_facets',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'E',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38800543163576751180)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(38800519175104080758)
,p_button_name=>'reset'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP,13::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39068835727589869771)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38800519175104080758)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(13957517706306239820)
,p_branch_name=>'branch to requested page'
,p_branch_action=>'f?p=&APP_ID.:&P13_NAVIGATION.:&SESSION.::&DEBUG.:RP,&P13_NAVIGATION.::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13957517272334239816)
,p_name=>'P13_NAVIGATION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(38800519175104080758)
,p_item_display_point=>'NEXT'
,p_item_default=>'&APP_PAGE_ID.'
,p_prompt=>'Navigation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SALES HISTORY NAVIGATION'
,p_lov=>'.'||wwv_flow_imp.id(13959387031438190987)||'.'
,p_cHeight=>1
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39058953388796172207)
,p_name=>'P13_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(39058953316617172206)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39058953527663172208)
,p_name=>'P13_REGION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(39058953316617172206)
,p_prompt=>'Region'
,p_source=>'REGION'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39058953624428172209)
,p_name=>'P13_STORE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(39058953316617172206)
,p_prompt=>'Store'
,p_source=>'STORE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39058953694828172210)
,p_name=>'P13_PRODUCT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(39058953316617172206)
,p_prompt=>'Product'
,p_source=>'PRODUCT'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39058953866074172212)
,p_name=>'P13_THE_MONTH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(39058953316617172206)
,p_prompt=>'Month'
,p_source=>'THE_MONTH'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13957517434105239817)
,p_name=>'on report view change'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13_NAVIGATION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13957517510197239818)
,p_event_id=>wwv_flow_imp.id(13957517434105239817)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13953918634786688613)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'start timer'
,p_process_sql_clob=>'oow_demo_timing.START_TIMER;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>12010604578281372702
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'About'
,p_alias=>'ABOUT'
,p_step_title=>'About'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'div.helpContainer{width:960px;margin:16px auto;zoom:1}',
'div.helpContainer:before,div.helpContainer:after{content:"\0020";display:block;height:0;overflow:hidden}',
'div.helpContainer:after{clear:both}',
'div.helpContainer div.helpSide{float:left;width:300px}',
'div.helpContainer div.helpSide h1.appNameHeader{position:relative;font:bold 22px/36px Arial,sans-serif;color:#404040;padding:0;margin:0}',
'div.helpContainer div.helpSide h1.appNameHeader img{display:block;position:absolute;left:0;top:0}',
'div.helpContainer div.helpMain{float:right;border-left:1px solid #EEE;width:632px;padding-left:16px}',
'div.helpContainer div.helpMain h2{font:bold 20px/32px Arial,sans-serif;color:#404040;margin:0 0 8px 0}',
'div.helpContainer div.helpMain h3{font:bold 16px/24px Arial,sans-serif;color:#404040;margin:0 0 8px 0}',
'div.helpContainer div.helpMain h4{font:bold 12px/16px Arial,sans-serif;color:#404040;margin:0 0 8px 0}',
'div.helpContainer div.helpMain p{font:normal 12px/16px Arial,sans-serif;color:#404040;margin:0 0 8px 0}',
'div.helpContainer div.helpMain ul{list-style:outside disc;margin:0 0 0 24px}',
'div.helpContainer div.helpMain ul li{font:normal 12px/20px Arial,sans-serif;color:#404040}',
'div.helpContainer div.helpMain .aboutApp,div.helpContainer div.helpMain .textRegion{border-bottom:1px solid #EEE;padding-bottom:16px;margin-bottom:16px}',
'img.appIcon.maps {background-image:url(#APP_IMAGES#app_icon.png);}',
'',
'div.helpContainer div.helpMain ol {margin:0 0 0 24px}',
'</style>'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(37494947663001712133)
,p_name=>'&APP_NAME.'
,p_template=>2674017834225413037
,p_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'t-HeroRegion--featured'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select aa.version app_version,',
'       to_char(aa.pages,''999G999G990'') pages,',
'       AUTHENTICATION_SCHEME_TYPE authentication,',
'       BUILD_STATUS,',
'       FRIENDLY_URL FRIENDLY_URLs,',
'       COMPATIBILITY_MODE,',
'       ''Oracle'' vendor',
'from apex_applications aa',
'where aa.application_id = :APP_ID'))
,p_ajax_enabled=>'Y'
,p_region_image=>'#APP_FILES#icons/app-icon-192.png'
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
 p_id=>wwv_flow_imp.id(37494947817856712134)
,p_query_column_id=>1
,p_column_alias=>'APP_VERSION'
,p_column_display_sequence=>20
,p_column_heading=>'App version'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37494947908161712135)
,p_query_column_id=>2
,p_column_alias=>'PAGES'
,p_column_display_sequence=>30
,p_column_heading=>'Pages'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39159707854645272771)
,p_query_column_id=>3
,p_column_alias=>'AUTHENTICATION'
,p_column_display_sequence=>40
,p_column_heading=>'Authentication'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39159707949682272772)
,p_query_column_id=>4
,p_column_alias=>'BUILD_STATUS'
,p_column_display_sequence=>50
,p_column_heading=>'Build Status'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39159708124252272773)
,p_query_column_id=>5
,p_column_alias=>'FRIENDLY_URLS'
,p_column_display_sequence=>60
,p_column_heading=>'Friendly URLs'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39159708233579272774)
,p_query_column_id=>6
,p_column_alias=>'COMPATIBILITY_MODE'
,p_column_display_sequence=>70
,p_column_heading=>'Compatibility Mode'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37494948005214712136)
,p_query_column_id=>7
,p_column_alias=>'VENDOR'
,p_column_display_sequence=>10
,p_column_heading=>'Vendor'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41393303572946401535)
,p_plug_name=>'Help Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41393304172459401536)
,p_plug_name=>'Features'
,p_parent_plug_id=>wwv_flow_imp.id(41393303572946401535)
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul>',
'<li>Random transaction generation and reporting</li>',
'<li>Progressive Web App (PWA) installable</li>',
'<li>Partial Page Refresh</li>',
'<li>Oracle APEX Dynamic Actions</li>',
'<li>Content Rows and Content Row Menus</li>',
'<li>Charting</li>',
'<li>Faceted Search</li>',
'<li>Smart Search</li>',
'<li>Interactive Reports</li>',
'<li>Modal Dialogs</li>',
'<li>Database data entry forms</li>',
'<li>PL/SQL application logic (transaction generation)</li>',
'<li>Universal Theme with Redwood Lite UX design</li>',
'</ul>'))
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
 p_id=>wwv_flow_imp.id(41393304355290401537)
,p_plug_name=>'About this Application'
,p_parent_plug_id=>wwv_flow_imp.id(41393303572946401535)
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'    This application is a very simplified retail sales analysis app designed to illustrate and highlight various Oracle APEX capabilities.   ',
'    Use this application to generate random sales transaction data and visualize the data.',
'</p>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41394274171504419531)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>80
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39068861497868877059)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(41394274171504419531)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(36863752953836384304)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'Region Stores'
,p_alias=>'REGION-STORES'
,p_step_title=>'Region Stores'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13953919334804688620)
,p_plug_name=>'Region Performance'
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.REGION_NAME,',
'       s.STORE_NAME,',
'       s.region_id, ',
'       sum(sh.item_price * sh.QUANTITY) total_sales,',
'       sum(sh.quantity) units_sold,',
'       count(*) transactions',
'from     OOW_DEMO_SALES_HISTORY sh,',
'         OOW_DEMO_STORES s,',
'         OOW_DEMO_REGIONS r',
'where  sh.store_id = s.id and',
'       s.region_id = r.id and',
'       r.id = :P15_REGION_ID',
'group by s.region_id, REGION_NAME, s.STORE_NAME',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Region Performance'
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
 p_id=>wwv_flow_imp.id(13953919393474688621)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MIKE'
,p_internal_uid=>12010605336969372710
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13953920381727688631)
,p_db_column_name=>'REGION_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Region'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13953920487993688632)
,p_db_column_name=>'REGION_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Region ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13953920564245688633)
,p_db_column_name=>'TOTAL_SALES'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Total Sales'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13953920733022688634)
,p_db_column_name=>'UNITS_SOLD'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Units Sold'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13953920858425688636)
,p_db_column_name=>'TRANSACTIONS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Transactions'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13957517229215239815)
,p_db_column_name=>'STORE_NAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Store'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(13957017732409471074)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'120137037'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STORE_NAME:TOTAL_SALES:UNITS_SOLD:TRANSACTIONS'
,p_sort_column_1=>'TRANSACTIONS'
,p_sort_direction_1=>'DESC'
,p_sum_columns_on_break=>'TOTAL_SALES:UNITS_SOLD:STORES_IN_REGION:TRANSACTIONS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25268333852423500872)
,p_plug_name=>'Timing'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>40
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   x clob;',
'begin',
'    x := to_char(oow_demo_timing.get_elap,''99G9990D000'')||'' seconds'';',
'    return x;',
'end;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(55310463107328243569)
,p_name=>'Stores'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--3cols:t-Cards--animColorFill'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    s.ID,',
'    s.id store_id,',
'    s.STORE_NAME CARD_TITLE,',
'    s.STORE_TYPE,',
'    s.STORE_ADDRESS||'' ''||s.STORE_CITY|| '' ''||s.STORE_STATE||'' ''||s.STORE_ZIP CARD_SUBTEXT,',
'    s.store_lat,',
'    s.store_lng,',
'    (select count(*) from OOW_DEMO_STORE_PRODUCTS sls where sls.store_id = s.id) inventory_count,',
'    s.STORE_OPEN_DATE, ',
'    s.STORE_OPEN_DATE STORE_OPEN_DATE2,',
'    (select region_name from oow_demo_regions r where r.id = s.region_id) CARD_TEXT',
'from "#OWNER#"."OOW_DEMO_STORES" s',
'where s.region_id = :P15_REGION_ID',
'  '))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2974982452297815501
,p_query_num_rows=>150
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_output_show_link=>'Y'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39058950227326172175)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39058950507046172178)
,p_query_column_id=>2
,p_column_alias=>'STORE_ID'
,p_column_display_sequence=>40
,p_column_heading=>'Store Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39058952104625172194)
,p_query_column_id=>3
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>160
,p_column_heading=>'Card Title'
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3:P3_ID:#STORE_ID#'
,p_column_linktext=>'#CARD_TITLE#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39058950675259172180)
,p_query_column_id=>4
,p_column_alias=>'STORE_TYPE'
,p_column_display_sequence=>60
,p_column_heading=>'Store Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39058952214400172195)
,p_query_column_id=>5
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>170
,p_column_heading=>'Card Subtext'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39058951142372172185)
,p_query_column_id=>6
,p_column_alias=>'STORE_LAT'
,p_column_display_sequence=>110
,p_column_heading=>'Store Lat'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39058951262265172186)
,p_query_column_id=>7
,p_column_alias=>'STORE_LNG'
,p_column_display_sequence=>120
,p_column_heading=>'Store Lng'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39058951435133172187)
,p_query_column_id=>8
,p_column_alias=>'INVENTORY_COUNT'
,p_column_display_sequence=>130
,p_column_heading=>'Inventory Count'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39058951510880172188)
,p_query_column_id=>9
,p_column_alias=>'STORE_OPEN_DATE'
,p_column_display_sequence=>140
,p_column_heading=>'Store Open Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39058951636133172189)
,p_query_column_id=>10
,p_column_alias=>'STORE_OPEN_DATE2'
,p_column_display_sequence=>150
,p_column_heading=>'Store Open Date2'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39058952292560172196)
,p_query_column_id=>11
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>180
,p_column_heading=>'Card Text'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55310464711876243580)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39062615015169562271)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(55310464711876243580)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Refresh'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:8,RIR:P15_REGION_ID:&P15_REGION_ID.'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39577067842254410175)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(55310464711876243580)
,p_button_name=>'Edit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Edit'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:9:P9_ID:&P15_REGION_ID.'
,p_icon_css_classes=>'fa-edit'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39062614567566562270)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(55310464711876243580)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39058950107363172174)
,p_name=>'P15_REGION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(55310463107328243569)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39577068021079410176)
,p_name=>'P15_REGION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(55310463107328243569)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(39577068064551410177)
,p_computation_sequence=>20
,p_computation_item=>'P15_REGION_NAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select region_name from OOW_DEMO_REGIONS where id = :P15_REGION_ID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13957847186595807816)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'start timer'
,p_process_sql_clob=>'oow_demo_timing.start_timer;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>12014533130090491905
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'Top Users'
,p_step_title=>'Top Users'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(39780759288359211484)
,p_page_css_classes=>'rw-pillar--sienna'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38799623678536461230)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38799624276095461233)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'lower(USERID)                   as THE_USER,',
'count(*)                        as PAGE_EVENTS,',
'median(ELAP)                    as MEDIAN_ELAPSED,',
'sum(NUM_ROWS)                   as ROWS_FETCHED,',
'sum(decode(SQLERRM,null,0,1))   as ERRORS,',
'sum(CONTENT_LENGTH)             as CONTENT_SERVED,',
'max(time_stamp)                 as MOST_RECENT',
'from apex_activity_log l',
'where flow_id = :app_id  and ',
'time_stamp > sysdate - to_number(:P16_SINCE,''9999999990.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')',
'group by lower(userid)'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(38799624478549461234)
,p_name=>'Top Users'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'PATRICKM'
,p_internal_uid=>2711091832321217270
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38799625249269461238)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Most Recent'
,p_column_type=>'DATE'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36687401572393228459)
,p_db_column_name=>'THE_USER'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'The User'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36687401652074228459)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Page Events'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36687401768058228459)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36687401847395228460)
,p_db_column_name=>'ROWS_FETCHED'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Rows Fetched'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36687402074220228460)
,p_db_column_name=>'ERRORS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36687402168176228460)
,p_db_column_name=>'CONTENT_SERVED'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Content Served'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(38799625364266461238)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'27110928'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'MOST_RECENT:THE_USER:PAGE_EVENTS:ROWS_FETCHED:ERRORS:MEDIAN_ELAPSED:'
,p_sort_column_1=>'Page Events'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
,p_sum_columns_on_break=>'PAGE_EVENTS:ROWS_FETCHED:ERRORS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38799625778080461241)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38799625572911461241)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38799624276095461233)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:RP,16,RIR::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39060152599674981497)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38799625778080461241)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38799623868885461231)
,p_name=>'P16_SINCE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38799623678536461230)
,p_item_default=>'00001.0000000000'
,p_prompt=>'Timeframe'
,p_source=>'00001.0000000000'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (2 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select wwv_flow_lang.system_message(''N_MINUTES'',''15'') d, ',
'trim(to_char(15/(24*60),''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_MINUTES'',''30'') d, ',
'trim(to_char(30/(24*60),''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOUR'',''1'') d, ',
'trim(to_char(1/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_MINUTES'',''90'') d, ',
'trim(to_char(90/(24*60),''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''2'') d, ',
'trim(to_char(1/12,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''3'') d, ',
'trim(to_char(3/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''4'') d, ',
'trim(to_char(4/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''5'') d, ',
'trim(to_char(5/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''6'') d, ',
'trim(to_char(6/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''8'') d, ',
'trim(to_char(8/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''10'') d, ',
'trim(to_char(10/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''12'') d, ',
'trim(to_char(12/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''16'') d, ',
'trim(to_char(16/24,''00000.9999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_DAY'',''1'') d, trim(to_char(1,''00000.9999999999'')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_DAYS'',''2'') d, trim(to_char(2,''00000.9999999999'')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_DAYS'',''3'') d, trim(to_char(3,''00000.9999999999'')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_DAYS'',''4'') d, trim(to_char(4,''00000.9999999999'')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_DAYS'',''5'') d, trim(to_char(5,''00000.9999999999'')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_WEEK'',''1'') d, trim(to_char(7,''00000.9999999999'')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_WEEKS'',''2'') d, trim(to_char(14,''00000.9999999999'')) t from dual',
'order by 2'))
,p_cHeight=>1
,p_tag_css_classes=>'mnw180'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'REDIRECT_SET_VALUE')).to_clob
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_imp_page.create_page(
 p_id=>17
,p_name=>'Activity Calendar'
,p_step_title=>'Activity Calendar'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(39780759288359211484)
,p_page_css_classes=>'rw-pillar--sienna'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38799635749225488007)
,p_plug_name=>'Activity Calendar'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'lower(USERID)||''-''||trim(to_char(count(*),''999G999G999G990'')) "Page Events",',
'trunc(time_stamp) the_day',
'from apex_activity_log l',
'where flow_id = :app_id and userid is not null and userid != ''nobody''',
'group by trunc(time_stamp), lower(USERID)'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'additional_calendar_views', 'list:navigation',
  'display_column', 'Page Events',
  'drag_and_drop', 'N',
  'event_sorting', 'AUTOMATIC',
  'maximum_events_day', '50',
  'multiple_line_event', 'Y',
  'show_time', 'N',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'THE_DAY')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38799637361879488010)
,p_plug_name=>'Activity Calendar'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39867016552014130582)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38799637361879488010)
,p_button_name=>'refresh'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Refresh'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP,17::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39060179681218994062)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38799637361879488010)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_imp_page.create_page(
 p_id=>18
,p_name=>'Sales by Product'
,p_alias=>'SALES-BY-PRODUCT'
,p_step_title=>'Sales by Product'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'24'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13953922947388688656)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>2
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(13957200055962152256)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'compact_numbers_threshold', '10000',
  'more_filters_suggestion_chip', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13957199286188152254)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(13957200055962152256)
,p_name=>'Sales by Product'
,p_template=>2100526641005906379
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'      h.ID            id,',
'      r.REGION_NAME   region,',
'      s.store_name    store,',
'      i.item_Name     product,',
'      h.DATE_OF_SALE,',
'      to_char(h.DATE_OF_SALE,''YYYY.MM'') the_month,',
'      h.QUANTITY,',
'      h.TRANSACTION_ID,',
'      h.ITEM_PRICE,',
'      h.QUANTITY * h.ITEM_PRICE sale,',
'      h.ID transaction_entry_id',
'from  #OWNER#.OOW_DEMO_SALES_HISTORY h,',
'      #OWNER#.OOW_DEMO_REGIONS r,',
'      #OWNER#.OOW_DEMO_STORES s,',
'      #OWNER#.OOW_DEMO_STORE_PRODUCTS p,',
'      #OWNER#.OOW_DEMO_ITEMS i',
'where s.region_id = r.id and',
'      h.store_id = s.id and',
'      p.ITEM_ID = h.PRODUCT_ID and',
'      p.item_id = i.id and',
'      i.id = :P18_ID',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13953921898959688646)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13953922005757688647)
,p_query_column_id=>2
,p_column_alias=>'REGION'
,p_column_display_sequence=>20
,p_column_heading=>'Region'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13953922123455688648)
,p_query_column_id=>3
,p_column_alias=>'STORE'
,p_column_display_sequence=>30
,p_column_heading=>'Store'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13953922221464688649)
,p_query_column_id=>4
,p_column_alias=>'PRODUCT'
,p_column_display_sequence=>40
,p_column_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13953922316033688650)
,p_query_column_id=>5
,p_column_alias=>'DATE_OF_SALE'
,p_column_display_sequence=>50
,p_column_heading=>'Date of Sale'
,p_column_format=>'FMDay Month DD, YYYY HH24:MI'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13953922408931688651)
,p_query_column_id=>6
,p_column_alias=>'THE_MONTH'
,p_column_display_sequence=>60
,p_column_heading=>'Month'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13953922492466688652)
,p_query_column_id=>7
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>90
,p_column_heading=>'Quantity'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13953922563356688653)
,p_query_column_id=>8
,p_column_alias=>'TRANSACTION_ID'
,p_column_display_sequence=>80
,p_column_heading=>'Transaction ID'
,p_column_link=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP,36:P36_TRANSACTION_ENTRY_ID:#TRANSACTION_ENTRY_ID#'
,p_column_linktext=>'#TRANSACTION_ID#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13953922675618688654)
,p_query_column_id=>9
,p_column_alias=>'ITEM_PRICE'
,p_column_display_sequence=>100
,p_column_heading=>'Item Price'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13953922807220688655)
,p_query_column_id=>10
,p_column_alias=>'SALE'
,p_column_display_sequence=>110
,p_column_heading=>'Total Sales Amount'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(80328845254165653)
,p_query_column_id=>11
,p_column_alias=>'TRANSACTION_ENTRY_ID'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13957793148369740964)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13957199286188152254)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13953921360429688641)
,p_name=>'P18_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13957199286188152254)
,p_item_display_point=>'NEXT'
,p_prompt=>'Product'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select item_name, id from OOW_DEMO_ITEMS order by 1'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13953923009444688657)
,p_name=>'P18_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13953922947388688656)
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
 p_id=>wwv_flow_imp.id(13953923114473688658)
,p_name=>'P18_PROCUCT_NAME'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13953923338384688660)
,p_name=>'P18_REGION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13953922947388688656)
,p_prompt=>'Region'
,p_source=>'REGION'
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
 p_id=>wwv_flow_imp.id(13953923432083688661)
,p_name=>'P18_STORE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13953922947388688656)
,p_prompt=>'Store'
,p_source=>'STORE'
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
 p_id=>wwv_flow_imp.id(13957517098272239814)
,p_name=>'P18_THE_MONTH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(13953922947388688656)
,p_prompt=>'Month'
,p_source=>'THE_MONTH'
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
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(13953923189082688659)
,p_computation_sequence=>10
,p_computation_item=>'P18_PROCUCT_NAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ITEM_NAME ',
'from OOW_DEMO_ITEMS ',
'where id = :P18_ID'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13953921514889688642)
,p_name=>'refresh report on change'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13953921654062688643)
,p_event_id=>wwv_flow_imp.id(13953921514889688642)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_imp_page.create_page(
 p_id=>19
,p_name=>'Reports'
,p_step_title=>'Reports'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(39780716619966210174)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38800557065980323756)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38800559646246334569)
,p_plug_name=>'Summary Reports'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_list_id=>wwv_flow_imp.id(38800558852306334567)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(71633074494640487994)
,p_plug_name=>'Transaction Reports'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_list_id=>wwv_flow_imp.id(38816055057012777941)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39053781950615343963)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38800557065980323756)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Sales by Store by Day'
,p_step_title=>'Sales by Store by Day'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(39780716619966210174)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38815895561761613052)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38815897163055671597)
,p_plug_name=>'Sales by Store by Day'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (select store_name from oow_demo_stores s where s.id = sh.store_id)||'' - ''||',
'        to_char(sum(sh.item_price * sh.QUANTITY),''$999G999G999G999G990'')||',
'       ''(''||count(*)||'')'' sales,',
'       sh.store_id,',
'       trunc(sh.date_of_sale) sale_date,',
'       sum(sh.quantity) units_sold',
'from OOW_DEMO_SALES_HISTORY sh',
'group by sh.store_id, trunc(sh.date_of_sale)'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'additional_calendar_views', 'list:navigation',
  'calendar_export', 'CSV',
  'display_column', 'SALES',
  'event_sorting', 'AUTOMATIC',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'show_time', 'N',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'SALE_DATE')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39061893993458507950)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38815895561761613052)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_imp_page.create_page(
 p_id=>21
,p_name=>'Event Log'
,p_step_title=>'Event Log'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(39780759288359211484)
,p_page_css_classes=>'rw-pillar--sienna'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38819360067979490271)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38819360459363490282)
,p_plug_name=>'Event Log'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    ID,',
'    LOG_SEQ,',
'    EVENT_TYPE,',
'    EVENT_NAME,',
'    EVENT_DETAIL,',
'    ERROR_MESSAGE,',
'    CREATED_BY,',
'    CREATED_ON,',
'    CREATED_ON time_since,',
'    A1,',
'    A2,',
'    dbms_lob.substr(error_trace,4000,1) trace,',
'    dbms_lob.substr(error_trace,4000,4001) trace2',
'from OOW_DEMO_EVENT_LOG'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(38819360554097490282)
,p_name=>'Event Log'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'MIKE'
,p_internal_uid=>2730827907869246318
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38819360749872490287)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38819360854000490288)
,p_db_column_name=>'LOG_SEQ'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Log Seq'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38819360977551490288)
,p_db_column_name=>'EVENT_TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Event Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38819361051667490288)
,p_db_column_name=>'EVENT_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Event Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38819361156447490288)
,p_db_column_name=>'EVENT_DETAIL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Event Detail'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38819361268536490289)
,p_db_column_name=>'ERROR_MESSAGE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Error Message'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38819361369559490289)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38819361466526490289)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH24.MI.SSXFF'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38819361557091490289)
,p_db_column_name=>'A1'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'A1'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38819361672026490289)
,p_db_column_name=>'A2'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'A2'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38825690249264639347)
,p_db_column_name=>'TRACE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Trace'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38825690375459639354)
,p_db_column_name=>'TRACE2'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Trace2'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40268062259696823274)
,p_db_column_name=>'TIME_SINCE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Time'
,p_column_type=>'DATE'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(38819361774454490445)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'27308292'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'LOG_SEQ:EVENT_TYPE:EVENT_NAME:EVENT_DETAIL:ERROR_MESSAGE:CREATED_BY:CREATED_ON:TIME_SINCE:'
,p_sort_column_1=>'TIME_SINCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'LOG_SEQ'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39067058789890803983)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38819360067979490271)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_imp_page.create_page(
 p_id=>22
,p_name=>'Sales by Store by Week'
,p_step_title=>'Sales by Store by Week'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(39780716619966210174)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38800561461527352177)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38800561850275362377)
,p_plug_name=>'Sales by Region by Week'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    yyyy_ww yyyy_w,',
'    sum(decode(x.region_id,1,units_sold,0)) r1_units,',
'    sum(decode(x.region_id,2,units_sold,0)) r2_units,',
'    sum(decode(x.region_id,3,units_sold,0)) r3_units,',
'    sum(decode(x.region_id,1,total_sale,0)) r1_total_sale,',
'    sum(decode(x.region_id,2,total_sale,0)) r2_total_sale,',
'    sum(decode(x.region_id,3,total_sale,0)) r3_total_sale',
'from',
'(',
'select (select region_id ',
'        from OOW_DEMO_STORES s ',
'        where s.id = sh.store_id) region_id, ',
'       to_char(sh.date_of_sale, ''YYYY.WW'') yyyy_ww,',
'       sum(sh.item_price * sh.QUANTITY) total_sale,',
'       sum(sh.quantity) units_sold',
'from OOW_DEMO_SALES_HISTORY sh',
'group by sh.store_id, to_char(sh.date_of_sale, ''YYYY.WW'')',
') x',
'group by yyyy_ww'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(38800561965950362377)
,p_name=>'Sales by Store by Week'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'MIKE'
,p_internal_uid=>2712029319722118413
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38800562374467362379)
,p_db_column_name=>'YYYY_W'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Week'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38800570360739970974)
,p_db_column_name=>'R1_UNITS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'&R1. Units'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38800570464162970974)
,p_db_column_name=>'R2_UNITS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'&R2. Units'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38800570754374970975)
,p_db_column_name=>'R1_TOTAL_SALE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'&R1. Total Sale'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'$999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38800570851833970975)
,p_db_column_name=>'R2_TOTAL_SALE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'&R2. Total Sale'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'$999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38801055060641363703)
,p_db_column_name=>'R3_UNITS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'&R3. Units'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38801055172467363703)
,p_db_column_name=>'R3_TOTAL_SALE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'&R3. Total Sale'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'$999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(38800562678326370478)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'27120301'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'YYYY_W:R1_UNITS:R1_TOTAL_SALE:R2_UNITS:R2_TOTAL_SALE::R3_UNITS:R3_TOTAL_SALE'
,p_sort_column_1=>'YYYY_W'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'TOTAL_SALE'
,p_sort_direction_2=>'DESC'
,p_sum_columns_on_break=>'PRODUCT_SALES'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38800563560927384390)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38800561850275362377)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:RP,22,RIR::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39061985064821113424)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38800561461527352177)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38816923958547289416)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set regions'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   i integer := 0;',
'begin',
'',
'for c1 in (select region_name from OOW_DEMO_REGIONS order by id) loop',
'   i := i + 1;',
'   if i = 1 then :R1 := c1.region_name; end if;',
'   if i = 2 then :R2 := c1.region_name; end if;',
'   if i = 3 then :R3 := c1.region_name; end if;',
'   if i = 4 then :R4 := c1.region_name; end if;',
'   if i = 5 then :R5 := c1.region_name; end if;',
'end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>16594361276569978206
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_imp_page.create_page(
 p_id=>23
,p_name=>'Sales History Interactive Grid'
,p_alias=>'SALES-HISTORY-INTERACTIVE-GRID'
,p_step_title=>'Sales History Interactive Grid'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14282434499674447946)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14282435165267447949)
,p_plug_name=>'Sales History Interactive Grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    h.ID            id,',
'    r.REGION_NAME   region,',
'    s.store_name    store,',
'    i.item_Name     product,',
'    h.DATE_OF_SALE,',
'    to_char(h.DATE_OF_SALE,''YYYY.MM'') the_month,',
'    h.QUANTITY,',
'    h.TRANSACTION_ID,',
'    h.ITEM_PRICE,',
'    h.QUANTITY * h.ITEM_PRICE sale,',
'    i.id product_id,',
'    s.id store_id',
'from #OWNER#.OOW_DEMO_SALES_HISTORY h,',
'     #OWNER#.OOW_DEMO_REGIONS r,',
'     #OWNER#.OOW_DEMO_STORES s,',
'     #OWNER#.OOW_DEMO_STORE_PRODUCTS p,',
'     #OWNER#.OOW_DEMO_ITEMS i',
'where s.region_id = r.id and',
'      h.store_id = s.id and',
'      p.ITEM_ID = h.PRODUCT_ID and',
'      p.item_id = i.id'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'Sales History Interactive Grid'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14282436487129447952)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14282437464534447953)
,p_name=>'REGION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REGION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Region'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14282438511192447955)
,p_name=>'STORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STORE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Store'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14282439545712447955)
,p_name=>'PRODUCT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>60
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14282440479967447957)
,p_name=>'DATE_OF_SALE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_OF_SALE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date of Sale'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14282441641411447958)
,p_name=>'THE_MONTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'THE_MONTH'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'The Month'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>7
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14282442617351447959)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14282443621794447960)
,p_name=>'TRANSACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSACTION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Transaction Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14282444612515447961)
,p_name=>'ITEM_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Item Price'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14282445586840447961)
,p_name=>'SALE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sale'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14282446639225447962)
,p_name=>'PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14282447639304447963)
,p_name=>'STORE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STORE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(14282435734912447949)
,p_internal_uid=>12339121678407132038
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(14282436130481447950)
,p_interactive_grid_id=>wwv_flow_imp.id(14282435734912447949)
,p_static_id=>'123391221'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(14282436342104447950)
,p_report_id=>wwv_flow_imp.id(14282436130481447950)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14282436918445447953)
,p_view_id=>wwv_flow_imp.id(14282436342104447950)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(14282436487129447952)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14282437881322447954)
,p_view_id=>wwv_flow_imp.id(14282436342104447950)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(14282437464534447953)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14282438941359447955)
,p_view_id=>wwv_flow_imp.id(14282436342104447950)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(14282438511192447955)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14282439908867447956)
,p_view_id=>wwv_flow_imp.id(14282436342104447950)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(14282439545712447955)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14282440973169447957)
,p_view_id=>wwv_flow_imp.id(14282436342104447950)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(14282440479967447957)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>323
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14282442003375447958)
,p_view_id=>wwv_flow_imp.id(14282436342104447950)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(14282441641411447958)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14282442960181447959)
,p_view_id=>wwv_flow_imp.id(14282436342104447950)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(14282442617351447959)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14282443976059447960)
,p_view_id=>wwv_flow_imp.id(14282436342104447950)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(14282443621794447960)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14282444975429447961)
,p_view_id=>wwv_flow_imp.id(14282436342104447950)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(14282444612515447961)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14282445991256447962)
,p_view_id=>wwv_flow_imp.id(14282436342104447950)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(14282445586840447961)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14282447006864447962)
,p_view_id=>wwv_flow_imp.id(14282436342104447950)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(14282446639225447962)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14282448040509447963)
,p_view_id=>wwv_flow_imp.id(14282436342104447950)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(14282447639304447963)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25593399800261645899)
,p_plug_name=>'Timer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>30
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   x clob;',
'begin',
'    x := to_char(oow_demo_timing.get_elap,''99G9990D000'')||'' seconds'';',
'    return x;',
'end;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14282676790637496776)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14282434499674447946)
,p_button_name=>'reset'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP,23::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14282682646777498205)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14282434499674447946)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14283942478272547901)
,p_branch_name=>'branch to requested page'
,p_branch_action=>'f?p=&APP_ID.:&P23_NAVIGATION.:&SESSION.::&DEBUG.:RP,&P23_NAVIGATION.::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>50
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14282618889255489910)
,p_name=>'P23_NAVIGATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14282434499674447946)
,p_item_display_point=>'NEXT'
,p_item_default=>'&APP_PAGE_ID.'
,p_prompt=>'Navigation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SALES HISTORY NAVIGATION'
,p_lov=>'.'||wwv_flow_imp.id(13959387031438190987)||'.'
,p_cHeight=>1
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14283924513071542877)
,p_name=>'on navigation click'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P23_NAVIGATION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14283924900067542882)
,p_event_id=>wwv_flow_imp.id(14283924513071542877)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14283345238316950307)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Start Timer'
,p_process_sql_clob=>'oow_demo_timing.start_timer;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>12340031181811634396
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_imp_page.create_page(
 p_id=>24
,p_tab_set=>'TS1'
,p_name=>'Sales History Generation Log'
,p_step_title=>'Sales History Generation Log'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38801563377830652051)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38801563756334652055)
,p_plug_name=>'Sales History Generation Log'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'    owner,',
'    num_days,',
'    max_orders,',
'    start_time,',
'    end_time,',
'    (extract(DAY FROM end_time-start_time)*24*60*60)+ ',
'        (extract(HOUR FROM end_time-start_time)*60*60)+',
'        (extract(MINUTE FROM end_time-start_time)*60)+',
'        extract(SECOND FROM end_time-start_time) duration',
'from oow_demo_hist_gen_log'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(38801563850484652055)
,p_name=>'Sales History Generation Log'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'DAVID.GALE'
,p_internal_uid=>2713031204256408091
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38801564078726652061)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38801564166724652062)
,p_db_column_name=>'OWNER'
,p_display_order=>3
,p_column_identifier=>'B'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38801564248957652062)
,p_db_column_name=>'NUM_DAYS'
,p_display_order=>4
,p_column_identifier=>'C'
,p_column_label=>'Num Days'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38801564358218652063)
,p_db_column_name=>'MAX_ORDERS'
,p_display_order=>5
,p_column_identifier=>'D'
,p_column_label=>'Max Orders'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38801564474506652063)
,p_db_column_name=>'START_TIME'
,p_display_order=>6
,p_column_identifier=>'E'
,p_column_label=>'Start Time'
,p_column_type=>'DATE'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38801564551146652063)
,p_db_column_name=>'END_TIME'
,p_display_order=>7
,p_column_identifier=>'F'
,p_column_label=>'End Time'
,p_column_type=>'DATE'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38801565549670686888)
,p_db_column_name=>'DURATION'
,p_display_order=>8
,p_column_identifier=>'G'
,p_column_label=>'Duration (sec)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(38801564763344652991)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'27130322'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'OWNER:NUM_DAYS:MAX_ORDERS:START_TIME:END_TIME:DURATION'
,p_sort_column_1=>'START_TIME'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
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
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_imp_page.create_page(
 p_id=>25
,p_name=>'Sales by Product and Store by Week'
,p_step_title=>'Sales by Product and Store by Week'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(39780716619966210174)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38815876249360500897)
,p_plug_name=>'Sales by Product Region by Week'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    product_id,',
'    (select item_name from oow_demo_items i where i.id = x.product_id) product,',
'    yyyy_ww yyyy_w,',
'    sum(decode(x.region_id,1,units_sold,0)) r1_units,',
'    sum(decode(x.region_id,2,units_sold,0)) r2_units,',
'    sum(decode(x.region_id,3,units_sold,0)) r3_units,',
'    sum(decode(x.region_id,1,total_sale,0)) r1_total_sale,',
'    sum(decode(x.region_id,2,total_sale,0)) r2_total_sale,',
'    sum(decode(x.region_id,3,total_sale,0)) r3_total_sale',
'from',
'(',
'select (select region_id ',
'        from OOW_DEMO_STORES s ',
'        where s.id = sh.store_id) region_id, ',
'       sh.product_id,',
'       to_char(sh.date_of_sale, ''YYYY.WW'') yyyy_ww,',
'       sum(sh.item_price * sh.QUANTITY) total_sale,',
'       sum(sh.quantity) units_sold',
'from     OOW_DEMO_SALES_HISTORY sh',
'group by sh.product_id, ',
'         sh.store_id, ',
'         to_char(sh.date_of_sale, ''YYYY.WW'')',
') x',
'group by product_id, yyyy_ww'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(38815876467161500898)
,p_name=>'Sales by Store by Week'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'MIKE'
,p_internal_uid=>2727343820933256934
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38815876547309500900)
,p_db_column_name=>'YYYY_W'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Week'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38815876653302500900)
,p_db_column_name=>'R1_UNITS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'&R1. Units'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38815876748463500900)
,p_db_column_name=>'R2_UNITS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'&R2. Units'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38815876852752500900)
,p_db_column_name=>'R1_TOTAL_SALE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'&R1. Total Sale'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'$999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38815876957838500900)
,p_db_column_name=>'R2_TOTAL_SALE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'&R2. Total Sale'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'$999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38815877069777500900)
,p_db_column_name=>'R3_UNITS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'&R3. Units'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38815877171587500900)
,p_db_column_name=>'R3_TOTAL_SALE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'&R3. Total Sale'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'$999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38815893577066562088)
,p_db_column_name=>'PRODUCT_ID'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Product ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38815893849624573108)
,p_db_column_name=>'PRODUCT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(38815877272183500901)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'27273447'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>1000
,p_report_columns=>'PRODUCT:YYYY_W:R1_UNITS:R1_TOTAL_SALE:R2_UNITS:R2_TOTAL_SALE:R3_UNITS:R3_TOTAL_SALE:TOTAL_UNITS:'
,p_sort_column_1=>'YYYY_W'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PRODUCT'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'YYYY_W'
,p_break_enabled_on=>'YYYY_W'
,p_sum_columns_on_break=>'PRODUCT_SALES:TOTAL_UNITS:R3_TOTAL_SALE:R3_UNITS:R2_TOTAL_SALE:R2_UNITS:R1_TOTAL_SALE:R1_UNITS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38815877661373500903)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38815877473799500902)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38815876249360500897)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:RP,25,RIR::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39061873670383506388)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38815877661373500903)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38816924254868297763)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set region names'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   i integer := 0;',
'begin',
'',
'for c1 in (select region_name from OOW_DEMO_REGIONS order by id) loop',
'   i := i + 1;',
'   if i = 1 then :R1 := c1.region_name; end if;',
'   if i = 2 then :R2 := c1.region_name; end if;',
'   if i = 3 then :R3 := c1.region_name; end if;',
'   if i = 4 then :R4 := c1.region_name; end if;',
'   if i = 5 then :R5 := c1.region_name; end if;',
'end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>16594361572890986553
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_imp_page.create_page(
 p_id=>26
,p_name=>'Remove Transaction History'
,p_alias=>'REMOVE-TRANSACTION-HISTORY'
,p_step_title=>'Remove Transaction History'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(39781911520494635885)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37026811516815935913)
,p_plug_name=>'Tranaction Count'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning:t-Alert--accessibleHeading'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    r clob;',
'    c int;',
'begin',
'    for c1 in (select count(*) c from oow_demo_sales_history) loop',
'        c := c1.c;',
'    end loop;',
'    return ''<font size="+10">Transaction Count: ''||to_char(nvl(c,0),''FM999G999G999G999G990'')||'' </font>'';',
'end;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38962022457075585783)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37026811076932935909)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(37026811516815935913)
,p_button_name=>'Remove_transactions'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Remove History'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_confirm_message=>'Please confirm you wish to remove all existing transaction history'
,p_icon_css_classes=>'fa-trash'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37026811280934935911)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38962022457075585783)
,p_button_name=>'Cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39065822148540354265)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38962022457075585783)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37026811435530935912)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'remove_transactions'
,p_process_sql_clob=>'execute immediate ''truncate table oow_demo_sales_history'';'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(37026811076932935909)
,p_internal_uid=>14804248753553624702
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_imp_page.create_page(
 p_id=>27
,p_tab_set=>'TS1'
,p_name=>'Product Availability'
,p_step_title=>'Product Availability'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38815908974026675766)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38815909346855675770)
,p_plug_name=>'Product Availability'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select store_id,',
'       store_name,',
'       available_products,',
'       all_products - available_products unavailable_products,',
'       all_products,',
'       round(100*available_products/all_products) pct_available',
'from (',
'select s.id store_id,',
'       s.store_name,',
'       (select count(*) from oow_demo_store_products p where s.id = p.store_id) available_products, ',
'       p.product_count all_products',
'from oow_demo_stores s,',
'     (select count(*) product_count from oow_demo_items) p',
') x'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(38815909464336675770)
,p_name=>'Product Availability'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'MIKE'
,p_internal_uid=>2727376818108431806
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38815909649214675779)
,p_db_column_name=>'STORE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Store'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38815909758865675779)
,p_db_column_name=>'STORE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Store'
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3:P3_ID:#STORE_ID#'
,p_column_linktext=>'#STORE_NAME#'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38815909855180675779)
,p_db_column_name=>'AVAILABLE_PRODUCTS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Available Products'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38815909960305675779)
,p_db_column_name=>'ALL_PRODUCTS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'All Products'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38815911158159692061)
,p_db_column_name=>'UNAVAILABLE_PRODUCTS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Unavailable Products'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38815911653788700244)
,p_db_column_name=>'PCT_AVAILABLE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Percent Available'
,p_column_html_expression=>'#PCT_AVAILABLE#%'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(38815910167593675905)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'27273776'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'STORE_NAME:AVAILABLE_PRODUCTS:UNAVAILABLE_PRODUCTS:PCT_AVAILABLE'
,p_sort_column_1=>'PCT_AVAILABLE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'STORE_NAME'
,p_sort_direction_2=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39062036119238121294)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38815908974026675766)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_imp_page.create_page(
 p_id=>28
,p_name=>'Generate Transactions'
,p_alias=>'GENERATE-TRANSACTIONS'
,p_step_title=>'Generate Transactions'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(39781911520494635885)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38815914878778290115)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38815918753452324886)
,p_plug_name=>'Generate Transactions'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--displaySubtitle:t-Cards--featured force-fa-lg:t-Cards--displayIcons:t-Cards--3cols:t-Cards--animColorFill'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(38815918276539324884)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39053351322407739640)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38815914878778290115)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(36863753175821389232)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38816190766391007831)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear cache for transaction page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'30'
,p_internal_uid=>16593628084413696621
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_imp_page.create_page(
 p_id=>29
,p_name=>'Generate Transaction'
,p_step_title=>'Generate Transaction'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(39781911520494635885)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'<p>Click the button to generate a transaction.  A dynamic action will generate a transaction and refresh a transaction details report.</p>'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(14045072529409737147)
,p_name=>'Transaction Details'
,p_template=>3371237801798025892
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'       created_on,',
'       store_id, ',
'       product_id, ',
'       quantity, ',
'       item_price,',
'       quantity * item_price as sale_amount,',
'       date_of_sale,',
'       --',
'       -- store name',
'       --',
'       (select store_name ',
'        from OOW_demo_stores s ',
'        where s.id = h.store_id) store,',
'       --',
'       -- product',
'       --',
'       (select item_Name ',
'        from OOW_demo_items i',
'        where i.id = h.product_id) product',
'       --',
'from oow_demo_sales_history h',
'where id = :P29_TRANSACTION_ID'))
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
 p_id=>wwv_flow_imp.id(14045072573451737148)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_column_heading=>'Transaction ID'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14045072670669737149)
,p_query_column_id=>2
,p_column_alias=>'CREATED_ON'
,p_column_display_sequence=>20
,p_column_heading=>'Created On'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14045072849619737150)
,p_query_column_id=>3
,p_column_alias=>'STORE_ID'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14045072864209737151)
,p_query_column_id=>4
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14045072986655737152)
,p_query_column_id=>5
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>50
,p_column_heading=>'Quantity'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14045073119664737153)
,p_query_column_id=>6
,p_column_alias=>'ITEM_PRICE'
,p_column_display_sequence=>60
,p_column_heading=>'Item Price'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14045073184879737154)
,p_query_column_id=>7
,p_column_alias=>'SALE_AMOUNT'
,p_column_display_sequence=>70
,p_column_heading=>'Sale Amount'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14045073256744737155)
,p_query_column_id=>8
,p_column_alias=>'DATE_OF_SALE'
,p_column_display_sequence=>80
,p_column_heading=>'Date Of Sale'
,p_column_format=>'DD-MON-YYYY HH24:MI:SS'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14045073546439737157)
,p_query_column_id=>9
,p_column_alias=>'STORE'
,p_column_display_sequence=>100
,p_column_heading=>'Store'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14045073598924737158)
,p_query_column_id=>10
,p_column_alias=>'PRODUCT'
,p_column_display_sequence=>110
,p_column_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38815919361968328317)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38815920277362334565)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(38815919361968328317)
,p_button_name=>'GENERATE_TRANSACTION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Generate Transaction'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-gear'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14045073949017737161)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(38815919361968328317)
,p_button_name=>'reset'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:RP,29::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39065502915769721902)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38815919361968328317)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(38815920757539347765)
,p_branch_action=>'f?p=&APP_ID.:29:&SESSION.:SHOW_SALE:&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(38815920277362334565)
,p_branch_sequence=>10
,p_branch_comment=>'Created 25-OCT-2012 15:37 by MIKE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14045073826684737160)
,p_name=>'P29_TRANSACTION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14045072529409737147)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14045072073110737143)
,p_name=>'generate sale'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38815920277362334565)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14045072224772737144)
,p_event_id=>wwv_flow_imp.id(14045072073110737143)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P29_TRANSACTION_ID := oow_demo_gen_data_pkg.generate_transaction;'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14045073696390737159)
,p_event_id=>wwv_flow_imp.id(14045072073110737143)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14045072529409737147)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38815920450613345793)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generate transaction'
,p_process_sql_clob=>':P29_TRANSACTION_ID := oow_demo_gen_data_pkg.generate_transaction;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(38815920277362334565)
,p_process_success_message=>'Action Processed'
,p_internal_uid=>16593357768636034583
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_imp_page.create_page(
 p_id=>30
,p_name=>'Transaction'
,p_step_title=>'Transaction'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'<p>Loading the page will cause a transaction to be completed.  Reload the page to generate another transaction.  Pressing the button will not post the page simply reload the page.</p>'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38815924470546842309)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38815925272448853570)
,p_plug_name=>'Generate One Transaction on Page Load'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38815925650538853571)
,p_plug_name=>'show last generation'
,p_parent_plug_id=>wwv_flow_imp.id(38815925272448853570)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    x number;',
'begin',
'   begin',
'       x := oow_demo_gen_data_pkg.generate_transaction;',
'       sys.htp.p(''<br><strong>Transaction</strong> "''||x||''" completed'');',
'   exception when others then',
'       sys.htp.p(''<br>unexpected error: ''|| apex_escape.html( sqlerrm ));',
'   end;',
'',
'   for c1 in (select id,',
'                     store_id, ',
'                     created_on,',
'                     product_id, ',
'                     quantity, ',
'                     item_price,',
'                     date_of_sale,',
'                     (select store_name ',
'                      from OOW_demo_stores s ',
'                      where s.id = h.store_id) store,',
'                     (select item_Name from OOW_demo_items i',
'                      where i.id = h.product_id) product,',
'                     SALES_DATA ',
'              from oow_demo_sales_history h',
'              where id = x) loop',
'     sys.htp.p(''<br /><strong>ID</strong>: ''||apex_escape.html(c1.id));',
'     sys.htp.p(''<br /><strong>Store</strong>: ''||apex_escape.html(c1.store));',
'     sys.htp.p(''<br /><strong>Product</strong>: ''||apex_escape.html(c1.product));',
'     sys.htp.p(''<br /><strong>Date of Sale</strong>: ''||to_char(c1.date_of_sale,''DD-MON-YYYY HH24:MI:SS''));',
'     sys.htp.p(''<br /><strong>Date of Posting</strong>: ''||to_char(c1.created_on,''DD-MON-YYYY HH24:MI:SS''));',
'',
'     sys.htp.p(''<br /><strong>Quantity</strong>: ''||to_char(c1.quantity,''999G999G999G990''));',
'     sys.htp.p(''<br /><strong>Price</strong>: ''||to_char(c1.item_price,''$999G999G999G990D00''));',
'     sys.htp.p(''<br /><strong>Sale</strong>: ''||to_char(c1.item_price * c1.quantity,''$999G999G999G990D00''));',
'   end loop;',
'',
'exception when others then',
'  sys.htp.prn( apex_escape.html( sqlerrm ) );',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38815927064576872731)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(38815924470546842309)
,p_button_name=>'refresh_page'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Refresh Page'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39065574909259736240)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38815924470546842309)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38815925473214853571)
,p_name=>'P30_TRANSACTION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38815925272448853570)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38816033148290895481)
,p_name=>'P30_AUTOREFRESH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(38815925272448853570)
,p_prompt=>'Auto-Refresh'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'AUTO REFRESH'
,p_lov=>'.'||wwv_flow_imp.id(38816034175957950751)||'.'
,p_tag_css_classes=>'mnw180'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '5',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38816033275649903352)
,p_name=>'Set Auto-Refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_AUTOREFRESH'
,p_condition_element=>'P30_AUTOREFRESH'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38816033761581908770)
,p_event_id=>wwv_flow_imp.id(38816033275649903352)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P30_AUTOREFRESH'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38816033551236903353)
,p_event_id=>wwv_flow_imp.id(38816033275649903352)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setTimeout("location.reload(true);",1000 * $v(''P30_AUTOREFRESH''));'
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_imp_page.create_page(
 p_id=>31
,p_name=>'100 Transactions Generated'
,p_step_title=>'100 Transactions Generated'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(39781911520494635885)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25268069105662970404)
,p_plug_name=>'Timing'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>30
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   x clob;',
'begin',
'    x := to_char(oow_demo_timing.get_elap,''99G9990D000'')||'' seconds'';',
'    return x;',
'end;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38815928261524883015)
,p_plug_name=>'Generate 100 Transactions on Page Load'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38815929064659883016)
,p_plug_name=>'show last generation'
,p_parent_plug_id=>wwv_flow_imp.id(38815928261524883015)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'oow_demo_gen_data_pkg.exec_100_transactions;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38815929276340883016)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38815928650240883016)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(38815929276340883016)
,p_button_name=>'refresh_page'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Generate 100 Transactions'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-gear'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39064767691183693367)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38815929276340883016)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(40258381589377610782)
,p_branch_name=>'Go to Calling Page'
,p_branch_action=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38815928874473883016)
,p_name=>'P31_TRANSACTION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38815928261524883015)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13958167713749408200)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'start timer'
,p_process_sql_clob=>'oow_demo_timing.start_timer;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>12014853657244092289
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_imp_page.create_page(
 p_id=>32
,p_name=>'Table Counts'
,p_step_title=>'Table Counts'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(39780716619966210174)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38816036352524066399)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(39577071170425410208)
,p_name=>'Row Counts'
,p_template=>4501440665235496320
,p_display_sequence=>21
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-BadgeList--large:t-BadgeList--dash:t-BadgeList--fixed:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'   to_char((select count(*) from OOW_DEMO_HIST_GEN_LOG),''999G999G999G999G990'')    HIST_GEN_LOG,',
'   to_char((select count(*) from OOW_DEMO_ITEMS),''999G999G999G999G990'')           ITEMS,',
'   to_char((select count(*) from OOW_DEMO_REGIONS),''999G999G999G999G990'')         REGIONS,',
'   to_char((select count(*) from OOW_DEMO_SALES_HISTORY),''999G999G999G999G990'')   SALES_HISTORY,',
'   to_char((select count(*) from OOW_DEMO_STORE_PRODUCTS),''999G999G999G999G990'')  STORE_PRODUCTS,',
'   to_char((select count(*) from OOW_DEMO_STORES),''999G999G999G999G990'')          STORES',
'from dual '))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2104643962563030528
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39828921311687973987)
,p_query_column_id=>1
,p_column_alias=>'HIST_GEN_LOG'
,p_column_display_sequence=>10
,p_column_heading=>'Hist Gen Log'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39828921414519973988)
,p_query_column_id=>2
,p_column_alias=>'ITEMS'
,p_column_display_sequence=>20
,p_column_heading=>'Items'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39828921528525973989)
,p_query_column_id=>3
,p_column_alias=>'REGIONS'
,p_column_display_sequence=>30
,p_column_heading=>'Regions'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39828921614314973990)
,p_query_column_id=>4
,p_column_alias=>'SALES_HISTORY'
,p_column_display_sequence=>40
,p_column_heading=>'Sales History'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39828921684772973991)
,p_query_column_id=>5
,p_column_alias=>'STORE_PRODUCTS'
,p_column_display_sequence=>50
,p_column_heading=>'Store Products'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39828921816913973992)
,p_query_column_id=>6
,p_column_alias=>'STORES'
,p_column_display_sequence=>60
,p_column_heading=>'Stores'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39062240987398519820)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38816036352524066399)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_imp_page.create_page(
 p_id=>33
,p_name=>'Transaction Log'
,p_step_title=>'Transaction Log'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(39780716619966210174)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38816051578569291867)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38816052648945643143)
,p_plug_name=>'Transaction Generation Log'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id, owner, num_days, max_orders, end_time, end_time_since, elapsed_seconds, row_count,',
'       to_number(decode (elapsed_seconds,null,null,row_count/elapsed_seconds)) rows_per_second',
'from (',
'select',
'    ID,',
'    OWNER,',
'    NUM_DAYS,',
'    MAX_ORDERS,',
'    START_TIME,',
'    END_TIME,',
'    END_TIME end_time_since,',
'    (extract(SECOND FROM end_time-start_time)) +',
'    (extract(MINUTE FROM end_time-start_time) * 60) +',
'    (extract(HOUR FROM end_time-start_time) *3600 ) elapsed_seconds,',
'    row_count',
'from OOW_DEMO_HIST_GEN_LOG) base_query'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(38816052761414643144)
,p_name=>'Transaction Generation Log'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'MIKE'
,p_internal_uid=>2727520115186399180
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38816052959248643148)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38816053073051643149)
,p_db_column_name=>'OWNER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38816053178194643149)
,p_db_column_name=>'NUM_DAYS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Num Days'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38816053277680643149)
,p_db_column_name=>'MAX_ORDERS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Max Orders'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38816053477912643150)
,p_db_column_name=>'END_TIME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'End Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38816188469142857153)
,p_db_column_name=>'ELAPSED_SECONDS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Elapsed Seconds'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38827871060641165570)
,p_db_column_name=>'ROW_COUNT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'New Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22561307917366820013)
,p_db_column_name=>'ROWS_PER_SECOND'
,p_display_order=>18
,p_column_identifier=>'J'
,p_column_label=>'Rows Per Second'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13253513032528443741)
,p_db_column_name=>'END_TIME_SINCE'
,p_display_order=>28
,p_column_identifier=>'K'
,p_column_label=>'Last Action'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(38816053549291643302)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'27275210'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'OWNER:NUM_DAYS:MAX_ORDERS:END_TIME:ELAPSED_SECONDS:ROW_COUNT:ROWS_PER_SECOND:END_TIME_SINCE:'
,p_sort_column_1=>'END_TIME_SINCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'START_TIME'
,p_sort_direction_2=>'DESC'
,p_sum_columns_on_break=>'ROW_COUNT:ELAPSED_SECONDS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38816372868872112612)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38816052648945643143)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:33,RIR::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39066142163514754128)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38816051578569291867)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_imp_page.create_page(
 p_id=>34
,p_tab_set=>'TS1'
,p_name=>'Transaction Summary by Minute'
,p_step_title=>'Transaction Summary by Minute'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38816374171585119522)
,p_plug_name=>'Transaction Generation Log Summarized by Minute'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>11
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    count(distinct OWNER) owners,',
'    sum(NUM_DAYS) total_days,',
'    sum(MAX_ORDERS) total_orders,',
'    sum(num_days*max_orders) orders_xactions_attempted,',
'    count(*) api_invocations,',
'    sum(num_days*max_orders)/60 orders_ps,',
'    count(*)/60 api_ps,',
'    to_char(start_time,''YYYY.MM.DD HH24:MI'')',
'    the_minute',
'from OOW_DEMO_HIST_GEN_LOG',
'group by to_char(start_time,''YYYY.MM.DD HH24:MI'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(38816374346229119523)
,p_name=>'Transaction Generation Log'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'MIKE'
,p_internal_uid=>2727841700000875559
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38816376356451137372)
,p_db_column_name=>'OWNERS'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Submitting Users'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38816376476966137373)
,p_db_column_name=>'TOTAL_DAYS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Total Days'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38816376547990137373)
,p_db_column_name=>'TOTAL_ORDERS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Total Orders'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38816376677844137373)
,p_db_column_name=>'API_INVOCATIONS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'API Invocations'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38816376762213137373)
,p_db_column_name=>'THE_MINUTE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Hour: Minute'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38816377563986158455)
,p_db_column_name=>'ORDERS_XACTIONS_ATTEMPTED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Order Transactions Attempted'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35659511883037353754)
,p_db_column_name=>'ORDERS_PS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Orders / second'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35659513312943353758)
,p_db_column_name=>'API_PS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'API calls / second'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(38816375174111119527)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'27278426'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'THE_MINUTE:OWNERS:API_INVOCATIONS:ORDERS_XACTIONS_ATTEMPTED:ORDERS_PS:API_PS'
,p_sort_column_1=>'THE_MINUTE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'START_TIME'
,p_sort_direction_2=>'DESC'
,p_sum_columns_on_break=>'ORDERS_XACTIONS_ATTEMPTED:API_INVOCATIONS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38816375748392119533)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38816375360064119529)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38816374171585119522)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:34,RIR::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39066215363508372659)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38816375748392119533)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
end;
/
prompt --application/pages/page_00035
begin
wwv_flow_imp_page.create_page(
 p_id=>35
,p_tab_set=>'TS1'
,p_name=>'Transaction Summary by Hour'
,p_step_title=>'Transaction Summary by Hour'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38816379062110194550)
,p_plug_name=>'Transaction Generation Log Summarized by Hour'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>11
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    count(distinct OWNER) owners,',
'    sum(NUM_DAYS) total_days,',
'    sum(MAX_ORDERS) total_orders,',
'    sum(num_days*max_orders) orders_xactions_attempted,',
'    count(*) api_invocations,',
'    sum(num_days*max_orders)/3600 orders_ps,',
'    count(*)/3600 api_ps,',
'    to_char(start_time,''YYYY.MM.DD HH24'')',
'    the_minute',
'from OOW_DEMO_HIST_GEN_LOG',
'group by to_char(start_time,''YYYY.MM.DD HH24'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(38816379255855194554)
,p_name=>'Transaction Generation Log'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'MIKE'
,p_internal_uid=>2727846609626950590
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38816379376542194554)
,p_db_column_name=>'OWNERS'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Submitting Users'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38816379451353194554)
,p_db_column_name=>'TOTAL_DAYS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Total Days'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38816379555426194554)
,p_db_column_name=>'TOTAL_ORDERS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Total Orders'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38816379666739194554)
,p_db_column_name=>'API_INVOCATIONS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'API Invocations'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38816379757170194554)
,p_db_column_name=>'THE_MINUTE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Hour'
,p_column_type=>'STRING'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38816379863116194554)
,p_db_column_name=>'ORDERS_XACTIONS_ATTEMPTED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Order Transactions Attempted'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35663722970659331712)
,p_db_column_name=>'ORDERS_PS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Orders / second'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35663723638989331714)
,p_db_column_name=>'API_PS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'API calls / second'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(38816379971419194556)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'27278474'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'THE_MINUTE:OWNERS:API_INVOCATIONS:ORDERS_XACTIONS_ATTEMPTED:ORDERS_PS:API_PS'
,p_sort_column_1=>'THE_MINUTE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'START_TIME'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38816380567446194556)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38816380151066194556)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38816379062110194550)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:35,RIR::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39066218637965374207)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38816380567446194556)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
end;
/
prompt --application/pages/page_00036
begin
wwv_flow_imp_page.create_page(
 p_id=>36
,p_name=>'Transaction Detail'
,p_alias=>'TRANSACTION-DETAIL'
,p_page_mode=>'MODAL'
,p_step_title=>'Transaction Detail'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(14291602414027542614)
,p_name=>'Transaction Line Items'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    h.id,',
'    h.store_id stores_ID,',
'    (select store_name from #OWNER#.oow_demo_stores s where s.id = h.store_id) store,',
'    p.item_id  product_ID,',
'    (select item_name from OOW_DEMO_ITEMS p where p.id = h.product_id) product,',
'    h.QUANTITY,',
'    h.ITEM_PRICE,',
'    h.QUANTITY * h.ITEM_PRICE Transaction_amount',
'from OOW_DEMO_SALES_HISTORY h,',
'     OOW_DEMO_STORE_PRODUCTS p',
'where ',
'      p.ITEM_ID = h.PRODUCT_ID and',
'      h.ID = :P36_TRANSACTION_ENTRY_ID',
' ',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>150
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14291603703436542627)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>110
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14291602871700542619)
,p_query_column_id=>2
,p_column_alias=>'STORES_ID'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14291602977421542620)
,p_query_column_id=>3
,p_column_alias=>'STORE'
,p_column_display_sequence=>50
,p_column_heading=>'Store'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14291603112896542621)
,p_query_column_id=>4
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14291603252628542622)
,p_query_column_id=>5
,p_column_alias=>'PRODUCT'
,p_column_display_sequence=>70
,p_column_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14291603257255542623)
,p_query_column_id=>6
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>80
,p_column_heading=>'Quantity'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14291603392317542624)
,p_query_column_id=>7
,p_column_alias=>'ITEM_PRICE'
,p_column_display_sequence=>90
,p_column_heading=>'Item Price'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14291602693778542617)
,p_query_column_id=>8
,p_column_alias=>'TRANSACTION_AMOUNT'
,p_column_display_sequence=>100
,p_column_heading=>'Transaction Amount'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(27761041123626794400)
,p_name=>'Transaction Detail'
,p_template=>3371237801798025892
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-BadgeList--large:t-BadgeList--dash:t-BadgeList--fixed'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    count(distinct h.store_id) stores,',
'    count(distinct p.item_id)  products,',
'    sum(h.QUANTITY * h.ITEM_PRICE) Transaction_amount,',
'    count(*) line_items',
'from #OWNER#.OOW_DEMO_SALES_HISTORY h,',
'     #OWNER#.OOW_DEMO_STORE_PRODUCTS p',
'where ',
'      p.ITEM_ID = h.PRODUCT_ID and',
'      h.ID = :P36_TRANSACTION_ENTRY_ID',
' ',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2104643962563030528
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27529100802591925133)
,p_query_column_id=>1
,p_column_alias=>'STORES'
,p_column_display_sequence=>10
,p_column_heading=>'Stores'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27529101309566925138)
,p_query_column_id=>2
,p_column_alias=>'PRODUCTS'
,p_column_display_sequence=>60
,p_column_heading=>'Products'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27529101193409925137)
,p_query_column_id=>3
,p_column_alias=>'TRANSACTION_AMOUNT'
,p_column_display_sequence=>80
,p_column_heading=>'Transaction Amount'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27529101037967925136)
,p_query_column_id=>4
,p_column_alias=>'LINE_ITEMS'
,p_column_display_sequence=>70
,p_column_heading=>'Line Items'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14291602229327542612)
,p_name=>'P36_TRANSACTION_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27761041123626794400)
,p_prompt=>'Transaction ID'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27529099471909925120)
,p_name=>'P36_TRANSACTION_ENTRY_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27761041123626794400)
,p_prompt=>'Transaction Line Item ID'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27529099788312925123)
,p_name=>'P36_TRANSACTION_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27761041123626794400)
,p_prompt=>'Transaction Date'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(27529099869573925124)
,p_computation_sequence=>10
,p_computation_item=>'P36_TRANSACTION_DATE'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(DATE_OF_SALE,''DD-MON-YYYY HH24:MI:SS'') TRANSACTION_DATE',
'from   OOW_DEMO_SALES_HISTORY',
'where  ID = :P36_TRANSACTION_ENTRY_ID'))
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(14291602270200542613)
,p_computation_sequence=>20
,p_computation_item=>'P36_TRANSACTION_ID'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select transaction_id',
'from   OOW_DEMO_SALES_HISTORY',
'where  ID = :P36_TRANSACTION_ENTRY_ID'))
);
end;
/
prompt --application/pages/page_00038
begin
wwv_flow_imp_page.create_page(
 p_id=>38
,p_name=>'Sales History Content Row with Menu'
,p_alias=>'SALES-HISTORY-CONTENT-ROW-WITH-MENU'
,p_step_title=>'Sales History Content Row with Menu'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(39780716619966210174)
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'22'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25269111300425767375)
,p_plug_name=>'Timer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>30
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   x clob;',
'begin',
'    x := to_char(oow_demo_timing.get_elap,''99G9990D000'')||'' seconds'';',
'    return x;',
'end;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(62773314486369705633)
,p_plug_name=>'Sales History'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    h.ID            id,',
'    r.REGION_NAME   region,',
'    s.store_name    store,',
'    i.item_Name     product,',
'    h.DATE_OF_SALE,',
'    to_char(h.DATE_OF_SALE,''YYYY.MM'') the_month,',
'    h.QUANTITY,',
'    h.TRANSACTION_ID,',
'    h.ITEM_PRICE,',
'    h.QUANTITY * h.ITEM_PRICE sale,',
'    i.id product_id,',
'    s.id store_id',
'from #OWNER#.OOW_DEMO_SALES_HISTORY h,',
'     #OWNER#.OOW_DEMO_REGIONS r,',
'     #OWNER#.OOW_DEMO_STORES s,',
'     #OWNER#.OOW_DEMO_STORE_PRODUCTS p,',
'     #OWNER#.OOW_DEMO_ITEMS i',
'where s.region_id = r.id and',
'      h.store_id = s.id and',
'      p.ITEM_ID = h.PRODUCT_ID and',
'      p.item_id = i.id',
''))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_plug_query_num_rows=>100
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'AVATAR_ICON', 'fa-tag',
  'AVATAR_SHAPE', 't-Avatar--rounded',
  'AVATAR_TYPE', 'icon',
  'BADGE_COL_WIDTH', 't-ContentRow-badge--md',
  'BADGE_LABEL', 'Sale',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_VALUE', 'SALE',
  'DESCRIPTION', wwv_flow_string.join(wwv_flow_t_varchar2(
    'Location: &REGION.: &STORE.<br>',
    'Date: &DATE_OF_SALE. <br>',
    'Transaction: &TRANSACTION_ID.')),
  'DISPLAY_AVATAR', 'Y',
  'DISPLAY_BADGE', 'Y',
  'HIDE_BORDERS', 'N',
  'MISC', wwv_flow_string.join(wwv_flow_t_varchar2(
    'Price: &ITEM_PRICE. <br>',
    'Quantity: &QUANTITY. ')),
  'REMOVE_PADDING', 'N',
  'TITLE', '&PRODUCT.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13957518517804239828)
,p_name=>'PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13957518749529239830)
,p_name=>'STORE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STORE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25269109481086767357)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25269109596592767358)
,p_name=>'REGION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REGION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25269109701770767359)
,p_name=>'STORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STORE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25269109725813767360)
,p_name=>'PRODUCT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25269109910526767361)
,p_name=>'DATE_OF_SALE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_OF_SALE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25269109976968767362)
,p_name=>'THE_MONTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'THE_MONTH'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25269110025521767363)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25269110219255767364)
,p_name=>'TRANSACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSACTION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25269110241538767365)
,p_name=>'ITEM_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_format_mask=>'FML999G999G999G999G990D00'
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25269110330434767366)
,p_name=>'SALE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_format_mask=>'FML999G999G999G999G990D00'
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(62773364647704718509)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63015063394705040648)
,p_plug_name=>'Facets'
,p_region_name=>'active_facets'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63031748249613797074)
,p_plug_name=>'Facets'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(62773314486369705633)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'current_facets_selector', '#active_facets',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'E',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13958911856344639532)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(62773364647704718509)
,p_button_name=>'reset'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:RP,38::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13958911413632639530)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(62773364647704718509)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(13958922390916639559)
,p_branch_name=>'branch to requested page'
,p_branch_action=>'f?p=&APP_ID.:&P38_NAVIGATION.:&SESSION.::&DEBUG.:RP,&P38_NAVIGATION.::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25974356242935312471)
,p_name=>'P38_NAVIGATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(62773364647704718509)
,p_item_display_point=>'NEXT'
,p_item_default=>'&APP_PAGE_ID.'
,p_prompt=>'Navigation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SALES HISTORY NAVIGATION'
,p_lov=>'.'||wwv_flow_imp.id(13959387031438190987)||'.'
,p_cHeight=>1
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63031763101041797113)
,p_name=>'P38_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(63031748249613797074)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63031763239908797114)
,p_name=>'P38_REGION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(63031748249613797074)
,p_prompt=>'Region'
,p_source=>'REGION'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63031763336673797115)
,p_name=>'P38_STORE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(63031748249613797074)
,p_prompt=>'Store'
,p_source=>'STORE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63031763407073797116)
,p_name=>'P38_PRODUCT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(63031748249613797074)
,p_prompt=>'Product'
,p_source=>'PRODUCT'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63031763578319797118)
,p_name=>'P38_THE_MONTH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(63031748249613797074)
,p_prompt=>'Month'
,p_source=>'THE_MONTH'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13958921371647639556)
,p_name=>'on navigation click'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_NAVIGATION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13958921864967639559)
,p_event_id=>wwv_flow_imp.id(13958921371647639556)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13958920998149639555)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Start Timer'
,p_process_sql_clob=>'oow_demo_timing.start_timer;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>12015606941644323644
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(13957518296203239826)
,p_region_id=>wwv_flow_imp.id(62773314486369705633)
,p_position_id=>362316004162771045
,p_display_sequence=>20
,p_template_id=>362317865359806322
,p_label=>'Actions'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-ellipsis-v'
,p_action_css_classes=>'t-Button--noUI'
,p_is_hot=>false
,p_show_as_disabled=>false
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(25269110829506767371)
,p_region_id=>wwv_flow_imp.id(62773314486369705633)
,p_position_id=>349402277895478545
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP,36:P36_TRANSACTION_ENTRY_ID:&ID.'
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(13957518423044239827)
,p_component_action_id=>wwv_flow_imp.id(13957518296203239826)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Product Details'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RP,18:P18_ID:&PRODUCT_ID.'
,p_icon_css_classes=>'fa-package'
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(13957518643965239829)
,p_component_action_id=>wwv_flow_imp.id(13957518296203239826)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Transaction Details'
,p_display_sequence=>20
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP,36:P36_TRANSACTION_ENTRY_ID:&ID.'
,p_icon_css_classes=>'fa-tag'
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(13957518777147239831)
,p_component_action_id=>wwv_flow_imp.id(13957518296203239826)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Store Details'
,p_display_sequence=>30
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3:P3_ID:&STORE_ID.'
,p_icon_css_classes=>'fa-shopping-bag'
);
end;
/
prompt --application/pages/page_00039
begin
wwv_flow_imp_page.create_page(
 p_id=>39
,p_name=>'Page Views'
,p_alias=>'PAGE-VIEWS'
,p_step_title=>'Page Views'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_css_classes=>'rw-pillar--sienna'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27329926024709383383)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27329926638748383385)
,p_plug_name=>'Page Performance'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id page,',
'    USERID_LC username,',
'    nvl((   select page_title page_name',
'        from apex_application_pages p',
'        where p.page_id = l.step_id',
'            and p.application_id = :app_id ),''Unknown'') page_name,',
'    elap                  elapsed,',
'    session_id,',
'    nvl(num_rows,0)       num_rows,',
'    decode(page_mode,''P'',''Partial Page'',''D'',''Full Page'',''Other - ''||page_mode) page_mode,',
'    time_stamp,',
'    time_stamp time_stamp_since',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and userid is not null'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Page Performance'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(27329926739842383385)
,p_name=>'Page Performance'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MIKE'
,p_internal_uid=>5562142418051774770
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27329927099561383389)
,p_db_column_name=>'PAGE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27329927536741383390)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24534778714920818440)
,p_db_column_name=>'ELAPSED'
,p_display_order=>12
,p_column_identifier=>'O'
,p_column_label=>'Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24534778800440818441)
,p_db_column_name=>'SESSION_ID'
,p_display_order=>22
,p_column_identifier=>'P'
,p_column_label=>'Session ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24534778829503818442)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>32
,p_column_identifier=>'Q'
,p_column_label=>'Num Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24534779016963818443)
,p_db_column_name=>'PAGE_MODE'
,p_display_order=>42
,p_column_identifier=>'R'
,p_column_label=>'Page Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24534779117032818444)
,p_db_column_name=>'TIME_STAMP'
,p_display_order=>52
,p_column_identifier=>'S'
,p_column_label=>'Time Stamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24534779215837818445)
,p_db_column_name=>'TIME_STAMP_SINCE'
,p_display_order=>62
,p_column_identifier=>'T'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE_SHORT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25157330648069061650)
,p_db_column_name=>'USERNAME'
,p_display_order=>72
,p_column_identifier=>'U'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(27329934625689384040)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'27689094'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:PAGE_NAME:ELAPSED:USERNAME:NUM_ROWS:PAGE_MODE:SESSION_ID:TIME_STAMP:TIME_STAMP_SINCE:'
,p_sort_column_1=>'TIME_STAMP_SINCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'ELAPSED'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24534779239882818446)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27329926024709383383)
,p_button_name=>'page_performance'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Page Performance'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP,::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24561604919522095025)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27329926024709383383)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
end;
/
prompt --application/pages/page_00040
begin
wwv_flow_imp_page.create_page(
 p_id=>40
,p_name=>'Reset Sample Data'
,p_alias=>'RESET-SAMPLE-DATA'
,p_step_title=>'Reset Sample Data'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(39781911520494635885)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'<p>Select a data reset option.  Clicking the link will immedatly truncate all existing data and generate new data.</p>'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38828606476794401850)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38828609854388418992)
,p_plug_name=>'Manage Sample Data'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>11
,p_list_id=>wwv_flow_imp.id(38828608467657418982)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39060141662305979559)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38828606476794401850)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(40038116769264693171)
,p_branch_name=>'Go to page 41'
,p_branch_action=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:RP:P41_SIZE:&P40_SIZE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40038116870914693172)
,p_name=>'P40_SIZE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38828609854388418992)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
end;
/
prompt --application/pages/page_00041
begin
wwv_flow_imp_page.create_page(
 p_id=>41
,p_tab_set=>'TS1'
,p_name=>'Load Data'
,p_step_title=>'Load Data'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(13953918913326688616)
,p_name=>'Summary'
,p_template=>4501440665235496320
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_component_template_options=>'#DEFAULT#:t-ContextualInfo-item--stacked:t-ContextualInfo-label--stacked'
,p_display_point=>'REGION_POSITION_01'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select max(created_on) last_order from OOW_DEMO_SALES_HISTORY'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2115772683903439354
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13953918975298688617)
,p_query_column_id=>1
,p_column_alias=>'LAST_ORDER'
,p_column_display_sequence=>10
,p_column_heading=>'Last Order'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38828616176128541664)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38828616571439543073)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(39577069736017410193)
,p_name=>'Results'
,p_template=>3371237801798025892
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--large:t-BadgeList--dash:t-BadgeList--cols t-BadgeList--3cols'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    (select count(*) c from OOW_DEMO_SALES_HISTORY) rows_generated,',
'    (select count(distinct STORE_ID) from OOW_DEMO_SALES_HISTORY) distinct_stores,',
'    (select count(distinct PRODUCT_ID) from OOW_DEMO_SALES_HISTORY) distinct_products,',
'    :P41_SIZE requested_size,',
'    to_number(:P41_ROWS) rows_requested,',
'    :P41_ORDERS requested_orders,',
'    to_number(:P41_LOAD_TIME) load_time_milliseconds,',
'    to_number(:P41_LOAD_TIME) / 1000 load_time_seconds,',
'    to_number(:P41_ROWS) / (to_number(:P41_LOAD_TIME) / 1000) rows_per_second',
'from dual'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2104643962563030528
,p_query_num_rows=>4
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39577069792826410194)
,p_query_column_id=>1
,p_column_alias=>'ROWS_GENERATED'
,p_column_display_sequence=>40
,p_column_heading=>'Rows Generated'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13953918722882688614)
,p_query_column_id=>2
,p_column_alias=>'DISTINCT_STORES'
,p_column_display_sequence=>60
,p_column_heading=>'Distinct Stores'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13953918764613688615)
,p_query_column_id=>3
,p_column_alias=>'DISTINCT_PRODUCTS'
,p_column_display_sequence=>70
,p_column_heading=>'Distinct Products'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39577069869984410195)
,p_query_column_id=>4
,p_column_alias=>'REQUESTED_SIZE'
,p_column_display_sequence=>20
,p_column_heading=>'Requested Size'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39577069971694410196)
,p_query_column_id=>5
,p_column_alias=>'ROWS_REQUESTED'
,p_column_display_sequence=>30
,p_column_heading=>'Rows Requested'
,p_column_format=>'999G999G999G999G999G999G990'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39577070099959410197)
,p_query_column_id=>6
,p_column_alias=>'REQUESTED_ORDERS'
,p_column_display_sequence=>50
,p_column_heading=>'Requested Orders'
,p_column_format=>'999G999G999G999G999G999G990'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39577070864427410205)
,p_query_column_id=>7
,p_column_alias=>'LOAD_TIME_MILLISECONDS'
,p_column_display_sequence=>80
,p_column_heading=>'Load Time Milliseconds'
,p_column_format=>'999G999G999G999G999G999G990'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39577070964332410206)
,p_query_column_id=>8
,p_column_alias=>'LOAD_TIME_SECONDS'
,p_column_display_sequence=>90
,p_column_heading=>'Load Time Seconds'
,p_column_format=>'999G999G999G999G999G999G990D0'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39577071072262410207)
,p_query_column_id=>9
,p_column_alias=>'ROWS_PER_SECOND'
,p_column_display_sequence=>100
,p_column_heading=>'Rows Loaded Per Second'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13253514595861443757)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38828616176128541664)
,p_button_name=>'Reload'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reload Data'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-gear'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39803119390913800362)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38828616176128541664)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38828616968369570621)
,p_name=>'P41_SIZE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38828616571439543073)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39577069347337410190)
,p_name=>'P41_ROWS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(38828616571439543073)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39577069531473410191)
,p_name=>'P41_DAYS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(38828616571439543073)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39577069608119410192)
,p_name=>'P41_ORDERS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(38828616571439543073)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39577070806666410204)
,p_name=>'P41_LOAD_TIME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(38828616571439543073)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(39577070193747410198)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'setup and truncate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    s number := 0;',
'    o number := 0;',
'    d number := 0;',
'    t1 timestamp;',
'    t2 timestamp;',
'begin',
'    if :P41_SIZE = ''S'' then ',
'       s := 500; -- max',
'       d := 365; -- days',
'       o := 2; -- orders',
'    elsif :P41_SIZE = ''M'' then ',
'       s := 1000;',
'       d := 365;',
'       o := 3;',
'    elsif :P41_SIZE = ''L'' then ',
'       s := 5000;',
'       d := 365;',
'       o := 5;',
'    elsif :P41_SIZE = ''XL'' then ',
'       s := 25000;',
'       d := 365;',
'       o := 25;',
'    elsif :P41_SIZE = ''XXL'' then ',
'       s := 50000;',
'       d := 365;',
'       o := 50;',
'    elsif :P41_SIZE = ''XXXL'' then ',
'       s := 100000;',
'       d := 365;',
'       o := 100;',
'    elsif :P41_SIZE = ''4XL'' then ',
'       s := 1000000;',
'       d := 365;',
'       o := 100;',
'    elsif :P41_SIZE = ''5XL'' then ',
'       s := 5000000;',
'       d := 365;',
'       o := 100;',
'    end if;',
'    :P41_ROWS := s;',
'    :P41_ORDERS := o;',
'    :P41_DAYS := d;',
'',
'    execute immediate ''truncate table OOW_DEMO_SALES_HISTORY'';',
'   ',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>17354507511770098988
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(39577070320704410199)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    t1 timestamp := systimestamp;',
'    t2 timestamp;',
'',
'begin',
'    oow_demo_gen_data_pkg.oow_demo_gen_sales_data (',
'          p_days      => :P41_DAYS,',
'          p_orders    => :P41_ORDERS,',
'          p_truncate  =>''N'',',
'          p_max_rows  => :P41_ROWS);',
'    t2 := systimestamp;',
'    for c1 in (',
'        select',
'           extract( day from diff )*24*60*60*1000 +',
'           extract( hour from diff )*60*60*1000 +',
'           extract( minute from diff )*60*1000 +',
'           round(extract( second from diff )*1000) total_milliseconds',
'        from (select t2 - t1 diff from dual)',
'    ) loop',
'    :P41_LOAD_TIME := c1.total_milliseconds;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>17354507638727098989
);
end;
/
prompt --application/pages/page_00042
begin
wwv_flow_imp_page.create_page(
 p_id=>42
,p_name=>'Sales History Calendar'
,p_alias=>'SALES-HISTORY-CALENDAR'
,p_step_title=>'Sales History Calendar'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(39780716619966210174)
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'22'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37604711105796501979)
,p_plug_name=>'Timer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>30
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   x clob;',
'begin',
'    x := to_char(oow_demo_timing.get_elap,''99G9990D000'')||'' seconds'';',
'    return x;',
'end;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51141105401498762760)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51141105779767762767)
,p_plug_name=>'Sales History'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    i.item_Name    product,',
'    h.DATE_OF_SALE,',
'    to_char(h.DATE_OF_SALE,''YYYY.MM'') the_month,',
'    to_char(sum(h.QUANTITY * h.ITEM_PRICE),''FM999G999G999G999G990D00'')  sale,',
'    to_char(sum(h.QUANTITY),''FM999G999G999G999G990'') units,',
'    i.id product_id',
'from #OWNER#.OOW_DEMO_SALES_HISTORY h,',
'     #OWNER#.OOW_DEMO_STORE_PRODUCTS p,',
'     #OWNER#.OOW_DEMO_ITEMS i',
'where ',
'      p.ITEM_ID = h.PRODUCT_ID and',
'      p.item_id = i.id',
'group by ',
'         i.item_Name, ',
'         i.id,',
'         h.DATE_OF_SALE, ',
'         to_char(h.DATE_OF_SALE,''YYYY.MM'')',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'additional_calendar_views', 'list:navigation',
  'calendar_export', 'CSV',
  'display_column', 'PRODUCT',
  'event_sorting', 'AUTOMATIC',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'show_time', 'N',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'DATE_OF_SALE',
  'supplemental_information', wwv_flow_string.join(wwv_flow_t_varchar2(
    'Sale: $&SALE.<br>',
    'Units: &UNITS.')),
  'view_edit_link', 'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RP,18:P18_ID:&PRODUCT_ID.')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51382854688103097782)
,p_plug_name=>'Facets'
,p_region_name=>'active_facets'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51399539543011854208)
,p_plug_name=>'Facets'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(51141105779767762767)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'current_facets_selector', '#active_facets',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'E',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14283901303391997922)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(51141105401498762760)
,p_button_name=>'reset'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:RP,42::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14283901756097997923)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(51141105401498762760)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14284111948693997947)
,p_branch_name=>'branch to requested page'
,p_branch_action=>'f?p=&APP_ID.:&P42_NAVIGATION.:&SESSION.::&DEBUG.:RP,&P42_NAVIGATION.::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26298105366545921828)
,p_name=>'P42_NAVIGATION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(51141105401498762760)
,p_item_display_point=>'NEXT'
,p_item_default=>'&APP_PAGE_ID.'
,p_prompt=>'Navigation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SALES HISTORY NAVIGATION'
,p_lov=>'.'||wwv_flow_imp.id(13959387031438190987)||'.'
,p_cHeight=>1
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51399747875099854234)
,p_name=>'P42_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(51399539543011854208)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51399748181131854237)
,p_name=>'P42_PRODUCT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(51399539543011854208)
,p_prompt=>'Product'
,p_source=>'PRODUCT'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51399748352377854239)
,p_name=>'P42_THE_MONTH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(51399539543011854208)
,p_prompt=>'Month'
,p_source=>'THE_MONTH'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14284110877440997945)
,p_name=>'on report view change'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P42_NAVIGATION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14284111415177997946)
,p_event_id=>wwv_flow_imp.id(14284110877440997945)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14284110576287997944)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'start timer'
,p_process_sql_clob=>'oow_demo_timing.START_TIMER;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>12340796519782682033
);
end;
/
prompt --application/pages/page_00043
begin
wwv_flow_imp_page.create_page(
 p_id=>43
,p_name=>'Recent Sales'
,p_step_title=>'Recent Sales'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37354791268435392090)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37354791924404392092)
,p_plug_name=>'Recent Sales'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with',
'    the_products as (',
'        select sp.store_id, sp.id product_id, i.item_name',
'        from oow_demo_store_products sp, oow_demo_items i',
'        where i.id = sp.item_id)',
'select p.item_name product_name,',
'       h.quantity units_sold,',
'       h.item_price total_sale,',
'       h.date_of_sale sold_on',
'from oow_demo_sales_history h, the_products p',
'where h.product_id = p.product_id',
'and h.store_id = :p3_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(37354791940389392092)
,p_name=>'Recent Sales'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'CBCHO'
,p_internal_uid=>1906164400115129281
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37354792373676392095)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37354792771256392098)
,p_db_column_name=>'UNITS_SOLD'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Units Sold'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37354793197411392098)
,p_db_column_name=>'TOTAL_SALE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Total Sale'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37354793551223392098)
,p_db_column_name=>'SOLD_ON'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Sold On'
,p_column_type=>'DATE'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(37354813668219417968)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'19061862'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCT_NAME:UNITS_SOLD:TOTAL_SALE:SOLD_ON'
,p_sort_column_1=>'SOLD_ON'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_sum_columns_on_break=>'UNITS_SOLD:TOTAL_SALE'
);
end;
/
prompt --application/pages/page_00045
begin
wwv_flow_imp_page.create_page(
 p_id=>45
,p_name=>'Sales History Smart Search w Menu Actions'
,p_alias=>'SALES-HISTORY-SMART-SEARCH-W-MENU-ACTIONS'
,p_step_title=>'Sales History Smart Search w Menu Actions'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(39780716619966210174)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'24'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37285944871453385438)
,p_plug_name=>'Timer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>30
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   x clob;',
'begin',
'    x := to_char(oow_demo_timing.get_elap,''99G9990D000'')||'' seconds'';',
'    return x;',
'end;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74790148057397323696)
,p_plug_name=>'Sales History'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    h.ID            id,',
'    r.REGION_NAME   region,',
'    s.store_name    store,',
'    i.item_Name     product,',
'    h.DATE_OF_SALE,',
'    to_char(h.DATE_OF_SALE,''YYYY.MM'') the_month,',
'    h.QUANTITY,',
'    h.TRANSACTION_ID,',
'    h.ITEM_PRICE,',
'    h.QUANTITY * h.ITEM_PRICE sale,',
'    i.id product_id,',
'    s.id store_id',
'from #OWNER#.OOW_DEMO_SALES_HISTORY h,',
'     #OWNER#.OOW_DEMO_REGIONS r,',
'     #OWNER#.OOW_DEMO_STORES s,',
'     #OWNER#.OOW_DEMO_STORE_PRODUCTS p,',
'     #OWNER#.OOW_DEMO_ITEMS i',
'where s.region_id = r.id and',
'      h.store_id = s.id and',
'      p.ITEM_ID = h.PRODUCT_ID and',
'      p.item_id = i.id',
''))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_plug_query_num_rows=>100
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'AVATAR_ICON', 'fa-tag',
  'AVATAR_SHAPE', 't-Avatar--rounded',
  'AVATAR_TYPE', 'icon',
  'BADGE_COL_WIDTH', 't-ContentRow-badge--md',
  'BADGE_LABEL', 'Sale',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_VALUE', 'SALE',
  'DESCRIPTION', wwv_flow_string.join(wwv_flow_t_varchar2(
    'Location: &REGION.: &STORE.<br>',
    'Date: &DATE_OF_SALE. <br>',
    'Transaction: &TRANSACTION_ID.')),
  'DISPLAY_AVATAR', 'Y',
  'DISPLAY_BADGE', 'Y',
  'HIDE_BORDERS', 'N',
  'MISC', wwv_flow_string.join(wwv_flow_t_varchar2(
    'Price: &ITEM_PRICE. <br>',
    'Quantity: &QUANTITY. ')),
  'REMOVE_PADDING', 'N',
  'TITLE', '&PRODUCT.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25974352088831857891)
,p_name=>'PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25974352320556857893)
,p_name=>'STORE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STORE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(37285943052114385420)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(37285943167620385421)
,p_name=>'REGION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REGION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(37285943272798385422)
,p_name=>'STORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STORE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(37285943296841385423)
,p_name=>'PRODUCT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(37285943481554385424)
,p_name=>'DATE_OF_SALE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_OF_SALE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(37285943547996385425)
,p_name=>'THE_MONTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'THE_MONTH'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(37285943596549385426)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(37285943790283385427)
,p_name=>'TRANSACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSACTION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(37285943812566385428)
,p_name=>'ITEM_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(37285943901462385429)
,p_name=>'SALE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_format_mask=>'FML999G999G999G999G990D00'
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74790253374049347561)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75031896965732658711)
,p_plug_name=>'Facets'
,p_region_name=>'active_facets'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75048581820641415137)
,p_plug_name=>'Facets'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(74790148057397323696)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'compact_numbers_threshold', '10000',
  'more_filters_suggestion_chip', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13960148601052933980)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(74790253374049347561)
,p_button_name=>'reset'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:RP,45::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13960148160351933979)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74790253374049347561)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(13960161777559934004)
,p_branch_name=>'branch to requested page'
,p_branch_action=>'f?p=&APP_ID.:&P45_NAVIGATION.:&SESSION.::&DEBUG.:RP,&P45_NAVIGATION.::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13957520928840239852)
,p_name=>'P45_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(75048581820641415137)
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
 p_id=>wwv_flow_imp.id(13957520975932239853)
,p_name=>'P45_REGION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(75048581820641415137)
,p_prompt=>'Region'
,p_source=>'REGION'
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
 p_id=>wwv_flow_imp.id(13957521095769239854)
,p_name=>'P45_STORE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(75048581820641415137)
,p_prompt=>'Store'
,p_source=>'STORE'
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
 p_id=>wwv_flow_imp.id(13957521186172239855)
,p_name=>'P45_PRODUCT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(75048581820641415137)
,p_prompt=>'Product'
,p_source=>'PRODUCT'
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
 p_id=>wwv_flow_imp.id(13957521314739239856)
,p_name=>'P45_THE_MONTH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(75048581820641415137)
,p_prompt=>'Month'
,p_source=>'THE_MONTH'
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
 p_id=>wwv_flow_imp.id(37991191236673930540)
,p_name=>'P45_NAVIGATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74790253374049347561)
,p_item_display_point=>'NEXT'
,p_item_default=>'&APP_PAGE_ID.'
,p_prompt=>'Navigation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SALES HISTORY NAVIGATION'
,p_lov=>'.'||wwv_flow_imp.id(13959387031438190987)||'.'
,p_cHeight=>1
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13960160783755934002)
,p_name=>'on navigation click'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_NAVIGATION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13960161353069934002)
,p_event_id=>wwv_flow_imp.id(13960160783755934002)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13960160399680934001)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Start Timer'
,p_process_sql_clob=>'oow_demo_timing.start_timer;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>12016846343175618090
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(25974351867230857889)
,p_region_id=>wwv_flow_imp.id(74790148057397323696)
,p_position_id=>362316004162771045
,p_display_sequence=>20
,p_template_id=>362317865359806322
,p_label=>'Actions'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-ellipsis-v'
,p_action_css_classes=>'t-Button--noUI'
,p_is_hot=>false
,p_show_as_disabled=>false
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(37285944400534385434)
,p_region_id=>wwv_flow_imp.id(74790148057397323696)
,p_position_id=>349402277895478545
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP,36:P36_TRANSACTION_ENTRY_ID:&ID.'
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(25974351994071857890)
,p_component_action_id=>wwv_flow_imp.id(25974351867230857889)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Product Details'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RP,18:P18_ID:&PRODUCT_ID.'
,p_icon_css_classes=>'fa-package'
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(25974352214992857892)
,p_component_action_id=>wwv_flow_imp.id(25974351867230857889)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Transaction Details'
,p_display_sequence=>20
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP,:P36_TRANSACTION_ENTRY_ID:&ID.'
,p_icon_css_classes=>'fa-tag'
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(25974352348174857894)
,p_component_action_id=>wwv_flow_imp.id(25974351867230857889)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Store Details'
,p_display_sequence=>30
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3:P3_ID:&STORE_ID.'
,p_icon_css_classes=>'fa-shopping-bag'
);
end;
/
prompt --application/pages/page_00046
begin
wwv_flow_imp_page.create_page(
 p_id=>46
,p_name=>'Sales History Cards'
,p_alias=>'SALES-HISTORY-CARDS'
,p_step_title=>'Sales History Cards'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(39780716619966210174)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'24'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13960449744597524714)
,p_plug_name=>'Smart Search'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>4
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(62833972023057699604)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'compact_numbers_threshold', '10000',
  'more_filters_suggestion_chip', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49297577349086438816)
,p_plug_name=>'Timer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>30
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   x clob;',
'begin',
'    x := to_char(oow_demo_timing.get_elap,''99G9990D000'')||'' seconds'';',
'    return x;',
'end;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(62833972023057699604)
,p_name=>'Sales History'
,p_template=>3371237801798025892
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--basic:t-Cards--3cols:t-Cards--animColorFill'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    h.ID            id,',
'    s.store_name    store_name,',
'    r.region_name   region,',
'    i.item_Name     product,',
'    h.DATE_OF_SALE  date_of_sale,',
'    to_char(h.DATE_OF_SALE,''YYYY.MM'') the_month,',
'    h.QUANTITY,',
'    h.TRANSACTION_ID,',
'    h.ITEM_PRICE,',
'    h.QUANTITY * h.ITEM_PRICE sale,',
'    i.id product_id,',
'    s.id store_id,',
'    h.id transaction_line_item_id,',
'    null card_text,',
'    null card_subtext,',
'    null card_title',
'from #OWNER#.OOW_DEMO_SALES_HISTORY h,',
'     #OWNER#.OOW_DEMO_REGIONS r,',
'     #OWNER#.OOW_DEMO_STORES s,',
'     #OWNER#.OOW_DEMO_STORE_PRODUCTS p,',
'     #OWNER#.OOW_DEMO_ITEMS i',
'where s.region_id = r.id and',
'      h.store_id = s.id and',
'      p.ITEM_ID = h.PRODUCT_ID and',
'      p.item_id = i.id',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2974982452297815501
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13960592888819046751)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13957521709813239860)
,p_query_column_id=>2
,p_column_alias=>'STORE_NAME'
,p_column_display_sequence=>170
,p_column_heading=>'Store Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13957521839422239861)
,p_query_column_id=>3
,p_column_alias=>'REGION'
,p_column_display_sequence=>180
,p_column_heading=>'Region'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13960449494711524712)
,p_query_column_id=>4
,p_column_alias=>'PRODUCT'
,p_column_display_sequence=>190
,p_column_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13960449562842524713)
,p_query_column_id=>5
,p_column_alias=>'DATE_OF_SALE'
,p_column_display_sequence=>200
,p_column_heading=>'Date Of Sale'
,p_column_format=>'DD-MON-YYYY HH24:MI:SS'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13960594909396046753)
,p_query_column_id=>6
,p_column_alias=>'THE_MONTH'
,p_column_display_sequence=>110
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13960595274056046753)
,p_query_column_id=>7
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>70
,p_column_heading=>'Quantity'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13960595711902046753)
,p_query_column_id=>8
,p_column_alias=>'TRANSACTION_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Transaction ID'
,p_column_link=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP,36:P36_TRANSACTION_ID:#TRANSACTION_ID#'
,p_column_linktext=>'#TRANSACTION_ID#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13960596082013046754)
,p_query_column_id=>9
,p_column_alias=>'ITEM_PRICE'
,p_column_display_sequence=>90
,p_column_heading=>'Item Price'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13960596483381046754)
,p_query_column_id=>10
,p_column_alias=>'SALE'
,p_column_display_sequence=>100
,p_column_heading=>'Sale'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13960592152328046750)
,p_query_column_id=>11
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13960592462414046751)
,p_query_column_id=>12
,p_column_alias=>'STORE_ID'
,p_column_display_sequence=>130
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14291603553760542625)
,p_query_column_id=>13
,p_column_alias=>'TRANSACTION_LINE_ITEM_ID'
,p_column_display_sequence=>210
,p_column_heading=>'Transaction Line Item Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13957521499919239858)
,p_query_column_id=>14
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>150
,p_column_heading=>'Card Text'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Region: #REGION#<br>',
'Store: #STORE_NAME#'))
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13957521575014239859)
,p_query_column_id=>15
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>160
,p_column_heading=>'Card Subtext'
,p_column_format=>'fmDay, fmDD fmMonth, YYYY'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Store: #STORE_NAME#<br>',
'Item Price: #ITEM_PRICE#<br>',
'Quantity: #QUANTITY#<br>',
'Total Sale: #SALE#<br>',
'Date of Sale: #DATE_OF_SALE#<br>',
'Transaction ID: #TRANSACTION_ID#<br>',
'Transaction Line Item ID: #TRANSACTION_LINE_ITEM_ID#'))
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13957521405326239857)
,p_query_column_id=>16
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>140
,p_column_heading=>'Card Title'
,p_column_html_expression=>'#PRODUCT#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63075720931393034619)
,p_plug_name=>'Facets'
,p_region_name=>'active_facets'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(86807544805207080560)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13960597302321046755)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(86807544805207080560)
,p_button_name=>'reset'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:46:&SESSION.::&DEBUG.:RP,46::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13960597753078046756)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(86807544805207080560)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(13960601373748046763)
,p_branch_name=>'branch to requested page'
,p_branch_action=>'f?p=&APP_ID.:&P46_NAVIGATION.:&SESSION.::&DEBUG.:RP,&P46_NAVIGATION.::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13960449757569524715)
,p_name=>'P46_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13960449744597524714)
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
 p_id=>wwv_flow_imp.id(13960449954195524716)
,p_name=>'P46_PRODUCT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13960449744597524714)
,p_prompt=>'Product'
,p_source=>'PRODUCT'
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
 p_id=>wwv_flow_imp.id(13960450007467524717)
,p_name=>'P46_STORE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13960449744597524714)
,p_prompt=>'Store'
,p_source=>'STORE_NAME'
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
 p_id=>wwv_flow_imp.id(13960450117080524718)
,p_name=>'P46_REGION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(13960449744597524714)
,p_prompt=>'Region'
,p_source=>'REGION'
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
 p_id=>wwv_flow_imp.id(37990978891087858678)
,p_name=>'P46_NAVIGATION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(86807544805207080560)
,p_item_display_point=>'NEXT'
,p_item_default=>'&APP_PAGE_ID.'
,p_prompt=>'Navigation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SALES HISTORY NAVIGATION'
,p_lov=>'.'||wwv_flow_imp.id(13959387031438190987)||'.'
,p_cHeight=>1
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13960600419315046761)
,p_name=>'on report view change'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P46_NAVIGATION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13960600892656046762)
,p_event_id=>wwv_flow_imp.id(13960600419315046761)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13960599993570046761)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'start timer'
,p_process_sql_clob=>'oow_demo_timing.START_TIMER;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>12017285937064730850
);
end;
/
prompt --application/pages/page_00050
begin
wwv_flow_imp_page.create_page(
 p_id=>50
,p_name=>'Sales History Classic'
,p_alias=>'SALES-HISTORY-CLASSIC1'
,p_step_title=>'Sales History Classic'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(39780716619966210174)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37280300664961707986)
,p_plug_name=>'Timer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>30
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   x clob;',
'begin',
'    x := to_char(oow_demo_timing.get_elap,''99G9990D000'')||'' seconds'';',
'    return x;',
'end;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(50816695338932968774)
,p_name=>'Sales History'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    h.ID            id,',
'    r.REGION_NAME   region,',
'    s.store_name    store,',
'    i.item_Name     product,',
'    h.DATE_OF_SALE,',
'    to_char(h.DATE_OF_SALE,''YYYY.MM'') the_month,',
'    h.QUANTITY,',
'    h.TRANSACTION_ID,',
'    h.ITEM_PRICE,',
'    h.QUANTITY * h.ITEM_PRICE sale,',
'    i.id product_id,',
'    s.id store_id,',
'    h.id transaction_line_item_id',
'from #OWNER#.OOW_DEMO_SALES_HISTORY h,',
'     #OWNER#.OOW_DEMO_REGIONS r,',
'     #OWNER#.OOW_DEMO_STORES s,',
'     #OWNER#.OOW_DEMO_STORE_PRODUCTS p,',
'     #OWNER#.OOW_DEMO_ITEMS i',
'where s.region_id = r.id and',
'      h.store_id = s.id and',
'      p.ITEM_ID = h.PRODUCT_ID and',
'      p.item_id = i.id',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13959492688347203934)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13959493154654203935)
,p_query_column_id=>2
,p_column_alias=>'REGION'
,p_column_display_sequence=>30
,p_column_heading=>'Region'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13959493487429203936)
,p_query_column_id=>3
,p_column_alias=>'STORE'
,p_column_display_sequence=>40
,p_column_heading=>'Store'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13959493952713203936)
,p_query_column_id=>4
,p_column_alias=>'PRODUCT'
,p_column_display_sequence=>50
,p_column_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13959494268281203937)
,p_query_column_id=>5
,p_column_alias=>'DATE_OF_SALE'
,p_column_display_sequence=>60
,p_column_heading=>'Date of Sale'
,p_column_format=>'DD-MON-YYYY HH24:MI:SS'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13959494688267203937)
,p_query_column_id=>6
,p_column_alias=>'THE_MONTH'
,p_column_display_sequence=>110
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13959495129372203937)
,p_query_column_id=>7
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>70
,p_column_heading=>'Quantity'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13959495517799203938)
,p_query_column_id=>8
,p_column_alias=>'TRANSACTION_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Transaction ID'
,p_column_link=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP,36:P36_TRANSACTION_ENTRY_ID:#TRANSACTION_LINE_ITEM_ID#'
,p_column_linktext=>'#TRANSACTION_ID#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13959495909725203939)
,p_query_column_id=>9
,p_column_alias=>'ITEM_PRICE'
,p_column_display_sequence=>90
,p_column_heading=>'Item Price'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13959496337779203939)
,p_query_column_id=>10
,p_column_alias=>'SALE'
,p_column_display_sequence=>100
,p_column_heading=>'Sale'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13957520190849239845)
,p_query_column_id=>11
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13957520300085239846)
,p_query_column_id=>12
,p_column_alias=>'STORE_ID'
,p_column_display_sequence=>130
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14291603621720542626)
,p_query_column_id=>13
,p_column_alias=>'TRANSACTION_LINE_ITEM_ID'
,p_column_display_sequence=>140
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50816818910181543973)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51058444247268303789)
,p_plug_name=>'Facets'
,p_region_name=>'active_facets'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13959490813719203927)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(50816818910181543973)
,p_button_name=>'reset'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:RP,50::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13959491189560203928)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(50816818910181543973)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(13959501266185203951)
,p_branch_name=>'branch to requested page'
,p_branch_action=>'f?p=&APP_ID.:&P50_NAVIGATION.:&SESSION.::&DEBUG.:RP,&P50_NAVIGATION.::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25973694864605127833)
,p_name=>'P50_NAVIGATION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(50816818910181543973)
,p_item_display_point=>'NEXT'
,p_item_default=>'&APP_PAGE_ID.'
,p_prompt=>'Navigation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SALES HISTORY NAVIGATION'
,p_lov=>'.'||wwv_flow_imp.id(13959387031438190987)||'.'
,p_cHeight=>1
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13959500298302203948)
,p_name=>'on report view change'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P50_NAVIGATION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13959500764421203951)
,p_event_id=>wwv_flow_imp.id(13959500298302203948)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13959499942178203947)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'start timer'
,p_process_sql_clob=>'oow_demo_timing.START_TIMER;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>12016185885672888036
);
end;
/
prompt --application/pages/page_00051
begin
wwv_flow_imp_page.create_page(
 p_id=>51
,p_name=>'Sales History Interactive Report'
,p_alias=>'SALES-HISTORY-CLASSIC-IR'
,p_step_title=>'Sales History IR'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(39780716619966210174)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49296799085388713689)
,p_plug_name=>'Timer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>30
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   x clob;',
'begin',
'    x := to_char(oow_demo_timing.get_elap,''99G9990D000'')||'' seconds'';',
'    return x;',
'end;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(62833193759359974477)
,p_plug_name=>'Sales History'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    h.ID            id,',
'    r.REGION_NAME   region,',
'    s.store_name    store,',
'    i.item_Name     product,',
'    h.DATE_OF_SALE,',
'    to_char(h.DATE_OF_SALE,''YYYY.MM'') the_month,',
'    h.QUANTITY,',
'    h.TRANSACTION_ID,',
'    h.ITEM_PRICE,',
'    h.QUANTITY * h.ITEM_PRICE sale,',
'    i.id product_id,',
'    s.id store_id',
'from #OWNER#.OOW_DEMO_SALES_HISTORY h,',
'     #OWNER#.OOW_DEMO_REGIONS r,',
'     #OWNER#.OOW_DEMO_STORES s,',
'     #OWNER#.OOW_DEMO_STORE_PRODUCTS p,',
'     #OWNER#.OOW_DEMO_ITEMS i',
'where s.region_id = r.id and',
'      h.store_id = s.id and',
'      p.ITEM_ID = h.PRODUCT_ID and',
'      p.item_id = i.id',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Sales History'
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
 p_id=>wwv_flow_imp.id(13957518928568239832)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MIKE'
,p_internal_uid=>12014204872062923921
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13957519048200239833)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Transaction Line Item ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13957519145481239834)
,p_db_column_name=>'REGION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Region'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13957519165308239835)
,p_db_column_name=>'STORE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Store'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13957519259096239836)
,p_db_column_name=>'PRODUCT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13957519376383239837)
,p_db_column_name=>'DATE_OF_SALE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Date of Sale'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13957519465024239838)
,p_db_column_name=>'THE_MONTH'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'The Month'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13957519631419239839)
,p_db_column_name=>'QUANTITY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13957519690957239840)
,p_db_column_name=>'TRANSACTION_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Transaction ID'
,p_column_link=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP,36:P36_TRANSACTION_ENTRY_ID:#ID#'
,p_column_linktext=>'#TRANSACTION_ID#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13957519759676239841)
,p_db_column_name=>'ITEM_PRICE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Item Price'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13957519866953239842)
,p_db_column_name=>'SALE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Sale'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13957520614120239849)
,p_db_column_name=>'PRODUCT_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Product Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13957520752884239850)
,p_db_column_name=>'STORE_ID'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Store Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(13960096614744898011)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'120167826'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'TRANSACTION_ID:REGION:STORE:PRODUCT:DATE_OF_SALE:THE_MONTH:QUANTITY:ITEM_PRICE:SALE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(62833333119761554824)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(44425078801060133467)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63074942667695309492)
,p_plug_name=>'Facets'
,p_region_name=>'active_facets'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13959818285657321623)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(62833333119761554824)
,p_button_name=>'reset'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:RP,51::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13959818748178321623)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(62833333119761554824)
,p_button_name=>'up'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Up'
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(13959822240307321629)
,p_branch_name=>'branch to requested page'
,p_branch_action=>'f?p=&APP_ID.:&P51_NAVIGATION.:&SESSION.::&DEBUG.:RP,&P51_NAVIGATION.::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37990199914570133546)
,p_name=>'P51_NAVIGATION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(62833333119761554824)
,p_item_display_point=>'NEXT'
,p_item_default=>'&APP_PAGE_ID.'
,p_prompt=>'Navigation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SALES HISTORY NAVIGATION'
,p_lov=>'.'||wwv_flow_imp.id(13959387031438190987)||'.'
,p_cHeight=>1
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13959821158375321627)
,p_name=>'on report view change'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P51_NAVIGATION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13959821665334321628)
,p_event_id=>wwv_flow_imp.id(13959821158375321627)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13959820836403321627)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'start timer'
,p_process_sql_clob=>'oow_demo_timing.START_TIMER;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>12016506779898005716
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_imp_page.create_page(
 p_id=>101
,p_name=>'Login'
,p_alias=>'LOGIN'
,p_step_title=>'Sign In | &APP_NAME.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.appIcon.brookstrut {',
'background-position: -320px -384px;',
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
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44425077997016133461)
,p_plug_name=>'&APP_NAME.'
,p_region_name=>'brookstrut'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-192.png	'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41278514750341747581)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(44425077997016133461)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44425078109619133465)
,p_name=>'P101_USERNAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44425077997016133461)
,p_prompt=>'Username'
,p_placeholder=>'username'
,p_post_element_text=>'<span class="t-Login-iconValidation a-Icon icon-check"></span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>100
,p_field_template=>2040785906935475274
,p_item_css_classes=>'icon-login-username'
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44425078209345133465)
,p_name=>'P101_PASSWORD'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(44425077997016133461)
,p_prompt=>'Password'
,p_placeholder=>'password'
,p_post_element_text=>'<span class="t-Login-iconValidation a-Icon icon-check"></span>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>64
,p_cMaxlength=>100
,p_field_template=>2040785906935475274
,p_item_css_classes=>'icon-login-password'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_restricted_characters=>'WEB_SAFE'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41396890256237844399)
,p_name=>'Set Focus'
,p_event_sequence=>10
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'( $v( "P101_USERNAME" ) === "" )'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41396890558750844401)
,p_event_id=>wwv_flow_imp.id(41396890256237844399)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_USERNAME'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41396890770288844401)
,p_event_id=>wwv_flow_imp.id(41396890256237844399)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_PASSWORD'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44425078484531133467)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>22202515802553822257
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44425078391435133466)
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
,p_internal_uid=>22202515709457822256
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44425078686355133467)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>22202516004377822257
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44425078582037133467)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>22202515900059822257
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_imp_page.create_page(
 p_id=>10010
,p_name=>'Theme Style Selection'
,p_alias=>'THEME-STYLE-SELECTION'
,p_page_mode=>'MODAL'
,p_step_title=>'Theme Style Selection'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(39780759288359211484)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(41204077179329353289)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the default color scheme used to display the application.</p>',
'<p>If <strong>Allow End Users to choose Theme Style</strong> is checked, then each end user can select from the available theme styles by clicking the <em>Customize</em> link in the bottom left corner of the Home page.</p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41204077487361353291)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41204077618947353291)
,p_plug_name=>'Configure Appearance'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41204080098336353303)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(41204077487361353291)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41204078678172353299)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(41204077487361353291)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(41204080486173353304)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41204080771767353305)
,p_name=>'P10010_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41204077618947353291)
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
,p_grid_label_column_span=>3
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
,p_restricted_characters=>'WEB_SAFE'
,p_inline_help_text=>'The default Theme Style applies to all users.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41204081472349353316)
,p_name=>'P10010_END_USER_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41204077618947353291)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End User Theme Preference'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.theme_style_by_user_pref',
'  from apex_applications a',
' where a.application_id  = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'USER_THEME_PREFERENCE'
,p_lov=>'.'||wwv_flow_imp.id(41204081543285353316)||'.'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If checked, end users may choose their own Theme Style using the Customize link.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41204078801797353299)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(41204078678172353299)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41204079521244353301)
,p_event_id=>wwv_flow_imp.id(41204078801797353299)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41204082737691353320)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Theme Style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10010_DESKTOP_THEME_STYLE_ID is not null then',
'    for l_theme in (select theme_number',
'                      from apex_application_themes',
'                     where application_id = :app_id',
'                       and is_current     = ''Yes'')',
'    loop',
'        apex_util.set_current_theme_style (',
'            p_theme_number   => l_theme.theme_number,',
'            p_theme_style_id => :P10010_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>18981520055714042110
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41204083048387353321)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save End User Style Preference'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_enabled boolean := case when :P10010_END_USER_STYLE = ''Yes'' then true else false end;',
'begin',
'    for l_theme in ( select theme_number',
'                       from apex_applications',
'                      where application_id  = :APP_ID )',
'    loop',
'        if l_enabled then',
'            apex_theme.enable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'        else',
'            apex_theme.disable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'            apex_theme.clear_all_users_style(:APP_ID);',
'        end if;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>18981520366410042111
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_imp_page.create_page(
 p_id=>10020
,p_name=>'Configuration Options'
,p_alias=>'CONFIGURATION-OPTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Configuration Options'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_patch=>wwv_flow_imp.id(41205995154213003401)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Configuration settings allow you to make specific functionality either available (enabled) or unavailable (disabled) to end users.</p>',
'<p>If a specific function is not 100% ready, or needs to be temporarily removed, click <strong>Disabled</strong>. ',
'Once it should be made available, simply click <strong>Enabled</strong>.</p>',
'<p><em><strong>Note:</strong> Changes made here will not be reflected for individual end users currently running the application. Once the end user signs out and then signs back in the revised feature settings will be invoked.</em></p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41205995344111003405)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41205995555998003406)
,p_plug_name=>'Configuration Options'
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    build_option_id     ID, ',
'    build_option_name   application_option,',
'    apex_item.hidden(1, build_option_id) ||',
'    apex_item.hidden(2, build_option_status) ||',
'    apex_item.switch ( ',
'         p_idx        => 3,',
'         p_value      => build_option_status,',
'         p_on_value   => ''Include'',',
'         p_on_label   => m.enabled,',
'         p_off_value  => ''Exclude'',',
'         p_off_label  => m.disabled,',
'         p_item_id    => ''BO_OPT_'' || rownum,',
'         p_item_label => ( case when build_option_status = ''Include'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_ENABLED'', apex_escape.html(build_option_name) )',
'                           when build_option_status = ''Exclude'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_DISABLED'', apex_escape.html(build_option_name) )',
'                           end ),',
'         p_attributes => ''style="white-space:pre;"'') "STATUS",',
'    component_comment   description,',
'    last_updated_on        updated,',
'    lower(last_updated_by) updated_by,',
'    build_option_status current_status,',
'    feature_identifier',
'  from apex_application_build_options,',
'  (select apex_lang.message(''APEX.FEATURE.CONFIG.ENABLED'') enabled, apex_lang.message(''APEX.FEATURE.CONFIG.DISABLED'') disabled from dual) m',
' where application_id = :APP_ID ',
'and (feature_identifier not in (''APPLICATION_ACCESS_CONTROL'',  ''APPLICATION_CONFIGURATION'') or feature_identifier is null)',
'--and feature_identifier not in (''APPLICATION_ACCESS_CONTROL'',  ''APPLICATION_CONFIGURATION'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Configuration Options'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(41205996175908003408)
,p_name=>'Configuration Options'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MIKE'
,p_internal_uid=>18657016737753061240
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41205996606146003426)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41205996963813003428)
,p_db_column_name=>'APPLICATION_OPTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Feature'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41205997383965003429)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41205997769003003430)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41205998186467003431)
,p_db_column_name=>'UPDATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41205998582356003432)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41205999025327003432)
,p_db_column_name=>'CURRENT_STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Current Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42062651271790975114)
,p_db_column_name=>'FEATURE_IDENTIFIER'
,p_display_order=>17
,p_column_identifier=>'H'
,p_column_label=>'Feature Identifier'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(41206001742028003445)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'186570224'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICATION_OPTION:STATUS:DESCRIPTION:UPDATED:'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41206003437391003457)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(41205995344111003405)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41206002711666003454)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(41205995555998003406)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(41206004205339003459)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41206003798547003458)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for i in 1..apex_application.g_f01.count loop',
'    for c1 in ( select application_id, build_option_name, build_option_status',
'                from apex_application_build_options',
'                where apex_application.g_f01(i) = build_option_id',
'                   and application_Id = :APP_ID) loop',
'        if c1.build_option_status != apex_application.g_f03(i) then',
'            apex_util.set_build_option_status(  p_application_id => :APP_ID,',
'                                                p_id => apex_application.g_f01(i),',
'                                                p_build_status => upper(apex_application.g_f03(i)) );',
'        end if;',
'    end loop;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Configuration Options updated. '
,p_internal_uid=>18983441116569692248
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(38800516565526923988)
,p_deinstall_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'drop table OOW_DEMO_ITEMS cascade constraints;',
'drop table OOW_DEMO_REGIONS cascade constraints;',
'drop table OOW_DEMO_STORES cascade constraints;',
'drop table OOW_DEMO_STORE_PRODUCTS cascade constraints;',
'drop table OOW_DEMO_PREFERENCES cascade constraints;',
'drop table OOW_DEMO_SALES_HISTORY cascade constraints;',
'drop table oow_demo_hist_gen_log cascade constraints;',
'drop table oow_demo_event_log cascade constraints;',
'drop package oow_demo_gen_data_pkg;',
'drop package OOW_DEMO_EVENT_PKG;',
'drop package oow_demo_timing;',
'drop sequence oow_demo_seq;',
'---',
'',
'begin',
'    wwv_flow_api.create_or_remove_file( ',
'        p_location => ''APPLICATION'',',
'        p_name     => ''app_icon.png'',',
'        p_mode     => ''REMOVE'',',
'        p_type     => ''IMAGE'');',
'',
'    wwv_flow_api.create_or_remove_file( ',
'        p_location => ''APPLICATION'',',
'        p_name     => ''blue_marker.png'',',
'        p_mode     => ''REMOVE'',',
'        p_type     => ''IMAGE'');',
'',
'    wwv_flow_api.create_or_remove_file( ',
'        p_location => ''APPLICATION'',',
'        p_name     => ''red_marker.png'',',
'        p_mode     => ''REMOVE'',',
'        p_type     => ''IMAGE'');',
'',
'    wwv_flow_api.create_or_remove_file( ',
'        p_location => ''APPLICATION'',',
'        p_name     => ''excanvas.min.js'',',
'        p_mode     => ''REMOVE'',',
'        p_type     => ''STATIC'');',
'',
'    wwv_flow_api.create_or_remove_file( ',
'        p_location => ''APPLICATION'',',
'        p_name     => ''jquery.flot.min.js'',',
'        p_mode     => ''REMOVE'',',
'        p_type     => ''STATIC'');',
'',
'    wwv_flow_api.create_or_remove_file( ',
'        p_location => ''APPLICATION'',',
'        p_name     => ''jquery.flot.resize.js'',',
'        p_mode     => ''REMOVE'',',
'        p_type     => ''STATIC'');',
'',
'    wwv_flow_api.create_or_remove_file( ',
'        p_location => ''APPLICATION'',',
'        p_name     => ''jquery.flot.selection.js'',',
'        p_mode     => ''REMOVE'',',
'        p_type     => ''STATIC'');',
'end;',
'/',
'',
'drop package oow_demo_sample_data;',
'',
''))
,p_required_free_kb=>100
,p_required_sys_privs=>'CREATE PROCEDURE:CREATE TABLE:CREATE TRIGGER:CREATE VIEW'
,p_required_names_available=>'OOW_DEMO_ITEMS:OOW_DEMO_REGIONS:OOW_DEMO_STORES:OOW_DEMO_STORE_PRODUCTS:OOW_DEMO_SALES_HISTORY:OOW_DEMO_HIST_GEN_LOG:OOW_DEMO_PREFERENCES:OOW_DEMO_EVENT_LOG:OOW_DEMO_SAMPLE_DATA:OOW_DEMO_EVENT_PKG:OOW_DEMO_SEQ'
);
end;
/
prompt --application/deployment/install/install_scope
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(38818969277946368401)
,p_install_id=>wwv_flow_imp.id(38800516565526923988)
,p_name=>'scope'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>'rem ALTER SESSION SET PLSCOPE_SETTINGS = ''IDENTIFIERS:NONE'';'
);
end;
/
prompt --application/deployment/install/install_sequence
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(38818969777038377630)
,p_install_id=>wwv_flow_imp.id(38800516565526923988)
,p_name=>'sequence'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>'create sequence oow_demo_seq;'
);
end;
/
prompt --application/deployment/install/install_event_log
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(38818968947471359602)
,p_install_id=>wwv_flow_imp.id(38800516565526923988)
,p_name=>'event log'
,p_sequence=>30
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table oow_demo_event_log (',
'    id            number',
'                  constraint oow_demo_event_log_pk',
'                  primary key,',
'    log_seq       number not null,',
'    event_type    varchar2(255) not null',
'                  constraint oow_demo_event_event_type_ck',
'                  check (event_type in (',
'                  ''MESSAGE'',',
'                  ''WARNING'',',
'                  ''ERROR'')),',
'    event_name    varchar2(255),',
'    event_detail  varchar2(4000),',
'    error_message varchar2(4000),',
'    error_trace   clob,',
'    created_by    varchar2(255),',
'    created_on    timestamp with local time zone,',
'    a1            varchar2(4000),',
'    a2            varchar2(4000)',
');',
'',
'create or replace trigger biu_oow_demo_event_log',
'before insert or update on oow_demo_event_log',
'for each row',
'begin',
'   if :new.id is null then',
'       select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') into :new.id from dual;',
'  end if;',
'  if :new.event_type is null then',
'     if :new.error_message is not null then',
'        :new.event_type := ''ERROR'';',
'     else',
'        :new.event_type := ''MESSAGE'';',
'     end if;',
'  end if;',
'  if inserting then ',
'      :new.log_seq := oow_demo_seq.nextval;',
'      :new.created_on := localtimestamp;',
'      :new.created_by := nvl(v(''APP_USER''),user);',
'  end if;',
'end;',
'/',
'show errors',
'',
'   ',
''))
);
end;
/
prompt --application/deployment/install/install_event_pkg
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(38818970050550407764)
,p_install_id=>wwv_flow_imp.id(38800516565526923988)
,p_name=>'event pkg'
,p_sequence=>40
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package oow_demo_event_pkg',
'as',
'procedure log (',
'    p_event_name    in varchar2,',
'    p_event_type    in varchar2 default null,',
'    p_event_detail  in varchar2 default null,',
'    p_error_message in varchar2 default null,',
'    p_error_trace   in varchar2 default null,',
'    p_a1            in varchar2 default null,',
'    p_a2            in varchar2 default null',
'    );',
'end;',
'/',
'show errors',
'    ',
' ',
'create or replace package body oow_demo_event_pkg',
'as',
'procedure log (',
'    p_event_name    in varchar2,',
'    p_event_type    in varchar2 default null,',
'    p_event_detail  in varchar2 default null,',
'    p_error_message in varchar2 default null,',
'    p_error_trace   in varchar2 default null,',
'    p_a1            in varchar2 default null,',
'    p_a2            in varchar2 default null',
')',
'is',
'begin',
'  ',
'    insert into oow_demo_event_log ',
'        (event_type, event_name, event_detail, error_message, error_trace, a1, a2) values',
'        (p_event_type, p_event_name, p_event_detail, p_error_message, p_error_trace, p_a1, p_a2);',
'    commit;',
'end log;',
'end oow_demo_event_pkg;',
'/',
'show errors',
'',
'',
''))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(37108480927253249784)
,p_script_id=>wwv_flow_imp.id(38818970050550407764)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'OOW_DEMO_EVENT_PKG'
);
end;
/
prompt --application/deployment/install/install_start
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(38819164561856477310)
,p_install_id=>wwv_flow_imp.id(38800516565526923988)
,p_name=>'start'
,p_sequence=>50
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    oow_demo_event_pkg.log (p_event_name => ''install supporting objects start'', p_error_message => null);',
'    oow_demo_event_pkg.log (p_event_name => ''APEX Session ID=''||v(''APP_SESSION''));',
'    for c1 in (select owner, application_id from APEX_APPLICATIONS where upper(application_name) like ''%BROOKSTRUT%'') loop',
'        oow_demo_event_pkg.log (p_event_name => ''APEX application id=''||c1.application_id||'', parsing schema=''||c1.owner);',
'    end loop;',
'end;',
'/',
'    ',
'begin',
'    oow_demo_event_pkg.log (p_event_name => ''purge recyclebin'', p_error_message => null);',
'    execute immediate ''purge recyclebin'';',
'    oow_demo_event_pkg.log (p_event_name => ''completed call to purge recyclebin'', p_error_message => null);',
'exception when others then',
'    oow_demo_event_pkg.log (p_event_name => ''error purging recycle bin'', p_error_message => sqlerrm);',
'end;',
'/',
'',
''))
);
end;
/
prompt --application/deployment/install/install_preferences
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(36713232547110154512)
,p_install_id=>wwv_flow_imp.id(38800516565526923988)
,p_name=>'Preferences'
,p_sequence=>60
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   execute immediate ''drop table OOW_DEMO_PREFERENCES cascade constraints'';',
'exception when others then',
'    if sqlcode <> -942 then /* ORA-00942: table already exists - see bug 18386198  */',
'        raise;',
'    end if;',
'end;',
'/',
'',
'',
'create table oow_demo_preferences (',
'    id                      number              not null',
'                                                constraint oow_demo_preferences_pk',
'                                                primary key,',
'    preference_name         varchar2(255)       not null',
'                                                constraint oow_demo_prefs_prefname_ck',
'                                                check (upper(preference_name)=preference_name),',
'    preference_value        varchar2(255)       not null,',
'    created_by              varchar2(255)       not null,',
'    created_on              timestamp with local time zone,',
'    updated_by              varchar2(255),',
'    updated_on              timestamp with local time zone )',
'/',
'create unique index oow_demo_preferences_uk on oow_demo_preferences (preference_name);',
'/',
'',
'create or replace trigger oow_demo_preferences_biu',
'before insert or update on oow_demo_preferences',
'    for each row',
'begin',
'    if inserting and :new.id is null then',
'       select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') into :new.id from dual;',
'    end if;',
'    if inserting then',
'        :new.created_by := nvl(v(''APP_USER''),USER);',
'        :new.created_on := localtimestamp;',
'    end if;',
'    if updating then',
'        :new.updated_by := nvl(v(''APP_USER''),USER);',
'        :new.updated_on := localtimestamp;',
'    end if;',
'    :new.preference_name := upper(:new.preference_name);',
'end;',
'/',
'alter trigger oow_demo_preferences_biu enable;',
'/'))
);
end;
/
prompt --application/deployment/install/install_items
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(38800572066683076761)
,p_install_id=>wwv_flow_imp.id(38800516565526923988)
,p_name=>'items'
,p_sequence=>70
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    oow_demo_event_pkg.log (p_event_name => ''create table OOW_DEMO_ITEMS'', p_error_message => null);',
'end;',
'/',
'',
'CREATE TABLE  OOW_DEMO_ITEMS (',
'    ID                 NUMBER, ',
'    ROW_VERSION_NUMBER NUMBER, ',
'    ITEM_TYPE          VARCHAR2(255) NOT NULL ENABLE, ',
'    ITEM_NAME          VARCHAR2(60) NOT NULL ENABLE, ',
'    ITEM_DESC          VARCHAR2(255), ',
'    MSRP               NUMBER DEFAULT 1 NOT NULL ENABLE, ',
'    CONSTRAINT OOW_DEMO_ITEMS_PK PRIMARY KEY (ID) ENABLE',
'   );',
'',
'',
'CREATE OR REPLACE TRIGGER BIU_OOW_DEMO_ITEMS',
'BEFORE INSERT OR UPDATE ON OOW_DEMO_ITEMS',
'FOR EACH ROW',
'BEGIN',
'   if :new.ID is null then',
'     select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') into :new.id from dual;',
'   end if;',
'   if inserting then',
'       :new.row_version_number := 1;',
'   elsif updating then',
'       :new.row_version_number := nvl(:old.row_version_number,1) + 1;',
'   end if;',
'END;',
'/',
'show errors',
''))
);
end;
/
prompt --application/deployment/install/install_regions
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(38800572375687079404)
,p_install_id=>wwv_flow_imp.id(38800516565526923988)
,p_name=>'regions'
,p_sequence=>80
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    oow_demo_event_pkg.log (p_event_name => ''create table OOW_DEMO_REGIONS'', p_error_message => null);',
'end;',
'/',
'',
'CREATE TABLE  OOW_DEMO_REGIONS (',
'    ID                 NUMBER, ',
'    ROW_VERSION_NUMBER NUMBER,',
'    REGION_NAME        VARCHAR2(255),',
'    REGION_ZOOM        VARCHAR2(50),',
'    REGION_LAT         NUMBER(9,6),',
'    REGION_LNG         NUMBER(9,6),',
'    REGION_COLOR       VARCHAR2(7),',
'    IS_DEFAULT_YN      VARCHAR2(1), ',
'    CONSTRAINT OOW_DEMO_REGIONS_PK PRIMARY KEY (ID) ENABLE',
'   );',
'',
'',
'CREATE OR REPLACE TRIGGER BIU_OOW_DEMO_REGIONS',
'BEFORE INSERT OR UPDATE ON OOW_DEMO_REGIONS',
'FOR EACH ROW',
'BEGIN',
'   if :new.ID is null then',
'     select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') into :new.id from dual;',
'   end if;',
'   if inserting then',
'       :new.row_version_number := 1;',
'   elsif updating then',
'       :new.row_version_number := nvl(:old.row_version_number,1) + 1;',
'   end if;',
'END;',
'/',
'show errors',
'',
''))
);
end;
/
prompt --application/deployment/install/install_stores
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(38800572650191081462)
,p_install_id=>wwv_flow_imp.id(38800516565526923988)
,p_name=>'stores'
,p_sequence=>90
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE TABLE  OOW_DEMO_STORES (',
'    ID                   NUMBER, ',
'    ROW_VERSION_NUMBER   NUMBER, ',
'    STORE_NAME           VARCHAR2(255), ',
'    STORE_TYPE           VARCHAR2(50), ',
'    STORE_ADDRESS        VARCHAR2(255), ',
'    STORE_OPEN_DATE      timestamp with local time zone,',
'    STORE_CITY           VARCHAR2(50), ',
'    STORE_STATE          VARCHAR2(50), ',
'    region_id            number,',
'    STORE_ZIP            VARCHAR2(12), ',
'    STORE_LAT            NUMBER(9,6), ',
'    STORE_LNG            NUMBER(9,6), ',
'    n1                   number,',
'    n2                   number,',
'    n3                   number,',
'    n4                   number,',
'    CONSTRAINT OOW_DEMO_STORES_PK PRIMARY KEY (ID) ENABLE',
'   );',
'',
'CREATE OR REPLACE TRIGGER BIU_OOW_DEMO_STORES',
'BEFORE INSERT OR UPDATE ON OOW_DEMO_STORES',
'FOR EACH ROW',
'BEGIN',
'   if :new.ID is null then',
'     select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') into :new.id from dual;',
'   end if;',
'   if inserting then',
'       :new.row_version_number := 1;',
'   elsif updating then',
'       :new.row_version_number := nvl(:old.row_version_number,1) + 1;',
'   end if;',
'   if :new.n1 is null then',
'     :new.n1 := round(dbms_random.value(1,1000000));',
'   end if;   ',
'   if :new.n2 is null then',
'     :new.n2 := round(dbms_random.value(1,1000000));',
'   end if;   ',
'   if :new.n3 is null then',
'     :new.n3 := round(dbms_random.value(1,1000000));',
'   end if;',
'   if :new.n4 is null then',
'     :new.n4 := round(dbms_random.value(1,1000000));',
'   end if;   ',
'END;',
'/',
'show errors',
''))
);
end;
/
prompt --application/deployment/install/install_history
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(38800572968199086689)
,p_install_id=>wwv_flow_imp.id(38800516565526923988)
,p_name=>'history'
,p_sequence=>100
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE TABLE  OOW_DEMO_SALES_HISTORY (',
'    ID             NUMBER, ',
'    STORE_ID       NUMBER NOT NULL ENABLE, ',
'    PRODUCT_ID     NUMBER NOT NULL ENABLE, ',
'    DATE_OF_SALE   TIMESTAMP (6) WITH LOCAL TIME ZONE, ',
'    QUANTITY       NUMBER DEFAULT 1, ',
'    TRANSACTION_ID VARCHAR2(30), ',
'    ITEM_PRICE     NUMBER, ',
'    created_on     timestamp with local time zone,',
'    sales_data     varchar2(4000),',
'    CONSTRAINT OOW_DEMO_SALES_HISTORY_PK PRIMARY KEY (ID) ENABLE',
'   );',
'',
'CREATE OR REPLACE TRIGGER BIU_OOW_DEMO_SALES_HIST ',
'BEFORE INSERT OR UPDATE ON OOW_DEMO_SALES_HISTORY ',
'FOR EACH ROW',
'BEGIN',
'   if :new.ID is null then',
'     select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') into :new.id from dual;',
'   end if;',
'   if inserting then ',
'      :new.created_on := localtimestamp; ',
'      ',
'      if :new.sales_data is null then',
'         :new.sales_data := ',
'             ''{"ID" :"''||:new.id||''" ,''||',
'             ''"STORE_ID":''||:new.STORE_ID||'',''||',
'             ''"PRODUCT_ID":''||:new.PRODUCT_ID||'',''||',
'             ''"DATE_OF_SALE":"''||to_char(:new.DATE_OF_SALE,''YYYY-MM-DD"T"HH24:MI:SS".OZ"'')||''",''||',
'             ''"QUANTITY":''||:new.QUANTITY||'',''||',
'             ''"TRANSACTION_ID":"''||:new.TRANSACTION_ID||''",''||',
'             ''"ITEM_PRICE":''||:new.ITEM_PRICE||'',''||',
'             ''"CREATED_ON":"''||to_char(:new.DATE_OF_SALE,''YYYY-MM-DD"T"HH24:MI:SS".OZ"'')||''"''||',
'             ''}'';',
'      end if; ',
'   end if;',
'END;',
'/',
'show errors'))
);
end;
/
prompt --application/deployment/install/install_products
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(38800573277549089345)
,p_install_id=>wwv_flow_imp.id(38800516565526923988)
,p_name=>'products'
,p_sequence=>110
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE TABLE  OOW_DEMO_STORE_PRODUCTS (',
'    ID                 NUMBER, ',
'    ROW_VERSION_NUMBER NUMBER, ',
'    STORE_ID           NUMBER, ',
'    ITEM_ID            NUMBER, ',
'    SALE_START_DATE    DATE, ',
'    DISCOUNT_PCT       NUMBER, ',
'    SALE_END_DATE      DATE, ',
'    ITEM_PRICE         NUMBER,',
'    CONSTRAINT OOW_DEMO_STORE_PRODUCTS_PK PRIMARY KEY (ID) ENABLE',
'   );',
'',
'CREATE OR REPLACE TRIGGER BIU_OOW_DEMO_STORE_PRODUCTS',
'BEFORE INSERT OR UPDATE ON OOW_DEMO_STORE_PRODUCTS',
'FOR EACH ROW',
'BEGIN',
'   if :new.ID is null then',
'     select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') into :new.id from dual;',
'   end if;',
'   if inserting then',
'       :new.row_version_number := 1;',
'   elsif updating then',
'       :new.row_version_number := nvl(:old.row_version_number,1) + 1;',
'   end if;',
'END;',
'/',
'show errors',
'',
''))
);
end;
/
prompt --application/deployment/install/install_alter_statements
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(38800516770720925454)
,p_install_id=>wwv_flow_imp.id(38800516565526923988)
,p_name=>'alter statements'
,p_sequence=>120
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'ALTER TABLE  OOW_DEMO_STORE_PRODUCTS ADD CONSTRAINT OOW_DEMO_STORE_PRODUCTS_FK1 FOREIGN KEY (ITEM_ID)',
'      REFERENCES  OOW_DEMO_ITEMS (ID) ENABLE',
'/',
'ALTER TABLE  OOW_DEMO_STORE_PRODUCTS ADD CONSTRAINT OOW_DEMO_STORE_PRODUCTS_FK2 FOREIGN KEY (STORE_ID)',
'      REFERENCES  OOW_DEMO_STORES (ID) ENABLE',
'/',
'ALTER TABLE  OOW_DEMO_SALES_HISTORY ADD CONSTRAINT OOW_DEMO_SALES_HISTORY_FK1 FOREIGN KEY (STORE_ID)',
'      REFERENCES  OOW_DEMO_STORES (ID) ENABLE',
'/',
'ALTER TABLE  OOW_DEMO_SALES_HISTORY ADD CONSTRAINT OOW_DEMO_SALES_HISTORY_FK2 FOREIGN KEY (PRODUCT_ID)',
'      REFERENCES  OOW_DEMO_ITEMS (ID) ENABLE',
'/',
''))
);
end;
/
prompt --application/deployment/install/install_create_indexes
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(38800555177147285018)
,p_install_id=>wwv_flow_imp.id(38800516565526923988)
,p_name=>'create indexes'
,p_sequence=>130
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create index OOW_DEMO_STORE_PRODUCTS_i1 on OOW_DEMO_STORE_PRODUCTS (store_id);',
'create index OOW_DEMO_STORE_PRODUCTS_i2 on OOW_DEMO_STORE_PRODUCTS (item_id);',
'create index oow_demo_sales_history_i1 on oow_demo_sales_history (store_id);',
'create index oow_demo_sales_history_i2 on oow_demo_sales_history (product_id);',
'    '))
);
end;
/
prompt --application/deployment/install/install_history_generation_process_table
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(38801075546957739887)
,p_install_id=>wwv_flow_imp.id(38800516565526923988)
,p_name=>'History Generation Process table'
,p_sequence=>140
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table oow_demo_hist_gen_log (',
'    id             number,',
'    APP_SESSION_ID varchar2(255),',
'    owner          varchar2(255) not null,',
'    num_days       number,',
'    max_orders     number,',
'    start_time     timestamp with local time zone,',
'    end_time       timestamp with local time zone,',
'    row_count      number,',
'    constraint oow_demo_hist_gen_log_pk primary key ( id )',
'    );',
'',
'create or replace trigger bi_oow_demo_hist_gen_log',
'    before insert or update on oow_demo_hist_gen_log',
'for each row',
'declare',
'    l_cnt number := null;',
'begin',
'    if :new.id is null then',
'        select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') into :new.id from dual;',
'    end if;',
'',
'    :new.owner := nvl(apex_application.g_user,user);',
'    :new.APP_SESSION_ID := v(''APP_SESSION'');',
'',
'    --if inserting then',
'    --    select count(*) into l_cnt from oow_demo_hist_gen_log where start_time is not null and end_time is null;',
'    --    if l_cnt > 0 then',
'    --        raise_application_error(-20222,''Sales history generation already in progress.'');',
'    --    end if;',
'    --end if;',
'end;',
'/',
'show errors',
''))
);
end;
/
prompt --application/deployment/install/install_oow_demo_sample_data_spec
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(38800582073684051953)
,p_install_id=>wwv_flow_imp.id(38800516565526923988)
,p_name=>'oow_demo_sample_data SPEC'
,p_sequence=>150
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package oow_demo_sample_data as',
'    procedure load;',
'    procedure remove;',
'    function is_loaded return boolean;',
'    procedure load_regions;',
'    procedure load_items;',
'    procedure load_stores;',
'    procedure load_store_products;',
'end oow_demo_sample_data;',
'/',
'show errors',
'    ',
'',
'',
'',
'',
''))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(37108481025546249802)
,p_script_id=>wwv_flow_imp.id(38800582073684051953)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'OOW_DEMO_SAMPLE_DATA'
);
end;
/
prompt --application/deployment/install/install_oow_demo_sample_data_body
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(40267602270076563159)
,p_install_id=>wwv_flow_imp.id(38800516565526923988)
,p_name=>'oow_demo_sample_data BODY'
,p_sequence=>160
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package body oow_demo_sample_data ',
'as',
'',
'procedure load ',
'is',
'begin',
'    load_regions;',
'    load_items;',
'    load_stores;',
'    load_store_products;',
'end load;',
'',
'',
'--',
'-- R E G I O N S',
'--',
'procedure load_regions',
'is',
'begin',
'    oow_demo_event_pkg.log (p_event_name => ''insert oow_demo_regions begin'', p_error_message => null);',
'    insert into oow_demo_regions',
'    (id, region_name, region_zoom, region_lat, region_lng, region_color, is_default_yn )',
'    values',
'    (1, ''San Francisco'', 11, 37.8, -122.4, ''#FE523A'', null);',
'    commit;',
'',
'    insert into oow_demo_regions',
'    (id, region_name, region_zoom, region_lat, region_lng, region_color, is_default_yn )',
'    values',
'    (2, ''Boston Area'', 10, 42.324789, -71.083448, ''#598BC9'', ''Y'');',
'    commit;',
'',
'    insert into oow_demo_regions',
'    (id, region_name, region_zoom, region_lat, region_lng, region_color, is_default_yn )',
'    values',
'    (3, ''Chicago Area'', 11, 41.95, -87.8, ''#169928'', null);',
'    oow_demo_event_pkg.log (p_event_name => ''insert oow_demo_regions end'', p_error_message => null);',
'    commit;',
'',
'    oow_demo_event_pkg.log (p_event_name => ''insert oow_demo_regions begin'', p_error_message => null);',
'    insert into oow_demo_regions',
'    (id, region_name, region_zoom, region_lat, region_lng, region_color, is_default_yn )',
'    values',
'    (4, ''San Diego'', 11, 32.8, -117.4, ''#FE523A'', null);',
'    commit;',
'end load_regions;',
'',
'',
'--',
'-- P R O D U C T S',
'--',
'procedure load_items',
'is',
'begin',
'    oow_demo_event_pkg.log (p_event_name => ''insert  oow_demo_items begin'', p_error_message => null);',
'    insert into oow_demo_items ',
'    (id, item_type, item_name, msrp, item_desc)',
'    values',
'    (1, ''Food'', ''Coconut Water'', 7.5, ''Refreshing Coconut Water from NuttyH2O'');',
'    commit;',
'',
'    insert into oow_demo_items ',
'    (id, item_type, item_name, msrp, item_desc)',
'    values',
'    (2, ''Food'', ''Free range Beef'', 25, ''Home, home on that free range'');',
'    commit;',
'',
'    insert into oow_demo_items ',
'    (id, item_type, item_name, msrp, item_desc)',
'    values',
'    (3, ''Soap'', ''Dr. Bronners Liquid Soap'', 4.99, ''One world - Now!'');',
'    commit;',
'',
'    insert into oow_demo_items ',
'    (id, item_type, item_name, msrp, item_desc)',
'    values',
'    (4, ''Soap'', ''Aloe Vera Pure'', 3.25, ''Gentlest on your skin'');',
'    commit;',
'',
'    insert into oow_demo_items ',
'    (id, item_type, item_name, msrp, item_desc)',
'    values',
'    (5, ''Food'', ''Macademia nuts'', 9.99, ''Fresh from the Hawaiian Islands'');',
'    commit;',
'',
'    insert into oow_demo_items ',
'    (id, item_type, item_name, msrp, item_desc)',
'    values',
'    (6, ''Food'', ''Rea-Dee Protein Bars'', 11.99, ''Make you strong like ox.'');',
'    commit;',
'',
'    insert into oow_demo_items ',
'    (id, item_type, item_name, msrp, item_desc)',
'    values',
'    (7, ''Miscellaneous'', ''Tennis Balls'', 6, ''Can of 3'');',
'    oow_demo_event_pkg.log (p_event_name => ''insert  oow_demo_items end'', p_error_message => null);',
'    commit;',
'    ',
'    insert into oow_demo_items ',
'    (id, item_type, item_name, msrp, item_desc)',
'    values',
'    (8, ''Miscellaneous'', ''Toothpaste'', 6, ''With whitening boost'');',
'    oow_demo_event_pkg.log (p_event_name => ''insert  oow_demo_items end'', p_error_message => null);',
'    commit;',
'    ',
'    insert into oow_demo_items ',
'    (id, item_type, item_name, msrp, item_desc)',
'    values',
'    (9, ''Fruit'', ''Apples'', 3.75, ''Farmfresh, bag of 12'');',
'    oow_demo_event_pkg.log (p_event_name => ''insert  oow_demo_items end'', p_error_message => null);',
'    commit;',
'    ',
'    insert into oow_demo_items ',
'    (id, item_type, item_name, msrp, item_desc)',
'    values',
'    (10, ''Fruit'', ''Oranges'', 4.55, ''Choice bag of 8'');',
'    oow_demo_event_pkg.log (p_event_name => ''insert  oow_demo_items end'', p_error_message => null);',
'    commit;',
'    ',
'    insert into oow_demo_items ',
'    (id, item_type, item_name, msrp, item_desc)',
'    values',
'    (11, ''Fruit'', ''Blueberries'', 4.15, ''Medium box of 80'');',
'    oow_demo_event_pkg.log (p_event_name => ''insert  oow_demo_items end'', p_error_message => null);',
'    commit;',
'    ',
'    insert into oow_demo_items ',
'    (id, item_type, item_name, msrp, item_desc)',
'    values',
'    (12, ''Fruit'', ''Bananas'', 3.65, ''1 lbs'');',
'    oow_demo_event_pkg.log (p_event_name => ''insert  oow_demo_items end'', p_error_message => null);',
'    commit;',
'',
'    insert into oow_demo_items ',
'    (id, item_type, item_name, msrp, item_desc)',
'    values',
'    (13, ''Fruit'', ''Lemons'', 2.87, ''Zesty 1 lbs bag'');',
'    oow_demo_event_pkg.log (p_event_name => ''insert  oow_demo_items end'', p_error_message => null);',
'    commit;',
'    ',
'    insert into oow_demo_items ',
'    (id, item_type, item_name, msrp, item_desc)',
'    values',
'    (14, ''Fruit'', ''Grapes'', 3.88, ''1/2 lbs'');',
'    oow_demo_event_pkg.log (p_event_name => ''insert  oow_demo_items end'', p_error_message => null);',
'    commit;',
'',
'    insert into oow_demo_items ',
'    (id, item_type, item_name, msrp, item_desc)',
'    values',
'    (15, ''Snacks'', ''Super Tasty Chocolate Bar'', 1.99, ''2 Oz'');',
'    oow_demo_event_pkg.log (p_event_name => ''insert  oow_demo_items end'', p_error_message => null);',
'    commit;',
'    ',
'    insert into oow_demo_items ',
'    (id, item_type, item_name, msrp, item_desc)',
'    values',
'    (16, ''Snacks'', ''Peanut Butter Bar'', 1.59, ''1.5 Oz'');',
'    oow_demo_event_pkg.log (p_event_name => ''insert  oow_demo_items end'', p_error_message => null);',
'    commit;',
'',
'    insert into oow_demo_items ',
'    (id, item_type, item_name, msrp, item_desc)',
'    values',
'    (17, ''Snacks'', ''Chocolate Covered Peanuts'', 16.99, ''2 lbs'');',
'    oow_demo_event_pkg.log (p_event_name => ''insert  oow_demo_items end'', p_error_message => null);',
'    commit;',
'    ',
'    insert into oow_demo_items ',
'    (id, item_type, item_name, msrp, item_desc)',
'    values',
'    (18, ''Snacks'', ''Orange Twist Bar'', 1.79, ''2 Oz'');',
'    oow_demo_event_pkg.log (p_event_name => ''insert  oow_demo_items end'', p_error_message => null);',
'    commit;',
'end load_items;',
'',
'--',
'-- S T O R E S',
'--',
'procedure load_stores',
'is',
'begin',
'    oow_demo_event_pkg.log (p_event_name => ''insert oow_demo_stores begin'', p_error_message => null);',
'',
'    insert into oow_demo_stores',
'    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)',
'    values',
'    (1, ''All U Can Eat'', ''Branch'', ''1000 California St'', ''San Francisco'', ''CA'', ''94108'', 1, 37.79226, -122.411397, to_date(''23-08-2010'', ''DD-MM-YYYY''));',
'    commit;',
'',
'    insert into oow_demo_stores',
'    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)',
'    values',
'    (2, ''Holistic Foods of San Francicso'', ''Branch'', ''1221 Fell St'', ''San Francisco'', ''CA'', ''94117'', 1, 37.773862, -122.438354, to_date(''04-02-2011'', ''DD-MM-YYYY''));',
'    commit;',
'',
'    insert into oow_demo_stores',
'    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)',
'    values',
'    (3, ''Moscone Store'', ''Branch'', ''800 Howard St'', ''San Francisco'', ''CA'', ''94103'',  1, 37.783197, -122.403445, to_date(''11-06-2011'', ''DD-MM-YYYY''));',
'    commit;',
'',
'    insert into oow_demo_stores',
'    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)',
'    values',
'    (4, ''Holistic Foods - Sacramento St.'', ''Flagship'', ''1 Sacramento Street'', ''San Francisco'', ''CA'', ''94108'',  1, 37.793025, -122.409409, to_date(''04-01-2007'', ''DD-MM-YYYY''));',
'    commit;',
'',
'    insert into oow_demo_stores',
'    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)',
'    values',
'    (5, ''Mission Eats of San Francicso'', ''Branch'', ''154 Lombard St'', ''San Francisco'', ''CA'', ''94111'',  1, 37.80445, -122.404178, to_date(''04-01-2010'', ''DD-MM-YYYY''));',
'    commit;',
'',
'    insert into oow_demo_stores',
'    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)',
'    values',
'    (6, ''Holistic Foods - Hayes'', ''Flagship'', ''301 Hayes St'', ''San Francisco'', ''CA'', ''94102'',  1, 37.776981, -122.421451, to_date(''04-05-2009'', ''DD-MM-YYYY''));',
'    commit;',
'',
'    insert into oow_demo_stores',
'    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)',
'    values',
'    (7, ''Stop and Buy'', ''Flagship'', ''12 Main St'', ''Cambridge'', ''MA'', ''02142'',  2, 42.361811, -71.080314, to_date(''04-01-2010'', ''DD-MM-YYYY''));',
'    commit;',
'',
'    insert into oow_demo_stores',
'    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)',
'    values',
'    (8, ''Big Yellow Dog'', ''Branch'', ''987 West St'', ''Boston'', ''MA'', ''02136'',  2, 42.271113, -71.131913, sysdate-2);',
'    commit;',
'',
'    insert into oow_demo_stores',
'    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)',
'    values',
'    (9, ''Holistic Foods - Lexington'', ''Branch'', ''187 Massachusetts Ave'', ''Lexington'', ''MA'', ''02421'', 2, 42.426179, -71.196743, to_date(''04-04-2011'', ''DD-MM-YYYY''));',
'    commit;',
'',
'    insert into oow_demo_stores',
'    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)',
'    values',
'    (10, ''Big Grab'', ''Branch'', ''5500 Pearl St'', ''Rosemont'', ''IL'', ''60018'', 3, 41.978683, -87.872729, to_date(''04-07-2011'', ''DD-MM-YYYY''));',
'    commit;',
'',
'    insert into oow_demo_stores',
'    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)',
'    values',
'    (11, ''Central Supply'', ''Branch'', ''5100 W Harrison St'', ''Chicago'', ''IL'', ''60644'',3, 41.872867, -87.752103, to_date(''27-03-2002'', ''DD-MM-YYYY''));',
'    commit;',
'',
'    insert into oow_demo_stores',
'    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)',
'    values',
'    (12, ''The Warehouse'', ''Flagship'', ''4015 N Western Ave'', ''Chicago'', ''IL'', ''60618'', 3, 41.954396, -87.688393, sysdate-70);',
'    commit;',
'',
'    insert into oow_demo_stores',
'    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)',
'    values',
'    (13, ''Big Al'', ''Branch'', ''640 S Clark St'', ''Chicago'', ''IL'', ''60605'', 3, 41.873792, -87.630648, sysdate-28);',
'    commit;',
'    ',
'    insert into oow_demo_stores',
'    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)',
'    values',
'    (14, ''Oracle Arena'', ''Branch'', ''7000 Coliseum Way'', ''Oakland'', ''CA'', ''94621'', 1, 37.750277, -122.202862, sysdate-365);',
'    commit;',
'',
'    insert into oow_demo_stores',
'    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)',
'    values',
'    (15, ''Oracle Eats'', ''Flagship'', ''9890 Towne Centre Dr'', ''San Diego'', ''CA'', ''92121'', 4, 32.715736, -117.161087, sysdate-400);',
'    commit;',
'',
'    oow_demo_event_pkg.log (p_event_name => ''insert oow_demo_stores end'', p_error_message => null);',
'end load_stores;',
'',
'procedure load_store_products',
'is',
'begin',
'    oow_demo_event_pkg.log (p_event_name => ''insert oow_demo_store_products begin'', p_error_message => null);',
'',
'    -- Store 1 --',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (1, 1, 1, 8, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (2, 1, 2, 30, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (6, 1, 3, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (3, 1, 4, 3.75, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (4, 1, 5, 12.50, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (5, 1, 6, 14.95, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (105, 1, 7, null, null, null, null);',
'    commit;',
'    ',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (54, 1, 8, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (110, 1, 9, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (130, 1, 10, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (120, 1, 11, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (200, 1, 12, null, null, null, null);',
'    commit;',
'    ',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (74, 1, 15, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (75, 1, 16, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (80, 1, 17, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (81, 1, 18, null, null, null, null);',
'    commit;',
'    ',
'    -- Store 2 --',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (8, 2, 1, null, 15, to_date(''04-02-2011'', ''DD-MM-YYYY''), to_date(''04-02-2011'', ''DD-MM-YYYY'')+7);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (7, 2, 4, 4.25, 20, to_date(''04-02-2011'', ''DD-MM-YYYY''), to_date(''04-02-2011'', ''DD-MM-YYYY'')+4);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (106, 2, 7, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (111, 2, 9, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (140, 2, 10, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (122, 2, 11, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (123, 2, 12, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (70, 2, 13, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (71, 2, 14, null, null, null, null);',
'    commit;',
'     ',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (78, 2, 15, null, null, null, null);',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (79, 2, 16, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (82, 2, 17, null, null, null, null);',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (83, 2, 18, null, null, null, null);',
'',
'    commit;',
'   ',
'    -- Store 3 --',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (12, 3, 2, 20, null, to_date(''11-06-2011'', ''DD-MM-YYYY''), to_date(''11-06-2011'', ''DD-MM-YYYY'')+5);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (9, 3, 3, null, 15, to_date(''11-06-2011'', ''DD-MM-YYYY''), to_date(''11-06-2011'', ''DD-MM-YYYY'')+5);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (10, 3, 5, null, 15, to_date(''11-06-2011'', ''DD-MM-YYYY''), to_date(''11-06-2011'', ''DD-MM-YYYY'')+5);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (11, 3, 6, null, 15, to_date(''11-06-2011'', ''DD-MM-YYYY''), to_date(''11-06-2011'', ''DD-MM-YYYY'')+5);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (107, 3, 7, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (112, 3, 9, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (133, 3, 10, null, null, null, null);',
'    commit;',
'    ',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (76, 3, 15, null, null, null, null);',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (77, 3, 16, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (182, 3, 17, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (183, 3, 18, null, null, null, null);',
'    commit;',
'   ',
'    -- Store 4 --',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (13, 4, 1, 8.95, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (14, 4, 5, 8.50, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (15, 4, 6, 9.99, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (72, 4, 13, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (73, 4, 14, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (84, 4, 17, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (85, 4, 18, null, null, null, null);',
'    commit;',
'    ',
'    -- Store 5 --',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (16, 5, 4, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (17, 5, 5, null, 10, to_date(''04-01-2010'', ''DD-MM-YYYY''), to_date(''04-01-2010'', ''DD-MM-YYYY'')+4);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (18, 6, 1, 7.35, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (86, 6, 17, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (87, 6, 18, null, null, null, null);',
'    commit;',
'    ',
'    -- Store 7 --',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (19, 7, 1, 7.75, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (20, 7, 2, 27, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (21, 7, 7, 5.50, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (88, 7, 17, null, null, null, null);',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (89, 7, 18, null, null, null, null);',
'    commit;',
'    ',
'    -- Store 8 --',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (22, 8, 1, 8.5, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (23, 8, 2, 26, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (24, 8, 3, 5.99, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (25, 8, 4, 3.50, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (26, 8, 5,10.99, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (27, 8, 6, 12.99, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (28, 8, 7, 7, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (90, 8, 17, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (91, 8, 18, null, null, null, null);',
'',
'    commit;',
'  ',
'    ',
'    -- Store 9 --',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (29, 9, 2, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (30, 9, 3, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (31, 9, 4, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (32, 9, 5, null, null, null, null);',
'    commit;',
'    ',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (53, 9, 8, null, null, null, null);',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (92, 9, 17, null, null, null, null);',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (93, 9, 18, null, null, null, null);',
'    commit;',
'    ',
'    -- Store 10 --',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (33, 10, 1, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (34, 10 , 4, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (35, 10, 5, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (36, 10, 7, null, null, null, null);',
'    commit;',
'',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (94, 8, 17, null, null, null, null);',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (95, 8, 18, null, null, null, null);',
'',
'    commit;',
'',
'    ',
'    -- Store 11 --',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (37, 11, 1, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (38, 11, 4, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (39, 11, 5, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (40, 11, 7, null, null, null, null);',
'    commit;',
'    ',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (55, 11, 8, null, null, null, null);',
'    commit;',
'    ',
'    -- Store 12 --',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (41, 12, 2, 23.95, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (42, 12, 4, 2.95, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (43, 12, 6, 9.95, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (44, 12, 7, 4.95, null, null, null);',
'    commit;',
'    ',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (59, 12, 9, null, null, null, null);',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (96, 12, 17, null, null, null, null);',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (97, 12, 18, null, null, null, null);',
'',
'    commit;',
'',
'  ',
'    ',
'    -- Store 13 --',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (45, 13, 1, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (46, 13, 2, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (47, 13, 5, null, null, null, null);',
'    commit;',
'    ',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (56, 13, 8, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_'))
);
wwv_flow_imp_shared.append_to_install_script(
 p_id=>wwv_flow_imp.id(40267602270076563159)
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (98, 13, 17, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (99, 13, 18, null, null, null, null);',
'    commit;',
'    ',
'    -- Store 14 --',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (48, 14, 1, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (49, 14, 2, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (50, 14, 5, null, null, null, null);',
'    commit;',
'    ',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (51, 14, 6, null, null, null, null);',
'    commit;',
'    ',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (52, 14, 7, null, null, null, null);',
'    commit;',
'    ',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (57, 14, 8, null, null, null, null);',
'    commit;',
'    ',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (58, 14, 9, null, null, null, null);',
'    commit;',
'    ',
'     insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (60, 14, 10, null, null, null, null);',
'    commit;',
'    ',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (61, 14, 11, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (62, 14, 12, null, null, null, null);',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (100, 14, 17, null, null, null, null);',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (101, 14, 18, null, null, null, null);',
'',
'    commit;',
'',
'   -- Store 15 --',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (63, 15, 1, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (64, 15, 2, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (65, 15, 5, null, null, null, null);',
'    ',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (66, 15, 6, null, null, null, null);',
'    ',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (67, 15, 7, null, null, null, null);',
'    commit;',
'    ',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (68, 15, 8, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (69, 15, 12, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (102, 15, 17, null, null, null, null);',
'    commit;',
'',
'    insert into oow_demo_store_products',
'    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)',
'    values',
'    (103, 15, 18, null, null, null, null);',
'',
'    commit;',
'    ',
'    oow_demo_event_pkg.log (p_event_name => ''insert oow_demo_store_products end'', p_error_message => null);',
'end load_store_products;',
'',
'procedure remove ',
'is',
'    begin',
'        delete from oow_demo_sales_history where store_id < 100 or product_id < 100;',
'        commit;',
'        delete from oow_demo_store_products where id < 200;',
'        commit;',
'        delete from oow_demo_stores where id < 200;',
'        commit;',
'        delete from oow_demo_items where id < 200;',
'        commit;',
'        delete from oow_demo_regions where id < 200;',
'        commit;',
'exception',
'        when others then',
'        if sqlcode <> -2292 then',
'            raise;',
'        end if;',
'end remove;',
'',
'function is_loaded return boolean is',
'        l_cnt number := 0;',
'begin',
'        select count(*) into l_cnt from oow_demo_regions where id < 200;',
'        if l_cnt > 0 then return true; end if;',
'        select count(*) into l_cnt from oow_demo_items where id < 200;',
'        if l_cnt > 0 then return true; end if;',
'        select count(*) into l_cnt from oow_demo_stores where id < 200;',
'        if l_cnt > 0 then return true; end if;',
'        select count(*) into l_cnt from oow_demo_store_products where id < 200;',
'        if l_cnt > 0 then return true; end if;',
'        return false;',
'end is_loaded;',
'',
'end oow_demo_sample_data;',
'/',
'show errors',
'',
'',
''))
);
end;
/
prompt --application/deployment/install/install_oow_demo_gen_data_pkg_spec
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(38815917878008306323)
,p_install_id=>wwv_flow_imp.id(38800516565526923988)
,p_name=>'oow_demo_gen_data_pkg SPEC'
,p_sequence=>170
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package oow_demo_gen_data_pkg',
'is',
'    g_i               number := null;',
'    g_store_count     integer := null;',
'    g_transaction     varchar2(255) := null;',
'    g_item_id         number := null;',
'    g_qty             number := null;',
'    g_price           number := null;',
'    g_progress        number := 0;',
'    g_context         varchar2(4000) := null;',
'    g_insert_count    integer := 0;',
'    ',
'function generate_transaction ',
'    return number;',
'',
'procedure oow_demo_gen_sales_data (',
'    p_days      in number default 90, -- 365',
'    p_orders    in number default 50, -- 50',
'    p_truncate  in varchar2 default ''Y'',',
'    p_max_stores in number default 500,',
'    p_max_rows   in number default 0',
');',
'',
'procedure exec_100_transactions;',
'',
'procedure exec_n_transactions (',
'    P_transactions in number default 1',
');',
'',
'end;',
'/',
'',
'',
''))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(37108481140110249821)
,p_script_id=>wwv_flow_imp.id(38815917878008306323)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'OOW_DEMO_GEN_DATA_PKG'
);
end;
/
prompt --application/deployment/install/install_oow_demo_gen_data_pkg_body
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(40267886220742663228)
,p_install_id=>wwv_flow_imp.id(38800516565526923988)
,p_name=>'oow_demo_gen_data_pkg BODY'
,p_sequence=>180
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package body oow_demo_gen_data_pkg',
'is',
'    g_last_history_id number;',
'',
'    ',
'function generate_transaction ',
'    return number',
'is',
'begin',
'    oow_demo_gen_sales_data (',
'       p_days => 1,',
'       p_orders => 1,',
'       p_truncate => ''N'',',
'       p_max_stores => 1',
'       );',
'    commit;',
'    return g_last_history_id;',
'end generate_transaction;',
'',
'',
'--',
'-- G E N   S A L E S   D A T A',
'--',
'',
'procedure oow_demo_gen_sales_data (',
'    p_days       in number   default 90, ',
'    p_orders     in number   default 50, ',
'    p_truncate   in varchar2 default ''Y'',',
'    p_max_stores in number   default 500,',
'    p_max_rows   in number   default 0',
')',
'as',
'    cursor log_csr is',
'        select owner, start_time, to_char(start_time,''YYYY.MM.DD HH24:MI:SS'') start_txt',
'        from oow_demo_hist_gen_log',
'        where start_time is not null',
'            and end_time is null;',
'    log_rec            log_csr%ROWTYPE;',
'    l_log_id           number;',
'    l_date             timestamp with local time zone;',
'    l_transaction      varchar2(30);',
'    l_order            number;',
'    i                  number;',
'    l_qty              number;',
'    l_item_price       number;',
'    l_app_user         varchar(255);',
'    l_history_id       number;',
'    l_max_stores       number;',
'    l_store_count      integer := 0;',
'    l_product_count    integer := 0;',
'    x                  number;',
'    l_app_session      varchar2(255);',
'    l_error_trace      varchar2(32767);',
'    l_continue         boolean := true;',
'    l_max_rows         integer := 0;',
'begin',
'    --',
'    -- initialize variables',
'    --',
'    l_max_rows     := nvl(p_max_rows,0);',
'    g_insert_count := 0;',
'    g_progress     := 1;',
'    l_max_stores   := nvl(p_max_stores,100);',
'    l_app_user     := v(''APP_USER'');',
'    l_app_session  := v(''APP_SESSION'');',
'    g_progress     := 2;',
'',
'    --',
'    -- insert history log which gets updated later',
'    --',
'    g_progress := 3;',
'    insert into oow_demo_hist_gen_log ( owner, start_time, num_days, max_orders )',
'    values ( l_app_user, localtimestamp, p_days, p_orders )',
'    returning id into l_log_id;',
'',
'    --',
'    -- Truncate sales history table if requested',
'    --',
'    if nvl(p_truncate,''N'') = ''Y'' then',
'        oow_demo_event_pkg.log(p_event_name => ''about to truncate oow_demo_sales_history table'');',
'        execute immediate ''truncate table oow_demo_sales_history'';',
'    end if;',
'',
'    x := round(dbms_random.value(1,4));',
'    g_progress := 4;',
'',
'',
'    --',
'    -- loop over days requested (p_days)',
'    --',
'    for i in 1..greatest(p_days,1) loop',
'        g_progress := 5;',
'        g_context := ''i=''||i;',
'        l_date := localtimestamp - numtodsinterval(i-1,''day'');',
'        ',
'        g_i := i;',
'        -- walk every store for the date',
'        l_store_count := 0;',
'',
'        --',
'        -- loop over open stores',
'        --',
'        for s in (select id, region_id, decode(x,1,n1,2,n2,3,n3,4,n4,id) x',
'                  from oow_demo_stores',
'                  where STORE_OPEN_DATE <= l_date ',
'                  order by 3) loop',
'            --',
'            -- audit',
'            --',
'            g_progress := 6;',
'            g_context := ''i=''||i||'', store_id=''||s.id;',
'            --',
'            -- increment store counter',
'            --',
'            l_store_count := l_store_count + i;',
'            g_store_count := l_store_count;',
'            --',
'            -- max stores defaults to 1',
'            --',
'            if l_store_count > l_max_stores then ',
'                exit; ',
'            end if;',
'            g_last_history_id := null;',
'            -- make 0 to p_orders 500 orders for this date in the store',
'            g_transaction := null;',
'            --',
'            -- generate transactions, between zero and p_orders ',
'            --',
'            for l_order in 1..greatest(round(dbms_random.value(0,p_orders)),1) loop',
'                g_progress := 7;',
'                g_context := ''i=''||i||'', store_id=''||s.id||'', l_order_id=''||l_order;',
'                -- something unique for a transaction id',
'                l_transaction := to_char(l_date,''YYYYMMDD'') || ''-''|| l_order ;',
'                g_transaction := l_transaction;',
'                -- add a weight to sales items to give a higher chance they are sold',
'                g_item_id := null;',
'                --',
'                -- loop over store products, not all products are sold in all stores',
'                --',
'                for p in (select id, item_id, item_price,',
'                            case when l_date between sale_start_date and sale_end_date then 3',
'                            else 1 end weight',
'                        from oow_demo_store_products',
'                        where store_id = s.id ',
'                        ) loop',
'                    g_progress := 8;',
'                    l_product_count := l_product_count + 1;',
'                    g_context := ''i=''||i||'', store_id=''||s.id||'', l_order_id=''||l_order||'', product_id=''||p.id||'', l_product_count=''||l_product_count;',
'                    if p_orders = 1 and l_product_count > 1 then exit; end if;',
'                    g_item_id := p.item_id;',
'                    -- for none sale items a 50/50 on sale',
'                    -- for sale items its 3/4 chance',
'                    -- for one transaction orders buy 1 anyway',
'                    g_qty := null;',
'                    g_price := null;',
'                    g_progress := 8;',
'                    if ( round(dbms_random.value(0,p.weight)) != 0 ) or (p_days = 1 and p_orders = 1) then',
'                        -- pick how many to buy',
'                        l_qty := greatest(round(dbms_random.value(1,10)),1);',
'                        g_qty := l_qty;',
'                        -- if store discount price null, use msrp price',
'                        if p.item_price is null then',
'                            for c1 in (select msrp from oow_demo_items where id = p.item_id) loop',
'                                l_item_price := c1.msrp;',
'                            end loop;',
'                        else',
'                            l_item_price := p.item_price;',
'                        end if;',
'                        g_price := l_item_price;',
'                        -- order it up',
'                        g_progress := 9;',
'                        insert into oow_demo_sales_history(',
'                            store_id,product_id,date_of_sale,quantity,transaction_id,item_price)',
'                        values',
'                            (s.id,p.item_id,l_date,l_qty,l_transaction,l_item_price)',
'                        returning id into g_last_history_id;',
'                        g_insert_count := g_insert_count +1;',
'                        if l_max_rows != 0 and g_insert_count >= nvl(l_max_rows,5000) then',
'                            l_continue := false;',
'                        end if;',
'                    end if;',
'                    if not l_continue then exit; end if;',
'                end loop;',
'                commit;',
'                g_progress := 10;',
'                if not l_continue then exit; end if;',
'            end loop;',
'            if not l_continue then exit; end if;',
'        end loop;',
'        if not l_continue then exit; end if;',
'    end loop;',
'',
'    g_progress := 100;',
'    update oow_demo_hist_gen_log',
'    set end_time = localtimestamp, row_count = g_insert_count',
'    where id = l_log_id;',
'    commit;',
'',
'exception',
'    when others then',
'    oow_demo_event_pkg.log (',
'        p_event_name => ''error executing oow_demo_gen_sales_data'', ',
'        p_error_message => sqlerrm, ',
'        p_error_trace => l_error_trace, ',
'        p_a1=>g_progress, ',
'        p_a2=>g_context);',
'        --',
'        if l_log_id is not null then',
'            update oow_demo_hist_gen_log',
'            set end_time = localtimestamp, row_count = g_insert_count',
'            where id = l_log_id;',
'        end if;',
'        --',
'        raise;',
'end oow_demo_gen_sales_data;',
'',
'',
'procedure exec_100_transactions',
'is',
'   x number;',
'   l_found boolean;',
'begin',
'for i in 1..100 loop',
'   x :=  generate_transaction;',
'',
'   l_found := false;',
'   for c1 in (select id,',
'                     store_id, ',
'                     created_on,',
'                     product_id, ',
'                     quantity, ',
'                     item_price,',
'                     date_of_sale,',
'                     (select store_name ',
'                      from OOW_demo_stores s ',
'                      where s.id = h.store_id) store,',
'                     (select item_Name from OOW_demo_items i',
'                      where i.id = h.product_id) product',
'              from oow_demo_sales_history h',
'              where id = x) loop',
'     sys.htp.p(''Transaction: ''||to_char(i));',
'     sys.htp.p(''<br>ID: ''||apex_escape.html(c1.id));',
'     sys.htp.p(''<br>Store: ''||apex_escape.html(c1.store));',
'     sys.htp.p(''<br>Product: ''||apex_escape.html(c1.product));',
'     sys.htp.p(''<br>Date of Sale: ''||to_char(c1.date_of_sale,''DD-MM-YYYY HH24:MI:SS''));',
'     sys.htp.p(''<br>Date of Posting: ''||to_char(c1.created_on,''DD-MM-YYYY HH24:MI:SS''));',
'     sys.htp.p(''<br>Quantity: ''||to_char(c1.quantity,''999G999G999G990''));',
'     sys.htp.p(''<br>Price: ''||to_char(c1.item_price,''$999G999G999G990D00''));',
'     sys.htp.p(''<br>Sale: ''||to_char(c1.item_price * c1.quantity,''$999G999G999G990D00''));',
'     l_found := true;',
'   end loop;',
'     if not l_found then ',
'         sys.htp.p(''Transaction: ''||to_char(i));',
'         sys.htp.p(''<br>Day loop: ''||oow_demo_gen_data_pkg.g_i);',
'         sys.htp.p(''<br>Store loop: ''||oow_demo_gen_data_pkg.g_store_count);',
'         sys.htp.p(''<br>Item ID: ''||oow_demo_gen_data_pkg.g_item_id);',
'         sys.htp.p(''<br>Quantity: ''||oow_demo_gen_data_pkg.g_qty);',
'         sys.htp.p(''<br>Attempted Transaction: ''||apex_escape.html(oow_demo_gen_data_pkg.g_transaction));',
'         sys.htp.p(''<br>Order request did not result in order being processed'');',
'     end if;',
'     sys.htp.p(''<hr>'');',
'end loop;',
'commit;',
'end exec_100_transactions;',
'',
'procedure exec_n_transactions (',
'    P_transactions in number default 1',
')',
'is',
'   x number;',
'begin',
'    for i in 1..P_transactions loop',
'        x := generate_transaction;',
'    end loop;',
'    commit;',
'end exec_n_transactions;',
'',
'end oow_demo_gen_data_pkg;',
'/',
''))
);
end;
/
prompt --application/deployment/install/install_load_sample_data
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(38801578977814101845)
,p_install_id=>wwv_flow_imp.id(38800516565526923988)
,p_name=>'Load Sample Data'
,p_sequence=>190
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    oow_demo_event_pkg.log (p_event_name => ''load sample data starting'', p_error_message => null);',
'    oow_demo_sample_data.load;',
'    oow_demo_event_pkg.log (p_event_name => ''load sample data completed'', p_error_message => null);',
'    commit;',
'exception when others then',
'    oow_demo_event_pkg.log (p_event_name => ''error loading sample data'', p_error_message => sqlerrm);',
'end;',
'/',
'',
'begin',
'    for j in 1..4 loop',
'    for c1 in (select count(*) c from oow_demo_regions) loop',
'        if c1.c = 0 then ',
'            begin',
'               oow_demo_event_pkg.log (p_event_name => ''retry loading regions ''||j, p_error_message => null);',
'               oow_demo_sample_data.load_regions;',
'            exception when others then',
'               oow_demo_event_pkg.log (p_event_name => ''error loading regions ''||j, p_error_message => sqlerrm);',
'            end;',
'        end if;',
'    end loop;',
'    end loop;',
'end;',
'/',
'',
'begin',
'    for j in 1..4 loop',
'    for c1 in (select count(*) c from oow_demo_items) loop',
'        if c1.c = 0 then ',
'            begin',
'               oow_demo_event_pkg.log (p_event_name => ''retry loading items ''||j, p_error_message => null);',
'               oow_demo_sample_data.load_items;',
'            exception when others then',
'               oow_demo_event_pkg.log (p_event_name => ''error loading items ''||j, p_error_message => sqlerrm);',
'            end;',
'        end if;',
'    end loop;',
'    end loop;',
'end;',
'/',
'',
'begin',
'    for j in 1..4 loop',
'    for c1 in (select count(*) c from oow_demo_stores) loop',
'        if c1.c = 0 then ',
'            begin',
'               oow_demo_event_pkg.log (p_event_name => ''retry loading stores ''||j, p_error_message => null);',
'               oow_demo_sample_data.load_stores;',
'            exception when others then',
'               oow_demo_event_pkg.log (p_event_name => ''error loading stores ''||j, p_error_message => sqlerrm);',
'            end;',
'        end if;',
'    end loop;',
'    end loop;',
'end;',
'/',
'',
'begin',
'    for j in 1..4 loop',
'    for c1 in (select count(*) c from oow_demo_store_products) loop',
'        if c1.c = 0 then ',
'            begin',
'               oow_demo_event_pkg.log (p_event_name => ''retry loading products ''||j, p_error_message => null);',
'               oow_demo_sample_data.load_store_products;',
'            exception when others then',
'               oow_demo_event_pkg.log (p_event_name => ''error loading products ''||j, p_error_message => sqlerrm);',
'            end;',
'        end if;',
'    end loop;',
'    end loop;',
'end;',
'/',
'    ',
'',
''))
);
end;
/
prompt --application/deployment/install/install_seed_sample_history_data
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(38816561456376231976)
,p_install_id=>wwv_flow_imp.id(38800516565526923988)
,p_name=>'seed sample history data'
,p_sequence=>200
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    t varchar(32767) := null;',
'    s number := 5000;',
'    o number := 5;',
'    d number := 365;',
'begin',
'    oow_demo_event_pkg.log (p_event_name => ''transaction generation starting, attempt 1'', p_error_message => null);',
'    oow_demo_gen_data_pkg.oow_demo_gen_sales_data (',
'        p_days      => d,',
'        p_orders    => o,',
'        p_truncate  =>''N'',',
'        p_max_rows  => s);',
'    oow_demo_event_pkg.log (p_event_name => ''transaction generation completed'', p_error_message => null);',
'exception when others then',
'    --t := dbms_utility.format_error_backtrace;',
'    oow_demo_event_pkg.log (p_event_name => ''error gennerating data'', p_error_message => sqlerrm, p_error_trace=>t);',
'    raise;',
'end;',
'/',
'',
''))
);
end;
/
prompt --application/deployment/install/install_summary
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(38819565346974548754)
,p_install_id=>wwv_flow_imp.id(38800516565526923988)
,p_name=>'summary'
,p_sequence=>210
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    c integer;',
'begin',
'    select count(*) into c from OOW_DEMO_ITEMS;',
'    oow_demo_event_pkg.log (p_event_name => ''OOW_DEMO_ITEMS row count'', p_event_detail => to_char(c,''999G999G990''));',
'exception when others then',
'    oow_demo_event_pkg.log (p_event_name => ''OOW_DEMO_ITEMS row count'', p_error_message => sqlerrm);',
'end;',
'/',
'    ',
'declare',
'    c integer;',
'begin',
'    select count(*) into c from OOW_DEMO_REGIONS;',
'    oow_demo_event_pkg.log (p_event_name => ''OOW_DEMO_REGIONS row count'', p_event_detail => to_char(c,''999G999G990''));',
'exception when others then',
'    oow_demo_event_pkg.log (p_event_name => ''OOW_DEMO_REGIONS row count'', p_error_message => sqlerrm);',
'end;',
'/',
'    ',
'declare',
'    c integer;',
'begin',
'    select count(*) into c from OOW_DEMO_STORES;',
'    oow_demo_event_pkg.log (p_event_name => ''OOW_DEMO_STORES row count'', p_event_detail => to_char(c,''999G999G990''));',
'exception when others then',
'    oow_demo_event_pkg.log (p_event_name => ''OOW_DEMO_STORES row count'', p_error_message => sqlerrm);',
'end;',
'/',
'    ',
'declare',
'    c integer;',
'begin',
'    select count(*) into c from OOW_DEMO_STORE_PRODUCTS;',
'    oow_demo_event_pkg.log (p_event_name => ''OOW_DEMO_STORE_PRODUCTS row count'', p_event_detail => to_char(c,''999G999G990''));',
'exception when others then',
'    oow_demo_event_pkg.log (p_event_name => ''OOW_DEMO_STORE_PRODUCTS row count'', p_error_message => sqlerrm);',
'end;',
'/',
'    ',
'declare',
'    c integer;',
'begin',
'    select count(*) into c from OOW_DEMO_SALES_HISTORY;',
'    oow_demo_event_pkg.log (p_event_name => ''OOW_DEMO_SALES_HISTORY row count'', p_event_detail => to_char(c,''999G999G990''));',
'exception when others then',
'    oow_demo_event_pkg.log (p_event_name => ''OOW_DEMO_SALES_HISTORY row count'', p_error_message => sqlerrm);',
'end;',
'/',
'',
'',
''))
);
end;
/
prompt --application/deployment/install/install_oow_demo_timing_spec
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(40236839915653584748)
,p_install_id=>wwv_flow_imp.id(38800516565526923988)
,p_name=>'oow_demo_timing spec '
,p_sequence=>220
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package oow_demo_timing',
'as',
'    g_timestamp timestamp;',
'    procedure start_timer;',
'    function get_elap return number;',
'end;',
'/',
'',
''))
);
end;
/
prompt --application/deployment/install/install_oow_demo_timing_body
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(13953744712245198561)
,p_install_id=>wwv_flow_imp.id(38800516565526923988)
,p_name=>'oow_demo_timing body'
,p_sequence=>230
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package body oow_demo_timing',
'as',
'procedure start_timer',
'is',
'begin',
'    g_timestamp := systimestamp;',
'end start_timer;',
'',
'function get_elap return number',
'is',
'begin',
'    return extract (second from (systimestamp - g_timestamp) );',
'end get_elap;',
'end oow_demo_timing;',
'/',
''))
);
end;
/
prompt --application/deployment/install/install_add_sales_data_column_to_oow_demo_sales_history_table
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(15080109617613029428)
,p_install_id=>wwv_flow_imp.id(38800516565526923988)
,p_name=>'Add SALES_DATA column to OOW_DEMO_SALES_HISTORY table'
,p_sequence=>240
,p_script_type=>'INSTALL'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>'select null from all_tab_columns where table_name = ''OOW_DEMO_SALES_HISTORY'' and column_name = ''SALES_DATA'';'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table oow_demo_sales_history add sales_data varchar2(4000);',
'/'))
);
end;
/
prompt --application/deployment/install/install_create_biu_oow_demo_sales_hist_trigger
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(15080110157302051384)
,p_install_id=>wwv_flow_imp.id(38800516565526923988)
,p_name=>'Create BIU_OOW_DEMO_SALES_HIST trigger'
,p_sequence=>250
,p_script_type=>'INSTALL'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>'select null from all_triggers where trigger_name = ''BIU_OOW_DEMO_SALES_HIST'';'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE OR REPLACE TRIGGER BIU_OOW_DEMO_SALES_HIST ',
'BEFORE INSERT OR UPDATE ON OOW_DEMO_SALES_HISTORY ',
'FOR EACH ROW',
'BEGIN',
'   if :new.ID is null then',
'     select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') into :new.id from dual;',
'   end if;',
'   if inserting then ',
'      :new.created_on := localtimestamp; ',
'      ',
'      if :new.sales_data is null then',
'         :new.sales_data := ',
'             ''{"ID" :"''||:new.id||''" ,''||',
'             ''"STORE_ID":''||:new.STORE_ID||'',''||',
'             ''"PRODUCT_ID":''||:new.PRODUCT_ID||'',''||',
'             ''"DATE_OF_SALE":"''||to_char(:new.DATE_OF_SALE,''YYYY-MM-DD"T"HH24:MI:SS".OZ"'')||''",''||',
'             ''"QUANTITY":''||:new.QUANTITY||'',''||',
'             ''"TRANSACTION_ID":"''||:new.TRANSACTION_ID||''",''||',
'             ''"ITEM_PRICE":''||:new.ITEM_PRICE||'',''||',
'             ''"CREATED_ON":"''||to_char(:new.DATE_OF_SALE,''YYYY-MM-DD"T"HH24:MI:SS".OZ"'')||''"''||',
'             ''}'';',
'      end if; ',
'   end if;',
'END;',
'/'))
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
