--------------------------------------------------------------------------------
-- Name: Sample Master Detail
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
,p_default_application_id=>7860
,p_default_id_offset=>11438353329529351
,p_default_owner=>'ORACLE'
);
end;
/
 
prompt APPLICATION 7860 - Sample Master Detail
--
-- Application Export:
--   Application:     7860
--   Name:            Sample Master Detail
--   Exported By:     ORACLE
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     34
--       Items:                  122
--       Computations:             7
--       Validations:              9
--       Processes:               67
--       Regions:                114
--       Buttons:                 84
--       Dynamic Actions:         41
--     Shared Components:
--       Logic:
--         Items:                  2
--       Navigation:
--         Lists:                  7
--         Breadcrumbs:            1
--           Entries:             24
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                  11
--         Shortcuts:              2
--         Plug-ins:               1
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--       Install scripts:          2
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
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Sample Master Detail')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'SAMPLE-MASTER-DETAIL')
,p_application_group=>wwv_flow_imp.id(4851185638549144)
,p_application_group_name=>'Sample Apps'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'10E13E94AB24B460D9B13786330A04EE462014F3A1D4F97A9BCA50395513D15E'
,p_checksum_salt_last_reset=>'19990804000000'
,p_bookmark_checksum_function=>'SH512'
,p_max_session_length_sec=>28800
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_time_format=>'DD-MON-YYYY HH:MIPM'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(48369822177083557896)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'&APP_NAME.'
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
,p_substitution_value_01=>'Sample Master Detail'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>4
,p_version_scn=>187793428
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
 p_id=>wwv_flow_imp.id(7860)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(48369769598872557821)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_css_file_urls=>'#IMAGE_PREFIX#pkgapp_ui/css/5.0#MIN#.css'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(48369821865029557893)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/shared_components/navigation/lists/administration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(4545860407829891589)
,p_name=>'Administration'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089079371
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4545860706825891594)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Feedback Preference'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bullhorn'
,p_list_text_01=>'Enable or disable Feedback for the application'
,p_list_text_02=>'&P33_FEEDBACK_STATUS.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4545861176710891595)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Manage Sample Data'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-database'
,p_list_text_01=>'Re-create or remove sample data delivered with this application.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4545861994090891596)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Theme Style'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-desktop'
,p_list_text_01=>'Change user interface theme style for all users.'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/admin_reports
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(4545862640121891599)
,p_name=>'Admin Reports'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089079371
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4545862986278891600)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Activity Calendar'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:28:::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'View page views by user in a monthly calendar'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4545863390267891600)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Page Views'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:29:::'
,p_list_item_icon=>'fa-eye'
,p_list_text_01=>'Report page view for this application'
,p_list_text_02=>'&P33_PAGE_VIEWS.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4545863766737891600)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Top Users'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:30:::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Report user activity for this application'
,p_list_text_02=>'&P33_USER_COUNT.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/task_actions
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(4627088936615946135)
,p_name=>'Task Actions'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089079371
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4627089968362946138)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Add To Do'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:15:P15_PROJECT_ID,P15_TASK_ID:&P31_PROJECT_ID.,&P31_TASK_ID.:'
,p_list_item_icon=>'fa-list'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4627090356478946139)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Add Link'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:23:P23_PROJECT_ID,P23_TASK_ID:&P31_PROJECT_ID.,&P31_TASK_ID.:'
,p_list_item_icon=>'fa-link'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/master_detail_pages
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(4630779302672353031)
,p_name=>'Master Detail Pages'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089079371
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5410511703809202928)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Stacked'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-layers'
,p_list_text_01=>'A single page master-detail utilizing editable Interactive Grids.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3950064255523022770)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Stacked with Sub Detail'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-layers'
,p_list_text_01=>'A single page master-detail-subdetail utilizing editable Interactive Grids.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(88690285372509949)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Side by Side'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-layout-header-sidebar-left'
,p_list_text_01=>'A single page master-detail utilizing side by side layout and report regions with modal edit windows.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5414536382422602175)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Drill Down'
,p_list_item_link_target=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clone'
,p_list_text_01=>'Consists of a report page that drills down to a page where the selected master is standard form items, and the detail tables use editable Interactive Grids.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'48,49'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(49153622826777826540)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Report and Marquee'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cards'
,p_list_text_01=>'Consists of a report page that drills down to a marquee page. On the marquee page each of the detail tables are shown using a classic report.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4,5,11'
);
end;
/
prompt --application/shared_components/navigation/lists/project_actions
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(30935918878570202669)
,p_name=>'Project Actions'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089079371
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30935919073757202670)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Add Milestone'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7:P7_PROJECT_ID:&P11_PROJECT_ID.:'
,p_list_item_icon=>'fa-flag-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30935919470788202671)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Add Task'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:9:P9_PROJECT_ID:&P11_PROJECT_ID.:'
,p_list_item_icon=>'fa-check-square-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4917079803245601718)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Add To Do'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:15:P15_PROJECT_ID:&P11_PROJECT_ID.:'
,p_list_item_icon=>'fa-list'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4917080142857603066)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Add Link'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:23:P23_PROJECT_ID:&P11_PROJECT_ID.:'
,p_list_item_icon=>'fa-link'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32231420254401683684)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Add Comment'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:13:P13_PROJECT_ID:&P11_PROJECT_ID.:'
,p_list_item_icon=>'fa-comment-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(48369769598872557821)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089079371
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(48369823366184557910)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3847081168732210962)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Stacked'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-layers'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3950034040777008282)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Stacked with Sub Detail'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-layers'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'17'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(87579125023189814)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Side by Side'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-layout-header-sidebar-left'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3847081645082215186)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Drill Down'
,p_list_item_link_target=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clone'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'48,49'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3847080712886202955)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Report and Marquee'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cards'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4,5,11,31'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4545857196576891553)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cog'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4561294547296683650)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(4545857196576891553)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'25'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4561301584429691828)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Sample Data'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(4545857196576891553)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'26'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4561310808555697960)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Theme Style'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(4545857196576891553)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'27'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4564787854704116578)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Reports'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::::#adminReports'
,p_parent_list_item_id=>wwv_flow_imp.id(4545857196576891553)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4564757150816089828)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Activity Calendar'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(4564787854704116578)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4564762013847096789)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Page Views'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(4564787854704116578)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4564772483880101438)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Top Users'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(4564787854704116578)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(48369821865029557893)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089079371
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4561339083546835039)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.:102:P102_APPLICATION_ID,P102_PAGE_ID:&APP_ID.,&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-bullhorn'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'nvl(:ENABLE_FEEDBACK,''NO'') = ''YES'''
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(27402084966246399542)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(48369822088692557895)
,p_list_item_display_sequence=>35
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_parent_list_item_id=>wwv_flow_imp.id(27402084966246399542)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE9000001C149444154584763545F98F19F610001E3A803464360D086C056BF3A06650149BCF9E3EE87E70CDE9B9A28CA433873C18DB8E9';
wwv_flow_imp.g_varchar2_table(2) := '4419ACB128932875B81411E5801DB7BE302CB8F00D6C4682011783871A0FDC3CBA382072F51B864FBF18C196F2B133302C0F11A6AF03A2D6BE67F8F8E31FD8527E0E268665C1827007D4EF5B4C300AEE7E7BC970E6DD5DACEA888A82DD777F30CCBFF01D';
wwv_flow_imp.g_varchar2_table(3) := '6C40A2012783AB3207DCB01B77EE1174C0DFFFFF18828FF792EF8073CF7E32DC78F593E1FFFFFF0C9AE21C0C4652EC280E1011428408BA2D6FDEBD070B051CEB26CF012B2E7D665874E12B03031333C4807F7F19E20D7918C27521091114021A2A4A3843';
wwv_flow_imp.g_varchar2_table(4) := '011642643B2066CD2B86F73FA19643AD1162FFC7B0384414EE009A85C0DF7F0C0CCB2F7F65606484E40018004545A42E37033313240468E2802B3153185860C18E2380410EB979F73E6DA2C04E589D414744019280A44DB03AE1EBB7EF0C8C4CCCB40901';
wwv_flow_imp.g_varchar2_table(5) := '641B37589582B9F8821A572A243B17607300BED48ECB0164E782411902A35130E02140B0D6C1A380E4A218D9AC297A890C323C2264DB7FF2E54D86F6BB9B48AB8C508ADE3F7F19FEFF81B407C8018C2C4C0C8C2CA8F509CC9CD19ED168080C78080000D9';
wwv_flow_imp.g_varchar2_table(6) := '1309103C6735CE0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(542418358527560088)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE900000E5149444154785EED9D7B7055C51DC77FE7E4E6DE0408444854286A44CB63A8A843518BA845ABADF8186D6DB54C89CE385AAC75';
wwv_flow_imp.g_varchar2_table(2) := 'ACB54E5BABFF74A875C6D7386AD53A9D1670B04EAD757C61EDD427328A5A15B404154D457998041242C8E33E4E674F480C9290F3DBB3BBE764F79B19FED0EC6FF7EEE7F7FBDC3D7BEEC95E6FDAD2C501E107041C25E0410047338F69870420000AC16902';
wwv_flow_imp.g_varchar2_table(3) := '10C0E9F463F2100035E0340108E074FA317908801A709A0004703AFD983C04400D384D0002389D7E4C1E02A0069C2600019C4E3F260F0150034E1380004EA71F938700A801A7094000A7D38FC94300D480D3042080D3E9C7E421006AC0690210C0E9F463';
wwv_flow_imp.g_varchar2_table(4) := 'F2100035E0340108E074FA317908801A709A0004703AFD983C04400D384D0002389D7E4C1E02A0069C2600019C4E3F260F0150034E1380004EA71F938700A801A7094000A7D38FC94300D480D3042080D3E9C7E421006AC0690210C0E9F463F2A916E0D4';
wwv_flow_imp.g_varchar2_table(5) := '4366D1D987CFA1B9136750756EF488CE566B7707ADDEB29E9EFCF8757A6ED3DA113D179B5E7C2A05983CA6867E3777111D7FF0549B58F7CFE5B5ADEFD36F562FA74F77355B39BF9134A9540AB0F48C6BAC2DFEBEE210125CFCEC1D23A956AC7CADA91340';
wwv_flow_imp.g_varchar2_table(6) := '5CF6FC61FE1556C2FEF2A47EF2FCBDB81C4A38D3A913E0F6932FA505755F4F188B99E19F6E7C837EFED29FCC0C86510625903A015EBDF0D611BFE18D5A6B62637CC2C3BF88DA1CED3410489D000DF5F76A98667ABB9CBECC8DCBBDB4660002249C190890';
wwv_flow_imp.g_varchar2_table(7) := '6C022040B2FC0902249B0008902C7F0890307F08907002B002249B0008902C7FAC0009F37752804D6D797AB9B193D66EEEA2FFB516A8B5B310A6A1BA324387556768D6A40A3AA9AE920E1957AE3D3D5801B423DEEF004E09200AFFC1B7DAE8C58DBB2351';
wwv_flow_imp.g_varchar2_table(8) := '3FE58851F4A363C769150102444A85B646CE08F0D4865D74CFEA1D542A052C98BEEFD195730FA0B3A68D61C5456D0C01A292D2D3CE090156BCBD9396BDD9FA0541CF23CFCF90E7FB44BE4F9EE787BF0B821251A94441F8AF20FE477F4CFDEC6A5A78CC58';
wwv_flow_imp.g_varchar2_table(9) := 'E5598000CA91B23AB45E80271BDAE9EE5776F442F13CF233E5E49545BBB60F8A792A15F2FD225C356FBCF2950002B0EA557963AB0510D7FC3F7E746B78D9E39565C8CF644309583F4140A5420F05C50289CBA1FBBF7BB0D23D01046065437963AB05F8FD';
wwv_flow_imp.g_varchar2_table(10) := 'F34DF4E2479DBDC55F9E8B05AF94EF0E2538654A25FD7A7E6DACBE060643006528A53AB25600F1EE7FD9235B94147F1FD93E091EB860A2B255000248D5ADB2206B0558F18ED8F8B65159B6927FD93314DE20A0624F27D5CF1E470B8F56B3218600CA6A59';
wwv_flow_imp.g_varchar2_table(11) := 'AA236B05F8D5CACF696D5329F286372A3DB1319E55EBD3CD671E183564BFED2080128CD29D582BC00F1FDA4C3B8B129BDEE15006018DCBE469C54513876B19E9F7102012266D8DAC15E0ACA55B88C45D1F1D3F851E7AEA6208A003ADE93EAD15E0ECE55B';
wwv_flow_imp.g_varchar2_table(12) := '29F0A3DDEFE742F74A797A72D1C1DCB041DB6305508251BA136B0558F4F7EDB4BD8BF7D843548AE32B3C5AFEBDF1519B630FA084949E4EAC15E086E7DAE9AD2D3D5AA81D3B314B4B4EAD52D23756002518A53BB1568087DFEBA4656F477BEA934BAFFE98';
wwv_flow_imp.g_varchar2_table(13) := '5174E1CC4A6ED8A0ED1B3EFC48493F69EBA4BDD045EFB47E4C2F36AFA7D7B76F4CDBCBEB7F3DD60AF0597B912E7F7CC003700A53F0C773ABE92B55654A7AB455808170D6B56DA2BB373E43DBBAF4E4234E22AC154040B9E595767AA151ED65D037EBB274';
wwv_flow_imp.g_varchar2_table(14) := 'DD896A2E7FC46B744100314F21C18DEFFD354EAD6A89B55A00B10A2C7EA295987F02302468DF23BAEF1C75EFFE2E0920E67A53C33F68CDF60FB514B26CA7560B20A03CF36117DDF55A872C9FBDE2AE3A7E347DE7C80A257DF575E2CA0A20E6BBAAB9816E';
wwv_flow_imp.g_varchar2_table(15) := '7DFF09A5FCE27666BD0002D0C3EF76D2B277E26D88EB8F1E45177E4DCDC67760D25C12406C8C17ADB92B6ECD2A8D774280BE95E09E351DECCB2171D973E571EADFF95D5C01C49CCF5B7D8BD2028EDB9933020850624FB062EDEEC81B63B1E15D386B94B2';
wwv_flow_imp.g_varchar2_table(16) := '3B3E8325CBA515000244D0D5C4E1B84284559FF4D0BA6D85DE6351BA4AE12BABAEF0C363518E3A2843F30ECD6A2D7CAC00118AC14013A75600033CD94360056023531A000194E2E4770601F8CC54464000953425FA820012D014863827C0A6B602BDF159';
wwv_flow_imp.g_varchar2_table(17) := '17ADDFD6452F35768BD380C2B380C21F714E107974F2E11534BD364B73268BE311330A71EFDBD550024C3F728AD6715575CE151877818621AF6B13FCEC071DB4B26117ADFF5C147DF49F1907E668C1F42A3AFDABA3A207315A4200062C0D4DAD5F015635';
wwv_flow_imp.g_varchar2_table(18) := '76D29DAB7750FB9E03706519565566E8EAB907D0BC3AB51F864100D98CA889B35A803B56B5D03F377CE93188F058C4B2DE6311C59188E2BF071E8D288E430CFA8E472CEE753CA240FEED69A3E99A7913D4D0DFCFC370B804528678BF1D5929407347916E';
wwv_flow_imp.g_varchar2_table(19) := 'F8573335B67C71B9230EC70AFFF9BCC7988352313C104BFCEBFBA99B90A325A7D750CD685E5F8365022B8099421F6A14EB04088BFFD9266ADCBEE73168BF8CFCF26CFFBBBC2C6E71706E29DF43542A865DD48DCFD292336A634B00016433A226CE3A0116';
wwv_flow_imp.g_varchar2_table(20) := '3FB6ADFF9D3F2CFC8807E146C5191E982B4410124CC8D17DE71D143574D076102016BED8C15609D07FCD2F4E81CE56C47ED71F8A6EB81AF47485FB83B87B020810BB866375608D00E26ECF927F37F51E81AEB1F8FB680F94E086D36AA5EF0E418058F51B';
wwv_flow_imp.g_varchar2_table(21) := '3BD81A01BEBF6233B577158D14FF5E12747792B845FAB78593A4920101A4B0290BB24200F121D7ED2FB5F46E76155FF30F47BA6F4F70EDC935521F964180E108EBFDBD15025CF3C4365ADF5CA0B2ACDA3F578C8ABED8D345336A3274C739FC0D3104884A';
wwv_flow_imp.g_varchar2_table(22) := '594FBB112F8078B6E7B24736939FABD4B6E91D0E7DB81FE8EEA4072E98C47E7688FB2CCD70AF25EDBFC7B340C36488FB2CD0A3EFEEA407DED815FB1B60E2168EF8F28CCBE754D1F9337947A64080B8E4E3C58FF815E0A6E79B69D5A725F627BCF1B0ED1B';
wwv_flow_imp.g_varchar2_table(23) := '2D3E319E37D9A7EBE7D7B0BA86002C5CCA1B8F7801CEFCCBE6C4DFFDFBB22256819597F0EE064100E535CDEA70C40BB060D956E3777E86222CBE4D7225F37B032000AB5E953786000A918A5BA24FD7F3BE370002284C804457235E008939A72A04B74193';
wwv_flow_imp.g_varchar2_table(24) := '4D07044896FF9087E3E2EF01CC24060298E13CE4285801924D000448963F568084F943808413801520D904408064F9630548987FEA0478F507B75075C59884B198193E5F28D0C6C64F061D0C9B603339489D00B79D70099D35F57833B34F7894A696166A';
wwv_flow_imp.g_varchar2_table(25) := 'D9D1060112CC43EA043865FC34BAFFEC9F2588C4DCD0FF6DD8407E66F02FF3C60A60260FA913A0D0D6490F9EFF4B3A61F20C3304121AA5B56D27BDB7BE8126D40CFEF01C04309398D40950DADD4D932AC6D3CDDFBAD45A0944F17FB0517C77AE475563C7';
wwv_flow_imp.g_varchar2_table(26) := 'E212C84CAD0F3A4AEA0408F2452A76F41E6875DA9463E9DCA9DFA0130F9D39E237C662C3DBDAD6464D4DCDD4B2634738BFB163C7512E97830010606F02C55D5D1414F69CD82C09E7CF73AE908C3413565E9EA5EAEA6A3383A56814FC4558946494022AEE';
wwv_flow_imp.g_varchar2_table(27) := 'EE8E25419A0510C55F5555456565F18F568C82334D6D2000231BE27228C817A8942FED7348ED70DDA44D00DFF3299BCD5236971BF2B267B839D9F07B0860288B8FCDBDCED04818864300027068C5680B0162C0D3180A0134C21DD8350430049A390C0460';
wwv_flow_imp.g_varchar2_table(28) := '02936DCE1560A47CF024CB43571CF74F3A2180AE4C7CA95F086006340430C3993D0A046023930A800052D8F4074100FD8CC50810C00C67F62810808D4C2A00024861D31F0401F433C60A6086B1D42810400A1B3B082B001B999900086086330430C3993D';
wwv_flow_imp.g_varchar2_table(29) := '0A046023930A800052D8F4074100FD8CB10730C3586A140820858D1D8415808DCC4C000430C3190298E1CC1E852B007B00044811C0B34052D8F8411080CFCC44040430419988208021D0CC61200013986C7308204B4E6F1C04D0CBB7BF77086008347318';
wwv_flow_imp.g_varchar2_table(30) := '08C00426DB1C02C892D31B0701F4F2955E01F017617289C16D50396EDAA3B82B0004904B090490E3A63D0A0268471C0E0001CC70668F0201D8C8A40220801436FD4110403F63AC0066184B8D0201A4B0B183B002B0919909800066384300339CD9A34000';
wwv_flow_imp.g_varchar2_table(31) := '3632A9000820854D7F1004D0CF187B00338CA546810052D8D8415801D8C8CC044000339C218019CEEC5120001B9954000490C2A63F882B80FE57841104013C0C67A80E208021D0CC61200013986C7308204B4E6F1C04D0CBB7BF7708600834731808C004';
wwv_flow_imp.g_varchar2_table(32) := '26DB1C02C892D31B0701F4F2C50A6088AFEC301040961C330E2B001398A1E610C0106808600834731808C00426DB1C02C892D31B0701F4F2EDEF7DF99C9F525579A5A1D1304C1402EDF94E5AF4FADD519A1A6BE34D5BBA3830369AC181AEAD5B40274D9A';
wwv_flow_imp.g_varchar2_table(33) := '6970440C351C819737BF4BB735AE1CAE99D1DF5B2BC0ECDC2174E3EC8B8CC2C460FB27F0DB371FA2FF747F9A2A4CD60A5068EBA49B8EABA75913EA5205DCD517B3B6A591AE5FB38C32E3D275596AAD00A5DDDD549B194B571F752E2448D83A51FC77AE7B';
wwv_flow_imp.g_varchar2_table(34) := '9C9A0A3BC91F954BF8D5EC3DBCB50204F922153BBAC3D91E77D0549A3FF1283AA6F6086C8C0D959FD8F0BEDDF411BDB0651DBDB66D43386AD9E81C79E565865E41B461AC15404CBFB8AB8B8242291A09B4D24AC0CBF85436A642EB18329D5B2D0095022A';
wwv_flow_imp.g_varchar2_table(35) := 'EEEE86043295A130262C7E71E9E37B0A7B55D395DD02EC61242E87827C814AF9125160E55D5F35D5A0B217CF23BFDC27AF3C93BACB9E81D37442009579455F7611800076E513B3611280004C60686E17010860573E311B260108C00486E67611800076E5';
wwv_flow_imp.g_varchar2_table(36) := '13B3611280004C60686E17010860573E311B260108C00486E67611800076E513B3611280004C60686E17010860573E311B260108C00486E67611800076E513B3611280004C60686E17010860573E311B260108C00486E67611800076E513B3611280004C';
wwv_flow_imp.g_varchar2_table(37) := '60686E17010860573E311B260108C00486E67611800076E513B3611280004C60686E17010860573E311B260108C00486E67611800076E513B3611280004C60686E17010860573E311B260108C00486E67611800076E513B3611280004C60686E17010860';
wwv_flow_imp.g_varchar2_table(38) := '573E311B260108C00486E67611F83F1A91805BEA46C28C0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(542418637375560103)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EED9D09985C6599EFDFAAEA25DDE9249DCE4A56C28E803828229B72D108CA80080A2A232A9751D0C1E70A9711';
wwv_flow_imp.g_varchar2_table(2) := 'F4CEB83D5E1706E78E8C82CBE0828AE0B0AA80A223880482E00009862524249D7D4F7AAFAEE53EA78A6C9DEE74559DAFCEFB2DBF7A1ED4C7D4F9DEF7FDFD3FD2BF3EE7D4A9D4E13FBAAC28BC2000010840000210088A400A01082A6F8685000420000108';
wwv_flow_imp.g_varchar2_table(3) := '940820006C040840000210804080041080004367640840000210800002C01E800004200001080448000108307446860004200001082000EC010840000210804080041080004367640840000210800002C01E800004200001080448000108307446860004';
wwv_flow_imp.g_varchar2_table(4) := '200001082000EC010840000210804080041080004367640840000210800002C01E800004200001080448000108307446860004200001082000EC010840000210804080041080004367640840000210800002C01E80000420000108044800010830744686';
wwv_flow_imp.g_varchar2_table(5) := '0004200001082000EC010840000210804080041080004367640840000210800002C01E800004200001080448000108307446860004200001082000EC010840000210804080041080004367640840000210800002C01E8000042000010804480001083074';
wwv_flow_imp.g_varchar2_table(6) := '46860004200001082000EC010840000210804080041080004367640840000210800002C01E800004200001080448000108307446860004200001082000EC010840000210804080041080004367640840000210800002C01E800004200001080448000108';
wwv_flow_imp.g_varchar2_table(7) := '307446860004200001082000EC010840000210804080041080004367640840000210800002C01E800004200001080448000108307446860004200001082000EC010840000210804080041080004367640840000210800002C01E80000420000108044800';
wwv_flow_imp.g_varchar2_table(8) := '0108307446860004200001082000EC010840000210804080041080004367640840000210800002C01E800004200001080448000108307446860004200001082000EC010840000210804080041080004367640840000210800002C01E8000042000010804';
wwv_flow_imp.g_varchar2_table(9) := '48000108307446860004200001082000EC010840000210804080041080004367640840000210800002C01E800004200001080448000108307446860004200001082000EC010840000210804080041080004367640840000210800002C01E800004200001';
wwv_flow_imp.g_varchar2_table(10) := '080448000108307446860004200001082000EC010840000210804080041080004367640840000210800002C01E800004200001080448000108307446860004200001082000EC010840000210804080041080004367640840000210800002C01E80000420';
wwv_flow_imp.g_varchar2_table(11) := '0001080448000108307446860004200001082000EC010840000210804080041080004367640840000210800002C01E800004200001080448000108307446860004200001082000EC010840000210804080041080004367640840000210800002C01E8000';
wwv_flow_imp.g_varchar2_table(12) := '04200001080448000108307446860004200001082000EC010840000210804080041080004367640840000210800002C01E800004200001080448000108307446860004200001082000EC010840000210804080041080004367640840000210800002C01E';
wwv_flow_imp.g_varchar2_table(13) := '800004200001080448000108307446860004200001082000EC010840000210804080041080004367640840000210800002C01E800004200001080448000108307446860004200001082000EC010840000210804080041080004367640840000210800002';
wwv_flow_imp.g_varchar2_table(14) := 'C01E800004200001080448000108307446860004200001082000EC010840000210804080041080004367640840000210800002C01E800004200001080448000108307446860004200001082000EC01084000021080408004108000436764084000021080';
wwv_flow_imp.g_varchar2_table(15) := '0002E0C81E98DC325E4E9FF55A79C3B443E5F08933E580B11D32BEA9C591EE69B35E04F2C5826CEDEF96CEEE4DB2644BA73CB97EA9FC61D522E9CB0DD4AB24EB4200029E1040002C0FF298C973E5C347BE55CE9A77BCE59DD29E2D042229B863E902B965';
wwv_flow_imp.g_varchar2_table(16) := 'C91FE4A56D6B6C698B3E200001CB0820009605B2673B9F39FEBD72F191A75BDC21ADD94EE0E6E71E94AF3F75A7ED6DD21F0420A040000150803E5AC943261C205F3BE5C372D4A439A3BD953F87C0A8049EDDF48A5CFBE88FE4E5EDEB467D2F6F800004C2';
wwv_flow_imp.g_varchar2_table(17) := '2180005896F5B153E6C9774EFF84B4378FB5AC33DA7199C0B6811EF9D87F7D4B9ED9B8DCE531E81D021030480001300833EE52D16FFE3F39F32A7EF8C705C9F1C3128824E0A207FE853301EC0F0840A0440001B06823DC71D6B59CF6B7280F1F5B892E07';
wwv_flow_imp.g_varchar2_table(18) := '5C70DFD77C1C8D992000812A0920005502ABD7DBB9E1AF5E64597728016E0C644F4000029C01B0640F441FF5FBC53BAFB1A41BDA0881C0D9F77E898F088610343342603F04380360C1F6B8FED44BF89CBF053984D4C2ED2FFD49FEF9B19F863432B34200';
wwv_flow_imp.g_varchar2_table(19) := '0243082000CA5B227AC2DF9FDECB3559E518822B1F3D2CE80DB75EC91303834B9E8121B09B0002A0BC1B2E38F414F9E28917297741F910095CF9C7FF90FB5E7932C4D199190210E05300FA7BE0EBA77C44CE39E88DFA8DD04170047EF6C2C3F2C5853F0F';
wwv_flow_imp.g_varchar2_table(20) := '6E6E06860004CA043803A0BC13EE39FBFF94BEDC8717049226F0DF1B97C9FBEFBF2EE9B2D48300042C2180002807F1C4FBBEC1B7FA2967106AF98D7DDBE5D45FF0E99350F3676E082000CA7BE0F98B6F54EE80F2A112886E043CEA964F843A3E73432078';
wwv_flow_imp.g_varchar2_table(21) := '020880F2164000940308BCFC113FBE3C70028C0F8170092000CAD92300CA01045E1E01087C03307ED0041000E5F81100E500022F8F0004BE01183F6802088072FC088072008197470002DF008C1F34010440397E04403980C0CB2300816F00C60F9A0002';
wwv_flow_imp.g_varchar2_table(22) := 'A01C3F02A01C40E0E51180C03700E3074D0001508E1F01500E20F0F20840E01B80F18326800028C78F0028071078790420F00DC0F84113400094E34700940308BC3C0210F80660FCA0092000CAF12300CA01045E1E01087C03307ED0041000E5F81100E5';
wwv_flow_imp.g_varchar2_table(23) := '00022F8F0004BE01183F6802088072FC088072008197470002DF008C1F34010440397E04403980C0CB2300816F00C60F9A0002A01C3F02A01C40E0E51180C03700E3074D0001508E1F01500E20F0F20840E01B80F18326800028C78F0028071078790420';
wwv_flow_imp.g_varchar2_table(24) := 'F00DC0F84113400094E34700F61FC0869EBC3CB7AE4F966FC949E78E9CACEFCAC9D6BE82F4640B92CD154A073735A4656C535A26B6A465DAB806993DBE41E67534C851D35B64EAD88C72C276974700ECCE87EE20504F0208403DE956B03602B02FA445EB';
wwv_flow_imp.g_varchar2_table(25) := 'B3B260459FFCB9B34F566DCB564071E4B7CC6A6F92E367B7C849735BE498694DB1D6F2F16004C0C754990902951140002AE354B777210065B43DD9A2FCFAC51EF9ED0BDDB17FE88F145624036F3FBC4DCE3A6CAC8C6D4AD52D53971646005C4A8B5E2160';
wwv_flow_imp.g_varchar2_table(26) := '960002609667D5AB852E00D10FFEDB1777C95D8B76EC3AA55F35C42A0F882E199CF7DA09F2DEA3DA82170104A0CACDC3DB21E01101044039CC9005E09EBFF6C82D7FD926DD03799514DAC634C807FF6682BCEB356355EADB501401B021057A80800E0104';
wwv_flow_imp.g_varchar2_table(27) := '4087FBAEAA210AC0F26D79B9E9F12DF2CCEA3E65FAE5F2C7CE6C91CBDED421F3DAC3BB611001B0620BD20404540820002AD877170D4D00EE7FB14FBEF9E8662916CA77F0DBF24AA5D3F2C99327C93B0E6BB1A5A544FA400012C14C110858490001508E25';
wwv_flow_imp.g_varchar2_table(28) := '2401F8EE9F77C89D8BB68B148BCAD447289F4AC979C74C908F1E3FDECEFEEAD015025007A82C090147082000CA418522005F7968B33CFC724FF5B4532949A53322D17FA75222A974E97F47AF54F4BF25F289C26EA92816A4180946B128C542BE26D978CB';
wwv_flow_imp.g_varchar2_table(29) := 'C163E5DAD32655DFAB834720000E8646CB10304400013004B2D665421080CF3FB8411E5FD95F39A274BAF4433F9569D8F543BEF283F77E672407C57CAEF44F35671EDE34678C7C7EFED45ACB3A731C02E04C54340A01E3041000E348AB5BD07701F8CA1F';
wwv_flow_imp.g_varchar2_table(30) := '36C9C3CB7A478752FA4DBF4152994CF937FE3ABCA23302BB64A082F5DF7250AB5CFB3F2657F04E77DF8200B89B1D9D43202E0104202EC198C7FB2C00372DDC26772FDEB17F42A994A41B1A2595698C49B28AC38B4529E407A5981B1CF5A0738F1E2F979D';
wwv_flow_imp.g_varchar2_table(31) := 'D03EEAFB5C7D0302E06A72F40D81F8041080F80C63ADE0AB00FCFA851EB9E14F9BF7CB263AC59F6E68DA754D3F16C85A0E2E16253F382012DD2BB09FD715A74C92B30EF7F3590108402D1B876320E00701044039471F05E0E52D83F20F77AF2BDF8C37DC';
wwv_flow_imp.g_varchar2_table(32) := '2BFAADBFB1B96EA7FAAB8D34BA2C50C86547BC4720BAF9F0DFCF9D2E0777247896A2DA216A7C3F025023380E838007041000E5107D1480ABEF5B2F8BD60E0CFFB33FFAADBFB15999FA30E547391B70CC01CD72DD3BA7D9D777CC8E10809800391C020E13';
wwv_flow_imp.g_varchar2_table(33) := '400094C3F34D00EEFE6BB7DCF4D89661A9A61B9B92BDD65F43B6D1998091EE0DB8ECC40E39F7356D35AC6AEF210880BDD9D01904EA4D0001A837E151D6F74900A22FF6F9D0ED6B867DB67FE9947FA641997665E58BF941290CEEFB35C46DCD19F9D10533';
wwv_flow_imp.g_varchar2_table(34) := 'BCFA022104A0B23DC1BB20E02301044039559F04E0074F6D97DB9EDEBE0FD174D3186BAEF7571AF7481270E1DFB4CB478EF3E749810840A53B82F741C03F02088072A6BE0840F4DBFFFB6F5D25D9DCDE37FEB9F49BFFD0AD30DCE580A68694DCFAFE59DE';
wwv_flow_imp.g_varchar2_table(35) := '9C05400094FF02A03C04140920008AF0A3D2BE08C0ED8BBAE4E627B6EE4533D5D058FE989FC3AFC2E040F929827BBC2E79E344B9E098710E4FB5BB7504C08B18190202351140006AC266EE205F04E0D2FF5C2BABB6EFF1609D7446324D63CC81525C299F';
wwv_flow_imp.g_varchar2_table(36) := 'ED13D9E3DB0B67B537C9F7CF9FAED891B9D208803996AC0401D7082000CA89F920008BD667E5EA5FADDB4D3295924C538BDE037E0C671A7D9F4061A06FAF55AFFBDBE972CC34B7CF6E4403210086370BCB41C02102088072583E08C0779ED82E77455FF3';
wwv_flow_imp.g_varchar2_table(37) := 'FBEACBC59BFE46DB06436F0A7CF73113E4636F9C30DA61D6FF3902607D44340881BA114000EA86B6B2857D10804BEF5827ABB6953F36577ABCAF8D0FFAA92C8EFDBE6BCF4B01B3DB9BE57BE7BBFF602004C0C0C6600908384A0001500ECE7501D8D85B90';
wwv_flow_imp.g_varchar2_table(38) := '0FDEBA6A17C54C73AB37A7FE876E8DE8DB040BD9DD5F6B7CCBFB67C994D6B4F20E8A571E0188C78FA321E032010440393DD705E0A1977BE4AB0F95BFF427FA46BFE8697F3EBFF29100BCFAE541D79C36494E3BD8ED2F0942007CDEADCC0681FD13400094';
wwv_flow_imp.g_varchar2_table(39) := '7788EB0270F393DBE5F667CAD7FF7DFEED7FE736D9F32CC005C74E904BDEE0F67D000880F25F0094878022010440117E54DA7501F8C27F6D96C796F704F1DBFFCEADB2F35E8013E78D95CF9D3E497907C52B8F00C4E3C7D11070990002A09C9EEB02F089';
wwv_flow_imp.g_varchar2_table(40) := 'BBD7CBCB9B0724DDDC22A994DBD7C32BDD0A3B3F1170F0A466F9D6B96EDF088800549A3AEF83807F041000E54C5D17800FFC7CAD6CE9CB973FF71FCA2BFAEAE0815EE918DB283F7BDF014E4F8D00381D1FCD43201601042016BEF807BB2E00E7FC68B50C';
wwv_flow_imp.g_varchar2_table(41) := '4ADAF947FE569B64743360535AE4DE0FCDACF650ABDE8F00581507CD402051020840A2B8F72DE6BA009CF91F2BC5C707FF8CB62DA2CB00C5DCA0DC7FC9ECD1DE6AF59F230056C7437310A82B0104A0AE78475FDC750178C7CD9D928E3EFB1FD86BE7E381';
wwv_flow_imp.g_varchar2_table(42) := '1FF89F739C9E1C01703A3E9A87402C0208402C7CF10F765D00CEB965ADE4D37E7FF67FA49433B97E2E01C4FF5780152000012502088012F89D655D17808B7EB141B66533CA1475CAB737E6E4A717F029001DFA54850004E2124000E2128C79BCEB0270C5';
wwv_flow_imp.g_varchar2_table(43) := 'AFB7C8B26DC59814DC3CFCA0F694DC7056879BCDBFDA3597009C8E8FE621108B0002100B5FFC835D17802F3FD22D0B560EC407E1E00A27CD6996CF9EDAE660E7BB5B46009C8E8FE621108B0002100B5FFC835D17801F3FD327B72DEE8D0FC2C1152E3CBA';
wwv_flow_imp.g_varchar2_table(44) := '552E3ED6EDE71F20000E6E3C5A8680210208802190B52EE3BA003CB26240BEFAA7EE5AC777FAB86B4E699353E7363B3D0302E0747C340F815804108058F8E21FECBA00445F07FCE1BBB6C607E1E00A3F7CF744BE0ED8C1DC6819021028134000947782EB';
wwv_flow_imp.g_varchar2_table(45) := '0210E1BBEC97DBA473475E9964B2E5678FCFC84D67B7275BB40ED59E5FBAAC0EABB2642804F2C582ECC8F5C9FAFEEDB2BC67BDFC75C76A7962CB5219280C8682C0E9391100E5F87C1080EFFFA557EE5AD2A74C32D9F2EF3EB2452E3DCEFD07202100C9EE';
wwv_flow_imp.g_varchar2_table(46) := '9B10AA4552F0FB8D8BE5576B9E9295BD9B4218D9D9191100E5E87C1080C51B06E5D30FEE5026996CF9AFCD1F2F474F6D4CB6681DAA21007580CA92BB08DCBDFA09F9E18A8721622901044039181F0420B4CB00BE9CFE8F72430094FF0208A0FC4BDD6BE5';
wwv_flow_imp.g_varchar2_table(47) := '9B2FDD2F9D7D9B0398D6AD111100E5BC7C11803B96F4CBCD7FE951A6994CF94B8E1B2BE71F3926996275AE8200D41930CB970874E5FAE44B4BEE9017BBD642C4220208807218BE08404FB6287F77E716C97A7E2F605346E427E775C8D8A694F2CE31531E';
wwv_flow_imp.g_varchar2_table(48) := '0130C3915546271049C06716DDCA9980D15125F60E042031D4C317F24500A2E97EFC4CAFDCB6D8EF9B012F3CBA452E3ED6FD9BFF76EE460440F92F80C0CABFD4BD4EAE7EF696C0A6B6775C0440391B9F04203A0B70C93D5BA53BEBE77703B435A5E4E677';
wwv_flow_imp.g_varchar2_table(49) := '4DF4E6B7FF68EB2300CA7F0104589E1B03ED091D0150CEC227018850FEF2857EB9E9493FEF05B8EC0D63E5ECC3FDB8F6CF1900E57FF1032FFFC9A77FC047042DD80308807208BE094084F333BFDF21CFACF3EB4120C74E6F94FFFBD6F1CABBC57C79CE00';
wwv_flow_imp.g_varchar2_table(50) := '9867CA8AA313F8ED8667E5DB4B7F33FA1B79475D09200075C53BFAE23E0AC0F26D79B9E2D7DBC4970B01D1ED7E379CD52EF3DA33A307EAD83B1000C702F3A4DDE861411F58F84D9E18A89C2702A01C808F0210217D60E980DCB0D08F2F09BAE2843639F3';
wwv_flow_imp.g_varchar2_table(51) := '10B7BFF467A46D8E0028FF051070F9EB5FFC953CB26949C004F44747009433F0550022AC3E3C22D89747FE2200CAFFA2537E1F02F7AFFB6FF9CEB2DF4146910002A0083F2AEDB30044F35DF768B73CF4CA8032E5DACA9F7660B35C7D725B6D073B721467';
wwv_flow_imp.g_varchar2_table(52) := '001C09CAC3369FEF5A23D72CFAA98793B9331202A09C95EF0210E1FDF21FBB64416756997475E54F9ADD249F7DF3B8EA0E72F0DD088083A179D2F2D66C8F7CE4C96F7B328D9B632000CAB9852000AE9D0908E137FF9DDB1E0150FE0B20E0F2D18D80E73F';
wwv_flow_imp.g_varchar2_table(53) := '767DC004F4474700943308450022CC2EDC13E0FB35FFA1DB1D0150FE0B20F0F2E72EB82E7002BAE32300BAFCBDBF076028DEE8D301FFBEB0DBBA8F08461FF5FB078FEFF61F699B2300CA7F01045E1E01D0DD0008802EFFE00420C21D3D27E07B4FF558F3';
wwv_flow_imp.g_varchar2_table(54) := 'B0A0E8213F7FFFFAB15E7ECE7FB4ED8D008C46883FAF270104A09E74475F1B01189D515DDF11D22580A120A3C706FFE4D95EB5EF0E889EEDFF77AF6DF5EEF1BED56C5804A01A5ABCD7340104C034D1EAD64300AAE365FCDD210B400433FA02A13B96F4C9';
wwv_flow_imp.g_varchar2_table(55) := '5D4BFA12FB2AE1E82B7DA36BFDE71FD9E2D517FBD4B23911805AA8718C290208802992B5AD8300D4C6CDD851A10BC04E9091083CF0F2803CB8B45F3A77E48DF1DD73A1D9E33332FF903172E6C1CDC1FFE0DFC90501A8CB5663D10A0920001582AAD3DB10';
wwv_flow_imp.g_varchar2_table(56) := '803A81AD745904605F528B370CCAE3AB06E5C9D5D9D83210FDD07FC3CC2679D3AC46397A6A63A5B104F33E042098A8AD1C1401D08D0501D0E51FE44D80D520DFD85B90E7370ECAF26D85920CACEFCAC9D6FE62E9BE81C17CF9EB861A332989AEE74F1C93';
wwv_flow_imp.g_varchar2_table(57) := '9269E31A24FAA13FAF3D2D474C699429ADE96ACA05F75E0420B8C8AD1A1801D08D0301D0E58F0028F30FBD3C0210FA0ED09D1F01D0E58F00E8F2470094F9875E1E01087D07E8CE8F00E8F2470074F92300CAFC432F8F0084BE0374E7470074F92300BAFC';
wwv_flow_imp.g_varchar2_table(58) := '110065FEA197470042DF01BAF32300BAFC11005DFE088032FFD0CB2300A1EF00DDF911005DFE08802E7F0440997FE8E51180D07780EEFC08802E7F0440973F02A0CC3FF4F20840E83B40777E0440973F02A0CB1F0150E61F7A791302904AA524FA36455E';
wwv_flow_imp.g_varchar2_table(59) := 'EE10889EA0512C969FA3A1F9420034E98B2000BAFC118011F8470FFA59BA392B2BB60DCAEAED83A507006DE92BC8F6BEBC6CE82D447F7B95FF895EA954E99FA9AD6999D092918E9674E98140332734CADCF64639645253E94141BCF6251057000E3E708E';
wwv_flow_imp.g_varchar2_table(60) := '346432A0758C40246D0303597965D56A5511400074370E02A0CB1F017895FFD6BEBC3CB5BA5F16AD1B90E7D66765D5B6ACB96452299935A1518E9ADA24C71CD02CAF9F394626B6F0432B021C4700D2E9B41C3A6FAE443F4C78B947209B1D2C0940A15050';
wwv_flow_imp.g_varchar2_table(61) := '6B1E0150435FFEDDE9F01F5DA67F1E4897816AF590BF0B20FA8DFEA1977B64C18A5E59BC6E20D11C8E9EDE2C271D38564E3BA8B574C620D4571C01C8643272C88173100047374FFFC080AC5CB5460A8A97021000DDCD8300E8F20FF20CC08295FDF29B17';
wwv_flow_imp.g_varchar2_table(62) := 'BB65E1CABEDDA7F1B57248A5E484392D72C6616D72D29C315A5DA8D54500D4D0AB174600D423506F0001508E20A43300BF7ABE47EE5CDC256BB61B3CBD6F30BF19139AE4BCA3C7CBDF1ED16A7055BB974200ECCEA79EDD2100F5A4EBC6DA0880724E2108';
wwv_flow_imp.g_varchar2_table(63) := 'C0BD4BBAE58E455DB2BE6B50997665E5A78D6B94F38F1927E71CD956D9010EBF0B017038BC98AD230031017A703802A01CA2CF02F0E8CA7EB9E5A96DF2CA163B7FE31F2DFA032735C9078F6B97933DBE3480008CB60BFCFD7304C0DF6C2B9D0C01A89454';
wwv_flow_imp.g_varchar2_table(64) := '9DDEE7A3006CEA2DC8F79ED82A0FBFDC53276AC92E7BDAC16D72E91BDB6572AB7F370B2200C9EE259BAA210036A5A1D30B02A0C37D5755DF04E0C1A57D72D3E35BA467201F9F6C3A2DA954F44337FA9C7FF451FFE8E366E5CFFC47FF94FF2CBA8F70CFE7';
wwv_flow_imp.g_varchar2_table(65) := '0214CB9F6B2E7DB625FADF0511031F736A6DCAC8E52776C8FC435AE2CF65D10A0880456124DC0A029030700BCB2100CAA1F82200D1CFDBFFF7C896D2DDFD35BFA21FEAE90649453FF8D399F20F7A13AF62518A85BC140B05291672B13E7970C611E3E47F';
wwv_flow_imp.g_varchar2_table(66) := '9D3CD19B27DF21002636989B6B20006EE666B26B04C024CD1AD6F241005ED99693EBFFB8595EDA58C367F9D31949474F924B6776FD465F03C6AA0E299F15C84B219F2FFD77B5AF43A734CB556F9E2407B637547BA875EF4700AC8B24B1861080C4505B5B';
wwv_flow_imp.g_varchar2_table(67) := '0801508EC6750158B8AA5FBEF6D026E91DA8E26962D16FFA990649671ACDFD965F6B8EC5A214F28352CC577766A0B539239F3E6DB29C30ABB9D6CA561C87005811834A1308800A76AB8A2200CA71B82C00BF7DA957BEF1C8E6CA4FA9A7D392CE34482AFA';
wwv_flow_imp.g_varchar2_table(68) := 'C16FE1AB981F9442240295DE33904AC955A74E92F987BAFBDC0004C0C28D98504B084042A02D2E83002887E3AA00DCFB7CB77CFBD12D95D12BFDE06F2CFDD6EFC22B3A1B109D15A854043E7E72879C73849BCF0C40005CD891F5E91101A80F5797564500';
wwv_flow_imp.g_varchar2_table(69) := '94D3725100EE59D225372ED83A3AB9E8FA7E4363F9863E075FD18D83855C2402A3DF27E0AA0420000E6E4C432D230086403ABC0C02A01C9E6B02F0DB977AE41B7FDCBC7F6AA994A41B9A9CF98D7FB42D503A2390CB8E7AA9E3CA374F96B73B7639000118';
wwv_flow_imp.g_varchar2_table(70) := '2D7D7FFF1C01F037DB4A2743002A2555A7F7B924000B3BFBE573BFDDB07F12E98C641A9BF56FEE339D57B128F9C18151CF067CE1ED53E584D9EE7CA91002607AA3B8B31E02E04E56F5EA1401A817D90AD7754500966F1D94AB7EBD417AF7F3809F544363';
wwv_flow_imp.g_varchar2_table(71) := 'E9377F9F5FD199806274596084576B735AAE3F6B9ACC9B68E78D8E43DB46007CDEADFB9F0D010837FB9D932300CA7BC0050188BE2FFC93F7AC93A59B47F8C1179DF26F1A93D8E7F895232B3D54A8744960844F0B1C3AB949FEED9C699236F520A33A0E8C';
wwv_flow_imp.g_varchar2_table(72) := '00D411AEE54B2300960794407B08400290F757C20501B8FE914DF2E08BBDC38FE1EB29FFD1F6C5289704E61FD62A579D3A79B455D4FF1C01508F40AD0104400DBD35851100E5286C1780075EEC2E3DE277D857F4C3BFC99DEBDDF5883A9FED1FF1BE804F';
wwv_flow_imp.g_varchar2_table(73) := 'BD79929C71E8D87A9435B62602600CA5730B2100CE4566BC6104C038D2EA16B4590036F6E4E5A377AE95BEEC304FF9E387FFAEA0479280E86981DF79F7749932D6DE8F412200D5FDFBEAD3BB11009FD2AC6D1604A0366EC68EB25900BEF2874DF2F0B261';
wwv_flow_imp.g_varchar2_table(74) := '4EFDF3C37FEFFCF77339E02D078F956B4F9B646CBF985E0801304DD49DF5100077B2AA57A70840BDC856B8AEAD02F0E88A3EF9D2EF36EE3B053FFC874F763F12F04F6F9B2227CFB5F36B8411800AFF45F5F06D088087A156391202502530D36FB755002E';
wwv_flow_imp.g_varchar2_table(75) := 'BB6BADBCB265C85DFFA1DEF05769E82348C081131BE5A6F30EA8749544DF8700248ADBAA6208805571A8348300A860DF5DD44601B8E7AF5D72E363431EF59B4A49A6A9C5BF07FC98CE3F92806CDF3E4F0DFCF8491D72CE91F67D5F0002607A03B8B31E02';
wwv_flow_imp.g_varchar2_table(76) := 'E04E56F5EA1401A817D90AD7B551002EBE6D8D6CE8CEED3541E973FE8E3ED3BFC2288CBDADF49C80E8D3017BBCA6B635C88F2F9C61AC86A98510005324DD5B0701702F33D31D2300A68956B99E6D02F0CBE77BE45B8FEEFDACFFE8EB7BD38D7E3FE1AFCA';
wwv_flow_imp.g_varchar2_table(77) := 'D8467D7B61302BD1D70BEFF9FAC4C91D72B665DF1A88008C1AA5B76F4000BC8DB6E2C110808A51D5E78DB609C025BF582B6B76ECF1838B53FFB5053FCCA58019139AE4E6F74CAF6DBD3A1D8500D409AC03CB22000E8454E71611803A031E6D799B0460C1';
wwv_flow_imp.g_varchar2_table(78) := '8A3EF9E2903BFF39F53F5A8223FFF9709702FEF96D53E4248B3E118000D49EAFEB472200AE2718BF7F04203EC3582BD824009FFBDD2659B862F7E7FE43F8729F58E15570F0D04B0127CC6D952FBCCD9E4704C71180743A2D87CE9B2B2907BEF3A082A882';
wwv_flow_imp.g_varchar2_table(79) := '7BCB40362B2B56AD9642A1A836FBB90BAE53AB4D611104407917D822005BFA0AF2815B57EFBE7B3D9D2EDFF5CF2B3681D2A702767E71502A253F7BFF4CE96849C75ED7C402710420AA7FD841074A2402BCDC2390CBE564D9CA555218E14BAD9298080148';
wwv_flow_imp.g_varchar2_table(80) := '82F2C83510005DFE628B00DCF95CB77CF7F1DDCFFCE7D4BFB98D31F452C047DFD421E71D65C74702E30A404429934997CF02E8FD22692EAC40568AA2CAE7F3EAD32200BA112000BAFCAD1180FF7DDF0659BCF6D58FAEF1B43FE3BB62CFEF0B38FA8031F2';
wwv_flow_imp.g_varchar2_table(81) := '2FEF9C6ABC462D0B9A10805AEA720C0422020880EE3E400074F95B2100DBFA0BF2BE9FAEDA4522DDD82CA94C833219BFCA17F339290C0EEC1AEAE717CD92F631FAA7CE1100BFF6996BD32000BA892100BAFCAD1080DF2FED95EB1EDE5426C1B5FFBAED88';
wwv_flow_imp.g_varchar2_table(82) := '3DEF05B8FA2D93E5AD87B4D6AD56A50B23009592E27DF5208000D4836AE56B220095B3AACB3B6DB807E05F1FD922BF79B1BBFCF3BFB149A207FFF0324F207A3050F4A980E875C6E16DF2A9533ACC17A9724504A04A60BCDD280104C028CEAA174300AA46';
wwv_flow_imp.g_varchar2_table(83) := '66F6001B04E0D23BD6C9AA6DD9D273FE33CDFABF959A256CD76AF981DED2272D66B537C9F7CFD77F28100260D7FEF6DBC28C00001BCB4944415408AD1B04403771044097BFFA2580AE8182BCF727E5EBFF7CEEBFFE9BA190CB4A31577ED2E27F7E70B6B4';
wwv_flow_imp.g_varchar2_table(84) := '35A5EA5F743F15100055FCC117470074B70002A0CB5F5D009E5ED32FD7DCBFA1FCDB3FDFF657FFDD103D22383A0B20225F7DC75479DD8C31F5AF8900A832A6F8C8041000DDDD8100E8F25717807B9674CB8D0BB694EEFA8FEEFEE7557F02D1A701A24F05';
wwv_flow_imp.g_varchar2_table(85) := '5C7E5287BC4BF92B82390350FFBCA98000D8BA071000E564B4EF01F8F6E35BE5DEE7BAB8F92FC17DB0F366C0738E1A271F7FD3C4042BEF5B0A0150C51F7C71CE00E86E01044097BFFA1980CF3DB85116AEEC2BDFFCC733DD13D90DC562410A037D72C29C';
wwv_flow_imp.g_varchar2_table(86) := '16F9C2FC2989D41CA90802A08A3FF8E20880EE16400074F9AB0BC015F7AE9797360FF2DCFF84F741741FC0A1939BE48673A6255C79EF7208802AFEE08B2300BA5B0001D0E5AF2E0017DFB64636F6A54A970078254720BA0F604A8BC88F2F9C915CD1612A';
wwv_flow_imp.g_varchar2_table(87) := '2100AAF8832F8E00E86E01044097BFBA009CF9835592CE34F2E8DF84F741E9D1C0F94179E023B312AECC190055E014DF8B0002A0BB2110005DFEFA027073271FFFD3D803D1C701B37DF2C025B335AAEFAAC9190055FCC117470074B70002A0CB5F5F007E';
wwv_flow_imp.g_varchar2_table(88) := 'B08AEBFF4A7BA024008E9F014847DF1D91C970FFA8D21EAAB56C3112D05C5E0A45DDEF7046006A4DD0CC710880198E35AFA2FD31C09A1BE7402F08C43D03307DEA1469C864A4A1212399B4FEB71B7A114A0243E40B05E9EEE9954D5BB626506DE4120880';
wwv_flow_imp.g_varchar2_table(89) := '2A7E410074F9AB9F01501E9FF2CA04E20840F4DBFFA1F3E64A8A8F8F2AA7585BF95C3E2FCB5E59A97A160001A82D3B53472100A648D6B80E67006A04C7614608C41180E8D4FF2107CE41008C2491FC2203D9ACACE85C8D00248FDE9A8A08807214088072';
wwv_flow_imp.g_varchar2_table(90) := '0081974700C2DD00FD0303B272D51A0420DC2DC02500EDEC1100ED04C2AE8F00849B3F02106EF63B27E70C80F21E4000940308BC3C0210EE064000C2CD1E01B0247B04C09220026D0301083478114100C2CD1E01B0247B04C09220026D03010834780420';
wwv_flow_imp.g_varchar2_table(91) := 'DCE0F7989C4B00CADB0001500E20F0F20840B81B803300E166CF19004BB247002C0922D03610804083E70C40B8C17306C09EEC11007BB208B1130420C4D4CB33730620DCEC39036049F60880254104DA06021068F00840B8C17306C09EEC11007BB208B1';
wwv_flow_imp.g_varchar2_table(92) := '130420C4D43903106EEA7B4FCE4D80CA3B0101500E20F0F20840B81B804B00E166CF25004BB247002C0922D03610804083E71240B8C17309C09EEC11007BB208B1130420C4D4B904106EEA5C02B02AFBE73EF82DC9A4F81E75AB4209A49962B1282FBCBC';
wwv_flow_imp.g_varchar2_table(93) := 'BCE669F936C09AD15971209700AC8841B509EE0150C52FF2C7F3BF2253C7B62B7741F9100964070765D98ACE9A4747006A4667C58108801531A8368100A8E217F9D9FC2BE5B8030E55EE82F22112D8D1D5256BD66FAC797404A06674561C88005811836A';
wwv_flow_imp.g_varchar2_table(94) := '1308802A7E917F7ADD7BE4A2D7BE55B90BCA874860EDBAF5B2BDBBA7E6D111809AD15971200260450CAA4D2000AAF845CE987A8CFCDB991F57EE82F2211278FEC59744D2999A4747006A4667C58108801531A8368100A8E21769ECC9CBD31FBB513231FE';
wwv_flow_imp.g_varchar2_table(95) := '22561E81F20E12886E007CEC893F4BC7A4C935778F00D48CCE8A0311002B62506D020150C52F92DBD62B5F3EFD2372E1D1A7297742F99008AC5BBF415E5AB64CA64C995AF3D80840CDE8AC381001B02206D526100055FC6501386CD22CB9EFA22F2B7742';
wwv_flow_imp.g_varchar2_table(96) := 'F99008FCE59967A5A7B717010829F421B322000187FFEAE80880F21E8804207A5D73CAFBE4D2E3DEA1DC0DE54320B06ACD5A59BE62456954CE008490F8F0332200E166BF73720440790FE4B6F789148BA52EEEB8F07372ECB483943BA2BCCF04BABABBE5';
wwv_flow_imp.g_varchar2_table(97) := 'E9458B4B23A653699934997B007CCE7B7FB32100A126BF7B6E0440790FE4BBFBA5982B94BA38B86386DCF69ECF4AFB9836E5AE28EF2381C15C4E9E5DFC9CF4F6F595C66B6C6C92F6F6DA1F42C53D006EEF1204C0EDFC4C748F0098A018638D425F560A03';
wwv_flow_imp.g_varchar2_table(98) := 'B95D2BBC6EFAC1F2FD73AE44026230E5D07D09443FFC9F7BFE79E9EAEADEF58763C6B4C8B871E36AC68500D48CCE8A0311002B62506D020150C52F52CCE624DF9BDDAB8BE84CC0D7E7FF3D970394B3F1A57C74DAFFC5A52FEFFACD7FE75CE3C68D973163';
wwv_flow_imp.g_varchar2_table(99) := 'C6D43C260250333A2B0E4400AC8841B509044015BF88144572DBCB37020E7D7163A07638EED7DFF386BFA1D34C9E3C4552A954CD43220035A3B3E24004C08A18549B400054F1978B0FBD0CB0674BD147043F74EC7C79CF6B4EE561411664E5420BD1437E';
wwv_flow_imp.g_varchar2_table(100) := 'D66FD8286BD6AD2B7DD46FB857DCD3FFD19A913C1C76D081B124C2059EBEF6185D165ABEA2530AAFDE84AC31E7B90BAED3284BCD57092000166C8562BE20F9AEFEFD76D2D2D82CA7CF7B9DBC71C6E172E49439327BC254E96819C757095B909F660BD10F';
wwv_flow_imp.g_varchar2_table(101) := 'FBC1C19CF40FF44B4F4FAF6CDFB143B66CDD2AF942F9C6D2915E1D1D9324FA0D3EEE6BE601D3A4C1C03A71FBE0F8EA0844D9F7F6F6C9BA8D9BAA3BD0F0BB1100C340AB5C0E01A81258BDDEBEBFB300F5AA6962DD1F1C7FB98965582341022D2DADD2D6C6';
wwv_flow_imp.g_varchar2_table(102) := '274D12444EA911082000BA5B0301D0E5BF57F5E82C407436C0A51702E0525A220D0D8D3271E244B79AA65B6F092000BAD12200BAFCF7AA5EBA14D03DB0EBC14016B536622B08800B29957B8C1EFCD33E71A29153FFEE4C4DA73613400074D3410074F9EF';
wwv_flow_imp.g_varchar2_table(103) := '53DD350940002CDB4023B413FDF09FD0DE2E0D0D0D6E344C97411040007463460074F90F5B3D9280426FD689CB010880851B68484BD169FFF1E3C7F39BBFFD5105D72102A01B3902A0CB7FBFD55DB8311001B07803890837FCD99D4FE8DD2100BA3B0001';
wwv_flow_imp.g_varchar2_table(104) := 'D0E53F6AF5E86C40F4B4C03D1F173CEA4109BE010148107615A5A2CFF9B7B6B6F25B7F15CC786BF2041080E499EF591101D0E55F79F5A248713057BA2C50FE27FA3FCADF22A8F9420034E9976B47D7F7330D0DA51FF68D8D8DD2DCDCCCC379F463A1830A';
wwv_flow_imp.g_varchar2_table(105) := '0820001540AAE35B10803AC20D61E9BB4FBA3A843199110210A8030104A00E50AB581201A802166FDD970002C0AE8000046A258000D44ACECC710880198EC1AE8200041B3D8343203601042036C2580B2000B1F0713002C01E8000046A258000D44ACECC';
wwv_flow_imp.g_varchar2_table(106) := '710880198EC1AE8200041B3D8343203601042036C2580B2000B1F0713002C01E8000046A258000D44ACECC710880198EC1AE8200041B3D8343203601042036C2580B2000B1F071B0B600A452293EF3CE3684400D040A05FD6F1E45006A08CEE021088041';
wwv_flow_imp.g_varchar2_table(107) := '98212EA52900E9745AA64D9924635B5B25FACBAC68C1839142DC03CCEC1E81864C467AFBFA65F5BAF5AACD2300AAF80501D0E5EF7C754D01686A6A94B93367F0B85BE7771103681018CCE564F98A4E29288A3302A091FCEE9A08802E7FE7AB6B0AC098E6';
wwv_flow_imp.g_varchar2_table(108) := '6699336B86A45329E7393200049226D03F30202B57AD410092066F513D04C0A2305C6C05017031357A86800802C02E4000D803B1082000B1F0713004D40820006AE8AD298C005813859B8D20006EE646D7104000D80308007B2016010420163E0E86801A';
wwv_flow_imp.g_varchar2_table(109) := '0104400DBD358511006BA270B31104C0CDDCE81A0208007B0001600FC4228000C4C2C7C11050238000A8A1B7A63002604D146E368200B8991B5D430001600F2000EC815804108058F83818026A04100035F4D6144600AC89C2CD4610003773A36B082000';
wwv_flow_imp.g_varchar2_table(110) := 'EC0104803D108B0002100B1F0743408D0002A086DE9AC208803551B8D90802E0666E740D0104803D8000B0076211400062E1E36008A8114000D4D05B531801B0260A371B4100DCCC8DAE218000B0071000F6402C0208402C7C1C0C01350208801A7A6B0A';
wwv_flow_imp.g_varchar2_table(111) := '2300D644E1662308809BB9D135041000F60002C01E8845000188858F8321A046000150436F4D6104C09A28DC6C0401703337BA860002C01E4000D803B1082000B1F0713004D40820006AE8AD298C005813859B8D20006EE646D7104000D80308007B2016';
wwv_flow_imp.g_varchar2_table(112) := '010420163E0E86801A0104400DBD358511006BA270B31104C0CDDCE81A0208007B0001600FC4228000C4C2C7C11050238000A8A1B7A63002604D146E368200B8991B5D430001600F2000EC815804108058F83818026A04100035F4D6144600AC89C2CD46';
wwv_flow_imp.g_varchar2_table(113) := '10003773A36B082000EC0104803D108B0002100B1F0743408D0002A086DE9AC208803551B8D90802E0666E740D81816C565674AE9642B1A806E3DC05D7A9D5A6B00802C02E88454053009A9B9A64EEAC99924EA762CDC0C1100891C0E0604E96AFEC4400';
wwv_flow_imp.g_varchar2_table(114) := '420CFFD599118080C33731BAA60064D269993E758AB48D6D95540A093091276B8441205F284877778FACDBB8498A9C010823F461A64400828DDECCE09A02104D1049406363230260264E56098440A15890DC604E2211D07C710940933E970074E97B505D';
wwv_flow_imp.g_varchar2_table(115) := '5B003C40C8081008960002A01B3D670074F93B5F1D01703E420680801A0104400D7DA93002A0CBDFF9EA0880F311320004D40820006AE811005DF47E544700FCC8912920A0410001D0A0BEBB26670074F93B5F1D01703E420680801A0104400D3D670074';
wwv_flow_imp.g_varchar2_table(116) := 'D1FB511D01F02347A6808006010440833A670074A97B541D01F0284C468140C204108084810F29C725005DFECE5747009C8F900120A04600015043CF25005DF47E544700FCC8912920A0410001D0A0CE25005DEA1E5547003C0A935120903001042061E0';
wwv_flow_imp.g_varchar2_table(117) := '5C02D005EE5B7504C0B744990702C911400092633D5C25EE01D0E5EF7C7504C0F9081900026A04100035F4DC03A08BDE8FEA08801F39320504340820001AD4B9074097BA47D511008FC2641408244C0001481838F700E802F7ADBA0D0290C96424958AC8';
wwv_flow_imp.g_varchar2_table(118) := '96FE83170420300A8162A1A0FE55C0518B0880EE56E51E005DFECE57D71480743A2D532775C8D8D6567EF63BBF9318204902C542517A7A7B65C3E62D522C16932CBD572D04400D7DA93002A0CBDFF9EA9A02D0D4D4287367CE90E80C002F0840A03A0203';
wwv_flow_imp.g_varchar2_table(119) := 'D9ACBCD2B91A01A80E9B57EF4600BC8A33F9613405604C73B3CC993543D2E5F3FFBC2000812A084402B0A273B5143803500535BFDE8A00F89567E2D320008923A720048C10E81F189095ABD620004668BAB90802E0666ED6748D005813058D40A02A0208';
wwv_flow_imp.g_varchar2_table(120) := '4055B8BC7C3302E065ACC90D850024C79A4A10304900013049D3CDB510003773B3A66B04C09A2868040255114000AAC2E5E59B11002F634D6E28042039D654828049020880499A6EAE8500B8999B355D2300D644412310A88A000250152E2FDF8C007819';
wwv_flow_imp.g_varchar2_table(121) := '6B72432100C9B1A612044C1240004CD274732D04C0CDDCACE91A01B0260A1A814055041080AA7079F96604C0CB58931B0A01488E359520609200026092A69B6B21006EE6664DD708803551D00804AA2280005485CBCB3723005EC69ADC50084072ACA904';
wwv_flow_imp.g_varchar2_table(122) := '01930410009334DD5C0B017033376BBA4600AC8982462050150104A02A5C5EBE1901F032D6E486420092634D25089824800098A4E9E65A08809BB959D33502604D14340281AA08200055E1F2F2CD088097B126371402901C6B2A41C0240104C0244D37D7';
wwv_flow_imp.g_varchar2_table(123) := '4200DCCCCD9AAE11006BA2A0110854450001A80A97976F4600BC8C35B9A11080E458530902260920002669BAB91602E0666ED6748D005813058D40A02A02084055B8BC7C3302E065ACC90D850024C79A4A10304900013049D3CDB510003773B3A66B04C0';
wwv_flow_imp.g_varchar2_table(124) := '9A2868040255114000AAC2E5E59B11002F634D6E28042039D654828049020880499A6EAE8500B8999B355D2300D644412310A88A000250152E2FDF8C0078196B72432100C9B1A612044C1240004CD274732D04C0CDDCACE91A01B0260A1A814055041080';
wwv_flow_imp.g_varchar2_table(125) := 'AA7079F96604C0CB58931B0A01488E359520609200026092A69B6B21006EE6664DD708803551D00804AA2280005485CBCB3723005EC69ADC50084072ACA90401930410009334DD5C0B017033376BBAD61480A6A646993B73866432196B78D008045C2190';
wwv_flow_imp.g_varchar2_table(126) := '1D1C94573A574BA150506BF9DC05D7A9D5A6B00802C02E8845405300D2A9944C9B3259C6B58D9562B128C55893703004C2219049A7A5B7AF5F3AD7AC551D1A0150C58F00E8E277BFBAA600B84F8F09201036010440377FCE00E8F277BE3A02E07C840C00';
wwv_flow_imp.g_varchar2_table(127) := '01350208801AFA5261044097BFF3D51100E723640008A8114000D4D02300BAE8FDA88E00F89123534040830002A0417D774DCE00E8F277BE3A02E07C840C0001350208801A7ACE00E8A2F7A33A02E0478E4C01010D0208800675CE00E852F7A83A02E051';
wwv_flow_imp.g_varchar2_table(128) := '988C02818409200009031F528E4B00BAFC9DAF8E00381F210340408D0002A0869E4B00BAE8FDA88E00F89123534040830002A0419D4B00BAD43DAA8E00781426A3402061020840C2C0B904A00BDCB7EA08806F89320F049223800024C77AB84ADC03A0CB';
wwv_flow_imp.g_varchar2_table(129) := 'DFF9EA0880F311320004D40820006AE8B9074017BD1FD511003F72640A086810400034A8730F802E758FAA23001E85C9281048980002903070EE01D005EE5B7504C0B744990702C91140009263CD3D00BAACBDAC8E0078192B434120110208402298472C';
wwv_flow_imp.g_varchar2_table(130) := 'C24D80BAFC9DAF8E00381F210340408D0002A086BE541801D0E5EF7C7504C0F9081900026A04100035F408802E7A3FAA23007EE4C81410D02080006850DF5D933300BAFC9DAF8E00381F210340408D0002A0869E3300BAE8FDA88E00F891235340408300';
wwv_flow_imp.g_varchar2_table(131) := '02A0419D3300BAD43DAA8E00781426A3402061020840C2C08794E312802E7FE7AB2300CE47C8001050238000A8A1E712802E7A3FAA23007EE4C81410D02080006850E712802E758FAADF71E2559249A53D9A88512000812408E48B0539FFB1EB9328458D';
wwv_flow_imp.g_varchar2_table(132) := '1108700980AD118BC0CDAFBF5C3A9ADB62ADC1C11080407804B60C74CB254FDD18DEE0164D8C005814868BAD7CE5C8F7C9911367BBD83A3D4300028A04966CED946B97FC5CB1034A2300EC8158043E3AF33479E7DCE363ADC1C11080407804EE5BF167F9';
wwv_flow_imp.g_varchar2_table(133) := 'EEEA87C21BDCA28911008BC270B195935A0F927F7CDDF92EB64ECF1080802281AF3F7D872CE85DA6D801A51100F6402C0299AE41B97DFEA72593CEC45A87832100817008E40B79B9E0C1AF497E5C6338435B3829026061282EB594DBD62B571C73B69C31';
wwv_flow_imp.g_varchar2_table(134) := 'FB3897DAA65708404091C06F3AFF22372CFAA534B4B72A76416904803D108B40240073C74D956F9D7A79AC75381802100887C0271EB95156746D400094234700940370BD7C2400D1EB9223E6CB79079DE4FA38F40F0108D499C09DCB16C8CDCF3F58AAC2';
wwv_flow_imp.g_varchar2_table(135) := '19803AC31E6579044097BFF3D573DBFB448AC5D21CDF38F952396CC24CE76762000840A03E045EDCBE5AAE7CF4FBE5C553296998D0529F42AC5A110104A0224CBC692402F9EE7E29E60AA53F9EDD3645BE7EE287655C23D7F5D8311080C0DE04BA067BE5';
wwv_flow_imp.g_varchar2_table(136) := '1F1FFBA174766F2CFFFC6F484BA66D0C98140920008AF07D285DE8CB4A6120B76B94C3DB67CAE78FFF0012E043B8CC00014304A21FFE9FFFF3CFE4856DAB77AD986E6E90744B93A10A2C530B0104A0166A1CB38B40319B937C6F762F22D199804F1DFB2E';
wwv_flow_imp.g_varchar2_table(137) := '2E07B04F200001894EFBFFEB33F7ECFACD7F27924C6B93A49A1A20A44800015084EF45E9A2486E7BF946C0A12F6E0CF42261868040CD04F6BCE16FE8220D135A4552352FCD8106082000062086BEC4D0CB007BF2883E2278CE8127C8DB661ECBC38242DF';
wwv_flow_imp.g_varchar2_table(138) := '28CC1F0481E8213FBF5BFD8CDCFBCAC2D247FD867B71FADF8EAD8000D89183D35D14F305C977F5EF7786E64CA39C30ED70397AE21C99377EBA4C6B9D28139A5AF92A61A793A7F9D009445FE9BB3DDB2BEB7BB7CAF21DEB64F1D695B270FD0B32901FDC2F';
wwv_flow_imp.g_varchar2_table(139) := '9ACCB83192CAF035E2DAFB0701D04EC093FAFB3B0BE0C9888C0101081820C06FFF06201A5A020130049265A47416203A1BC00B021080C07004A2DFFAA3DFFE79D9410001B023072FBA285D0AE81ED8F560202F8662080840C00C81544A326DCD9CFA3743';
wwv_flow_imp.g_varchar2_table(140) := 'D3C82A0880118C2CB2930012C05E800004F621C00F7F2B37050260652C6E37154940A137CBE500B763A47B081821109DF64F479FF9E7A63F233C4D2E820098A4C95A7B11E0C640360404C226C00D7F76E78F00D89D8FF3DD456703A2A705EEF9B860E787';
wwv_flow_imp.g_varchar2_table(141) := '6200084060BF04A21FFCD153FEF8ADDFEE8D8200D89D8F3FDD15458A83B9D26581F23FD1FF51FE16415E108080C30452294965A27FD2E57F1A1B78C29F237122008E04459B10800004200001930410009334590B021080000420E0080104C091A0681302';
wwv_flow_imp.g_varchar2_table(142) := '1080000420609200026092266B410002108000041C2180003812146D420002108000044C1240004CD2642D08400002108080230410004782A24D0840000210808049020880499AAC0501084000021070840002E04850B409010840000210304900013049';
wwv_flow_imp.g_varchar2_table(143) := '93B5200001084000028E1040001C098A3621000108400002260920002669B216042000010840C0110208802341D126042000010840C0240104C0244DD68200042000010838420001702428DA840004200001089824800098A4C95A108000042000014708';
wwv_flow_imp.g_varchar2_table(144) := '20008E04459B10800004200001930410009334590B021080000420E0080104C091A06813021080000420609200026092266B410002108000041C2180003812146D420002108000044C1240004CD2642D08400002108080230410004782A24D0840000210';
wwv_flow_imp.g_varchar2_table(145) := '808049020880499AAC0501084000021070840002E04850B40901084000021030490001304993B5200001084000028E1040001C098A3621000108400002260920002669B216042000010840C0110208802341D126042000010840C0240104C0244DD68200';
wwv_flow_imp.g_varchar2_table(146) := '042000010838420001702428DA840004200001089824800098A4C95A10800004200001470820008E04459B10800004200001930410009334590B021080000420E0080104C091A06813021080000420609200026092266B410002108000041C2180003812';
wwv_flow_imp.g_varchar2_table(147) := '146D420002108000044C1240004CD2642D08400002108080230410004782A24D0840000210808049020880499AAC0501084000021070840002E04850B40901084000021030490001304993B5200001084000028E1040001C098A36210001084000022609';
wwv_flow_imp.g_varchar2_table(148) := '20002669B216042000010840C0110208802341D126042000010840C0240104C0244DD68200042000010838420001702428DA840004200001089824800098A4C95A10800004200001470820008E04459B10800004200001930410009334590B0210800004';
wwv_flow_imp.g_varchar2_table(149) := '20E0080104C091A06813021080000420609200026092266B410002108000041C2180003812146D420002108000044C1240004CD2642D08400002108080230410004782A24D0840000210808049020880499AAC0501084000021070840002E04850B40901';
wwv_flow_imp.g_varchar2_table(150) := '084000021030490001304993B5200001084000028E1040001C098A3621000108400002260920002669B216042000010840C0110208802341D126042000010840C0240104C0244DD68200042000010838420001702428DA840004200001089824800098A4';
wwv_flow_imp.g_varchar2_table(151) := 'C95A10800004200001470820008E04459B10800004200001930410009334590B021080000420E0080104C091A06813021080000420609200026092266B410002108000041C2180003812146D420002108000044C1240004CD2642D084000021080802304';
wwv_flow_imp.g_varchar2_table(152) := '10004782A24D0840000210808049020880499AAC0501084000021070840002E04850B40901084000021030490001304993B5200001084000028E1040001C098A3621000108400002260920002669B216042000010840C0110208802341D1260420000108';
wwv_flow_imp.g_varchar2_table(153) := '40C0240104C0244DD68200042000010838420001702428DA840004200001089824800098A4C95A10800004200001470820008E04459B10800004200001930410009334590B021080000420E0080104C091A06813021080000420609200026092266B4100';
wwv_flow_imp.g_varchar2_table(154) := '02108000041C2180003812146D420002108000044C1240004CD2642D08400002108080230410004782A24D0840000210808049020880499AAC050108400002107084C0FF0793C4373CFE033E150000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(542418857304560124)
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
 p_id=>wwv_flow_imp.id(11438996950529356)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>187789152
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(12977074161052113)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>37166093881851
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(13009442546015736)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>37167665070600
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(13009763338015736)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>37167665070600
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(13031907359859702)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>155468443
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(111284893867418256)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>37166093881851
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(132857480573211675)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'N')).to_clob
,p_version_scn=>37166093881851
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(134654072422007819)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>37166093881851
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(187569710849036172)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>37166093881851
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(618242595160283365)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>37166093881851
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(3847062463595173199)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>37166093881851
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(3927816144290731833)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>37166093881851
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(48369769328365557821)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>37166093881851
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(48369769545444557821)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>37166093881851
);
end;
/
prompt --application/shared_components/security/authorizations/team_members
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(27400947937091918504)
,p_name=>'Team Members'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from eba_demo_md_team_members',
'where upper(username) = upper(:APP_USER)'))
,p_error_message=>'You must be a team member to use this application.'
,p_version_scn=>1089079371
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_items/enable_feedback
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(4561321014376756569)
,p_name=>'ENABLE_FEEDBACK'
,p_protection_level=>'I'
,p_version_scn=>37166093881851
);
end;
/
prompt --application/shared_components/logic/application_items/last_view
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(3949794021521971297)
,p_name=>'LAST_VIEW'
,p_protection_level=>'I'
,p_version_scn=>37166093881851
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
prompt --application/shared_components/user_interface/lovs/link_types
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(4917069923468576034)
,p_lov_name=>'LINK TYPES'
,p_lov_query=>'.'||wwv_flow_imp.id(4917069923468576034)||'.'
,p_location=>'STATIC'
,p_version_scn=>1089079371
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4917070214053576039)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'URL'
,p_lov_return_value=>'URL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4917070655571576045)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Application'
,p_lov_return_value=>'Application'
);
end;
/
prompt --application/shared_components/user_interface/lovs/milestones
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(48880800632922500837)
,p_lov_name=>'MILESTONES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name || '' ['' || due_date || '']'' as display',
', id as return',
'from eba_demo_md_milestones',
'order by due_date'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089079371
);
end;
/
prompt --application/shared_components/user_interface/lovs/p18_milestones
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(88526264157363583)
,p_lov_name=>'P18_MILESTONES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name || '' ['' || due_date || '']'' as display',
', id as return',
'from eba_demo_md_milestones',
'where project_id = :P18_PROJECT_ID',
'order by due_date'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089079371
);
end;
/
prompt --application/shared_components/user_interface/lovs/projects
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(48810270184277657470)
,p_lov_name=>'PROJECTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as display',
', id as return',
'from eba_demo_md_projects',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089079371
);
end;
/
prompt --application/shared_components/user_interface/lovs/status
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(4603770034504028748)
,p_lov_name=>'STATUS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description d, cd r',
'from eba_demo_md_status',
'order by display_order'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089079371
);
end;
/
prompt --application/shared_components/user_interface/lovs/tasks
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(4626700945710614845)
,p_lov_name=>'TASKS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as display',
', id as return',
'from eba_demo_md_tasks',
'order by start_date'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089079371
);
end;
/
prompt --application/shared_components/user_interface/lovs/tasks_with_dates
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(4916240587203869178)
,p_lov_name=>'TASKS WITH DATES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name || '' ['' || start_date || '' - '' || end_date || '']'' as display',
', id as return',
'from eba_demo_md_tasks',
'order by start_date'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089079371
);
end;
/
prompt --application/shared_components/user_interface/lovs/team_members
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(48791350367028794105)
,p_lov_name=>'TEAM MEMBERS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name as display',
', id as return',
'from eba_demo_md_team_members',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089079371
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(4564768980979096827)
,p_lov_name=>'TIMEFRAME'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''15 ''||wwv_flow_lang.system_message(initcap(''MINUTES'')) d, ',
'trim(to_char(15/(24*60),''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual union all ',
'select ''30 ''||wwv_flow_lang.system_message(initcap(''MINUTES'')) d, ',
'trim(to_char(30/(24*60),''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual union all ',
'select ''1 ''||wwv_flow_lang.system_message(initcap(''HOUR'')) d, ',
'trim(to_char(1/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual union all ',
'select ''90 ''||wwv_flow_lang.system_message(initcap(''MINUTES'')) d, ',
'trim(to_char(90/(24*60),''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual union all ',
'select ''2 ''||wwv_flow_lang.system_message(initcap(''HOURS'')) d, ',
'trim(to_char(1/12,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual union all ',
'select ''3 ''||wwv_flow_lang.system_message(initcap(''HOURS'')) d, ',
'trim(to_char(3/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual union all ',
'select ''4 ''||wwv_flow_lang.system_message(initcap(''HOURS'')) d, ',
'trim(to_char(4/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual union all ',
'select ''5 ''||wwv_flow_lang.system_message(initcap(''HOURS'')) d, ',
'trim(to_char(5/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual union all ',
'select ''6 ''||wwv_flow_lang.system_message(initcap(''HOURS'')) d, ',
'trim(to_char(6/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual union all ',
'select ''8 ''||wwv_flow_lang.system_message(initcap(''HOURS'')) d, ',
'trim(to_char(8/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual union all ',
'select ''10 ''||wwv_flow_lang.system_message(initcap(''HOURS'')) d, ',
'trim(to_char(10/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual union all ',
'select ''12 ''||wwv_flow_lang.system_message(initcap(''HOURS'')) d, ',
'trim(to_char(12/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual union all ',
'select ''16 ''||wwv_flow_lang.system_message(initcap(''HOURS'')) d, ',
'trim(to_char(16/24,''00000.9999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual union all ',
'select ''1 ''||wwv_flow_lang.system_message(initcap(''DAY'')) d, trim(to_char(1,''00000.9999999999'')) t ',
'from dual union all ',
'select ''2 ''||wwv_flow_lang.system_message(initcap(''DAYS'')) d, trim(to_char(2,''00000.9999999999'')) t ',
'from dual union all ',
'select ''3 ''||wwv_flow_lang.system_message(initcap(''DAYS'')) d, trim(to_char(3,''00000.9999999999'')) t ',
'from dual union all ',
'select ''4 ''||wwv_flow_lang.system_message(initcap(''DAYS'')) d, trim(to_char(4,''00000.9999999999'')) t ',
'from dual union all ',
'select ''5 ''||wwv_flow_lang.system_message(initcap(''DAYS'')) d, trim(to_char(5,''00000.9999999999'')) t ',
'from dual union all ',
'select ''1 ''||wwv_flow_lang.system_message(initcap(''WEEK'')) d, trim(to_char(7,''00000.9999999999'')) t   ',
'from dual union all ',
'select ''2 ''||wwv_flow_lang.system_message(initcap(''WEEKS'')) d, trim(to_char(14,''00000.9999999999'')) t   ',
'from dual order by 2'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089079371
);
end;
/
prompt --application/shared_components/user_interface/lovs/username
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(32229859783699549904)
,p_lov_name=>'USERNAME'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name as display',
', username as return',
'from eba_demo_md_team_members',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089079371
);
end;
/
prompt --application/shared_components/user_interface/lovs/yes_no
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(88530570746396507)
,p_lov_name=>'YES NO'
,p_lov_query=>'.'||wwv_flow_imp.id(88530570746396507)||'.'
,p_location=>'STATIC'
,p_version_scn=>1089079371
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(88530897926396507)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'Y'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(88531267289396508)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'N'
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
 p_id=>wwv_flow_imp.id(48369823315302557905)
,p_name=>' Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(87580041320189814)
,p_short_name=>'Side by Side'
,p_link=>'f?p=&APP_ID.:2:&SESSION.'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3914482491633000995)
,p_short_name=>'To Dos'
,p_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::'
,p_page_id=>14
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3914492956284026203)
,p_short_name=>'Links'
,p_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:::'
,p_page_id=>22
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3917025845956313676)
,p_short_name=>'Milestones'
,p_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3917040946985327892)
,p_short_name=>'Tasks'
,p_link=>'f?p=&APP_ID.:8:&SESSION.'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3950060719330008373)
,p_short_name=>'Stacked with Sub Detail'
,p_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
,p_page_id=>17
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4545860202007891578)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:24:&SESSION.'
,p_page_id=>24
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4561296401453683681)
,p_parent_id=>wwv_flow_imp.id(4545860202007891578)
,p_short_name=>'Preferences'
,p_link=>'f?p=&APP_ID.:25:&SESSION.'
,p_page_id=>25
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4561304948781691834)
,p_parent_id=>wwv_flow_imp.id(4545860202007891578)
,p_short_name=>'Manage Sample Data'
,p_link=>'f?p=&APP_ID.:26:&SESSION.'
,p_page_id=>26
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4561313449668697968)
,p_parent_id=>wwv_flow_imp.id(4545860202007891578)
,p_short_name=>'Application Theme Style'
,p_link=>'f?p=&APP_ID.:27:&SESSION.'
,p_page_id=>27
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4564758643891089858)
,p_parent_id=>wwv_flow_imp.id(4545860202007891578)
,p_short_name=>'Activity Calendar'
,p_link=>'f?p=&APP_ID.:28:&SESSION.'
,p_page_id=>28
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4564792486086156868)
,p_parent_id=>wwv_flow_imp.id(4545860202007891578)
,p_short_name=>'Page Views'
,p_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::'
,p_page_id=>29
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4564792644138158357)
,p_parent_id=>wwv_flow_imp.id(4545860202007891578)
,p_short_name=>'Top Users'
,p_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
,p_page_id=>30
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4626770837024029983)
,p_short_name=>'Stacked'
,p_link=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:::'
,p_page_id=>33
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4627007022836539430)
,p_parent_id=>wwv_flow_imp.id(30715848503099658854)
,p_short_name=>'&P31_TASK_NAME.'
,p_link=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:::'
,p_page_id=>31
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4630752205409333833)
,p_short_name=>'Drill Down'
,p_link=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:::'
,p_page_id=>48
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4630766414097333947)
,p_parent_id=>wwv_flow_imp.id(4630752205409333833)
,p_short_name=>'&P49_NAME.'
,p_link=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:::'
,p_page_id=>49
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4916292263721057553)
,p_parent_id=>wwv_flow_imp.id(4916291099874057547)
,p_short_name=>'Maintain To Do'
,p_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_page_id=>15
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4917069403302560457)
,p_parent_id=>wwv_flow_imp.id(4917068237876560454)
,p_short_name=>'Maintain Link'
,p_link=>'f?p=&APP_ID.:23:&SESSION.'
,p_page_id=>23
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(30715848503099658854)
,p_parent_id=>wwv_flow_imp.id(48369832417536558184)
,p_short_name=>'&P11_PROJECT_NAME.'
,p_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::'
,p_page_id=>11
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(32145838062120269172)
,p_parent_id=>wwv_flow_imp.id(32145836878593269170)
,p_short_name=>'Add Comment'
,p_link=>'f?p=&APP_ID.:13:&SESSION.'
,p_page_id=>13
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(48369823697365557912)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(48369832417536558184)
,p_option_sequence=>30
,p_short_name=>'Report and Marquee'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(48369847259330558584)
,p_parent_id=>wwv_flow_imp.id(48369843434319558443)
,p_option_sequence=>60
,p_short_name=>'Maintain Task'
,p_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
,p_page_id=>9
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
 p_id=>wwv_flow_imp.id(48369817903059557884)
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
,p_default_label_template=>2318601014859922299
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>2318601014859922299
,p_default_required_label=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(39577991426824533)
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
 p_id=>wwv_flow_imp.id(39581983160824536)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(39584028215824537)
,p_theme_id=>42
,p_name=>'ICON_STYLE'
,p_display_name=>'Icon Style'
,p_display_sequence=>35
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(39587154408824540)
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
 p_id=>wwv_flow_imp.id(39595561550824546)
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
 p_id=>wwv_flow_imp.id(39605554189824553)
,p_theme_id=>42
,p_name=>'RESULT_SEPARATOR'
,p_display_name=>'Result Separator'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_null_text=>'Show'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(39609582620824555)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
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
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts/ok_to_get_next_prev_pk_value
begin
wwv_flow_imp_shared.create_shortcut(
 p_id=>wwv_flow_imp.id(4630767317898333952)
,p_shortcut_name=>'OK_TO_GET_NEXT_PREV_PK_VALUE'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_version_scn=>1089079375
,p_shortcut=>'Are you sure you want to leave this page without saving?'
);
end;
/
prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
wwv_flow_imp_shared.create_shortcut(
 p_id=>wwv_flow_imp.id(48369827358234558100)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_version_scn=>1089079375
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(48369822177083557896)
,p_name=>'APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>187790688
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_sampleappfooter
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(3921375968689414524)
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
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page - Desktop'
,p_alias=>'GLOBAL-PAGE-DESKTOP'
,p_step_title=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Home'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3823082206350324688)
,p_plug_name=>'About this Application'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--info:t-Alert--accessibleHeading'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<p>When presenting master-detail relationships you should be able to display the data in multiple formats. Presented below are five alternative page layouts.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3823082253879324689)
,p_plug_name=>'&APP_NAME.'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'<p>Demonstration of Master Detail in Oracle Application Express</p>'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3823082405197324690)
,p_plug_name=>'Oracle APEX Communities and Resources'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.SAMPLEAPPFOOTER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6187105281872935415)
,p_plug_name=>'Master Detail Pages'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--displayIcons:t-Cards--3cols:t-Cards--animColorFill'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_imp.id(4630779302672353031)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Side by Side'
,p_alias=>'SIDE-BY-SIDE'
,p_step_title=>'Side by Side'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Scroll Results Only in Side Column */',
'.t-Body-side {',
'    display: flex;',
'    flex-direction: column;',
'    overflow: hidden;',
'}',
'.search-results {',
'    flex: 1;',
'    overflow: auto;',
'}',
'/* Format Search Region */',
'.search-region {',
'    border-bottom: 1px solid rgba(0,0,0,.1);',
'    flex-shrink: 0;',
'}'))
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(87579668935189814)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(48369823315302557905)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(87581095693189815)
,p_plug_name=>'Search'
,p_region_css_classes=>'search-region padding-md'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(87581921519189816)
,p_name=>'Master Records'
,p_template=>3371237801798025892
,p_display_sequence=>20
,p_region_css_classes=>'search-results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'t-MediaList--showDesc:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID",',
'    null link_class,',
'    apex_page.get_url(p_items => ''P2_ID'', p_values => "ID") link,',
'    null icon_class,',
'    null link_attr,',
'    null icon_color_class,',
'    case when nvl(:P2_ID,''0'') = "ID"',
'      then ''is-active'' ',
'      else '' ''',
'    end list_class,',
'    substr("NAME", 1, 50)||( case when length("NAME") > 50 then ''...'' end ) list_title,',
'    substr("STATUS_CD", 1, 50)||( case when length("STATUS_CD") > 50 then ''...'' end ) list_text,',
'    null list_badge',
'from "EBA_DEMO_MD_PROJECTS" x',
'where (:P2_SEARCH is null',
'        or upper(x."NAME") like ''%''||upper(:P2_SEARCH)||''%''',
'        or upper(x."STATUS_CD") like ''%''||upper(:P2_SEARCH)||''%''',
'    )',
'order by "NAME"'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P2_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>2093604263195414824
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'<div class="u-tC">No Records Found</div>'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87582589887189819)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87583005858189823)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'Link Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87583422083189823)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>3
,p_column_heading=>'Link'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87583745219189824)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'Icon Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87584165075189824)
,p_query_column_id=>5
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>5
,p_column_heading=>'Link Attr'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87584534780189825)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'Icon Color Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87584957997189825)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>7
,p_column_heading=>'List Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87585415310189825)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>8
,p_column_heading=>'List Title'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87585784585189826)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'List Text'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87586216249189826)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>10
,p_column_heading=>'List Badge'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(87589580833189831)
,p_name=>'Project Details'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'EBA_DEMO_MD_PROJECTS'
,p_query_where=>'ID = :P2_ID'
,p_include_rowid_column=>false
,p_display_when_condition=>'P2_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515439059797523
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Record Selected'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87590301421189834)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "EBA_DEMO_MD_PROJECTS"',
'where "ID" is not null',
'and "ID" = :P2_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87590699162189834)
,p_query_column_id=>2
,p_column_alias=>'PROJECT_LEAD'
,p_column_display_sequence=>2
,p_column_heading=>'Project Lead'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "EBA_DEMO_MD_PROJECTS"',
'where "PROJECT_LEAD" is not null',
'and "ID" = :P2_ID'))
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(48791350367028794105)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87591039912189834)
,p_query_column_id=>3
,p_column_alias=>'NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "EBA_DEMO_MD_PROJECTS"',
'where "NAME" is not null',
'and "ID" = :P2_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87591501712189835)
,p_query_column_id=>4
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "EBA_DEMO_MD_PROJECTS"',
'where "DESCRIPTION" is not null',
'and "ID" = :P2_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87591899266189835)
,p_query_column_id=>5
,p_column_alias=>'STATUS_CD'
,p_column_display_sequence=>5
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "EBA_DEMO_MD_PROJECTS"',
'where "STATUS_CD" is not null',
'and "ID" = :P2_ID'))
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(4603770034504028748)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87592281342189835)
,p_query_column_id=>6
,p_column_alias=>'COMPLETED_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Completed Date'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "EBA_DEMO_MD_PROJECTS"',
'where "COMPLETED_DATE" is not null',
'and "ID" = :P2_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87592652451189836)
,p_query_column_id=>7
,p_column_alias=>'CREATED'
,p_column_display_sequence=>7
,p_column_heading=>'Created'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "EBA_DEMO_MD_PROJECTS"',
'where "CREATED" is not null',
'and "ID" = :P2_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87593099930189836)
,p_query_column_id=>8
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>8
,p_column_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "EBA_DEMO_MD_PROJECTS"',
'where "CREATED_BY" is not null',
'and "ID" = :P2_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87593432284189836)
,p_query_column_id=>9
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>9
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "EBA_DEMO_MD_PROJECTS"',
'where "UPDATED" is not null',
'and "ID" = :P2_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87593911424189837)
,p_query_column_id=>10
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>10
,p_column_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "EBA_DEMO_MD_PROJECTS"',
'where "UPDATED_BY" is not null',
'and "ID" = :P2_ID'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(87600929844189844)
,p_plug_name=>'Region Display Selector'
,p_region_css_classes=>'js-detail-rds'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(87601406304189845)
,p_name=>'Milestones'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'EBA_DEMO_MD_MILESTONES'
,p_query_where=>'PROJECT_ID = :P2_ID'
,p_include_rowid_column=>false
,p_display_when_condition=>'P2_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No milestones found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>5000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87602057867189847)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_column_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:RP:P16_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_heading_alignment=>'LEFT'
,p_report_column_width=>32
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87602489472189847)
,p_query_column_id=>2
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Project Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87602881372189847)
,p_query_column_id=>3
,p_column_alias=>'NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87603287634189847)
,p_query_column_id=>4
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87603639333189848)
,p_query_column_id=>5
,p_column_alias=>'DUE_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Due Date'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87604077590189848)
,p_query_column_id=>6
,p_column_alias=>'CREATED'
,p_column_display_sequence=>6
,p_column_heading=>'Created'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87604496333189848)
,p_query_column_id=>7
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>7
,p_column_heading=>'Created By'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87604883622189848)
,p_query_column_id=>8
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>8
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87605240303189849)
,p_query_column_id=>9
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>9
,p_column_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(87622034382189861)
,p_name=>'Tasks'
,p_template=>4072358936313175081
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'EBA_DEMO_MD_TASKS'
,p_query_where=>'PROJECT_ID = :P2_ID'
,p_include_rowid_column=>false
,p_display_when_condition=>'P2_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No tasks found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>5000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87622888261189863)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_column_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RP:P18_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_heading_alignment=>'LEFT'
,p_report_column_width=>32
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87623283895189863)
,p_query_column_id=>2
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Project Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87623701059189864)
,p_query_column_id=>3
,p_column_alias=>'MILESTONE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Milestone'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(88526264157363583)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87624085033189864)
,p_query_column_id=>4
,p_column_alias=>'ASSIGNEE'
,p_column_display_sequence=>4
,p_column_heading=>'Assignee'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(48791350367028794105)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87624463457189864)
,p_query_column_id=>5
,p_column_alias=>'NAME'
,p_column_display_sequence=>5
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87624874823189864)
,p_query_column_id=>6
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>6
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87625298882189864)
,p_query_column_id=>7
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Start Date'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87625694793189865)
,p_query_column_id=>8
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'End Date'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87626057980189865)
,p_query_column_id=>9
,p_column_alias=>'IS_COMPLETE_YN'
,p_column_display_sequence=>9
,p_column_heading=>'Is Complete'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(88530570746396507)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87626431195189865)
,p_query_column_id=>10
,p_column_alias=>'CREATED'
,p_column_display_sequence=>10
,p_column_heading=>'Created'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87626894968189865)
,p_query_column_id=>11
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>11
,p_column_heading=>'Created By'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87627249946189866)
,p_query_column_id=>12
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>12
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87627648374189866)
,p_query_column_id=>13
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>13
,p_column_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(87647243779189896)
,p_name=>'Comments'
,p_template=>4072358936313175081
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.id comment_id',
', c.project_id',
', ''u-color-'' || ora_hash(c.created_by, 29) || '' u-color-'' || ora_hash(c.created_by, 29) || ''-bd'' icon_modifier',
', c.comment_text',
', c.created comment_date',
',  apex_string.get_initials(c.created_by) user_icon',
', c.created_by user_name',
', ''<a href="'' || apex_page.get_url(p_page => 19, p_items => ''P19_ID,P19_PROJECT_ID'', p_values => c.id||'',''||c.project_id) || ',
'  ''" class="t-Button t-Button--small t-Button--simple">Edit</a>'' actions',
', null attribute_1',
', null attribute_2',
', null attribute_3',
', null attribute_4',
'from eba_demo_md_comments c',
'where c.project_id = :P2_ID',
'order by c.created'))
,p_display_when_condition=>'P2_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2613168815517880001
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No comments found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>5000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1010966183369686331)
,p_query_column_id=>1
,p_column_alias=>'COMMENT_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1010966369254686333)
,p_query_column_id=>2
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1010966267396686332)
,p_query_column_id=>3
,p_column_alias=>'ICON_MODIFIER'
,p_column_display_sequence=>12
,p_column_heading=>'Icon Modifier'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87648850218189899)
,p_query_column_id=>4
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Comment Text'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1010965864731686328)
,p_query_column_id=>5
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'Comment Date'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1010965356011686323)
,p_query_column_id=>6
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>4
,p_column_heading=>'User Icon'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1010965934250686329)
,p_query_column_id=>7
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'User Name'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1010966065770686330)
,p_query_column_id=>8
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>11
,p_column_heading=>'Actions'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1010965500016686324)
,p_query_column_id=>9
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>5
,p_column_heading=>'Attribute 1'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1010965605281686325)
,p_query_column_id=>10
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>6
,p_column_heading=>'Attribute 2'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1010965650990686326)
,p_query_column_id=>11
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>7
,p_column_heading=>'Attribute 3'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1010965723406686327)
,p_query_column_id=>12
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>8
,p_column_heading=>'Attribute 4'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(87665911996189916)
,p_plug_name=>'No Record Selected'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>70
,p_plug_grid_column_css_classes=>'u-textCenter'
,p_plug_source=>'No master record selected. Please click on a master record on the left.'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P2_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3908091816707442830)
,p_plug_name=>'Overview: Side by Side'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_source=>'This example displays master-detail regions on the same page.  The user selects a record from the master on the left to render the detail on the right without leaving the page.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(87609105531189852)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(87601406304189845)
,p_button_name=>'POP_EBA_DEMO_MD_MILESTONES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Add Milestone'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:RP,16:P16_PROJECT_ID:&P2_ID.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(87632649594189871)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(87622034382189861)
,p_button_name=>'POP_EBA_DEMO_MD_TASKS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Add Task'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RP,18:P18_PROJECT_ID:&P2_ID.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(87653668580189902)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(87647243779189896)
,p_button_name=>'POP_EBA_DEMO_MD_COMMENTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Add Comment'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RP,19:P19_PROJECT_ID:&P2_ID.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(87666396740189916)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(87589580833189831)
,p_button_name=>'EDIT'
,p_button_static_id=>'edit_master_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Edit Project'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,10:P10_ID:&P2_ID.'
,p_icon_css_classes=>'fa-pencil-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(87580380682189815)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(87579668935189814)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.:RESET:&DEBUG.:RP,2::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(87580784760189815)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(87579668935189814)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Project'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,10::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87581452127189816)
,p_name=>'P2_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(87581095693189815)
,p_prompt=>'Search'
,p_placeholder=>'Search...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--postTextBlock'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87600564848189844)
,p_name=>'P2_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(87589580833189831)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(87666715334189916)
,p_name=>'Edit Master Record'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(87589580833189831)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(87667232887189917)
,p_event_id=>wwv_flow_imp.id(87666715334189916)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(87589580833189831)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(87667758694189917)
,p_event_id=>wwv_flow_imp.id(87666715334189916)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Eba\u0020Demo\u0020Md\u0020Projects\u0020updated'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(87601444374189845)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(87601406304189845)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(87609731187189852)
,p_event_id=>wwv_flow_imp.id(87601444374189845)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(87601406304189845)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(87610268700189853)
,p_event_id=>wwv_flow_imp.id(87601444374189845)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Eba Demo Md Milestones updated'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(87622144961189861)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(87622034382189861)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(87633393246189872)
,p_event_id=>wwv_flow_imp.id(87622144961189861)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(87622034382189861)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(87633891706189872)
,p_event_id=>wwv_flow_imp.id(87622144961189861)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Eba Demo Md Tasks updated'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(87647343869189896)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(87647243779189896)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(87654332405189905)
,p_event_id=>wwv_flow_imp.id(87647343869189896)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(87647243779189896)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(87654854932189905)
,p_event_id=>wwv_flow_imp.id(87647343869189896)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Eba Demo Md Comments updated'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(87666762321189916)
,p_name=>'Perform Search'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(87668526087189917)
,p_event_id=>wwv_flow_imp.id(87666762321189916)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(87581921519189816)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(87669089765189918)
,p_event_id=>wwv_flow_imp.id(87666762321189916)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Report and Marquee - Report'
,p_alias=>'REPORT-AND-MARQUEE-REPORT'
,p_step_title=>'Report and Marquee - Report'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Remove duplicate borders on hover */',
'.a-IconList-item:hover {',
'  box-shadow: none;',
'  background: transparent;',
'}',
'',
'.t-Cards {',
'  margin: 8px;',
'}',
'',
'.t-Cards-item.a-IconList-item {',
'  margin: 0;',
'  padding: 0;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5649256645715533024)
,p_plug_name=>'Overview: Report and Marquee'
,p_region_name=>'comments'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_source=>'This example consists of a report page that drills down to a marquee page. On the marquee page each of the detail tables are shown using a classic report. Separate modal popups are used to edit the master and detail tables.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48369831240020558181)
,p_plug_name=>'Projects'
,p_region_name=>'projects'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"NAME",',
'"DESCRIPTION",',
'"PROJECT_LEAD",',
'"COMPLETED_DATE",',
'"STATUS_CD",',
'''fa-folder-o'' card_icon,',
'apex_string.get_initials(project_lead) card_initials,',
'apex_util.prepare_url(''f?p=''||:APP_ID||'':11:''||:APP_SESSION||'':::11:P11_PROJECT_ID:''||id) card_link,',
'(select count(''x'')',
' from eba_demo_md_milestones m',
' where m.project_id = p.id',
') milestones,',
'(select count(''x'')',
' from eba_demo_md_tasks t',
' where t.project_id = p.id',
') tasks,',
'(select count(''x'')',
' from eba_demo_md_task_todos t',
' where t.project_id = p.id',
') todos,',
'(select count(''x'')',
' from eba_demo_md_task_links l',
' where l.project_id = p.id',
') links,',
'(select count(''x'')',
' from eba_demo_md_comments c',
' where c.project_id = p.id',
') comments',
'from eba_demo_md_projects p',
''))
,p_plug_source_type=>'NATIVE_IG'
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
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(4916810917257173088)
,p_heading=>'Project Details'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(4916811011335173089)
,p_heading=>'Progress'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(4916811152887173090)
,p_heading=>'Associated Records'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3823084047096324707)
,p_name=>'CARD_ICON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CARD_ICON'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3823084193108324708)
,p_name=>'CARD_INITIALS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CARD_INITIALS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3823084279335324709)
,p_name=>'CARD_LINK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CARD_LINK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4349452727465521897)
,p_name=>'STATUS_CD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_CD'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_imp.id(4916811011335173089)
,p_use_group_for=>'BOTH'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description d, cd r',
'from eba_demo_md_status',
'order by 1'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Status -'
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
 p_id=>wwv_flow_imp.id(4414452681672050648)
,p_name=>'LINKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINKS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Links'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(4916811152887173090)
,p_use_group_for=>'BOTH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4414452697625050649)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_imp.id(4916810917257173088)
,p_use_group_for=>'BOTH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4539713070854282775)
,p_name=>'TODOS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TODOS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'To Dos'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(4916811152887173090)
,p_use_group_for=>'BOTH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4916482965304976151)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4916483149802976152)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_imp.id(4916810917257173088)
,p_use_group_for=>'BOTH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>255
,p_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,11:P11_PROJECT_ID:&ID.'
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
 p_id=>wwv_flow_imp.id(4916483309658976154)
,p_name=>'PROJECT_LEAD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT_LEAD'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Project Lead'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_imp.id(4916810917257173088)
,p_use_group_for=>'BOTH'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(48791350367028794105)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Project Lead -'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
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
 p_id=>wwv_flow_imp.id(4916483402538976155)
,p_name=>'COMPLETED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPLETED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Completed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_imp.id(4916811011335173089)
,p_use_group_for=>'BOTH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
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
 p_id=>wwv_flow_imp.id(4916483974707976161)
,p_name=>'MILESTONES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MILESTONES'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Milestones'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(4916811152887173090)
,p_use_group_for=>'BOTH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4916484107573976162)
,p_name=>'TASKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASKS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Tasks'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(4916811152887173090)
,p_use_group_for=>'BOTH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4916484326245976164)
,p_name=>'COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMENTS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Comments'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(4916811152887173090)
,p_use_group_for=>'BOTH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(4916482933120976150)
,p_internal_uid=>502062671965151808
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>true
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>true
,p_icon_view_use_custom=>true
,p_icon_view_custom=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="&APEX$ROW_ID." class="t-Cards-item">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color &CARD_COLOR."><span class="t-Icon fa &CARD_ICON."><span class="t-Card-initials" role="presentation">&CARD_INITIALS.</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title"><a href=" &APEX$ROW_URL!ATTR.">&NAME.</a></h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">&STATUS_CD.</div>',
'        <div class="t-Card-info">&MILESTONES_LABEL.: &MILESTONES., &TASKS_LABEL.: &TASKS., &TODOS_LABEL.: &TODOS., &LINKS_LABEL.: &LINKS., &COMMENTS_LABEL.: &COMMENTS.</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color &CARD_COLOR."></span>',
'    </div>',
'  </div>',
'</li>'))
,p_icon_view_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,11:P11_PROJECT_ID:&ID.'
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.defaultGridViewOptions = {',
'        rowHeader: "sequence"',
'    };',
'    config.defaultIconViewOptions = {',
'        collectionClasses: "t-Cards t-Cards--basic t-Cards--displayIcons u-colors t-Cards--desc-2ln t-Cards--4cols"',
'    };',
'    return config; // don''t forget to return this!',
'}',
''))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(4916511318069078261)
,p_interactive_grid_id=>wwv_flow_imp.id(4916482933120976150)
,p_static_id=>'14339'
,p_type=>'PRIMARY'
,p_default_view=>'ICON'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4916511399446078261)
,p_report_id=>wwv_flow_imp.id(4916511318069078261)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847061755838173153)
,p_view_id=>wwv_flow_imp.id(4916511399446078261)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(4539713070854282775)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847061839980173150)
,p_view_id=>wwv_flow_imp.id(4916511399446078261)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4916482965304976151)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847061973218173150)
,p_view_id=>wwv_flow_imp.id(4916511399446078261)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4916483149802976152)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>245
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847062014083173150)
,p_view_id=>wwv_flow_imp.id(4916511399446078261)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4414452697625050649)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>594
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847062141233173150)
,p_view_id=>wwv_flow_imp.id(4916511399446078261)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4916483309658976154)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>127
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847062249582173150)
,p_view_id=>wwv_flow_imp.id(4916511399446078261)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4349452727465521897)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847062329519173151)
,p_view_id=>wwv_flow_imp.id(4916511399446078261)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4916483402538976155)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>122
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847062449895173151)
,p_view_id=>wwv_flow_imp.id(4916511399446078261)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(4916483974707976161)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847062526106173151)
,p_view_id=>wwv_flow_imp.id(4916511399446078261)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(4916484107573976162)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>58
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847062775244173151)
,p_view_id=>wwv_flow_imp.id(4916511399446078261)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(4414452681672050648)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>55
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847062866158173151)
,p_view_id=>wwv_flow_imp.id(4916511399446078261)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(4916484326245976164)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3928079940034300545)
,p_view_id=>wwv_flow_imp.id(4916511399446078261)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3823084047096324707)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3928080490450300549)
,p_view_id=>wwv_flow_imp.id(4916511399446078261)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3823084193108324708)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3928081023514300551)
,p_view_id=>wwv_flow_imp.id(4916511399446078261)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3823084279335324709)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48369832529952558184)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(48369823315302557905)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48369835947514558315)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(48369832529952558184)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Project'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP,5::'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(3934277593587094377)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'APP_PAGE_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48369836256450558316)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(48369831240020558181)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48369836326831558316)
,p_event_id=>wwv_flow_imp.id(48369836256450558316)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48369831240020558181)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48369836025197558316)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48369835947514558315)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48369836059165558316)
,p_event_id=>wwv_flow_imp.id(48369836025197558316)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48369831240020558181)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Project Detail'
,p_alias=>'PROJECT-DETAIL'
,p_page_mode=>'MODAL'
,p_step_title=>'Project Detail'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48369832870252558258)
,p_plug_name=>'Edit EBA_DEMO_MD_PROJECTS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EBA_DEMO_MD_PROJECTS'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48802149313513036830)
,p_plug_name=>'Audit Details'
,p_parent_plug_id=>wwv_flow_imp.id(48369832870252558258)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P5_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48369832967400558258)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48369833265723558258)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(48369832967400558258)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P5_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48369833452471558258)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(48369832967400558258)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Project'
,p_button_position=>'CREATE'
,p_button_condition=>'P5_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48369833204040558258)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(48369832967400558258)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P5_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48369833128584558258)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(48369832967400558258)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48369833702489558312)
,p_name=>'P5_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(48369832870252558258)
,p_item_source_plug_id=>wwv_flow_imp.id(48369832870252558258)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48369833780495558312)
,p_name=>'P5_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(48369832870252558258)
,p_item_source_plug_id=>wwv_flow_imp.id(48369832870252558258)
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48369834029798558313)
,p_name=>'P5_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(48369832870252558258)
,p_item_source_plug_id=>wwv_flow_imp.id(48369832870252558258)
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48369834237007558313)
,p_name=>'P5_PROJECT_LEAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(48369832870252558258)
,p_item_source_plug_id=>wwv_flow_imp.id(48369832870252558258)
,p_prompt=>'Project Lead'
,p_source=>'PROJECT_LEAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TEAM MEMBERS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name as display',
', id as return',
'from eba_demo_md_team_members',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Project Lead -'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48369834409207558313)
,p_name=>'P5_COMPLETED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(48369832870252558258)
,p_item_source_plug_id=>wwv_flow_imp.id(48369832870252558258)
,p_prompt=>'Completed Date'
,p_source=>'COMPLETED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'No help available for this page item.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48369834635489558313)
,p_name=>'P5_STATUS_CD'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(48369832870252558258)
,p_item_source_plug_id=>wwv_flow_imp.id(48369832870252558258)
,p_prompt=>'Status'
,p_source=>'STATUS_CD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATUS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description d, cd r',
'from eba_demo_md_status',
'order by display_order'))
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48802149643685036834)
,p_name=>'P5_CREATED'
,p_source_data_type=>'TIMESTAMP_TZ'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(48802149313513036830)
,p_item_source_plug_id=>wwv_flow_imp.id(48369832870252558258)
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48802150525629036838)
,p_name=>'P5_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(48802149313513036830)
,p_item_source_plug_id=>wwv_flow_imp.id(48369832870252558258)
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USERNAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name as display',
', username as return',
'from eba_demo_md_team_members',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48802151381271036840)
,p_name=>'P5_UPDATED'
,p_source_data_type=>'TIMESTAMP_TZ'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(48802149313513036830)
,p_item_source_plug_id=>wwv_flow_imp.id(48369832870252558258)
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48802152334488036841)
,p_name=>'P5_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(48802149313513036830)
,p_item_source_plug_id=>wwv_flow_imp.id(48369832870252558258)
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USERNAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name as display',
', username as return',
'from eba_demo_md_team_members',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(48798615962640693903)
,p_validation_name=>'Completed Date is Not Null'
,p_validation_sequence=>10
,p_validation=>'P5_COMPLETED_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P5_STATUS_CD'
,p_validation_condition2=>'Completed'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(48798616128594693904)
,p_validation_name=>'Completed Date is not Forward Dated'
,p_validation_sequence=>20
,p_validation=>':P5_COMPLETED_DATE <= sysdate'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'#LABEL# can not be forward dated.'
,p_validation_condition=>'P5_COMPLETED_DATE'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_imp.id(48369834409207558313)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48369833496269558258)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48369833128584558258)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48369833576576558258)
,p_event_id=>wwv_flow_imp.id(48369833496269558258)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45651252749675297350)
,p_name=>'Show Completed Date'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_STATUS_CD'
,p_condition_element=>'P5_STATUS_CD'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'COMPLETED'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45651252799624297351)
,p_event_id=>wwv_flow_imp.id(45651252749675297350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_COMPLETED_DATE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45651252917789297352)
,p_event_id=>wwv_flow_imp.id(45651252749675297350)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_COMPLETED_DATE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4930255250634585443)
,p_event_id=>wwv_flow_imp.id(45651252749675297350)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_COMPLETED_DATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48369835626077558315)
,p_process_sequence=>1
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(48369832870252558258)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from EBA_DEMO_MD_PROJECTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>48358397272748028964
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48369835696289558315)
,p_process_sequence=>1
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(48369832870252558258)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of EBA_DEMO_MD_PROJECTS'
,p_attribute_06=>'Y'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>48358397342960028964
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3952370902363655882)
,p_process_sequence=>11
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3940932549034126531
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Milestones'
,p_alias=>'MILESTONES'
,p_page_mode=>'MODAL'
,p_step_title=>'Milestones'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4915566076513213855)
,p_plug_name=>'EBA_DEMO_MD_MILESTONES'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"PROJECT_ID",',
'"NAME",',
'"DESCRIPTION",',
'"DUE_DATE",',
'"CREATED",',
'"CREATED_BY",',
'"UPDATED",',
'"UPDATED_BY",',
'(select count(''x'')',
' from eba_demo_md_tasks t',
' where t.milestone_id = m.id',
') tasks',
'from EBA_DEMO_MD_MILESTONES m'))
,p_plug_source_type=>'NATIVE_IG'
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
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4915566308091213857)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4915566423385213858)
,p_name=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Project'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(48810270184277657470)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Project -'
,p_enable_filter=>true
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
 p_id=>wwv_flow_imp.id(4915566536435213859)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(4915566612581213860)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(4915566693964213861)
,p_name=>'DUE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Due date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(4915566847619213862)
,p_name=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4986332227533991413)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4986332337253991414)
,p_name=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4986332412547991415)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4986332507345991416)
,p_name=>'TASKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASKS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Tasks'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4986332666408991417)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4986332670943991418)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(4915566171316213856)
,p_internal_uid=>2819533640628476194
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'No Milestones'
,p_show_toolbar=>true
,p_enable_save_public_report=>true
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(4986338465260009256)
,p_interactive_grid_id=>wwv_flow_imp.id(4915566171316213856)
,p_static_id=>'14350'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4986338494850009257)
,p_report_id=>wwv_flow_imp.id(4986338465260009256)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3916911777123188417)
,p_view_id=>wwv_flow_imp.id(4986338494850009257)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4986332666408991417)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3916911861493188417)
,p_view_id=>wwv_flow_imp.id(4986338494850009257)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4915566308091213857)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3916911967276188417)
,p_view_id=>wwv_flow_imp.id(4986338494850009257)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4915566423385213858)
,p_is_visible=>false
,p_is_frozen=>true
,p_width=>271
,p_break_order=>1
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3916912139350188417)
,p_view_id=>wwv_flow_imp.id(4986338494850009257)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4915566536435213859)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>248
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3916912208316188417)
,p_view_id=>wwv_flow_imp.id(4986338494850009257)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4915566612581213860)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>461
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3916912276580188417)
,p_view_id=>wwv_flow_imp.id(4986338494850009257)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4915566693964213861)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>105
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3916912403227188418)
,p_view_id=>wwv_flow_imp.id(4986338494850009257)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(4986332507345991416)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>58
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3916912530090188418)
,p_view_id=>wwv_flow_imp.id(4986338494850009257)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(4915566847619213862)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3916912546200188418)
,p_view_id=>wwv_flow_imp.id(4986338494850009257)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(4986332227533991413)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3916912709199188418)
,p_view_id=>wwv_flow_imp.id(4986338494850009257)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(4986332337253991414)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3916912788421188418)
,p_view_id=>wwv_flow_imp.id(4986338494850009257)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(4986332412547991415)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3916917690573188519)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4915566076513213855)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'EBA_DEMO_MD_MILESTONES - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3905479337243659168
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Milestone Detail'
,p_alias=>'MILESTONE-DETAIL'
,p_page_mode=>'MODAL'
,p_step_title=>'Milestone Detail'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48369838303457558381)
,p_plug_name=>'Edit EBA_DEMO_MD_MILESTONES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EBA_DEMO_MD_MILESTONES'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48876580300212798640)
,p_plug_name=>'Audit Details'
,p_parent_plug_id=>wwv_flow_imp.id(48369838303457558381)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P7_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48369838417859558381)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48369838690713558381)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(48369838417859558381)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48369838764523558381)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(48369838417859558381)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Milestone'
,p_button_position=>'CREATE'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48369838560983558381)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(48369838417859558381)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48369838541534558381)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(48369838417859558381)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48369839119623558434)
,p_name=>'P7_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(48369838303457558381)
,p_item_source_plug_id=>wwv_flow_imp.id(48369838303457558381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48369839218353558434)
,p_name=>'P7_PROJECT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(48369838303457558381)
,p_item_source_plug_id=>wwv_flow_imp.id(48369838303457558381)
,p_prompt=>'Project'
,p_source=>'PROJECT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as display',
', id as return',
'from eba_demo_md_projects',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Project -'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48369839423347558434)
,p_name=>'P7_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(48369838303457558381)
,p_item_source_plug_id=>wwv_flow_imp.id(48369838303457558381)
,p_prompt=>'Milestone'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48369839645419558435)
,p_name=>'P7_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(48369838303457558381)
,p_item_source_plug_id=>wwv_flow_imp.id(48369838303457558381)
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48369839811927558436)
,p_name=>'P7_DUE_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(48369838303457558381)
,p_item_source_plug_id=>wwv_flow_imp.id(48369838303457558381)
,p_prompt=>'Due Date'
,p_source=>'DUE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48876580658351798644)
,p_name=>'P7_CREATED'
,p_source_data_type=>'TIMESTAMP_TZ'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(48876580300212798640)
,p_item_source_plug_id=>wwv_flow_imp.id(48369838303457558381)
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48876581465003798646)
,p_name=>'P7_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(48876580300212798640)
,p_item_source_plug_id=>wwv_flow_imp.id(48369838303457558381)
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USERNAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name as display',
', username as return',
'from eba_demo_md_team_members',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48876582390850798647)
,p_name=>'P7_UPDATED'
,p_source_data_type=>'TIMESTAMP_TZ'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(48876580300212798640)
,p_item_source_plug_id=>wwv_flow_imp.id(48369838303457558381)
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48876583350133798648)
,p_name=>'P7_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(48876580300212798640)
,p_item_source_plug_id=>wwv_flow_imp.id(48369838303457558381)
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USERNAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name as display',
', username as return',
'from eba_demo_md_team_members',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48369838947279558381)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48369838541534558381)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48369839016624558381)
,p_event_id=>wwv_flow_imp.id(48369838947279558381)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48369840845493558437)
,p_process_sequence=>1
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(48369838303457558381)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from EBA_DEMO_MD_MILESTONES'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>48358402492164029086
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48369840941239558438)
,p_process_sequence=>1
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(48369838303457558381)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of EBA_DEMO_MD_MILESTONES'
,p_attribute_06=>'Y'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>48358402587910029087
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1931349670451546717)
,p_process_sequence=>11
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1919911317122017366
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Tasks'
,p_alias=>'TASKS'
,p_page_mode=>'MODAL'
,p_step_title=>'Tasks'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48439812936296713106)
,p_plug_name=>'EBA_DEMO_MD_TASKS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"ASSIGNEE",',
'"NAME",',
'"DESCRIPTION",',
'"PROJECT_ID",',
'"MILESTONE_ID",',
'is_complete_yn completed,',
'"START_DATE",',
'"END_DATE",',
'"CREATED",',
'"CREATED_BY",',
'"UPDATED",',
'"UPDATED_BY",',
'(select count(*)',
' from eba_demo_md_task_todos td',
' where td.task_id = t.id',
') todos,',
'(select count(*)',
' from eba_demo_md_task_links l',
' where l.task_id = t.id',
') links',
' from   EBA_DEMO_MD_TASKS t',
''))
,p_plug_source_type=>'NATIVE_IG'
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
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3232615002893071291)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4674343967932777430)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4674344008368777431)
,p_name=>'ASSIGNEE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ASSIGNEE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Assignee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(48791350367028794105)
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4674344131732777432)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>255
,p_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:RP,9:P31_TASK_ID,P31_LAST_PAGE,P31_PROJECT_ID:&ID.,8,&PROJECT_ID.'
,p_link_text=>'&NAME.'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4674344278061777433)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4674344379179777434)
,p_name=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Project'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(48810270184277657470)
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4674344475998777435)
,p_name=>'MILESTONE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MILESTONE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Milestone'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(48880800632922500837)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4674344611447777437)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Start Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4674344700363777438)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'End Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4674344817113777439)
,p_name=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4674344946880777440)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created by'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4674345054387777441)
,p_name=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4674345109396777442)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated by'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4674345230225777443)
,p_name=>'TODOS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TODOS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_LINK'
,p_heading=>'To Dos'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:RP,RIR,CIR:P14_TASK_ID:&ID.'
,p_link_text=>'&TODOS.'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4674345302981777444)
,p_name=>'LINKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINKS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Links'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:RP,RIR,CIR:IR_TASK_ID:&NAME.'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4696992693967837341)
,p_name=>'COMPLETED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPLETED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Completed?'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(4674343789543777429)
,p_internal_uid=>2578311258856039767
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'No tasks found.'
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(4674354758094789644)
,p_interactive_grid_id=>wwv_flow_imp.id(4674343789543777429)
,p_static_id=>'14360'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4674354865130789644)
,p_report_id=>wwv_flow_imp.id(4674354758094789644)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3917032797350327818)
,p_view_id=>wwv_flow_imp.id(4674354865130789644)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4674343967932777430)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3917032884192327818)
,p_view_id=>wwv_flow_imp.id(4674354865130789644)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4674344379179777434)
,p_is_visible=>false
,p_is_frozen=>true
,p_break_order=>1
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3917032983648327818)
,p_view_id=>wwv_flow_imp.id(4674354865130789644)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(4674344475998777435)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>358
,p_break_order=>2
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3917033090951327818)
,p_view_id=>wwv_flow_imp.id(4674354865130789644)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4674344008368777431)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>131
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3917033205001327819)
,p_view_id=>wwv_flow_imp.id(4674354865130789644)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4674344131732777432)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>737
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3917033268033327819)
,p_view_id=>wwv_flow_imp.id(4674354865130789644)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(4674344278061777433)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>670
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3917033469471327819)
,p_view_id=>wwv_flow_imp.id(4674354865130789644)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4674344611447777437)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3917033534149327819)
,p_view_id=>wwv_flow_imp.id(4674354865130789644)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4674344700363777438)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
,p_sort_order=>2
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3917033680891327819)
,p_view_id=>wwv_flow_imp.id(4674354865130789644)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(4674344817113777439)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3917033770415327819)
,p_view_id=>wwv_flow_imp.id(4674354865130789644)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(4674344946880777440)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3917033851458327819)
,p_view_id=>wwv_flow_imp.id(4674354865130789644)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(4674345054387777441)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3917034004223327819)
,p_view_id=>wwv_flow_imp.id(4674354865130789644)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(4674345109396777442)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3917034119369327819)
,p_view_id=>wwv_flow_imp.id(4674354865130789644)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(4674345230225777443)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>58
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3917034160447327819)
,p_view_id=>wwv_flow_imp.id(4674354865130789644)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(4674345302981777444)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>65
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3949706366190530734)
,p_view_id=>wwv_flow_imp.id(4674354865130789644)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(3232615002893071291)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5278703883789340884)
,p_view_id=>wwv_flow_imp.id(4674354865130789644)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(4696992693967837341)
,p_is_visible=>true
,p_is_frozen=>false
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Task Detail'
,p_alias=>'TASK-DETAIL'
,p_page_mode=>'MODAL'
,p_step_title=>'Task Detail'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30716037827703748831)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48369843863077558514)
,p_plug_name=>'Edit EBA_DEMO_MD_TASKS'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EBA_DEMO_MD_TASKS'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48882693234257195447)
,p_plug_name=>'Audit Details'
,p_parent_plug_id=>wwv_flow_imp.id(48369843863077558514)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P9_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48369844236286558514)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(30716037827703748831)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48369844326803558514)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(30716037827703748831)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Task'
,p_button_position=>'CREATE'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48369844068804558514)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(30716037827703748831)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48369844034588558514)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(30716037827703748831)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48369844517204558575)
,p_name=>'P9_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(48369843863077558514)
,p_item_source_plug_id=>wwv_flow_imp.id(48369843863077558514)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48369844575295558575)
,p_name=>'P9_ASSIGNEE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(48369843863077558514)
,p_item_source_plug_id=>wwv_flow_imp.id(48369843863077558514)
,p_prompt=>'Assignee'
,p_source=>'ASSIGNEE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TEAM MEMBERS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name as display',
', id as return',
'from eba_demo_md_team_members',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Assignee -'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48369844827222558575)
,p_name=>'P9_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(48369843863077558514)
,p_item_source_plug_id=>wwv_flow_imp.id(48369843863077558514)
,p_prompt=>'Task'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48369844984152558576)
,p_name=>'P9_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(48369843863077558514)
,p_item_source_plug_id=>wwv_flow_imp.id(48369843863077558514)
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48369845160254558576)
,p_name=>'P9_PROJECT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(48369843863077558514)
,p_item_source_plug_id=>wwv_flow_imp.id(48369843863077558514)
,p_prompt=>'Project'
,p_source=>'PROJECT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as display',
', id as return',
'from eba_demo_md_projects',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Project -'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>'No help available for this page item.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48369845433263558576)
,p_name=>'P9_MILESTONE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(48369843863077558514)
,p_item_source_plug_id=>wwv_flow_imp.id(48369843863077558514)
,p_prompt=>'Milestone'
,p_source=>'MILESTONE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as display',
', id as return',
'from eba_demo_md_milestones',
'where project_id = :P9_PROJECT_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Milestone -'
,p_lov_cascade_parent_items=>'P9_PROJECT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48369845592423558577)
,p_name=>'P9_IS_COMPLETE_YN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(48369843863077558514)
,p_item_source_plug_id=>wwv_flow_imp.id(48369843863077558514)
,p_prompt=>'Completed?'
,p_source=>'IS_COMPLETE_YN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48369845776133558577)
,p_name=>'P9_START_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(48369843863077558514)
,p_item_source_plug_id=>wwv_flow_imp.id(48369843863077558514)
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48369846042239558577)
,p_name=>'P9_END_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(48369843863077558514)
,p_item_source_plug_id=>wwv_flow_imp.id(48369843863077558514)
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48798616322237693906)
,p_name=>'P9_MILESTONE_DUE_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(48369843863077558514)
,p_prompt=>'Due Date'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48882693524799195452)
,p_name=>'P9_CREATED'
,p_source_data_type=>'TIMESTAMP_TZ'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(48882693234257195447)
,p_item_source_plug_id=>wwv_flow_imp.id(48369843863077558514)
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48882694374875195454)
,p_name=>'P9_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(48882693234257195447)
,p_item_source_plug_id=>wwv_flow_imp.id(48369843863077558514)
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USERNAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name as display',
', username as return',
'from eba_demo_md_team_members',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48882695288163195456)
,p_name=>'P9_UPDATED'
,p_source_data_type=>'TIMESTAMP_TZ'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(48882693234257195447)
,p_item_source_plug_id=>wwv_flow_imp.id(48369843863077558514)
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48882696165226195456)
,p_name=>'P9_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(48882693234257195447)
,p_item_source_plug_id=>wwv_flow_imp.id(48369843863077558514)
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USERNAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name as display',
', username as return',
'from eba_demo_md_team_members',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48798616411440693907)
,p_name=>'Get Due Date'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_MILESTONE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48798616458815693908)
,p_event_id=>wwv_flow_imp.id(48798616411440693907)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_MILESTONE_DUE_DATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select due_date',
'from eba_demo_md_milestones',
'where id = :P9_MILESTONE_ID'))
,p_attribute_07=>'P9_MILESTONE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30716037554589748828)
,p_name=>'Cancel Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48369844034588558514)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30716037635161748829)
,p_event_id=>wwv_flow_imp.id(30716037554589748828)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48369847018365558581)
,p_process_sequence=>1
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(48369843863077558514)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from EBA_DEMO_MD_TASKS'
,p_internal_uid=>48358408665036029230
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48369847154723558583)
,p_process_sequence=>1
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(48369843863077558514)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of EBA_DEMO_MD_TASKS'
,p_attribute_06=>'Y'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>48358408801394029232
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1931349811095546718)
,p_process_sequence=>11
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1919911457766017367
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Project'
,p_alias=>'PROJECT'
,p_page_mode=>'MODAL'
,p_step_title=>'Project'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(87566872996189762)
,p_plug_name=>'Project'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EBA_DEMO_MD_PROJECTS'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(87567608123189762)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(87567946617189762)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(87567608123189762)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(87567423835189762)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(87567608123189762)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P10_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(87567375821189762)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(87567608123189762)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P10_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(87567313756189762)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(87567608123189762)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Project'
,p_button_position=>'NEXT'
,p_button_condition=>'P10_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(87577154296189812)
,p_branch_name=>'Redirect to new'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP:P2_ID:&P10_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(87567313756189762)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(87577545349189812)
,p_branch_name=>'Redirect to all'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(87567423835189762)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87570333725189782)
,p_name=>'P10_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(87566872996189762)
,p_item_source_plug_id=>wwv_flow_imp.id(87566872996189762)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87570793563189807)
,p_name=>'P10_PROJECT_LEAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(87566872996189762)
,p_item_source_plug_id=>wwv_flow_imp.id(87566872996189762)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Lead'
,p_source=>'PROJECT_LEAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TEAM MEMBERS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name as display',
', id as return',
'from eba_demo_md_team_members',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87571174310189807)
,p_name=>'P10_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(87566872996189762)
,p_item_source_plug_id=>wwv_flow_imp.id(87566872996189762)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87571577293189808)
,p_name=>'P10_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(87566872996189762)
,p_item_source_plug_id=>wwv_flow_imp.id(87566872996189762)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87572022046189808)
,p_name=>'P10_STATUS_CD'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(87566872996189762)
,p_item_source_plug_id=>wwv_flow_imp.id(87566872996189762)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS_CD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATUS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description d, cd r',
'from eba_demo_md_status',
'order by display_order'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87572398983189808)
,p_name=>'P10_COMPLETED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(87566872996189762)
,p_item_source_plug_id=>wwv_flow_imp.id(87566872996189762)
,p_prompt=>'Completed Date'
,p_source=>'COMPLETED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(87568088767189762)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(87567946617189762)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(87568828216189763)
,p_event_id=>wwv_flow_imp.id(87568088767189762)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(87575571168189811)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(87566872996189762)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from EBA_DEMO_MD_PROJECTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>76137217838660460
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(87576000533189811)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(87566872996189762)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of EBA_DEMO_MD_PROJECTS'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>76137647203660460
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(87576394571189811)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(87567423835189762)
,p_internal_uid=>76138041241660460
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(87576795278189811)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(87567375821189762)
,p_internal_uid=>76138441948660460
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Report and Marquee - Marquee'
,p_alias=>'REPORT-AND-MARQUEE-MARQUEE'
,p_step_title=>'Report and Marquee - Marquee'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-MediaBlock-graphic img {',
'width: 100%;',
'}',
'.t-Comments-userIcon {',
'border-color: rgba(0,0,0,.25);',
'}'))
,p_step_template=>1998361449248688088
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(30715843037167658836)
,p_name=>'Master Project'
,p_template=>4501440665235496320
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.description',
', (select full_name from eba_demo_md_team_members tm where tm.id = p.project_lead) project_lead',
', p.completed_date',
', p.status_cd',
', p.created',
', p.updated last_updated',
'from eba_demo_md_projects p',
'where p.id = :P11_PROJECT_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515439059797523
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30715843804876658841)
,p_query_column_id=>1
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>2
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30715844186949658842)
,p_query_column_id=>2
,p_column_alias=>'PROJECT_LEAD'
,p_column_display_sequence=>1
,p_column_heading=>'Project Lead'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30715844556214658843)
,p_query_column_id=>3
,p_column_alias=>'COMPLETED_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Completed Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4436066441633495281)
,p_query_column_id=>4
,p_column_alias=>'STATUS_CD'
,p_column_display_sequence=>3
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(4603770034504028748)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30715845336081658844)
,p_query_column_id=>5
,p_column_alias=>'CREATED'
,p_column_display_sequence=>5
,p_column_heading=>'Created'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30715845780171658844)
,p_query_column_id=>6
,p_column_alias=>'LAST_UPDATED'
,p_column_display_sequence=>6
,p_column_heading=>'Last Updated'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30715848022617658853)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(48369823315302557905)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30716033726318748790)
,p_plug_name=>'Region Display Selector'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(30716033905427748791)
,p_name=>'Milestones'
,p_region_name=>'milestones'
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select m.id as ms_id',
', m.name as ms_name',
', m.description',
', m.due_date',
'from eba_demo_md_milestones m',
'where project_id = :P11_PROJECT_ID',
'order by due_date, updated desc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No milestones for this project.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(259123258774576576)
,p_query_column_id=>1
,p_column_alias=>'MS_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7:P7_ID:#MS_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit Milestone">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(259123447420576577)
,p_query_column_id=>2
,p_column_alias=>'MS_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30716034129147748794)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30716034234411748795)
,p_query_column_id=>4
,p_column_alias=>'DUE_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Due Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(30716035806292748810)
,p_name=>'Tasks'
,p_region_name=>'tasks'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select t.id',
', t.project_id',
', t.name',
', t.description',
', decode(nvl(t.is_complete_yn,''N''),',
'    ''N'',''<span class="u-VisuallyHidden">No</span>'',',
'    ''Y'',''<span class="fa fa-check"><span class="u-VisuallyHidden">Yes</span></span>''',
'  ) completed',
', (select m.name from eba_demo_md_milestones m where m.id = t.milestone_id) milestone',
', (select tm.full_name from eba_demo_md_team_members tm where tm.id = t.assignee) assignee',
', t.start_date',
', t.end_date',
', (select count(*)',
'   from eba_demo_md_task_todos d',
'   where d.task_id = t.id',
'  ) todos',
', (select count(*)',
'   from eba_demo_md_task_links l',
'   where l.task_id = t.id',
'  ) links',
'from eba_demo_md_tasks t',
'where t.project_id = :P11_PROJECT_ID',
'order by start_date, nvl(t.end_date, sysdate)'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No tasks for this project.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30716036110924748813)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:RP,9:P31_TASK_ID,P31_LAST_PAGE,P31_PROJECT_ID:#ID#,11,&P11_PROJECT_ID.'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit Task">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3952173818808068206)
,p_query_column_id=>2
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30716036216847748814)
,p_query_column_id=>3
,p_column_alias=>'NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30716036229546748815)
,p_query_column_id=>4
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30716036450610748817)
,p_query_column_id=>5
,p_column_alias=>'COMPLETED'
,p_column_display_sequence=>9
,p_column_heading=>'Completed?'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30716036561169748818)
,p_query_column_id=>6
,p_column_alias=>'MILESTONE'
,p_column_display_sequence=>5
,p_column_heading=>'Milestone'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30716036675209748819)
,p_query_column_id=>7
,p_column_alias=>'ASSIGNEE'
,p_column_display_sequence=>4
,p_column_heading=>'Assignee'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30716036807471748820)
,p_query_column_id=>8
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Start Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30716036858014748821)
,p_query_column_id=>9
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'End Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4604375692725622790)
,p_query_column_id=>10
,p_column_alias=>'TODOS'
,p_column_display_sequence=>10
,p_column_heading=>'To Dos'
,p_column_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:RP,14:P14_PROJECT_ID,P14_TASK_ID:#PROJECT_ID#,#ID#'
,p_column_linktext=>'#TODOS#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4604375789395622791)
,p_query_column_id=>11
,p_column_alias=>'LINKS'
,p_column_display_sequence=>11
,p_column_heading=>'Links'
,p_column_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:RP,22:P22_TASK_ID,P22_PROJECT_ID:#ID#,#PROJECT_ID#'
,p_column_linktext=>'#LINKS#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30716036928156748822)
,p_plug_name=>'Project Actions'
,p_region_name=>'actions'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-LinksList--actions:t-LinksList--showIcons'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_list_id=>wwv_flow_imp.id(30935918878570202669)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>4072361143931175087
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(37110573974841594548)
,p_name=>'Comments'
,p_region_name=>'comments'
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.id comment_id',
', ''u-color-'' || ora_hash(c.created_by, 29) || '' u-color-'' || ora_hash(c.created_by, 29) || ''-bd'' icon_modifier',
', c.comment_text',
', c.created comment_date',
',  apex_string.get_initials(c.created_by) user_icon',
', c.created_by user_name',
', apex_page.get_url(p_page => 13, p_items => ''P13_ID'', p_values => id) actions',
', null attribute_1',
', null attribute_2',
', null attribute_3',
', null attribute_4',
'from eba_demo_md_comments c',
'where c.project_id = :P11_PROJECT_ID',
'order by c.created'))
,p_display_when_condition=>'11,49'
,p_display_condition_type=>'CURRENT_PAGE_IN_CONDITION'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2613168815517880001
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'&nbsp;'
,p_query_no_data_found=>'No comments for this project.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1931829572957536935)
,p_query_column_id=>1
,p_column_alias=>'COMMENT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Comment id'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1931830006166536935)
,p_query_column_id=>2
,p_column_alias=>'ICON_MODIFIER'
,p_column_display_sequence=>2
,p_column_heading=>'Icon modifier'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1931830408377536936)
,p_query_column_id=>3
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Comment text'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1931830800414536936)
,p_query_column_id=>4
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Comment date'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1931831193015536936)
,p_query_column_id=>5
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>5
,p_column_heading=>'User icon'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1931831523323536937)
,p_query_column_id=>6
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'User name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1931827623904536932)
,p_query_column_id=>7
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>7
,p_column_heading=>'Actions'
,p_column_html_expression=>'<a href="#ACTIONS#" class="t-Button t-Button--small t-Button--simple">Edit</a>'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1931827952893536934)
,p_query_column_id=>8
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>8
,p_column_heading=>'Attribute 1'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1931828338895536934)
,p_query_column_id=>9
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>9
,p_column_heading=>'Attribute 2'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1931828739917536934)
,p_query_column_id=>10
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>10
,p_column_heading=>'Attribute 3'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1931829222683536935)
,p_query_column_id=>11
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>11
,p_column_heading=>'Attribute 4'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30716037331986748826)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(30715848022617658853)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30716034360603748796)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(30716033905427748791)
,p_button_name=>'ADD_MILESTONE'
,p_button_static_id=>'add-milestone'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Add milestone'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP,7:P7_PROJECT_ID:&P11_PROJECT_ID.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30716035854545748811)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(30716035806292748810)
,p_button_name=>'ADD_TASK'
,p_button_static_id=>'add-task'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Add task'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP,9:P9_PROJECT_ID:&P11_PROJECT_ID.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31357054662046611599)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(37110573974841594548)
,p_button_name=>'ADD_COMMENT'
,p_button_static_id=>'add-comment'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Add comment'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP,13:P13_PROJECT_ID:&P11_PROJECT_ID.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30716037091298748823)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(30715848022617658853)
,p_button_name=>'EDIT_PROJECT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit Project'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP,5:P5_ID:&P11_PROJECT_ID.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30716033179319748784)
,p_name=>'P11_PROJECT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30715843037167658836)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30716033239188748785)
,p_name=>'P11_PROJECT_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(30715843037167658836)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(30716033368445748786)
,p_computation_sequence=>10
,p_computation_item=>'P11_PROJECT_NAME'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'from eba_demo_md_projects',
'where id = :P11_PROJECT_ID'))
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(3952174035779068209)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'APP_PAGE_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30716037932721748832)
,p_name=>'Project Updates'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30716037091298748823)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30716038107871748833)
,p_event_id=>wwv_flow_imp.id(30716037932721748832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31357053206574611584)
,p_name=>'Milestone Updates'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#milestones, #add-milestone, #actions'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "7"'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31357053221000611585)
,p_event_id=>wwv_flow_imp.id(31357053206574611584)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(30716033905427748791)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31357053404200611586)
,p_name=>'Task Region - Dialog Closed'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(30716035806292748810)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1870289002099126926)
,p_event_id=>wwv_flow_imp.id(31357053404200611586)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P11_PROJECT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31357053483458611587)
,p_event_id=>wwv_flow_imp.id(31357053404200611586)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(30716035806292748810)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31357057018218611622)
,p_name=>'Add Comments'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#add_comment, #actions'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "13"'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1870288533683126922)
,p_name=>'Comments Region - Dialog Closed'
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(37110573974841594548)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1870288755921126924)
,p_event_id=>wwv_flow_imp.id(1870288533683126922)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P11_PROJECT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1870288654184126923)
,p_event_id=>wwv_flow_imp.id(1870288533683126922)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(37110573974841594548)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(788286905323787655)
,p_name=>'Refresh reports on add'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(30716036928156748822)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788286998820787656)
,p_event_id=>wwv_flow_imp.id(788286905323787655)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(30716033905427748791)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788287096574787657)
,p_event_id=>wwv_flow_imp.id(788286905323787655)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(30716035806292748810)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788287180515787658)
,p_event_id=>wwv_flow_imp.id(788286905323787655)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(37110573974841594548)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Comments'
,p_alias=>'COMMENTS'
,p_page_mode=>'MODAL'
,p_step_title=>'Comments'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32241225952739582319)
,p_plug_name=>'Comments'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID", ',
'"PROJECT_ID",',
'"COMMENT_TEXT",',
'"CREATED",',
'"CREATED_BY"',
'from EBA_DEMO_MD_COMMENTS',
'  ',
''))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934276353453094365)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934276507603094366)
,p_name=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Project'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(48810270184277657470)
,p_lov_display_extra=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934276538988094367)
,p_name=>'COMMENT_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMENT_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Comment'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>4000
,p_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP,13:P13_ID:&ID.'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934276723122094368)
,p_name=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'SINCE'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934276826446094369)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(32229859783699549904)
,p_lov_display_extra=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934276983798094371)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3934276237067094364)
,p_internal_uid=>1838243706379356702
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3942474098832489735)
,p_interactive_grid_id=>wwv_flow_imp.id(3934276237067094364)
,p_static_id=>'14375'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3942474217473489735)
,p_report_id=>wwv_flow_imp.id(3942474098832489735)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3942474683474489741)
,p_view_id=>wwv_flow_imp.id(3942474217473489735)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3934276353453094365)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3942475155319489747)
,p_view_id=>wwv_flow_imp.id(3942474217473489735)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3934276507603094366)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>1
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3942475721014489749)
,p_view_id=>wwv_flow_imp.id(3942474217473489735)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3934276538988094367)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3942476151792489751)
,p_view_id=>wwv_flow_imp.id(3942474217473489735)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3934276723122094368)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3942476706168489753)
,p_view_id=>wwv_flow_imp.id(3942474217473489735)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3934276826446094369)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3942491040277659485)
,p_view_id=>wwv_flow_imp.id(3942474217473489735)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3934276983798094371)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3942470623744486426)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(32241225952739582319)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3942471125784486434)
,p_event_id=>wwv_flow_imp.id(3942470623744486426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(32241225952739582319)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Add Comment'
,p_alias=>'ADD-COMMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Comment'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'300'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32145814672522269081)
,p_plug_name=>'Add Comment'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EBA_DEMO_MD_COMMENTS'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32145815174565269082)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32145815542712269082)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(32145815174565269082)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3934277372859094375)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(32145815174565269082)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_condition=>'P13_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3934277314542094374)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(32145815174565269082)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'EDIT'
,p_button_condition=>'P13_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32145815117891269082)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(32145815174565269082)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Comment'
,p_button_position=>'NEXT'
,p_button_condition=>'P13_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32145817164015269144)
,p_name=>'P13_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(32145814672522269081)
,p_item_source_plug_id=>wwv_flow_imp.id(32145814672522269081)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32145817531115269146)
,p_name=>'P13_PROJECT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(32145814672522269081)
,p_item_source_plug_id=>wwv_flow_imp.id(32145814672522269081)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project'
,p_source=>'PROJECT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as display',
', id as return',
'from eba_demo_md_projects',
'order by 1'))
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32145817936923269146)
,p_name=>'P13_COMMENT_TEXT'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(32145814672522269081)
,p_item_source_plug_id=>wwv_flow_imp.id(32145814672522269081)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comment Text'
,p_placeholder=>'Enter comment here ...'
,p_source=>'COMMENT_TEXT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cMaxlength=>4000
,p_cHeight=>7
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32145815646132269082)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(32145815542712269082)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32145816442077269085)
,p_event_id=>wwv_flow_imp.id(32145815646132269082)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32145818812681269149)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(32145814672522269081)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from EBA_DEMO_MD_COMMENTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>32134380459351739798
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32145819213910269149)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(32145814672522269081)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of EBA_DEMO_MD_COMMENTS'
,p_attribute_06=>'Y'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>32134380860580739798
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32145819554658269149)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>32134381201328739798
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1870288321893126919)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action processed.'
,p_internal_uid=>1858849968563597568
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'ToDos'
,p_alias=>'TODOS'
,p_page_mode=>'MODAL'
,p_step_title=>'To Dos'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_dialog_width=>'800'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(403317261933767406)
,p_name=>'Task Details'
,p_template=>4501440665235496320
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct id task_id, project_id',
'from eba_demo_md_tasks',
'where project_id = :P14_PROJECT_ID ',
'and id = :P14_TASK_ID'))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(403317469235767408)
,p_query_column_id=>1
,p_column_alias=>'TASK_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Task'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(4626700945710614845)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(403317374451767407)
,p_query_column_id=>2
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Project'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(48810270184277657470)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3952170368007068172)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4983691558392860445)
,p_plug_name=>'EBA_DEMO_MD_TASK_TODOS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID", ',
'"PROJECT_ID",',
'"TASK_ID",',
'"ASSIGNEE",',
'"NAME",',
'"DESCRIPTION",',
'"IS_COMPLETE_YN"',
'from EBA_DEMO_MD_TASK_TODOS',
'WHERE TASK_ID = :P14_TASK_ID',
'  ',
''))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934280717614094408)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934280828320094409)
,p_name=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P14_PROJECT_ID'
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934280850934094410)
,p_name=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P14_TASK_ID'
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934280944089094411)
,p_name=>'ASSIGNEE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ASSIGNEE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Assignee'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(48791350367028794105)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Assignee -'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934281115227094412)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3952169498371068163)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3952169596899068164)
,p_name=>'IS_COMPLETE_YN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_COMPLETE_YN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Complete?'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
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
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3952170129015068169)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3952370777668655881)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3934280564000094407)
,p_internal_uid=>1838248033312356745
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'No To Dos for this task.'
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_add_button_label=>'Add To Do'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3952175420889075592)
,p_interactive_grid_id=>wwv_flow_imp.id(3934280564000094407)
,p_static_id=>'14378'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3952175438327075592)
,p_report_id=>wwv_flow_imp.id(3952175420889075592)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3952175930732075597)
,p_view_id=>wwv_flow_imp.id(3952175438327075592)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3934280717614094408)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3952176502996075603)
,p_view_id=>wwv_flow_imp.id(3952175438327075592)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3934280828320094409)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3952177019928075605)
,p_view_id=>wwv_flow_imp.id(3952175438327075592)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3934280850934094410)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3952177507328075607)
,p_view_id=>wwv_flow_imp.id(3952175438327075592)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3934280944089094411)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3952177945829075609)
,p_view_id=>wwv_flow_imp.id(3952175438327075592)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3934281115227094412)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3952178489029075611)
,p_view_id=>wwv_flow_imp.id(3952175438327075592)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3952169498371068163)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3952179011904075612)
,p_view_id=>wwv_flow_imp.id(3952175438327075592)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3952169596899068164)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3952185555290084493)
,p_view_id=>wwv_flow_imp.id(3952175438327075592)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3952170129015068169)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3963550119889408237)
,p_view_id=>wwv_flow_imp.id(3952175438327075592)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3952370777668655881)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3952170827413068176)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3952170368007068172)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3952170527919068173)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3952170368007068172)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3952170235052068171)
,p_name=>'P14_TASK_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4983691558392860445)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3952171012360068178)
,p_name=>'P14_PROJECT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4983691558392860445)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3914476731220976150)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4983691558392860445)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3914477279396976156)
,p_event_id=>wwv_flow_imp.id(3914476731220976150)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4983691558392860445)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3952170553089068174)
,p_name=>'Cancel Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3952170527919068173)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3952170655100068175)
,p_event_id=>wwv_flow_imp.id(3952170553089068174)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3952170886159068177)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4983691558392860445)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'save to do'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3952170827413068176)
,p_process_success_message=>'Action processed.'
,p_internal_uid=>3940732532829538826
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3952370958602655883)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'close dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3952170827413068176)
,p_process_success_message=>'Action processed.'
,p_internal_uid=>3940932605273126532
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'To Do Detail'
,p_alias=>'TO-DO-DETAIL'
,p_page_mode=>'MODAL'
,p_step_title=>'To Do Detail'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4916270794356057460)
,p_plug_name=>'Form on EBA_DEMO_MD_TASK_TODOS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EBA_DEMO_MD_TASK_TODOS'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4916271542690057460)
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
 p_id=>wwv_flow_imp.id(4916333975001120471)
,p_plug_name=>'Audit Details'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P15_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4916271955793057460)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4916271542690057460)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4916271398044057460)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4916271542690057460)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P15_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4916271338390057460)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(4916271542690057460)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P15_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4916271214133057460)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(4916271542690057460)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add To Do'
,p_button_position=>'NEXT'
,p_button_condition=>'P15_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4539713742947282782)
,p_name=>'P15_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4916270794356057460)
,p_item_source_plug_id=>wwv_flow_imp.id(4916270794356057460)
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>70
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4539713829060282783)
,p_name=>'P15_ASSIGNEE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4916270794356057460)
,p_item_source_plug_id=>wwv_flow_imp.id(4916270794356057460)
,p_prompt=>'Assignee'
,p_source=>'ASSIGNEE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TEAM MEMBERS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name as display',
', id as return',
'from eba_demo_md_team_members',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Assignee -'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4539713976842282784)
,p_name=>'P15_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(4916270794356057460)
,p_item_source_plug_id=>wwv_flow_imp.id(4916270794356057460)
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4539714094546282785)
,p_name=>'P15_IS_COMPLETE_YN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(4916270794356057460)
,p_item_source_plug_id=>wwv_flow_imp.id(4916270794356057460)
,p_item_default=>'N'
,p_prompt=>'Completed?'
,p_source=>'IS_COMPLETE_YN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#::'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4916274358935057463)
,p_name=>'P15_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4916270794356057460)
,p_item_source_plug_id=>wwv_flow_imp.id(4916270794356057460)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4916274725384057481)
,p_name=>'P15_PROJECT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4916270794356057460)
,p_item_source_plug_id=>wwv_flow_imp.id(4916270794356057460)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project'
,p_source=>'PROJECT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as display',
', id as return',
'from eba_demo_md_projects',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Project -'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4916275107404057482)
,p_name=>'P15_TASK_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4916270794356057460)
,p_item_source_plug_id=>wwv_flow_imp.id(4916270794356057460)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Task'
,p_source=>'TASK_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name || '' ['' || start_date || '' - '' || end_date || '']'' d, id r',
'from eba_demo_md_tasks',
'where project_id = :P15_PROJECT_ID',
'order by start_date',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Task -'
,p_lov_cascade_parent_items=>'P15_PROJECT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4916334306212120471)
,p_name=>'P15_CREATED'
,p_source_data_type=>'TIMESTAMP_TZ'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(4916333975001120471)
,p_item_source_plug_id=>wwv_flow_imp.id(4916270794356057460)
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4916335174201120472)
,p_name=>'P15_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(4916333975001120471)
,p_item_source_plug_id=>wwv_flow_imp.id(4916270794356057460)
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USERNAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name as display',
', username as return',
'from eba_demo_md_team_members',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4916336121825120473)
,p_name=>'P15_UPDATED'
,p_source_data_type=>'TIMESTAMP_TZ'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(4916333975001120471)
,p_item_source_plug_id=>wwv_flow_imp.id(4916270794356057460)
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4916336966009120473)
,p_name=>'P15_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(4916333975001120471)
,p_item_source_plug_id=>wwv_flow_imp.id(4916270794356057460)
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USERNAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name as display',
', username as return',
'from eba_demo_md_team_members',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4916271981282057460)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4916271955793057460)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4916272771026057462)
,p_event_id=>wwv_flow_imp.id(4916271981282057460)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4916280595514057491)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(4916270794356057460)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from EBA_DEMO_MD_TASK_TODOS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4904842242184528140
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4916281029430057491)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4916270794356057460)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of EBA_DEMO_MD_TASK_TODOS'
,p_attribute_06=>'Y'
,p_attribute_08=>'N'
,p_process_error_message=>'Errorr!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>4904842676100528140
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4916281368488057492)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4916271398044057460)
,p_internal_uid=>4904843015158528141
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1870289097605126927)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1858850744275597576
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'Milestone'
,p_alias=>'MILESTONE'
,p_page_mode=>'MODAL'
,p_step_title=>'Milestone'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(87611086783189853)
,p_plug_name=>'Milestone Details'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EBA_DEMO_MD_MILESTONES'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(87611782149189853)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(87612168365189854)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(87611782149189853)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(87611639000189853)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(87611782149189853)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P16_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(87611558098189853)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(87611782149189853)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P16_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(87611439625189853)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(87611782149189853)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Milestone'
,p_button_position=>'NEXT'
,p_button_condition=>'P16_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87614593707189855)
,p_name=>'P16_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(87611086783189853)
,p_item_source_plug_id=>wwv_flow_imp.id(87611086783189853)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87614928124189856)
,p_name=>'P16_PROJECT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(87611086783189853)
,p_item_source_plug_id=>wwv_flow_imp.id(87611086783189853)
,p_source=>'PROJECT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87615330616189856)
,p_name=>'P16_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(87611086783189853)
,p_item_source_plug_id=>wwv_flow_imp.id(87611086783189853)
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87615787194189856)
,p_name=>'P16_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(87611086783189853)
,p_item_source_plug_id=>wwv_flow_imp.id(87611086783189853)
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87616160843189857)
,p_name=>'P16_DUE_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(87611086783189853)
,p_item_source_plug_id=>wwv_flow_imp.id(87611086783189853)
,p_prompt=>'Due Date'
,p_source=>'DUE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(87612239173189854)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(87612168365189854)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(87613039122189854)
,p_event_id=>wwv_flow_imp.id(87612239173189854)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(87619387106189859)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(87611086783189853)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from EBA_DEMO_MD_MILESTONES'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>76181033776660508
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(87619800780189859)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(87611086783189853)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of EBA_DEMO_MD_MILESTONES'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>76181447450660508
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(87620176767189859)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(87611639000189853)
,p_internal_uid=>76181823437660508
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(87620611958189859)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_01=>'P16_ID,REQUEST'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>76182258628660508
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_imp_page.create_page(
 p_id=>17
,p_name=>'Stacked with Sub Detail'
,p_alias=>'STACKED-WITH-SUB-DETAIL'
,p_step_title=>'Stacked with Sub Detail'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(403317652052767410)
,p_plug_name=>'Tasks'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3934277881779094380)
,p_plug_name=>'To Dos'
,p_parent_plug_id=>wwv_flow_imp.id(403317652052767410)
,p_region_css_classes=>'margin-md'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select t.id',
', t.project_id',
', t.task_id',
', t.assignee',
', t.name',
', t.description',
', is_complete_yn complete',
'from eba_demo_md_task_todos t'))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(7528357300933935500)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934278065373094382)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934278132099094383)
,p_name=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(7528367628985955595)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934278269344094384)
,p_name=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(7528318174093829023)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934278343219094385)
,p_name=>'ASSIGNEE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ASSIGNEE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Assignee'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(48791350367028794105)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Assignee -'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934278500569094386)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934278559969094387)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934278685276094388)
,p_name=>'COMPLETE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPLETE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Complete?'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
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
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934278732206094389)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3952369641771655870)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3952369826217655871)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3934277947494094381)
,p_internal_uid=>1838245416806356719
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'No to dos for this task.'
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU'
,p_add_button_label=>'Add To Do'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3950722190348748482)
,p_interactive_grid_id=>wwv_flow_imp.id(3934277947494094381)
,p_static_id=>'14386'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3950722243489748482)
,p_report_id=>wwv_flow_imp.id(3950722190348748482)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3950722822559748487)
,p_view_id=>wwv_flow_imp.id(3950722243489748482)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3934278065373094382)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3950723253154748493)
,p_view_id=>wwv_flow_imp.id(3950722243489748482)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3934278132099094383)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3950723776546748497)
,p_view_id=>wwv_flow_imp.id(3950722243489748482)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3934278269344094384)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3950724287923748499)
,p_view_id=>wwv_flow_imp.id(3950722243489748482)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3934278343219094385)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3950724816814748501)
,p_view_id=>wwv_flow_imp.id(3950722243489748482)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3934278500569094386)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3950725312721748503)
,p_view_id=>wwv_flow_imp.id(3950722243489748482)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3934278559969094387)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3950725819438748505)
,p_view_id=>wwv_flow_imp.id(3950722243489748482)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3934278685276094388)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3950726292260748507)
,p_view_id=>wwv_flow_imp.id(3950722243489748482)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3934278732206094389)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3952529670460041681)
,p_view_id=>wwv_flow_imp.id(3950722243489748482)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3952369826217655871)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3934279026056094391)
,p_plug_name=>'Links'
,p_parent_plug_id=>wwv_flow_imp.id(403317652052767410)
,p_region_css_classes=>'margin-md'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.id',
', l.project_id',
', l.task_id',
', l.link_type',
', l.url',
', l.application_id',
', l.application_page',
', l.description',
'from eba_demo_md_task_links l'))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(7528357300933935500)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934279259243094394)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934279394182094395)
,p_name=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(7528367628985955595)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934279523649094396)
,p_name=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(7528318174093829023)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934279601235094397)
,p_name=>'LINK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINK_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Link Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(4917069923468576034)
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934279706123094398)
,p_name=>'URL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'URL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'URL'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934279819172094399)
,p_name=>'APPLICATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPLICATION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Application'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934279906786094400)
,p_name=>'APPLICATION_PAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPLICATION_PAGE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Page'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934279941910094401)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3934280073239094402)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3952369894943655872)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3952369989717655873)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3934279213608094393)
,p_internal_uid=>1838246682920356731
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'No links for this task.'
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU'
,p_add_button_label=>'Add Link'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3950733002884844779)
,p_interactive_grid_id=>wwv_flow_imp.id(3934279213608094393)
,p_static_id=>'14387'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3950733118452844779)
,p_report_id=>wwv_flow_imp.id(3950733002884844779)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3950733541824844781)
,p_view_id=>wwv_flow_imp.id(3950733118452844779)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3934279259243094394)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3950734105171844785)
,p_view_id=>wwv_flow_imp.id(3950733118452844779)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3934279394182094395)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3950734617067844786)
,p_view_id=>wwv_flow_imp.id(3950733118452844779)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3934279523649094396)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3950735058169844788)
,p_view_id=>wwv_flow_imp.id(3950733118452844779)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3934279601235094397)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3950735587900844790)
,p_view_id=>wwv_flow_imp.id(3950733118452844779)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3934279706123094398)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3950736051623844792)
,p_view_id=>wwv_flow_imp.id(3950733118452844779)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3934279819172094399)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3950736595312844794)
,p_view_id=>wwv_flow_imp.id(3950733118452844779)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3934279906786094400)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3950737064278844795)
,p_view_id=>wwv_flow_imp.id(3950733118452844779)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3934279941910094401)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3950737862338851516)
,p_view_id=>wwv_flow_imp.id(3950733118452844779)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3934280073239094402)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3952534230997074535)
,p_view_id=>wwv_flow_imp.id(3950733118452844779)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3952369989717655873)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7528357300933935500)
,p_plug_name=>'Tasks'
,p_region_name=>'Tasks'
,p_parent_plug_id=>wwv_flow_imp.id(403317652052767410)
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select t.id',
', t.project_id',
', t.name',
', t.description',
', t.is_complete_yn',
', t.milestone_id',
', t.assignee',
', t.start_date',
', t.end_date',
', (select count(''x'')',
'   from eba_demo_md_task_todos td',
'   where td.task_id = t.id',
'  ) todos',
', (select count(''x'')',
'   from eba_demo_md_task_links l',
'   where l.task_id = t.id',
'  ) links',
'from eba_demo_md_tasks t',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(50981664436638411033)
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
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7026286423497903506)
,p_name=>'IS_COMPLETE_YN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_COMPLETE_YN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Is Complete?'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
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
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7026286540645903507)
,p_name=>'MILESTONE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MILESTONE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Milestone'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name d, id r',
'from eba_demo_md_milestones',
'--where project_id = :PROJECT_ID',
'order by 1'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Milestone -'
,p_enable_filter=>true
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7026287325029903515)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7026287453569903516)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7038719736751417101)
,p_name=>'LINKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINKS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Links'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7151546295149135628)
,p_name=>'TODOS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TODOS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'To Dos'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>150
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7528318174093829023)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7528318307742829024)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(7528318371844829025)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(7528318680994829028)
,p_name=>'ASSIGNEE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ASSIGNEE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Assignee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name d, id r',
'from eba_demo_md_team_members',
'order by 1'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Assignee -'
,p_enable_filter=>true
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
 p_id=>wwv_flow_imp.id(7528318792824829029)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Start Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(7528318913388829030)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'End Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(7528367628985955595)
,p_name=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(7528316161922829003)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(7528318099236829022)
,p_internal_uid=>5432285568549091360
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'No tasks for this project.'
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_add_button_label=>'Add Task'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(7528384260397976022)
,p_interactive_grid_id=>wwv_flow_imp.id(7528318099236829022)
,p_static_id=>'14388'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(7528384383570976022)
,p_report_id=>wwv_flow_imp.id(7528384260397976022)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5701062919983443758)
,p_view_id=>wwv_flow_imp.id(7528384383570976022)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(7151546295149135628)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6458895030143025999)
,p_view_id=>wwv_flow_imp.id(7528384383570976022)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(7026287325029903515)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6458895089622025999)
,p_view_id=>wwv_flow_imp.id(7528384383570976022)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(7528318174093829023)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6458895196063025999)
,p_view_id=>wwv_flow_imp.id(7528384383570976022)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(7528367628985955595)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6458895317083026000)
,p_view_id=>wwv_flow_imp.id(7528384383570976022)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(7026286540645903507)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>161
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6458895446553026000)
,p_view_id=>wwv_flow_imp.id(7528384383570976022)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(7528318307742829024)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>259
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6458895536225026000)
,p_view_id=>wwv_flow_imp.id(7528384383570976022)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(7528318371844829025)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>539
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6458895577838026000)
,p_view_id=>wwv_flow_imp.id(7528384383570976022)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(7528318680994829028)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6458895693671026000)
,p_view_id=>wwv_flow_imp.id(7528384383570976022)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(7528318792824829029)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6458895786069026000)
,p_view_id=>wwv_flow_imp.id(7528384383570976022)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(7528318913388829030)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>77
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6458895875086026000)
,p_view_id=>wwv_flow_imp.id(7528384383570976022)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(7026286423497903506)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6458896094665026000)
,p_view_id=>wwv_flow_imp.id(7528384383570976022)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(7038719736751417101)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5677083620894595296)
,p_plug_name=>'Overview: Stacked with Sub Detail'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_source=>'This example displays master-detail-subdetail Interactive Grids on the same page.  It shows you can build unlimited level of master detail layouts of any complexity using Interactive Grids.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7089098251965739547)
,p_plug_name=>'Comments'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.project_id',
', c.id comment_id',
', ''u-color-'' || ora_hash(c.created_by, 29) || '' u-color-'' || ora_hash(c.created_by, 29) || ''-bd'' icon_modifier',
', c.comment_text',
', c.created comment_date',
', apex_string.get_initials(c.created_by) user_icon',
', ''<a href="'' || apex_page.get_url(p_page => 13, p_items => ''P13_ID'', p_values => id) || ',
'  ''" class="t-Button t-Button--small t-Button--simple">Edit</a>'' actions',
', c.created_by user_name',
'from eba_demo_md_comments c'))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(50981664436638411033)
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
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3232615242975071294)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3232615518420071296)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5677084071330595300)
,p_name=>'COMMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5677084114164595301)
,p_name=>'ICON_MODIFIER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ICON_MODIFIER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5677084249902595302)
,p_name=>'COMMENT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMENT_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'SINCE'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5677084389351595303)
,p_name=>'USER_ICON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_ICON'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5677084454624595304)
,p_name=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(32229859783699549904)
,p_lov_display_extra=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5677084531490595305)
,p_name=>'ACTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'HTML')).to_clob
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
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7151543513373135600)
,p_name=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(7528316161922829003)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7151543594470135601)
,p_name=>'COMMENT_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMENT_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Comment'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>4000
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(7089098366310739548)
,p_internal_uid=>4993065835623001886
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'No comments for this project.'
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_add_button_label=>'Add Comment'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>true
,p_detail_view_before_rows=>'<ul class="t-Comments t-Comments--chat margin-md" id="comments_report">'
,p_detail_view_for_each_row=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon &ICON_MODIFIER." aria-hidden="true">&USER_ICON.</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            &USER_NAME. &middot; <span class="t-Comments-date">&COMMENT_DATE.</span> <span class="t-Comments-actions">&ACTIONS.</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            &COMMENT_TEXT.',
'        </div>',
'    </div>',
'</li>'))
,p_detail_view_after_rows=>'</ul>'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(7151549157591158899)
,p_interactive_grid_id=>wwv_flow_imp.id(7089098366310739548)
,p_static_id=>'14389'
,p_type=>'PRIMARY'
,p_default_view=>'DETAIL'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(7151549239714158899)
,p_report_id=>wwv_flow_imp.id(7151549157591158899)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3952621024674178393)
,p_view_id=>wwv_flow_imp.id(7151549239714158899)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3232615242975071294)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5782042855092254183)
,p_view_id=>wwv_flow_imp.id(7151549239714158899)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(5677084071330595300)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5782043363742254186)
,p_view_id=>wwv_flow_imp.id(7151549239714158899)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(5677084114164595301)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5782043869156254188)
,p_view_id=>wwv_flow_imp.id(7151549239714158899)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(5677084249902595302)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5782044352677254190)
,p_view_id=>wwv_flow_imp.id(7151549239714158899)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(5677084389351595303)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5782044861375254192)
,p_view_id=>wwv_flow_imp.id(7151549239714158899)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(5677084454624595304)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5782045392452254194)
,p_view_id=>wwv_flow_imp.id(7151549239714158899)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(5677084531490595305)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6458895166092026000)
,p_view_id=>wwv_flow_imp.id(7151549239714158899)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(7151543513373135600)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6458895504638026000)
,p_view_id=>wwv_flow_imp.id(7151549239714158899)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(7151543594470135601)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7528354468589934259)
,p_plug_name=>'Milestones'
,p_region_name=>'Milestones'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select m.id',
', m.project_id',
', m.name',
', m.description',
', m.due_date',
', (select count(*)',
'   from eba_demo_md_tasks t',
'   where t.milestone_id = m.id',
'  ) tasks',
'from eba_demo_md_milestones m',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(50981664436638411033)
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
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7026286921592903511)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7026287012450903512)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7026290746779903549)
,p_name=>'TASKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASKS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Tasks'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7528317732503829018)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7528317778443829019)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(7528317875143829020)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(7528318035999829021)
,p_name=>'DUE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Due Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(7528320334442829044)
,p_name=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(7528316161922829003)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(7528317567500829017)
,p_internal_uid=>5432285036813091355
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'No milestones for this project.'
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_add_button_label=>'Add Milestone'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(7528383723453976021)
,p_interactive_grid_id=>wwv_flow_imp.id(7528317567500829017)
,p_static_id=>'14390'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(7528383806895976021)
,p_report_id=>wwv_flow_imp.id(7528383723453976021)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6458894990100026000)
,p_view_id=>wwv_flow_imp.id(7528383806895976021)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(7026286921592903511)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6458895105524026000)
,p_view_id=>wwv_flow_imp.id(7528383806895976021)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(7528317732503829018)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6458895266945026000)
,p_view_id=>wwv_flow_imp.id(7528383806895976021)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(7528320334442829044)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6458895367179026000)
,p_view_id=>wwv_flow_imp.id(7528383806895976021)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(7528317778443829019)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>167
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6458895427130026000)
,p_view_id=>wwv_flow_imp.id(7528383806895976021)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(7528317875143829020)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>438
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6458895571722026000)
,p_view_id=>wwv_flow_imp.id(7528383806895976021)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(7528318035999829021)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>101
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6458895598882026000)
,p_view_id=>wwv_flow_imp.id(7528383806895976021)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(7026290746779903549)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7528367803288955597)
,p_plug_name=>'Region Display Selector'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33349555244014773705)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(48369823315302557905)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50981664436638411033)
,p_plug_name=>'Project Details'
,p_region_name=>'Projects'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"NAME",',
'"DESCRIPTION",',
'"PROJECT_LEAD",',
'"COMPLETED_DATE",',
'"STATUS_CD"',
'from eba_demo_md_projects p',
''))
,p_plug_source_type=>'NATIVE_IG'
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
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(7528644113875025940)
,p_heading=>'Project Details'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(7528644207953025941)
,p_heading=>'Progress'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(7528644349505025942)
,p_heading=>'Associated Records'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6961285924083374749)
,p_name=>'STATUS_CD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_CD'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_imp.id(7528644207953025941)
,p_use_group_for=>'HEADING'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(4603770034504028748)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Status -'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'SQL_QUERY'
,p_default_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cd from eba_demo_md_status',
'where rownum = 1',
'order by display_order'))
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7026285894242903501)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_imp.id(7528644113875025940)
,p_use_group_for=>'HEADING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7528316161922829003)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7528316346420829004)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_imp.id(7528644113875025940)
,p_use_group_for=>'HEADING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(7528316506276829006)
,p_name=>'PROJECT_LEAD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT_LEAD'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Project Lead'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_imp.id(7528644113875025940)
,p_use_group_for=>'HEADING'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(full_name, username) d, id r',
'from eba_demo_md_team_members t',
'order by 1'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Project Lead -'
,p_enable_filter=>true
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
 p_id=>wwv_flow_imp.id(7528316599156829007)
,p_name=>'COMPLETED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPLETED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Completed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_imp.id(7528644207953025941)
,p_use_group_for=>'HEADING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
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
 p_id=>wwv_flow_imp.id(7528643822253025937)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7528643890017025938)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(7528316129738829002)
,p_internal_uid=>5432283599051091340
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>true
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>false
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    var toolbarData = $.apex.interactiveGrid.copyDefaultToolbar();',
'',
'    // new getNestedObject function makes it easy to set a property',
'    // on a nested object that may or may not yet exist.',
'    // If all nested objects always existed could just do this',
'    //    config.views.grid.features.gridView = false;',
'    // but they don''t',
'    apex.util.getNestedObject(config, "views.grid.features").gridView = false;',
'',
'    // remove some toolbar action menu items that don''t make sense',
'    toolbarData.toolbarRemove( "show-aggregate-dialog" );',
'    toolbarData.toolbarRemove( "format_submenu" );',
'    toolbarData.toolbarRemove( "selection_submenu" );',
'    config.toolbarData = toolbarData;',
'',
'    return config; // don''t forget to return this!',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(7528344514686931113)
,p_interactive_grid_id=>wwv_flow_imp.id(7528316129738829002)
,p_static_id=>'14391'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(7528344596063931113)
,p_report_id=>wwv_flow_imp.id(7528344514686931113)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6458894969277026002)
,p_view_id=>wwv_flow_imp.id(7528344596063931113)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(7528643822253025937)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6458895036598026002)
,p_view_id=>wwv_flow_imp.id(7528344596063931113)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(7528316161922829003)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6458895169836026002)
,p_view_id=>wwv_flow_imp.id(7528344596063931113)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(7528316346420829004)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>245
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6458895210701026002)
,p_view_id=>wwv_flow_imp.id(7528344596063931113)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(7026285894242903501)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>594
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6458895337851026002)
,p_view_id=>wwv_flow_imp.id(7528344596063931113)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(7528316506276829006)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>127
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6458895446200026002)
,p_view_id=>wwv_flow_imp.id(7528344596063931113)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(6961285924083374749)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6458895526137026003)
,p_view_id=>wwv_flow_imp.id(7528344596063931113)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(7528316599156829007)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>122
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3950052186324008350)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(33349555244014773705)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3950050465888008348)
,p_tabular_form_region_id=>wwv_flow_imp.id(7528357300933935500)
,p_validation_name=>'Start Date <= End Date'
,p_validation_sequence=>10
,p_validation=>':START_DATE <= :END_DATE'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Start Date can not be after End Date'
,p_associated_column=>'END_DATE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1207249207993571276)
,p_tabular_form_region_id=>wwv_flow_imp.id(3934279026056094391)
,p_validation_name=>'New'
,p_validation_sequence=>20
,p_validation=>'URL'
,p_validation2=>'^http[s]?://[-a-zA-Z0-9_.:]+[-a-zA-Z0-9_:@&?=+,.!/~*''%$]*$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_associated_column=>'URL'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1870288415288126920)
,p_name=>'Edit Comment - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(7089098251965739547)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1870288477630126921)
,p_event_id=>wwv_flow_imp.id(1870288415288126920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7089098251965739547)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3950059848271008363)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(50981664436638411033)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Projects - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Project(s) saved: Inserted = #MRI_COUNT#, Updated = #MRU_COUNT#, Deleted = #MRD_COUNT#.<br />'
,p_internal_uid=>3938621494941479012
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3950043481838008336)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7528354468589934259)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Milestones - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Milestone(s) saved: Inserted = #MRI_COUNT#, Updated = #MRU_COUNT#, Deleted = #MRD_COUNT#.<br />'
,p_internal_uid=>3938605128508478985
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3950050780146008348)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7528357300933935500)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Tasks - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Task(s) saved: Inserted = #MRI_COUNT#, Updated = #MRU_COUNT#, Deleted = #MRD_COUNT#.<br />'
,p_internal_uid=>3938612426816478997
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3232615400908071295)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7089098251965739547)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Comments - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Comment(s) saved: Inserted = #MRI_COUNT#, Updated = #MRU_COUNT#, Deleted = #MRD_COUNT#.<br />'
,p_internal_uid=>3221177047578541944
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3952370060661655874)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3934277881779094380)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'ToDos - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'ToDo(s) saved: Inserted = #MRI_COUNT#, Updated = #MRU_COUNT#, Deleted = #MRD_COUNT#.<br />'
,p_internal_uid=>3940931707332126523
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3952370188500655875)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3934279026056094391)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Links - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Link(s) saved: Inserted = #MRI_COUNT#, Updated = #MRU_COUNT#, Deleted = #MRD_COUNT#.<br />'
,p_internal_uid=>3940931835171126524
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_imp_page.create_page(
 p_id=>18
,p_name=>'Task'
,p_alias=>'TASK'
,p_page_mode=>'MODAL'
,p_step_title=>'Task'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(87634690369189873)
,p_plug_name=>'Task'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EBA_DEMO_MD_TASKS'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(87635359883189873)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(87635762005189873)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(87635359883189873)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(87635227767189873)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(87635359883189873)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P18_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(87635217827189873)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(87635359883189873)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P18_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(87635024719189873)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(87635359883189873)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Task'
,p_button_position=>'NEXT'
,p_button_condition=>'P18_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87638145702189877)
,p_name=>'P18_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(87634690369189873)
,p_item_source_plug_id=>wwv_flow_imp.id(87634690369189873)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87638600138189891)
,p_name=>'P18_PROJECT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(87634690369189873)
,p_item_source_plug_id=>wwv_flow_imp.id(87634690369189873)
,p_source=>'PROJECT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87638950111189891)
,p_name=>'P18_MILESTONE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(87634690369189873)
,p_item_source_plug_id=>wwv_flow_imp.id(87634690369189873)
,p_prompt=>'Milestone'
,p_source=>'MILESTONE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P18_MILESTONES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name || '' ['' || due_date || '']'' as display',
', id as return',
'from eba_demo_md_milestones',
'where project_id = :P18_PROJECT_ID',
'order by due_date'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_demo_md_milestones',
'where project_id = :P18_PROJECT_ID'))
,p_display_when_type=>'EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87639378973189891)
,p_name=>'P18_ASSIGNEE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(87634690369189873)
,p_item_source_plug_id=>wwv_flow_imp.id(87634690369189873)
,p_prompt=>'Assignee'
,p_source=>'ASSIGNEE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TEAM MEMBERS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name as display',
', id as return',
'from eba_demo_md_team_members',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87639802661189891)
,p_name=>'P18_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(87634690369189873)
,p_item_source_plug_id=>wwv_flow_imp.id(87634690369189873)
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87640220226189892)
,p_name=>'P18_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(87634690369189873)
,p_item_source_plug_id=>wwv_flow_imp.id(87634690369189873)
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87640609872189892)
,p_name=>'P18_START_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(87634690369189873)
,p_item_source_plug_id=>wwv_flow_imp.id(87634690369189873)
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>20
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87641007151189892)
,p_name=>'P18_END_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(87634690369189873)
,p_item_source_plug_id=>wwv_flow_imp.id(87634690369189873)
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87641361690189893)
,p_name=>'P18_IS_COMPLETE_YN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(87634690369189873)
,p_item_source_plug_id=>wwv_flow_imp.id(87634690369189873)
,p_prompt=>'Is Complete'
,p_source=>'IS_COMPLETE_YN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(87635905672189873)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(87635762005189873)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(87636660483189875)
,p_event_id=>wwv_flow_imp.id(87635905672189873)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(87644607795189895)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(87634690369189873)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from EBA_DEMO_MD_TASKS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>76206254465660544
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(87644959779189895)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(87634690369189873)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of EBA_DEMO_MD_TASKS'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>76206606449660544
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(87645395198189895)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(87635227767189873)
,p_internal_uid=>76207041868660544
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(87645799770189895)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_01=>'P18_ID,REQUEST'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>76207446440660544
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_imp_page.create_page(
 p_id=>19
,p_name=>'Comment'
,p_alias=>'COMMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Comment'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(87655705079189906)
,p_plug_name=>'Comment'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EBA_DEMO_MD_COMMENTS'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(87656348431189908)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(87656805357189909)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(87656348431189908)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(87656254701189908)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(87656348431189908)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P19_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(87656177367189908)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(87656348431189908)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P19_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(87656070565189908)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(87656348431189908)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Comment'
,p_button_position=>'NEXT'
,p_button_condition=>'P19_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87659213702189911)
,p_name=>'P19_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(87655705079189906)
,p_item_source_plug_id=>wwv_flow_imp.id(87655705079189906)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87659620032189912)
,p_name=>'P19_PROJECT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(87655705079189906)
,p_item_source_plug_id=>wwv_flow_imp.id(87655705079189906)
,p_source=>'PROJECT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87659927245189912)
,p_name=>'P19_COMMENT_TEXT'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(87655705079189906)
,p_item_source_plug_id=>wwv_flow_imp.id(87655705079189906)
,p_prompt=>'Comment Text'
,p_source=>'COMMENT_TEXT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(87656901262189909)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(87656805357189909)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(87657636015189910)
,p_event_id=>wwv_flow_imp.id(87656901262189909)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(87663208205189914)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(87655705079189906)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from EBA_DEMO_MD_COMMENTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>76224854875660563
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(87663616966189914)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(87655705079189906)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of EBA_DEMO_MD_COMMENTS'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>76225263636660563
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(87664016158189914)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(87656254701189908)
,p_internal_uid=>76225662828660563
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(87664407432189915)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_01=>'P19_ID,REQUEST'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>76226054102660564
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_imp_page.create_page(
 p_id=>22
,p_name=>'Links'
,p_alias=>'LINKS'
,p_page_mode=>'MODAL'
,p_step_title=>'Links'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_dialog_width=>'800'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2320285678861145999)
,p_name=>'Task Details'
,p_template=>4501440665235496320
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct id task_id, project_id',
'from eba_demo_md_tasks',
'where project_id = :P22_PROJECT_ID ',
'and id = :P22_TASK_ID'))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(1930918326409587295)
,p_query_column_id=>1
,p_column_alias=>'TASK_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Task'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(4626700945710614845)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1930918014846587294)
,p_query_column_id=>2
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Project'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(48810270184277657470)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3952172701606068195)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4984485217093413424)
,p_plug_name=>'EBA_DEMO_MD_TASK_LINKS'
,p_region_name=>'link'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID", ',
'"PROJECT_ID",',
'"TASK_ID",',
'"LINK_TYPE",',
'"URL",',
'application_id,',
'application_page,',
'"DESCRIPTION"',
'from EBA_DEMO_MD_TASK_LINKS',
'where TASK_ID = :P22_TASK_ID',
'  ',
''))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3232615542002071297)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3952171615036068184)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3952171647028068185)
,p_name=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P22_PROJECT_ID'
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3952171817683068186)
,p_name=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P22_TASK_ID'
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3952171917653068187)
,p_name=>'LINK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINK_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Link Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(4917069923468576034)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3952171985832068188)
,p_name=>'URL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'URL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Url'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3952172129211068189)
,p_name=>'APPLICATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPLICATION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Application id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3952172181687068190)
,p_name=>'APPLICATION_PAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPLICATION_PAGE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Application page'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3952172306154068191)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3952172349243068192)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3952171520118068183)
,p_internal_uid=>1856138989430330521
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'No links for this task.'
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_add_button_label=>'Add Link'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3952269201105376598)
,p_interactive_grid_id=>wwv_flow_imp.id(3952171520118068183)
,p_static_id=>'14395'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3952269231592376598)
,p_report_id=>wwv_flow_imp.id(3952269201105376598)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3952269792844376604)
,p_view_id=>wwv_flow_imp.id(3952269231592376598)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3952171615036068184)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3952270303323376609)
,p_view_id=>wwv_flow_imp.id(3952269231592376598)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3952171647028068185)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3952270788258376611)
,p_view_id=>wwv_flow_imp.id(3952269231592376598)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3952171817683068186)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3952271279404376613)
,p_view_id=>wwv_flow_imp.id(3952269231592376598)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3952171917653068187)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3952271770135376615)
,p_view_id=>wwv_flow_imp.id(3952269231592376598)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3952171985832068188)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3952272305665376617)
,p_view_id=>wwv_flow_imp.id(3952269231592376598)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3952172129211068189)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3952272778919376619)
,p_view_id=>wwv_flow_imp.id(3952269231592376598)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3952172181687068190)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3952273284172376621)
,p_view_id=>wwv_flow_imp.id(3952269231592376598)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3952172306154068191)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3952277534322377266)
,p_view_id=>wwv_flow_imp.id(3952269231592376598)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3952172349243068192)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3952654022110223985)
,p_view_id=>wwv_flow_imp.id(3952269231592376598)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3232615542002071297)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3952172754295068196)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3952172701606068195)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3952173220590068200)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3952172701606068195)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3952171076285068179)
,p_name=>'P22_TASK_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4984485217093413424)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3952171230029068180)
,p_name=>'P22_PROJECT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4984485217093413424)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1207249298810571277)
,p_tabular_form_region_id=>wwv_flow_imp.id(4984485217093413424)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>'URL'
,p_validation2=>'^http[s]?://[-a-zA-Z0-9_.:]+[-a-zA-Z0-9_:@&?=+,.!/~*''%$]*$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_associated_column=>'URL'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3914493228328026210)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4984485217093413424)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3914493726605026215)
,p_event_id=>wwv_flow_imp.id(3914493228328026210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4984485217093413424)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1931349892787546719)
,p_name=>'Cancel Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3952172754295068196)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1931349959233546720)
,p_event_id=>wwv_flow_imp.id(1931349892787546719)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3952173103571068199)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4984485217093413424)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'save link'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3952173220590068200)
,p_process_success_message=>'Action processed.'
,p_internal_uid=>3940734750241538848
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3952371093413655884)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3952173220590068200)
,p_process_success_message=>'Action processed.'
,p_internal_uid=>3940932740084126533
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_imp_page.create_page(
 p_id=>23
,p_name=>'Link Detail'
,p_alias=>'LINK-DETAIL'
,p_page_mode=>'MODAL'
,p_step_title=>'Link Detail'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4917048665398560343)
,p_plug_name=>'Form on EBA_DEMO_MD_TASK_LINKS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EBA_DEMO_MD_TASK_LINKS'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4917049419266560344)
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
 p_id=>wwv_flow_imp.id(4917073934368590356)
,p_plug_name=>'Audit Details'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P23_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4917049799545560346)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4917049419266560344)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4917049308795560344)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4917049419266560344)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P23_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4917049241418560344)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(4917049419266560344)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P23_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4917049151542560344)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(4917049419266560344)
,p_button_name=>'ADD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Link'
,p_button_position=>'NEXT'
,p_button_condition=>'P23_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4917052195455560355)
,p_name=>'P23_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4917048665398560343)
,p_item_source_plug_id=>wwv_flow_imp.id(4917048665398560343)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4917052605499560386)
,p_name=>'P23_PROJECT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4917048665398560343)
,p_item_source_plug_id=>wwv_flow_imp.id(4917048665398560343)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project'
,p_source=>'PROJECT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as display',
', id as return',
'from eba_demo_md_projects',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Project -'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4917052962155560390)
,p_name=>'P23_TASK_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4917048665398560343)
,p_item_source_plug_id=>wwv_flow_imp.id(4917048665398560343)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Task'
,p_source=>'TASK_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name d, id r',
'from eba_demo_md_tasks',
'where project_id = :P23_PROJECT_ID',
'order by start_date'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Task -'
,p_lov_cascade_parent_items=>'P23_PROJECT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4917053377632560391)
,p_name=>'P23_LINK_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4917048665398560343)
,p_item_source_plug_id=>wwv_flow_imp.id(4917048665398560343)
,p_use_cache_before_default=>'NO'
,p_item_default=>'URL'
,p_prompt=>'Link Type'
,p_source=>'LINK_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LINK TYPES'
,p_lov=>'.'||wwv_flow_imp.id(4917069923468576034)||'.'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4917053764716560391)
,p_name=>'P23_URL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4917048665398560343)
,p_item_source_plug_id=>wwv_flow_imp.id(4917048665398560343)
,p_prompt=>'URL'
,p_source=>'URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>70
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#::'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'URL',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4917054211299560391)
,p_name=>'P23_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(4917048665398560343)
,p_item_source_plug_id=>wwv_flow_imp.id(4917048665398560343)
,p_prompt=>'Application ID'
,p_source=>'APPLICATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#::'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4917054658030560392)
,p_name=>'P23_APPLICATION_PAGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(4917048665398560343)
,p_item_source_plug_id=>wwv_flow_imp.id(4917048665398560343)
,p_prompt=>'Application Page Number'
,p_source=>'APPLICATION_PAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4917055004331560393)
,p_name=>'P23_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(4917048665398560343)
,p_item_source_plug_id=>wwv_flow_imp.id(4917048665398560343)
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4917074209274590358)
,p_name=>'P23_CREATED'
,p_source_data_type=>'TIMESTAMP_TZ'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(4917073934368590356)
,p_item_source_plug_id=>wwv_flow_imp.id(4917048665398560343)
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4917075093256590361)
,p_name=>'P23_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(4917073934368590356)
,p_item_source_plug_id=>wwv_flow_imp.id(4917048665398560343)
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USERNAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name as display',
', username as return',
'from eba_demo_md_team_members',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4917075982236590363)
,p_name=>'P23_UPDATED'
,p_source_data_type=>'TIMESTAMP_TZ'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(4917073934368590356)
,p_item_source_plug_id=>wwv_flow_imp.id(4917048665398560343)
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4917076868919590363)
,p_name=>'P23_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(4917073934368590356)
,p_item_source_plug_id=>wwv_flow_imp.id(4917048665398560343)
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USERNAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name as display',
', username as return',
'from eba_demo_md_team_members',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_help_text=>'No help available for this page item.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4436065853112495275)
,p_validation_name=>'URL is null'
,p_validation_sequence=>10
,p_validation=>'P23_URL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P23_LINK_TYPE'
,p_validation_condition2=>'URL'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_associated_item=>wwv_flow_imp.id(4917053764716560391)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4436065994094495276)
,p_validation_name=>'Application Id is Null'
,p_validation_sequence=>20
,p_validation=>'P23_APPLICATION_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P23_LINK_TYPE'
,p_validation_condition2=>'URL'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_associated_item=>wwv_flow_imp.id(4917054211299560391)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1207249121797571275)
,p_validation_name=>'must start with http'
,p_validation_sequence=>30
,p_validation=>'substr(:P23_URL,1,4) = ''http'''
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'URL must start with http:// or https://'
,p_validation_condition=>'P23_URL'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_imp.id(4917053764716560391)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4917049876958560346)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4917049799545560346)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4917050692956560350)
,p_event_id=>wwv_flow_imp.id(4917049876958560346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4916806810299173047)
,p_name=>'Show Link Type Items'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P23_LINK_TYPE'
,p_condition_element=>'P23_LINK_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'URL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4916806939052173048)
,p_event_id=>wwv_flow_imp.id(4916806810299173047)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P23_URL'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4916807053939173049)
,p_event_id=>wwv_flow_imp.id(4916806810299173047)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P23_APPLICATION_ID,P23_APPLICATION_PAGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4916807232710173051)
,p_event_id=>wwv_flow_imp.id(4916806810299173047)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P23_APPLICATION_ID,P23_APPLICATION_PAGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4436066143451495278)
,p_event_id=>wwv_flow_imp.id(4916806810299173047)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P23_APPLICATION_ID,P23_APPLICATION_PAGE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4916807080663173050)
,p_event_id=>wwv_flow_imp.id(4916806810299173047)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P23_URL'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4436066291258495279)
,p_event_id=>wwv_flow_imp.id(4916806810299173047)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P23_URL'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4917058165248560401)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(4917048665398560343)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from EBA_DEMO_MD_TASK_LINKS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4905619811919031050
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4917058581645560401)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4917048665398560343)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of EBA_DEMO_MD_TASK_LINKS'
,p_attribute_06=>'Y'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>4905620228316031050
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4917058994051560402)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4917049308795560344)
,p_internal_uid=>4905620640722031051
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1870288842708126925)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1858850489378597574
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_imp_page.create_page(
 p_id=>24
,p_name=>'Administration'
,p_alias=>'SETTINGS'
,p_step_title=>'Administration'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4545859800347891578)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(48369823315302557905)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5480019785197721572)
,p_plug_name=>'Administration'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(4545860407829891589)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5480709659754205380)
,p_plug_name=>'Reports'
,p_region_name=>'adminReports'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_list_id=>wwv_flow_imp.id(4545862640121891599)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4545858247321891569)
,p_name=>'P24_FEEDBACK_STATUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5480019785197721572)
,p_use_cache_before_default=>'NO'
,p_source=>'case when :ENABLE_FEEDBACK = ''YES'' then ''Enabled'' else ''Disabled'' end'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4545858990193891575)
,p_name=>'P24_USER_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5480709659754205380)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(distinct userid)',
'from apex_activity_log l',
'where flow_id = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4545859383839891575)
,p_name=>'P24_PAGE_VIEWS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5480709659754205380)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'from apex_activity_log l',
'where flow_id = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_imp_page.create_page(
 p_id=>25
,p_name=>'Preferences'
,p_alias=>'PREFERENCES'
,p_step_title=>'Preferences'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4561296055753683680)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(48369823315302557905)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8670836960839414835)
,p_plug_name=>'Preferences'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4561296615506683684)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4561296055753683680)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4561297028197683687)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4561296055753683680)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Set Preferences'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(4561297971964683693)
,p_branch_name=>'Go To Page 24'
,p_branch_action=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 12-APR-2012 16:01 by MIKE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4561295543083683666)
,p_name=>'P25_ENABLE_FEEDBACK'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8670836960839414835)
,p_use_cache_before_default=>'NO'
,p_item_default=>'NO'
,p_prompt=>'Enable Feedback'
,p_source=>'&ENABLE_FEEDBACK.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;YES,No;NO'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4561297408644683692)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Feedback'
,p_process_sql_clob=>':ENABLE_FEEDBACK := :P25_ENABLE_FEEDBACK;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4561297028197683687)
,p_process_success_message=>'Feedback Preference Set.'
,p_internal_uid=>4549859055315154341
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_imp_page.create_page(
 p_id=>26
,p_name=>'Manage Sample Data'
,p_alias=>'MANAGE-SAMPLE-DATA'
,p_step_title=>'Manage Sample Data'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4561304565113691834)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(48369823315302557905)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6554433260775560103)
,p_plug_name=>'Manage Sample Data'
,p_region_css_classes=>'t-Alert--accessibleHeading'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--defaultIcons:t-Alert--info'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This application ships with sample data.  You can remove and recreate sample data using this page.  If the sample data is old recreating the data makes the dates more current.  Removing or adding sample data will not affect any decisions you creat'
||'ed.</p>'
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
 p_id=>wwv_flow_imp.id(6554433588897560104)
,p_plug_name=>'Button Region'
,p_parent_plug_id=>wwv_flow_imp.id(6554433260775560103)
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_translate_title=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4561302797255691830)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6554433588897560104)
,p_button_name=>'remove_sample_data'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Remove Sample Data'
,p_button_position=>'CREATE'
,p_button_condition=>'select null from eba_demo_md_projects where id <= 10'
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4561303221484691831)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6554433588897560104)
,p_button_name=>'load_sample_data'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Load Sample Data'
,p_button_position=>'CREATE'
,p_button_condition=>'select null from eba_demo_md_projects where id <= 10'
,p_button_condition_type=>'NOT_EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4561303646494691832)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(6554433588897560104)
,p_button_name=>'reset_data'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset Data'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4561304024055691833)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(6554433588897560104)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:SETTINGS:&SESSION.::&DEBUG.:RP,SETTINGS::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(4561306451642691838)
,p_branch_name=>'Go To Administration'
,p_branch_action=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 06-JAN-2012 15:08 by MIKE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4561305138707691836)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'reset data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_demo_md_data_pkg.remove_sample_data;',
'eba_demo_md_data_pkg.load_sample_data;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4561303646494691832)
,p_process_success_message=>'Sample data reset.'
,p_internal_uid=>4549866785378162485
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4561305520607691837)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'remove sample data'
,p_process_sql_clob=>'eba_demo_md_data_pkg.remove_sample_data;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4561302797255691830)
,p_process_success_message=>'Sample Data Removed'
,p_internal_uid=>4549867167278162486
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4561305917321691837)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Sample Data'
,p_process_sql_clob=>'eba_demo_md_data_pkg.load_sample_data;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4561303221484691831)
,p_process_success_message=>'Sample Data Loaded.'
,p_internal_uid=>4549867563992162486
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_imp_page.create_page(
 p_id=>27
,p_name=>'Application Theme Style'
,p_alias=>'APPLICATION-THEME-STYLE'
,p_step_title=>'Application Theme Style'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4561313063465697967)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(48369823315302557905)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6407023099006055892)
,p_plug_name=>'About this page'
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
 p_id=>wwv_flow_imp.id(6407023427118055892)
,p_plug_name=>'items'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_translate_title=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4561313628396697968)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4561313063465697967)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4561314058279697968)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4561313063465697967)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(4561314992236697969)
,p_branch_name=>'Go To Page 24'
,p_branch_action=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(4561314058279697968)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4561312106694697964)
,p_name=>'P27_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6407023427118055892)
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
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4561312571888697967)
,p_name=>'P27_MOBILE_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6407023427118055892)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mobile Theme Style'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'from apex_application_theme_styles s, apex_application_themes t',
'where s.application_id = t.application_id',
'and s.theme_number = t.theme_number',
'and s.application_id = :app_id',
'and t.ui_type_name   = ''JQM_SMARTPHONE''',
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
'and t.ui_type_name   = ''JQM_SMARTPHONE''',
'and t.is_current = ''Yes''',
'order by 1'))
,p_cHeight=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from apex_application_theme_styles s, apex_application_themes t',
'where s.application_id = t.application_id',
'and s.theme_number = t.theme_number',
'and s.application_id = :app_id',
'and t.ui_type_name   = ''JQM_SMARTPHONE''',
'and t.is_current = ''Yes'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4561314470141697969)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Theme Style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P27_DESKTOP_THEME_STYLE_ID is not null then',
'    for c1 in (select theme_number',
'               from apex_application_themes',
'               where application_id = :app_id',
'               and ui_type_name   = ''DESKTOP''',
'               and is_current = ''Yes'')',
'    loop',
'        apex_theme.set_current_style (',
'            p_theme_number   => c1.theme_number,',
'            p_id =>  :P27_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;',
'',
'if :P27_MOBILE_THEME_STYLE_ID is not null then',
'    for c1 in (select theme_number',
'               from apex_application_themes',
'               where application_id = :app_id',
'               and ui_type_name   = ''JQM_SMARTPHONE''',
'               and is_current = ''Yes'')',
'    loop',
'        apex_theme.set_current_style (',
'            p_theme_number   => c1.theme_number,',
'            p_id => :P27_MOBILE_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4561314058279697968)
,p_process_success_message=>'Theme Style Set for All Users.'
,p_internal_uid=>4549876116812168618
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_imp_page.create_page(
 p_id=>28
,p_name=>'Activity Calendar'
,p_alias=>'ACTIVITY-CALENDAR'
,p_step_title=>'Activity Calendar'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4564758222019089855)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(48369823315302557905)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5196774661163385532)
,p_plug_name=>'Activity Calendar'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lower(USERID)||'' - ''',
'    ||trim(to_char(count(*),''999G999G999G990'')) page_events,',
'    trunc(time_stamp) the_day',
'from apex_activity_log l',
'where flow_id = :APP_ID',
'    and userid is not null',
'    and userid != ''nobody''',
'group by trunc(time_stamp), lower(userid)'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'additional_calendar_views', 'month:list:navigation',
  'display_column', 'PAGE_EVENTS',
  'drag_and_drop', 'N',
  'multiple_line_event', 'Y',
  'show_time', 'date',
  'show_tooltip', 'N',
  'show_weekend', 'Y',
  'start_date_column', 'THE_DAY')).to_clob
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_imp_page.create_page(
 p_id=>29
,p_name=>'Page Views'
,p_alias=>'PAGE-VIEWS'
,p_step_title=>'Page Views'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5282488048654064686)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(48369823315302557905)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5499643004226678011)
,p_plug_name=>'Page Views'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'lower(USERID)      "User",',
'step_id     "Page",',
'step_id||''. ''||(select page_name from apex_application_pages p where p.page_id = l.step_id and p.application_id = :app_id) page_name,',
'COMPONENT_NAME,',
'TIME_STAMP  "View",',
'ELAP        "Elapsed",',
'NUM_ROWS    "Rows",',
'IR_SEARCH   "Search",',
'SQLERRM     "Error",',
'PAGE_MODE   "Mode",',
'CONTENT_LENGTH "PgSize"',
'from apex_activity_log l',
'where flow_id = :app_id and ',
'      time_stamp > sysdate - to_number(nvl(:P29_TIMEFRAME,''00001.0000000000''),''9999999990.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5499643109720678011)
,p_name=>'Page Views'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'DPEAKE'
,p_internal_uid=>1652581413707504864
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4564763072423096800)
,p_db_column_name=>'User'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4564763468757096802)
,p_db_column_name=>'Page'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4564763848782096802)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4564764198919096803)
,p_db_column_name=>'COMPONENT_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4564764694475096803)
,p_db_column_name=>'View'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'View'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4564765085822096804)
,p_db_column_name=>'Elapsed'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4564765471312096804)
,p_db_column_name=>'Rows'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4564765894889096804)
,p_db_column_name=>'Search'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Search'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4564766221048096805)
,p_db_column_name=>'Error'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4564766664388096805)
,p_db_column_name=>'Mode'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4564767071249096805)
,p_db_column_name=>'PgSize'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Pgsize'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5500568405278481473)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'7177057'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'EMPNO:ENAME:JOB:MGR:HIREDATE:SAL:COMM:DEPTNO:User:Page:PAGE_NAME:COMPONENT_NAME:View:Elapsed:Rows:Search:Error:Mode:PgSize'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5500759427346781256)
,p_plug_name=>'Button Bar'
,p_region_css_classes=>'t-Form--floatLeft'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4564767799603096811)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5499643004226678011)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:39,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4564768571310096813)
,p_name=>'P29_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5500759427346781256)
,p_item_default=>'00001.0000000000'
,p_prompt=>'Timeframe'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''15 ''||wwv_flow_lang.system_message(initcap(''MINUTES'')) d, ',
'trim(to_char(15/(24*60),''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual union all ',
'select ''30 ''||wwv_flow_lang.system_message(initcap(''MINUTES'')) d, ',
'trim(to_char(30/(24*60),''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual union all ',
'select ''1 ''||wwv_flow_lang.system_message(initcap(''HOUR'')) d, ',
'trim(to_char(1/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual union all ',
'select ''90 ''||wwv_flow_lang.system_message(initcap(''MINUTES'')) d, ',
'trim(to_char(90/(24*60),''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual union all ',
'select ''2 ''||wwv_flow_lang.system_message(initcap(''HOURS'')) d, ',
'trim(to_char(1/12,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual union all ',
'select ''3 ''||wwv_flow_lang.system_message(initcap(''HOURS'')) d, ',
'trim(to_char(3/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual union all ',
'select ''4 ''||wwv_flow_lang.system_message(initcap(''HOURS'')) d, ',
'trim(to_char(4/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual union all ',
'select ''5 ''||wwv_flow_lang.system_message(initcap(''HOURS'')) d, ',
'trim(to_char(5/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual union all ',
'select ''6 ''||wwv_flow_lang.system_message(initcap(''HOURS'')) d, ',
'trim(to_char(6/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual union all ',
'select ''8 ''||wwv_flow_lang.system_message(initcap(''HOURS'')) d, ',
'trim(to_char(8/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual union all ',
'select ''10 ''||wwv_flow_lang.system_message(initcap(''HOURS'')) d, ',
'trim(to_char(10/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual union all ',
'select ''12 ''||wwv_flow_lang.system_message(initcap(''HOURS'')) d, ',
'trim(to_char(12/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual union all ',
'select ''16 ''||wwv_flow_lang.system_message(initcap(''HOURS'')) d, ',
'trim(to_char(16/24,''00000.9999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual union all ',
'select ''1 ''||wwv_flow_lang.system_message(initcap(''DAY'')) d, trim(to_char(1,''00000.9999999999'')) t ',
'from dual union all ',
'select ''2 ''||wwv_flow_lang.system_message(initcap(''DAYS'')) d, trim(to_char(2,''00000.9999999999'')) t ',
'from dual union all ',
'select ''3 ''||wwv_flow_lang.system_message(initcap(''DAYS'')) d, trim(to_char(3,''00000.9999999999'')) t ',
'from dual union all ',
'select ''4 ''||wwv_flow_lang.system_message(initcap(''DAYS'')) d, trim(to_char(4,''00000.9999999999'')) t ',
'from dual union all ',
'select ''5 ''||wwv_flow_lang.system_message(initcap(''DAYS'')) d, trim(to_char(5,''00000.9999999999'')) t ',
'from dual union all ',
'select ''1 ''||wwv_flow_lang.system_message(initcap(''WEEK'')) d, trim(to_char(7,''00000.9999999999'')) t   ',
'from dual union all ',
'select ''2 ''||wwv_flow_lang.system_message(initcap(''WEEKS'')) d, trim(to_char(14,''00000.9999999999'')) t   ',
'from dual order by 2'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'REDIRECT_SET_VALUE')).to_clob
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_imp_page.create_page(
 p_id=>30
,p_name=>'Top Users'
,p_alias=>'TOP-USERS'
,p_step_title=>'Top Users'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5282488362873065974)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(48369823315302557905)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5499649117253633623)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'lower(USERID)                   as THE_USER,',
'count(*)                        as PAGE_EVENTS,',
'median(ELAP)                    as MEDIAN_ELAPSED,',
'sum(NUM_ROWS)                   as ROWS_FETCHED,',
'sum(decode(IR_SEARCH,null,0,1)) as IR_SEARCHES,',
'sum(decode(SQLERRM,null,0,1))   as ERRORS,',
'sum(CONTENT_LENGTH)             as CONTENT_SERVED,',
'max(time_stamp)                 as MOST_RECENT',
'from apex_activity_log l',
'where flow_id = :app_id',
'and time_stamp > sysdate - to_number(:P30_TIMEFRAME,''9999999990.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')',
'group by lower(userid)',
'order by most_recent desc'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5499649240074633623)
,p_name=>'Top Users'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'DPEAKE'
,p_internal_uid=>1652587544061460476
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4564776215884101442)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Most Recent'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4564773468401101440)
,p_db_column_name=>'THE_USER'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'The User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4564773865835101440)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Page Events'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4564774263673101440)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4564774667672101441)
,p_db_column_name=>'ROWS_FETCHED'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Rows Fetched'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4564775090952101441)
,p_db_column_name=>'IR_SEARCHES'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Ir Searches'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4564775425179101441)
,p_db_column_name=>'ERRORS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4564775798035101442)
,p_db_column_name=>'CONTENT_SERVED'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Content Served'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5499650941811653100)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'7177149'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'THE_USER:PAGE_EVENTS:MEDIAN_ELAPSED:ROWS_FETCHED:IR_SEARCHES:ERRORS:CONTENT_SERVED:MOST_RECENT:'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'Page Events'
,p_sort_direction_2=>'DESC'
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
 p_id=>wwv_flow_imp.id(5499660819226741212)
,p_plug_name=>'Button Bar'
,p_region_css_classes=>'t-Form t-Form--floatLeft'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4564777051896101443)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5499649117253633623)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:38,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4564777712941101444)
,p_name=>'P30_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5499660819226741212)
,p_item_default=>'1'
,p_prompt=>'Timeframe'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''15 ''||wwv_flow_lang.system_message(initcap(''MINUTES'')) d, ',
'trim(to_char(15/(24*60),''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual union all ',
'select ''30 ''||wwv_flow_lang.system_message(initcap(''MINUTES'')) d, ',
'trim(to_char(30/(24*60),''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual union all ',
'select ''1 ''||wwv_flow_lang.system_message(initcap(''HOUR'')) d, ',
'trim(to_char(1/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual union all ',
'select ''90 ''||wwv_flow_lang.system_message(initcap(''MINUTES'')) d, ',
'trim(to_char(90/(24*60),''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual union all ',
'select ''2 ''||wwv_flow_lang.system_message(initcap(''HOURS'')) d, ',
'trim(to_char(1/12,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual union all ',
'select ''3 ''||wwv_flow_lang.system_message(initcap(''HOURS'')) d, ',
'trim(to_char(3/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual union all ',
'select ''4 ''||wwv_flow_lang.system_message(initcap(''HOURS'')) d, ',
'trim(to_char(4/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual union all ',
'select ''5 ''||wwv_flow_lang.system_message(initcap(''HOURS'')) d, ',
'trim(to_char(5/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual union all ',
'select ''6 ''||wwv_flow_lang.system_message(initcap(''HOURS'')) d, ',
'trim(to_char(6/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual union all ',
'select ''8 ''||wwv_flow_lang.system_message(initcap(''HOURS'')) d, ',
'trim(to_char(8/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual union all ',
'select ''10 ''||wwv_flow_lang.system_message(initcap(''HOURS'')) d, ',
'trim(to_char(10/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual union all ',
'select ''12 ''||wwv_flow_lang.system_message(initcap(''HOURS'')) d, ',
'trim(to_char(12/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual union all ',
'select ''16 ''||wwv_flow_lang.system_message(initcap(''HOURS'')) d, ',
'trim(to_char(16/24,''00000.9999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual union all ',
'select ''1 ''||wwv_flow_lang.system_message(initcap(''DAY'')) d, trim(to_char(1,''00000.9999999999'')) t ',
'from dual union all ',
'select ''2 ''||wwv_flow_lang.system_message(initcap(''DAYS'')) d, trim(to_char(2,''00000.9999999999'')) t ',
'from dual union all ',
'select ''3 ''||wwv_flow_lang.system_message(initcap(''DAYS'')) d, trim(to_char(3,''00000.9999999999'')) t ',
'from dual union all ',
'select ''4 ''||wwv_flow_lang.system_message(initcap(''DAYS'')) d, trim(to_char(4,''00000.9999999999'')) t ',
'from dual union all ',
'select ''5 ''||wwv_flow_lang.system_message(initcap(''DAYS'')) d, trim(to_char(5,''00000.9999999999'')) t ',
'from dual union all ',
'select ''1 ''||wwv_flow_lang.system_message(initcap(''WEEK'')) d, trim(to_char(7,''00000.9999999999'')) t   ',
'from dual union all ',
'select ''2 ''||wwv_flow_lang.system_message(initcap(''WEEKS'')) d, trim(to_char(14,''00000.9999999999'')) t   ',
'from dual order by 2'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_imp_page.create_page(
 p_id=>31
,p_name=>'Task Details'
,p_alias=>'TASK-DETAILS'
,p_step_title=>'Task Details'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1998361449248688088
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3232615854443071300)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(48369823315302557905)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4627019437094682651)
,p_plug_name=>'Region Display Selector'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4627019507802682652)
,p_name=>'To Dos'
,p_region_name=>'todos'
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d.id',
', d.name',
', d.description',
', (select full_name from eba_demo_md_team_members tm where tm.id = d.assignee) assignee',
', decode(nvl(d.is_complete_yn,''N''),',
'    ''N'',''<span class="u-VisuallyHidden">No</span>'',',
'    ''Y'',''<span class="fa fa-check"><span class="u-VisuallyHidden">Yes</span></span>''',
'  ) completed  ',
', d.created',
', d.updated last_updated',
'from eba_demo_md_task_todos d',
'where d.task_id = :P31_TASK_ID',
'order by created'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No to dos for this task.'
,p_csv_output=>'N'
,p_prn_output=>'N'
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
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4627019752288682654)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:RP,15:P15_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4627019903161682656)
,p_query_column_id=>2
,p_column_alias=>'NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4627020059730682657)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4627020194634682658)
,p_query_column_id=>4
,p_column_alias=>'ASSIGNEE'
,p_column_display_sequence=>3
,p_column_heading=>'Assignee'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4627020295136682659)
,p_query_column_id=>5
,p_column_alias=>'COMPLETED'
,p_column_display_sequence=>5
,p_column_heading=>'Completed?'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4627020385214682660)
,p_query_column_id=>6
,p_column_alias=>'CREATED'
,p_column_display_sequence=>6
,p_column_heading=>'Created'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4627020465059682661)
,p_query_column_id=>7
,p_column_alias=>'LAST_UPDATED'
,p_column_display_sequence=>7
,p_column_heading=>'Last Updated'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4627020517176682662)
,p_name=>'Links'
,p_region_name=>'links'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.id',
', l.link_type',
', l.url',
', l.application_id || decode(l.application_page, null, null, '' : '' || l.application_page) application',
', l.description',
', l.created',
', l.updated last_updated',
'from eba_demo_md_task_links l',
'where l.task_id = :P31_TASK_ID',
'order by created'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No links for this task.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4627020633880682663)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP,23:P23_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4627021324961682670)
,p_query_column_id=>2
,p_column_alias=>'LINK_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Link Type'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4627021412657682671)
,p_query_column_id=>3
,p_column_alias=>'URL'
,p_column_display_sequence=>3
,p_column_heading=>'URL'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4627021573716682672)
,p_query_column_id=>4
,p_column_alias=>'APPLICATION'
,p_column_display_sequence=>4
,p_column_heading=>'Application'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4627020815795682665)
,p_query_column_id=>5
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>5
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4627021159640682668)
,p_query_column_id=>6
,p_column_alias=>'CREATED'
,p_column_display_sequence=>6
,p_column_heading=>'Created'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4627021211442682669)
,p_query_column_id=>7
,p_column_alias=>'LAST_UPDATED'
,p_column_display_sequence=>7
,p_column_heading=>'Last Updated'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(31495790001745047916)
,p_name=>'Master Task'
,p_template=>4501440665235496320
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select t.description',
', (select name from eba_demo_md_projects p where p.id = t.project_id) project',
', (select name || ''  ['' || m.due_date || '']'' from eba_demo_md_milestones m where m.id = t.milestone_id) milestone',
', (select full_name from eba_demo_md_team_members tm where tm.id = t.assignee) assignee',
', t.start_date',
', t.end_date',
', decode(t.is_complete_yn, ''Y'', ''Yes'', ''No'') completed',
', t.created',
', t.updated last_updated',
'from eba_demo_md_tasks t',
'where t.id = :P31_TASK_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515439059797523
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4627008918512562232)
,p_query_column_id=>1
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4627019860366682655)
,p_query_column_id=>2
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>1
,p_column_heading=>'Project'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4627019239134682649)
,p_query_column_id=>3
,p_column_alias=>'MILESTONE'
,p_column_display_sequence=>2
,p_column_heading=>'Milestone'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4604376121442622795)
,p_query_column_id=>4
,p_column_alias=>'ASSIGNEE'
,p_column_display_sequence=>3
,p_column_heading=>'Assignee'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4604376218411622796)
,p_query_column_id=>5
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Start Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4604376333185622797)
,p_query_column_id=>6
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'End Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4627019111613682648)
,p_query_column_id=>7
,p_column_alias=>'COMPLETED'
,p_column_display_sequence=>7
,p_column_heading=>'Completed?'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4627010138684562234)
,p_query_column_id=>8
,p_column_alias=>'CREATED'
,p_column_display_sequence=>8
,p_column_heading=>'Created'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4627010569055562234)
,p_query_column_id=>9
,p_column_alias=>'LAST_UPDATED'
,p_column_display_sequence=>9
,p_column_heading=>'Last Updated'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31496052768420485816)
,p_plug_name=>'Task Actions'
,p_region_name=>'actions'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-LinksList--actions:t-LinksList--showIcons'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_03'
,p_list_id=>wwv_flow_imp.id(4627088936615946135)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>4072361143931175087
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4627008148386558833)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3232615854443071300)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:&P31_LAST_PAGE.:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4627008464808559941)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3232615854443071300)
,p_button_name=>'EDIT_TASK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit Task'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP,9:P9_ID:&P31_TASK_ID.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4627022216254682679)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4627020517176682662)
,p_button_name=>'ADD_LINK'
,p_button_static_id=>'add-link'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Add to do'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP,23:P23_PROJECT_ID,P23_TASK_ID:&P31_PROJECT_ID.,&P31_TASK_ID.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4627133630314156551)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(4627019507802682652)
,p_button_name=>'ADD_TODO'
,p_button_static_id=>'add-todo'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Add to do'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:RP,15:P15_PROJECT_ID,P15_TASK_ID:&P31_PROJECT_ID.,&P31_TASK_ID.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4604375960668622793)
,p_name=>'P31_LAST_PAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(31495790001745047916)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4627011355856562238)
,p_name=>'P31_TASK_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31495790001745047916)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4627011708561562242)
,p_name=>'P31_TASK_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31495790001745047916)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4627021868227682675)
,p_name=>'P31_PROJECT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31495790001745047916)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(4627019394881682650)
,p_computation_sequence=>10
,p_computation_item=>'P31_LAST_PAGE'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'8'
,p_compute_when=>'P31_LAST_PAGE'
,p_compute_when_type=>'ITEM_IS_NULL_OR_ZERO'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(4604376062855622794)
,p_computation_sequence=>20
,p_computation_item=>'P31_TASK_NAME'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'from eba_demo_md_tasks',
'where id = :P31_TASK_ID'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4627126249703134877)
,p_name=>'Task Updates'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4627008464808559941)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4627126656340134881)
,p_event_id=>wwv_flow_imp.id(4627126249703134877)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4627129297617143097)
,p_name=>'ToDo Updates'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#todos, #add-todo, #actions'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "15"'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4627129714935143101)
,p_event_id=>wwv_flow_imp.id(4627129297617143097)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4627019507802682652)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4627022084136682677)
,p_name=>'Link Updates'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#links, #add-link, #actions'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "23"'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4627022165546682678)
,p_event_id=>wwv_flow_imp.id(4627022084136682677)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4627020517176682662)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_imp_page.create_page(
 p_id=>33
,p_name=>'Stacked'
,p_alias=>'STACKED'
,p_step_title=>'Stacked'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3823082450207324691)
,p_plug_name=>'Overview: Stacked'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_source=>'This example displays master-detail Interactive Grids on the same page.  The user has option of interacting with either the master or the detail without leaving the page.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5235097081278468942)
,p_plug_name=>'Comments'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.project_id',
', c.id comment_id',
', ''u-color-'' || ora_hash(c.created_by, 29) || '' u-color-'' || ora_hash(c.created_by, 29) || ''-bd'' icon_modifier',
', c.comment_text',
', c.created comment_date',
', apex_string.get_initials(c.created_by) user_icon',
', ''<a href="'' || apex_page.get_url(p_page => 13, p_items => ''P13_ID'', p_values => id) || ',
'  ''" class="t-Button t-Button--small t-Button--simple">Edit</a>'' actions',
', c.created_by user_name',
'from eba_demo_md_comments c'))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(49127663265951140428)
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
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3823082900643324695)
,p_name=>'COMMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3823082943477324696)
,p_name=>'ICON_MODIFIER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ICON_MODIFIER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3823083079215324697)
,p_name=>'COMMENT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMENT_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'SINCE'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3823083218664324698)
,p_name=>'USER_ICON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_ICON'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3823083283937324699)
,p_name=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(32229859783699549904)
,p_lov_display_extra=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3823083360803324700)
,p_name=>'ACTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'HTML')).to_clob
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
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3952369408398655867)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3952369448039655868)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5297542342685864995)
,p_name=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(5674314991235558398)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5297542423782864996)
,p_name=>'COMMENT_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMENT_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Comment'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>4000
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(5235097195623468943)
,p_internal_uid=>1388035499610295796
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'No comments for this project.'
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_add_button_label=>'Add Comment'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>true
,p_detail_view_before_rows=>'<ul class="t-Comments t-Comments--chat margin-md" id="comments_report">'
,p_detail_view_for_each_row=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon &ICON_MODIFIER." aria-hidden="true">&USER_ICON.</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            &USER_NAME. &middot; <span class="t-Comments-date">&COMMENT_DATE.</span> <span class="t-Comments-actions">&ACTIONS.</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            &COMMENT_TEXT.',
'        </div>',
'    </div>',
'</li>'))
,p_detail_view_after_rows=>'</ul>'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(5297547986903888294)
,p_interactive_grid_id=>wwv_flow_imp.id(5235097195623468943)
,p_static_id=>'14410'
,p_type=>'PRIMARY'
,p_default_view=>'DETAIL'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(5297548069026888294)
,p_report_id=>wwv_flow_imp.id(5297547986903888294)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3928041684404983578)
,p_view_id=>wwv_flow_imp.id(5297548069026888294)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3823082900643324695)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3928042193054983581)
,p_view_id=>wwv_flow_imp.id(5297548069026888294)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3823082943477324696)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3928042698468983583)
,p_view_id=>wwv_flow_imp.id(5297548069026888294)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3823083079215324697)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3928043181989983585)
,p_view_id=>wwv_flow_imp.id(5297548069026888294)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3823083218664324698)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3928043690687983587)
,p_view_id=>wwv_flow_imp.id(5297548069026888294)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3823083283937324699)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3928044221764983589)
,p_view_id=>wwv_flow_imp.id(5297548069026888294)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3823083360803324700)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3952401905235792827)
,p_view_id=>wwv_flow_imp.id(5297548069026888294)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3952369408398655867)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604893995404755395)
,p_view_id=>wwv_flow_imp.id(5297548069026888294)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(5297542342685864995)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604894333950755395)
,p_view_id=>wwv_flow_imp.id(5297548069026888294)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(5297542423782864996)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5674353297902663654)
,p_plug_name=>'Milestones'
,p_region_name=>'milestones'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select m.id',
', m.project_id',
', m.name',
', m.description',
', m.due_date',
', (select count(*)',
'   from eba_demo_md_tasks t',
'   where t.milestone_id = m.id',
'  ) tasks',
'from eba_demo_md_milestones m',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(49127663265951140428)
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
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5172285750905632906)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5172285841763632907)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5172289576092632944)
,p_name=>'TASKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASKS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Tasks'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5674316561816558413)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5674316607756558414)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(5674316704456558415)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(5674316865312558416)
,p_name=>'DUE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Due Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(5674319163755558439)
,p_name=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(5674314991235558398)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(5674316396813558412)
,p_internal_uid=>1827254700800385265
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'No milestones for this project.'
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_add_button_label=>'Add Milestone'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(5674382552766705416)
,p_interactive_grid_id=>wwv_flow_imp.id(5674316396813558412)
,p_static_id=>'14411'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(5674382636208705416)
,p_report_id=>wwv_flow_imp.id(5674382552766705416)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604893819412755395)
,p_view_id=>wwv_flow_imp.id(5674382636208705416)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(5172285750905632906)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604893934836755395)
,p_view_id=>wwv_flow_imp.id(5674382636208705416)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5674316561816558413)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604894096257755395)
,p_view_id=>wwv_flow_imp.id(5674382636208705416)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(5674319163755558439)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604894196491755395)
,p_view_id=>wwv_flow_imp.id(5674382636208705416)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5674316607756558414)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>167
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604894256442755395)
,p_view_id=>wwv_flow_imp.id(5674382636208705416)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(5674316704456558415)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>495
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604894401034755395)
,p_view_id=>wwv_flow_imp.id(5674382636208705416)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(5674316865312558416)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>101
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604894428194755395)
,p_view_id=>wwv_flow_imp.id(5674382636208705416)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(5172289576092632944)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5674356130246664895)
,p_plug_name=>'Tasks'
,p_region_name=>'tasks'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select t.id',
', t.project_id',
', t.name',
', t.description',
', t.is_complete_yn',
', t.milestone_id',
', t.assignee',
', t.start_date',
', t.end_date',
'from eba_demo_md_tasks t',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(49127663265951140428)
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
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5172285252810632901)
,p_name=>'IS_COMPLETE_YN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_COMPLETE_YN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Is Complete?'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
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
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5172285369958632902)
,p_name=>'MILESTONE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MILESTONE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Milestone'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name d, id r',
'from eba_demo_md_milestones',
'--where project_id = :PROJECT_ID',
'order by 1'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Milestone -'
,p_enable_filter=>true
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5172286154342632910)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5172286282882632911)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5674317003406558418)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5674317137055558419)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(5674317201157558420)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(5674317510307558423)
,p_name=>'ASSIGNEE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ASSIGNEE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Assignee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name d, id r',
'from eba_demo_md_team_members',
'order by 1'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Assignee -'
,p_enable_filter=>true
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
 p_id=>wwv_flow_imp.id(5674317622137558424)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Start Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(5674317742701558425)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'End Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(5674366458298684990)
,p_name=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(5674314991235558398)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(5674316928549558417)
,p_internal_uid=>1827255232536385270
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'No tasks for this project.'
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_add_button_label=>'Add Task'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(5674383089710705417)
,p_interactive_grid_id=>wwv_flow_imp.id(5674316928549558417)
,p_static_id=>'14412'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(5674383212883705417)
,p_report_id=>wwv_flow_imp.id(5674383089710705417)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604893859455755394)
,p_view_id=>wwv_flow_imp.id(5674383212883705417)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(5172286154342632910)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604893918934755394)
,p_view_id=>wwv_flow_imp.id(5674383212883705417)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5674317003406558418)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604894025375755394)
,p_view_id=>wwv_flow_imp.id(5674383212883705417)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(5674366458298684990)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604894146395755395)
,p_view_id=>wwv_flow_imp.id(5674383212883705417)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(5172285369958632902)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>161
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604894275865755395)
,p_view_id=>wwv_flow_imp.id(5674383212883705417)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5674317137055558419)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>259
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604894365537755395)
,p_view_id=>wwv_flow_imp.id(5674383212883705417)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(5674317201157558420)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>539
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604894407150755395)
,p_view_id=>wwv_flow_imp.id(5674383212883705417)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(5674317510307558423)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604894522983755395)
,p_view_id=>wwv_flow_imp.id(5674383212883705417)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(5674317622137558424)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604894615381755395)
,p_view_id=>wwv_flow_imp.id(5674383212883705417)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(5674317742701558425)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>77
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604894704398755395)
,p_view_id=>wwv_flow_imp.id(5674383212883705417)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(5172285252810632901)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5674366632601684992)
,p_plug_name=>'Region Display Selector'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31495554073327503100)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(48369823315302557905)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49127663265951140428)
,p_plug_name=>'Projects'
,p_region_name=>'projects'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"NAME",',
'"DESCRIPTION",',
'"PROJECT_LEAD",',
'"COMPLETED_DATE",',
'"STATUS_CD",',
'(select count(''x'')',
' from eba_demo_md_milestones m',
' where m.project_id = p.id',
') milestones,',
'(select count(''x'')',
' from eba_demo_md_tasks t',
' where t.project_id = p.id',
') tasks,',
'(select count(''x'')',
' from eba_demo_md_task_todos t',
' where t.project_id = p.id',
') todos,',
'(select count(''x'')',
' from eba_demo_md_task_links l',
' where l.project_id = p.id',
') links,',
'(select count(''x'')',
' from eba_demo_md_comments c',
' where c.project_id = p.id',
') comments',
'from eba_demo_md_projects p',
''))
,p_plug_source_type=>'NATIVE_IG'
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
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(5674642943187755335)
,p_heading=>'Project Details'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(5674643037265755336)
,p_heading=>'Progress'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(5674643178817755337)
,p_heading=>'Associated Records'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5107284753396104144)
,p_name=>'STATUS_CD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_CD'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_imp.id(5674643037265755336)
,p_use_group_for=>'BOTH'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(4603770034504028748)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Status -'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'SQL_QUERY'
,p_default_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cd from eba_demo_md_status',
'where rownum = 1',
'order by display_order'))
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5172284707602632895)
,p_name=>'LINKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINKS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Links'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>140
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(5674643178817755337)
,p_use_group_for=>'BOTH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5172284723555632896)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_imp.id(5674642943187755335)
,p_use_group_for=>'BOTH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5297545096784865022)
,p_name=>'TODOS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TODOS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'To Dos'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(5674643178817755337)
,p_use_group_for=>'BOTH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5674314991235558398)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5674315175733558399)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_imp.id(5674642943187755335)
,p_use_group_for=>'BOTH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(5674315335589558401)
,p_name=>'PROJECT_LEAD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT_LEAD'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Project Lead'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_imp.id(5674642943187755335)
,p_use_group_for=>'BOTH'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(full_name, username) d, id r',
'from eba_demo_md_team_members t',
'order by 1'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Project Lead -'
,p_enable_filter=>true
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
 p_id=>wwv_flow_imp.id(5674315428469558402)
,p_name=>'COMPLETED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPLETED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Completed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_imp.id(5674643037265755336)
,p_use_group_for=>'BOTH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
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
 p_id=>wwv_flow_imp.id(5674316000638558408)
,p_name=>'MILESTONES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MILESTONES'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Milestones'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(5674643178817755337)
,p_use_group_for=>'BOTH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5674316133504558409)
,p_name=>'TASKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASKS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Tasks'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(5674643178817755337)
,p_use_group_for=>'BOTH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5674316352176558411)
,p_name=>'COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMENTS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Comments'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>150
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(5674643178817755337)
,p_use_group_for=>'BOTH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5674642651565755332)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5674642719329755333)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(5674314959051558397)
,p_internal_uid=>1827253263038385250
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_add_button_label=>'Add Project'
,p_enable_save_public_report=>true
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(5674343343999660508)
,p_interactive_grid_id=>wwv_flow_imp.id(5674314959051558397)
,p_static_id=>'14413'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(5674343425376660508)
,p_report_id=>wwv_flow_imp.id(5674343343999660508)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847061791187173148)
,p_view_id=>wwv_flow_imp.id(5674343425376660508)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(5297545096784865022)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>68
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604893798589755397)
,p_view_id=>wwv_flow_imp.id(5674343425376660508)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(5674642651565755332)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604893865910755397)
,p_view_id=>wwv_flow_imp.id(5674343425376660508)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5674314991235558398)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604893999148755397)
,p_view_id=>wwv_flow_imp.id(5674343425376660508)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(5674315175733558399)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>245
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604894040013755397)
,p_view_id=>wwv_flow_imp.id(5674343425376660508)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5172284723555632896)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>359
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604894167163755397)
,p_view_id=>wwv_flow_imp.id(5674343425376660508)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(5674315335589558401)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>127
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604894275512755397)
,p_view_id=>wwv_flow_imp.id(5674343425376660508)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(5107284753396104144)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604894355449755398)
,p_view_id=>wwv_flow_imp.id(5674343425376660508)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(5674315428469558402)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>122
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604894475825755398)
,p_view_id=>wwv_flow_imp.id(5674343425376660508)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(5674316000638558408)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604894552036755398)
,p_view_id=>wwv_flow_imp.id(5674343425376660508)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(5674316133504558409)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604894801174755398)
,p_view_id=>wwv_flow_imp.id(5674343425376660508)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(5172284707602632895)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4604894892088755398)
,p_view_id=>wwv_flow_imp.id(5674343425376660508)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(5674316352176558411)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>102
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4626768443724017405)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31495554073327503100)
,p_button_name=>'CALENDAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Calendar'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,10:P10_PROJECT_ID:&P33_PROJECT_ID.'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-calendar'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5383260548515886096)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(31495554073327503100)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4604909672414755469)
,p_tabular_form_region_id=>wwv_flow_imp.id(5674356130246664895)
,p_validation_name=>'Start Date <= End Date'
,p_validation_sequence=>10
,p_validation=>':START_DATE <= :END_DATE'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Start Date can not be after End Date'
,p_associated_column=>'END_DATE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4604931056714755523)
,p_name=>'Edit Comment - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5235097081278468942)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4604931515737755530)
,p_event_id=>wwv_flow_imp.id(4604931056714755523)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5235097081278468942)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4604929320569755497)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(49127663265951140428)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Projects - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Project(s) saved: Inserted = #MRI_COUNT#, Updated = #MRU_COUNT#, Deleted = #MRD_COUNT#.<br />'
,p_internal_uid=>4593490967240226146
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4604902652163755460)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5674353297902663654)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Milestones - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Milestone(s) saved: Inserted = #MRI_COUNT#, Updated = #MRU_COUNT#, Deleted = #MRD_COUNT#.<br />'
,p_internal_uid=>4593464298834226109
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4604909901277755471)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5674356130246664895)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Tasks - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Task(s) saved: Inserted = #MRI_COUNT#, Updated = #MRU_COUNT#, Deleted = #MRD_COUNT#.<br />'
,p_internal_uid=>4593471547948226120
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3952370689456655880)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5235097081278468942)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Comments - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Comment(s) saved: Inserted = #MRI_COUNT#, Updated = #MRU_COUNT#, Deleted = #MRD_COUNT#.<br />'
,p_internal_uid=>3940932336127126529
);
end;
/
prompt --application/pages/page_00048
begin
wwv_flow_imp_page.create_page(
 p_id=>48
,p_name=>'Drill Down'
,p_alias=>'DRILL-DOWN'
,p_step_title=>'Drill Down'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1010966475122686334)
,p_plug_name=>'Projects'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ROWID,',
'       PROJECT_LEAD,',
'       NAME,',
'       DESCRIPTION,',
'       STATUS_CD,',
'       COMPLETED_DATE,',
'       CREATED,',
'       CREATED_BY,',
'       UPDATED,',
'       UPDATED_BY',
'  from EBA_DEMO_MD_PROJECTS'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1010966582700686335)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:RP,49:P49_ROWID:#ROWID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'ALLAN'
,p_internal_uid=>997017359995477643
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010966710598686336)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90149208066592996)
,p_db_column_name=>'ROWID'
,p_display_order=>20
,p_column_identifier=>'K'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010966747547686337)
,p_db_column_name=>'PROJECT_LEAD'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Project Lead'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(48791350367028794105)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010966918168686338)
,p_db_column_name=>'NAME'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010967016648686339)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010967032299686340)
,p_db_column_name=>'STATUS_CD'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(4603770034504028748)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010967127246686341)
,p_db_column_name=>'COMPLETED_DATE'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Completed Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010967311644686342)
,p_db_column_name=>'CREATED'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90148830270592993)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90148961443592994)
,p_db_column_name=>'UPDATED'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90149044180592995)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(90157439282595815)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'762083'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NAME:PROJECT_LEAD:STATUS_CD:COMPLETED_DATE:DESCRIPTION:'
,p_sort_column_1=>'CREATED'
,p_sort_direction_1=>'ASC'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4630752459911333834)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(48369823315302557905)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5649256229450529286)
,p_plug_name=>'Overview: Drill Down'
,p_region_name=>'comments'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_source=>'This example consists of a report page that drills down to a page where the selected master is standard form items, and the detail tables use editable Interactive Grids.  This also contains modal popups where you can manage sub-detail table data.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4630753058126333837)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1010966475122686334)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Project'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5::'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(3934277776021094379)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'APP_PAGE_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3963554359694470024)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4630753058126333837)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(218861173474898976)
,p_event_id=>wwv_flow_imp.id(3963554359694470024)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1010966475122686334)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00049
begin
wwv_flow_imp_page.create_page(
 p_id=>49
,p_name=>'Two Page Master Detail - Detail'
,p_alias=>'TWO-PAGE-MASTER-DETAIL-DETAIL'
,p_step_title=>'Two Page Master Detail - Detail'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(87503325329101207)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI:margin-left-md:margin-right-md'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'<strong>&P49_ROWID_COUNT.</strong>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4436066740203495284)
,p_plug_name=>'Project Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4496716350412328391)
,p_plug_name=>'Milestones'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select m.id',
', m.project_id',
', m.name',
', m.description',
', m.due_date',
', (select count(*)',
'   from eba_demo_md_tasks t',
'   where t.milestone_id = m.id',
'  ) tasks',
'from eba_demo_md_milestones m',
'where m.project_id = :P49_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P49_ID'
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
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4496716587445328393)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4496716646450328394)
,p_name=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P49_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4496716712384328395)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4496716887820328396)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4496716920747328397)
,p_name=>'DUE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Due Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4631437136088925365)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4631437222671925366)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4631452900560983348)
,p_name=>'TASKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASKS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tasks'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(4496716425214328392)
,p_internal_uid=>649654729201155245
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'No milestones for this project.'
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_add_button_label=>'Add Milestone'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(4631458572774983466)
,p_interactive_grid_id=>wwv_flow_imp.id(4496716425214328392)
,p_static_id=>'14416'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4631458671053983467)
,p_report_id=>wwv_flow_imp.id(4631458572774983466)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847061822425173147)
,p_view_id=>wwv_flow_imp.id(4631458671053983467)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4631437136088925365)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847062051088173147)
,p_view_id=>wwv_flow_imp.id(4631458671053983467)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4496716587445328393)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847062097802173147)
,p_view_id=>wwv_flow_imp.id(4631458671053983467)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4496716646450328394)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847062263431173147)
,p_view_id=>wwv_flow_imp.id(4631458671053983467)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4496716712384328395)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>221
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847062304748173148)
,p_view_id=>wwv_flow_imp.id(4631458671053983467)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(4496716887820328396)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>423
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847062404931173148)
,p_view_id=>wwv_flow_imp.id(4631458671053983467)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4496716920747328397)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>93
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847062553459173148)
,p_view_id=>wwv_flow_imp.id(4631458671053983467)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(4631452900560983348)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4630754025738333843)
,p_plug_name=>'Project Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'EBA_DEMO_MD_PROJECTS'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'CREATED'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49586504093466653230)
,p_plug_name=>'Audit Details'
,p_parent_plug_id=>wwv_flow_imp.id(4630754025738333843)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P49_ROWID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4630766003916333947)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(48369823315302557905)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4631453001078983349)
,p_plug_name=>'Tasks'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select t.id',
', t.project_id',
', t.name',
', t.description',
', t.is_complete_yn',
', t.milestone_id',
', t.assignee',
', t.start_date',
', t.end_date',
', (select count(''x'')',
'   from eba_demo_md_task_todos td',
'   where td.task_id = t.id',
'  ) todos',
', (select count(''x'')',
'   from eba_demo_md_task_links l',
'   where l.task_id = t.id',
'  ) links',
'from eba_demo_md_tasks t',
'where t.project_id = :P49_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P49_ID'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4631436733099925361)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4631436831962925362)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4631453254501983351)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4631453382399983352)
,p_name=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P49_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4631453406728983353)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4631453595808983354)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4631453872466983357)
,p_name=>'IS_COMPLETE_YN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_COMPLETE_YN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Completed?'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
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
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4631453939660983358)
,p_name=>'MILESTONE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MILESTONE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Milestone'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name || '' ['' || due_date || '']'' as display',
', id as return',
'from eba_demo_md_milestones',
'where project_id = :P49_ID',
'order by due_date'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Milestone -'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4631454078441983359)
,p_name=>'ASSIGNEE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ASSIGNEE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Assignee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(48791350367028794105)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Assignee -'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4631454167831983360)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Start date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4631454253547983361)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'End date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4631454349748983362)
,p_name=>'TODOS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TODOS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_LINK'
,p_heading=>'To Dos'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:RP,14:P14_TASK_ID,P14_PROJECT_ID:&ID.,&PROJECT_ID.'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4631454486490983363)
,p_name=>'LINKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINKS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Links'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:RP,22:P22_TASK_ID,P22_PROJECT_ID:&ID.,&PROJECT_ID.'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(4631453194210983350)
,p_internal_uid=>784391498197810203
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'No tasks for this project.'
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_add_button_label=>'Add Task'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(4631473790957990723)
,p_interactive_grid_id=>wwv_flow_imp.id(4631453194210983350)
,p_static_id=>'14417'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4631473802137990723)
,p_report_id=>wwv_flow_imp.id(4631473790957990723)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847061803776173148)
,p_view_id=>wwv_flow_imp.id(4631473802137990723)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(4631436733099925361)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847061858661173148)
,p_view_id=>wwv_flow_imp.id(4631473802137990723)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4631453254501983351)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847061979801173148)
,p_view_id=>wwv_flow_imp.id(4631473802137990723)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4631453382399983352)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847062035062173148)
,p_view_id=>wwv_flow_imp.id(4631473802137990723)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4631453406728983353)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>236
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847062171305173148)
,p_view_id=>wwv_flow_imp.id(4631473802137990723)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4631454078441983359)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>147
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847062218546173148)
,p_view_id=>wwv_flow_imp.id(4631473802137990723)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4631453939660983358)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>229
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847062399100173148)
,p_view_id=>wwv_flow_imp.id(4631473802137990723)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(4631453595808983354)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>541
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847062473520173148)
,p_view_id=>wwv_flow_imp.id(4631473802137990723)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4631454167831983360)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847062576380173148)
,p_view_id=>wwv_flow_imp.id(4631473802137990723)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(4631454253547983361)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
,p_sort_order=>2
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847062686205173148)
,p_view_id=>wwv_flow_imp.id(4631473802137990723)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(4631453872466983357)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>103
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847062738540173149)
,p_view_id=>wwv_flow_imp.id(4631473802137990723)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(4631454349748983362)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>109
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3847062842897173149)
,p_view_id=>wwv_flow_imp.id(4631473802137990723)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(4631454486490983363)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>103
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(35192695797728266322)
,p_name=>'Comments'
,p_region_name=>'comments'
,p_template=>4072358936313175081
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.id comment_id',
', ''u-color-'' || ora_hash(c.created_by, 29) || '' u-color-'' || ora_hash(c.created_by, 29) || ''-bd'' icon_modifier',
', c.comment_text',
', c.created comment_date',
',  apex_string.get_initials(c.created_by) user_icon',
', c.created_by user_name',
', apex_page.get_url(p_page => 13, p_items => ''P13_ID'', p_values => id) actions',
', null attribute_1',
', null attribute_2',
', null attribute_3',
', null attribute_4',
'from eba_demo_md_comments c',
'where c.project_id = :P49_ID',
'order by c.created'))
,p_display_when_condition=>'11,49'
,p_display_condition_type=>'CURRENT_PAGE_IN_CONDITION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P49_ID'
,p_lazy_loading=>false
,p_query_row_template=>2613168815517880001
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'&nbsp;'
,p_query_no_data_found=>'No comments for this project.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1931817431789494488)
,p_query_column_id=>1
,p_column_alias=>'COMMENT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Comment id'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1931817904373494488)
,p_query_column_id=>2
,p_column_alias=>'ICON_MODIFIER'
,p_column_display_sequence=>2
,p_column_heading=>'Icon modifier'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1931818307083494488)
,p_query_column_id=>3
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Comment text'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1931818627512494489)
,p_query_column_id=>4
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Comment date'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1931819121436494489)
,p_query_column_id=>5
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>5
,p_column_heading=>'User icon'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1931819479733494490)
,p_query_column_id=>6
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'User name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1931815428815494486)
,p_query_column_id=>7
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>7
,p_column_heading=>'Actions'
,p_column_html_expression=>'<a href="#ACTIONS#" class="t-Button t-Button--small t-Button--simple">Edit</a>'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1931815869543494486)
,p_query_column_id=>8
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>8
,p_column_heading=>'Attribute 1'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1931816303156494487)
,p_query_column_id=>9
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>9
,p_column_heading=>'Attribute 2'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1931816707990494487)
,p_query_column_id=>10
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>10
,p_column_heading=>'Attribute 3'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1931817105290494487)
,p_query_column_id=>11
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>11
,p_column_heading=>'Attribute 4'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3921411607827644508)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(35192695797728266322)
,p_button_name=>'ADD_COMMENT'
,p_button_static_id=>'add-comment'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Add comment'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP,13:P13_PROJECT_ID:&P49_ID.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4630754732213333843)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(87503325329101207)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4630754653564333843)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(87503325329101207)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P49_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4630754582365333843)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(87503325329101207)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_button_condition=>'P49_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4630754429926333843)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(87503325329101207)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P49_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4630767188618333949)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(87503325329101207)
,p_button_name=>'GET_PREVIOUS_ROWID'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--pillStart'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_condition=>'P49_ROWID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-left'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4630767037744333949)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(87503325329101207)
,p_button_name=>'GET_NEXT_ROWID'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd:t-Button--gapRight'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'PREVIOUS'
,p_button_condition=>'P49_ROWID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-right'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(4630770065711333963)
,p_branch_name=>'Go To Page 49'
,p_branch_action=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.::P49_ROWID:&P49_ROWID_NEXT.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(4630767037744333949)
,p_branch_sequence=>10
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(4630770482706333964)
,p_branch_name=>'Go To Page 49'
,p_branch_action=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.::P49_ROWID:&P49_ROWID_PREV.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(4630767188618333949)
,p_branch_sequence=>20
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(4630766792736333949)
,p_branch_name=>'Go To Page 48'
,p_branch_action=>'f?p=&APP_ID.:48:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4630756340134333889)
,p_name=>'P49_ROWID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(4630754025738333843)
,p_item_source_plug_id=>wwv_flow_imp.id(4630754025738333843)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4630756744161333927)
,p_name=>'P49_ID'
,p_source_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(4630754025738333843)
,p_item_source_plug_id=>wwv_flow_imp.id(4630754025738333843)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4630757087832333931)
,p_name=>'P49_PROJECT_LEAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(4630754025738333843)
,p_item_source_plug_id=>wwv_flow_imp.id(4630754025738333843)
,p_prompt=>'Project Lead'
,p_source=>'PROJECT_LEAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TEAM MEMBERS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name as display',
', id as return',
'from eba_demo_md_team_members',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Project Lead -'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4630757434180333932)
,p_name=>'P49_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(4630754025738333843)
,p_item_source_plug_id=>wwv_flow_imp.id(4630754025738333843)
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4630757859635333932)
,p_name=>'P49_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(4630754025738333843)
,p_item_source_plug_id=>wwv_flow_imp.id(4630754025738333843)
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4630758281253333932)
,p_name=>'P49_STATUS_CD'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(4630754025738333843)
,p_item_source_plug_id=>wwv_flow_imp.id(4630754025738333843)
,p_prompt=>'Status'
,p_source=>'STATUS_CD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATUS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description d, cd r',
'from eba_demo_md_status',
'order by display_order'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Status -'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4630758611640333933)
,p_name=>'P49_COMPLETED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(4630754025738333843)
,p_item_source_plug_id=>wwv_flow_imp.id(4630754025738333843)
,p_prompt=>'Completed Date'
,p_source=>'COMPLETED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(4630767825528333956)
,p_name=>'P49_ROWID_NEXT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(4630754025738333843)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4630768267835333957)
,p_name=>'P49_ROWID_PREV'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(4630754025738333843)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4630768687837333958)
,p_name=>'P49_ROWID_COUNT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(4630754025738333843)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4631416764133789558)
,p_name=>'P49_CREATED'
,p_source_data_type=>'TIMESTAMP_TZ'
,p_is_query_only=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(49586504093466653230)
,p_item_source_plug_id=>wwv_flow_imp.id(4630754025738333843)
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4631417628888789565)
,p_name=>'P49_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_query_only=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(49586504093466653230)
,p_item_source_plug_id=>wwv_flow_imp.id(4630754025738333843)
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USERNAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name as display',
', username as return',
'from eba_demo_md_team_members',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4631418540926789567)
,p_name=>'P49_UPDATED'
,p_source_data_type=>'TIMESTAMP_TZ'
,p_is_query_only=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(49586504093466653230)
,p_item_source_plug_id=>wwv_flow_imp.id(4630754025738333843)
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4631419397453789569)
,p_name=>'P49_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_query_only=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(49586504093466653230)
,p_item_source_plug_id=>wwv_flow_imp.id(4630754025738333843)
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USERNAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name as display',
', username as return',
'from eba_demo_md_team_members',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(3952369560145655869)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'APP_PAGE_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3963556787239500816)
,p_name=>'Comment Region - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(35192695797728266322)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3963557148841500817)
,p_event_id=>wwv_flow_imp.id(3963556787239500816)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(35192695797728266322)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1931350053739546721)
,p_name=>'Tasks Region - Dialog Closed'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4631453001078983349)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1931350150432546722)
,p_event_id=>wwv_flow_imp.id(1931350053739546721)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4631453001078983349)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(199051657001102060)
,p_name=>'Show Completed Date'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P49_STATUS_CD'
,p_condition_element=>'P49_STATUS_CD'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'COMPLETED'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(199051782215102061)
,p_event_id=>wwv_flow_imp.id(199051657001102060)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P49_COMPLETED_DATE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(199051935897102062)
,p_event_id=>wwv_flow_imp.id(199051657001102060)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P49_COMPLETED_DATE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(199051521963102058)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4630754025738333843)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Project Details'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>187613168633572707
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4631437376422925367)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4496716350412328391)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Milestones - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Milestone(s) saved: Inserted = #MRI_COUNT#, Updated = #MRU_COUNT#, Deleted = #MRD_COUNT#.<br />'
,p_internal_uid=>4619999023093396016
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4631436979074925363)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4631453001078983349)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Tasks - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Task(s) saved: Inserted = #MRI_COUNT#, Updated = #MRU_COUNT#, Deleted = #MRD_COUNT#.<br />'
,p_internal_uid=>4619998625745396012
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(191190962449398797)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(4630754025738333843)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Two Page Master Detail - Detail'
,p_attribute_01=>'P49_ROWID_NEXT'
,p_attribute_02=>'P49_ROWID_PREV'
,p_attribute_03=>'P49_ROWID_COUNT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>179752609119869446
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_imp_page.create_page(
 p_id=>101
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_step_title=>'Sample Master Detail - Log In'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'U'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48369822472116557901)
,p_plug_name=>'&APP_NAME.'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48369822842616557904)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(48369822472116557901)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48369822651331557903)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(48369822472116557901)
,p_prompt=>'Username'
,p_placeholder=>'username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48369822721573557904)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(48369822472116557901)
,p_prompt=>'Password'
,p_placeholder=>'password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48369822996102557904)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>48358384642773028553
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48369822859687557904)
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
,p_internal_uid=>48358384506358028553
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48369823182417557905)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>48358384829088028554
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48369823139521557905)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>48358384786192028554
);
end;
/
prompt --application/pages/page_00102
begin
wwv_flow_imp_page.create_page(
 p_id=>102
,p_name=>'Feedback'
,p_alias=>'FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4539712693656282771)
,p_plug_name=>'Wizard Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4561332270683835024)
,p_plug_name=>'Feedback'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4561336532121835035)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4539712693656282771)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4561336171136835034)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4539712693656282771)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4561332629988835027)
,p_name=>'P102_APPLICATION_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(4561332270683835024)
,p_prompt=>'Application:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>'select application_id||''. ''||application_name d, application_id v from apex_applications where application_id = :P102_APPLICATION_ID'
,p_tag_attributes=>'class="fielddatabold"'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_help_text=>'Identifies Application.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4561333582269835029)
,p_name=>'P102_PAGE_ID'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(4561332270683835024)
,p_prompt=>'Page:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>'select page_id||''. ''||page_name d, page_id v from apex_application_pages where page_id = :P102_PAGE_ID and application_id = :P102_APPLICATION_ID'
,p_tag_attributes=>'class="fielddatabold"'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_help_text=>'Identifies page within application.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4561334319815835033)
,p_name=>'P102_FEEDBACK'
,p_is_required=>true
,p_item_sequence=>22
,p_item_plug_id=>wwv_flow_imp.id(4561332270683835024)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#::'
,p_protection_level=>'S'
,p_help_text=>'Enter your feedback and press the submit feedback button.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4561335336203835034)
,p_name=>'P102_FEEDBACK_TYPE'
,p_is_required=>true
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_imp.id(4561332270683835024)
,p_prompt=>'Feedback Type'
,p_source=>'1'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select the_name, id from APEX_FEEDBACK_TYPES order by id'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#::'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_help_text=>'Please identify the type of feedback you are providing.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4561336916834835035)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4561336532121835035)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4561337458959835036)
,p_event_id=>wwv_flow_imp.id(4561336916834835035)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4561338367086835038)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit Feedback'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_util.submit_feedback (',
'    p_comment         => :P102_FEEDBACK,',
'    p_type            => :P102_FEEDBACK_TYPE,',
'    p_application_id  => :P102_APPLICATION_ID,',
'    p_page_id         => :P102_PAGE_ID,',
'    p_email           => null);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4561336171136835034)
,p_process_success_message=>'Thanks for your feedback!'
,p_internal_uid=>4549900013757305687
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4561338780060835038)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Window'
,p_process_sql_clob=>'CLOSE_WINDOW'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4549900426731305687
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(49288120094371048011)
,p_deinstall_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--<< Drop existing DB Objects >>--',
'drop table eba_demo_md_status cascade constraints;',
'drop table eba_demo_md_team_members cascade constraints;',
'drop table eba_demo_md_projects cascade constraints;',
'drop table eba_demo_md_milestones cascade constraints;',
'drop table eba_demo_md_tasks cascade constraints;',
'drop table eba_demo_md_task_todos cascade constraints;',
'drop table eba_demo_md_task_links cascade constraints;',
'drop table eba_demo_md_comments cascade constraints;',
'drop package eba_demo_md_data_pkg;',
''))
,p_required_free_kb=>100
,p_required_sys_privs=>'CREATE PROCEDURE:CREATE TABLE:CREATE TRIGGER:CREATE VIEW'
);
end;
/
prompt --application/deployment/install/install_create_tables
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(27396636214562055171)
,p_install_id=>wwv_flow_imp.id(49288120094371048011)
,p_name=>'Create Tables'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'------------------------------------------------------------',
'-- Demo Project Status table',
'-----------------------------------------------------------',
'create table eba_demo_md_status (',
'    cd                  varchar2(15)        not null',
'                        constraint eba_demo_md_status_pk ',
'                        primary key,',
'    description         varchar2(255) not null,',
'    display_order       number not null,',
'    --',
'    created                 timestamp with time zone  not null,',
'    created_by              varchar2(255)                   not null,',
'    updated                 timestamp with time zone  not null,',
'    updated_by              varchar2(255)                   not null )',
'/',
'',
'create or replace trigger biu_eba_demo_md_status',
'    before insert or update on eba_demo_md_status',
'    for each row',
'begin',
'    if inserting then',
'        :new.created    := current_timestamp;',
'        :new.created_by := nvl(wwv_flow.g_user,user);',
'    end if;',
'    :new.cd         := upper(:new.cd);',
'    :new.updated    := current_timestamp;',
'    :new.updated_by := nvl(wwv_flow.g_user,user);',
'end;',
'/',
'',
'------------------------------------------------------------',
'-- Demo Project Team Members table',
'-----------------------------------------------------------',
'create table eba_demo_md_team_members (',
'    id                  number        not null',
'                        constraint eba_demo_md_team_members_pk ',
'                        primary key,',
'    username            varchar2(255) not null,',
'    full_name           varchar2(255) not null,',
'    email               varchar2(255),',
'    profile             varchar2(4000),',
'    --',
'    created                 timestamp with time zone  not null,',
'    created_by              varchar2(255)                   not null,',
'    updated                 timestamp with time zone  not null,',
'    updated_by              varchar2(255)                   not null )',
'/',
'',
'alter table eba_demo_md_team_members add constraint eba_demo_md_team_members_uk',
'  unique (username);',
'',
'create or replace trigger biu_eba_demo_md_team_members',
'    before insert or update on eba_demo_md_team_members',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'',
'    if inserting then',
'        :new.created    := current_timestamp;',
'        :new.created_by := nvl(wwv_flow.g_user,user);',
'    end if;',
'    :new.username   := upper(:new.username);',
'    :new.updated    := current_timestamp;',
'    :new.updated_by := nvl(wwv_flow.g_user,user);',
'end;',
'/',
'',
'-----------------------------------------------------------',
'-- Demo Projects table',
'-----------------------------------------------------------',
'create table eba_demo_md_projects (',
'    id                   number        not null',
'                         constraint eba_demo_md_projects_pk ',
'                         primary key,',
'    project_lead         number,',
'    --',
'    name                 varchar2(255) not null,',
'    description          varchar2(4000),',
'    status_cd            varchar2(15) not null,',
'    completed_date       date,',
'    --',
'    created              timestamp with time zone  not null,',
'    created_by           varchar2(255)                   not null,',
'    updated              timestamp with time zone  not null,',
'    updated_by           varchar2(255)                   not null )',
'/',
'',
'alter table eba_demo_md_projects add constraint eba_demo_md_projects_uk',
'  unique (name);',
'',
'alter table eba_demo_md_projects add constraint eba_demo_md_team_member_fk',
'  foreign key (project_lead) references eba_demo_md_team_members (id)',
'  on delete set null;',
'',
'create index eba_demo_md_project_idx on eba_demo_md_projects (project_lead);',
'',
'alter table eba_demo_md_projects add constraint eba_demo_md_status_fk',
'  foreign key (status_cd) references eba_demo_md_status (cd)',
'  on delete set null;',
'',
'create index eba_demo_md_status_idx on eba_demo_md_projects (status_cd);',
'',
'',
'create or replace trigger biu_eba_demo_md_projects',
'    before insert or update on eba_demo_md_projects',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'',
'    if inserting then',
'        :new.created    := current_timestamp;',
'        :new.created_by := nvl(wwv_flow.g_user,user);',
'    end if;',
'    :new.updated    := current_timestamp;',
'    :new.updated_by := nvl(wwv_flow.g_user,user);',
'end;',
'/',
'',
'-----------------------------------------------------------',
'-- Demo Project Milestones table',
'-----------------------------------------------------------',
'create table eba_demo_md_milestones (',
'    id                   number        not null',
'                         constraint eba_demo_md_milestones_pk ',
'                         primary key,',
'    project_id           number not null,',
'    --',
'    name                 varchar2(255) not null,',
'    description          varchar2(4000),',
'    due_date             date not null,',
'    --',
'    created              timestamp with time zone  not null,',
'    created_by           varchar2(255)                   not null,',
'    updated              timestamp with time zone  not null,',
'    updated_by           varchar2(255)                   not null )',
'/',
'',
'alter table eba_demo_md_milestones add constraint eba_demo_md_mstone_md_fk',
'  foreign key (project_id) references eba_demo_md_projects (id) ',
'  on delete cascade;',
'',
'create index eba_demo_md_mstone_prj_idx on eba_demo_md_milestones (project_id);',
'',
'create or replace trigger biu_eba_demo_md_milestones',
'    before insert or update on eba_demo_md_milestones',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'',
'    if inserting then',
'        :new.created    := current_timestamp;',
'        :new.created_by := nvl(wwv_flow.g_user,user);',
'    end if;',
'    :new.updated    := current_timestamp;',
'    :new.updated_by := nvl(wwv_flow.g_user,user);',
'end;',
'/',
'',
'-----------------------------------------------------------',
'-- Demo Project Tasks table',
'-----------------------------------------------------------',
'create table eba_demo_md_tasks (',
'    id                   number        not null',
'                         constraint eba_demo_md_tasks_pk ',
'                         primary key,',
'    project_id           number not null,',
'    milestone_id         number,',
'    assignee             number,',
'    --',
'    name                 varchar2(255) not null,',
'    description          varchar2(4000),',
'    start_date           date not null,',
'    end_date             date not null,',
'    is_complete_yn       varchar2(1),',
'    --',
'    created                 timestamp with time zone  not null,',
'    created_by              varchar2(255)                   not null,',
'    updated                 timestamp with time zone  not null,',
'    updated_by              varchar2(255)                   not null )',
'/',
'',
'alter table eba_demo_md_tasks add constraint eba_demo_md_tasks_uk',
'  unique (project_id, name);',
'',
'alter table eba_demo_md_tasks add constraint eba_demo_md_task_project_fk',
'  foreign key (project_id) references eba_demo_md_projects (id) ',
'  on delete cascade;',
'',
'create index eba_demo_md_task_project_idx on eba_demo_md_tasks (project_id);',
'',
'alter table eba_demo_md_tasks add constraint eba_demo_md_task_mstone_fk',
'  foreign key (milestone_id) references eba_demo_md_milestones (id) ',
'  on delete set null;',
'',
'create index eba_demo_md_task_mstone_idx on eba_demo_md_tasks (milestone_id);',
'',
'alter table eba_demo_md_tasks add constraint eba_demo_md_task_team_mem_fk',
'  foreign key (assignee) references eba_demo_md_team_members (id) ',
'  on delete set null;',
'',
'create index eba_demo_md_task_team_mm_idx on eba_demo_md_tasks (assignee);',
'',
'create or replace trigger biu_eba_demo_md_tasks',
'    before insert or update on eba_demo_md_tasks',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'',
'    if inserting then',
'        :new.created    := current_timestamp;',
'        :new.created_by := nvl(wwv_flow.g_user,user);',
'    end if;',
'    :new.updated    := current_timestamp;',
'    :new.updated_by := nvl(wwv_flow.g_user,user);',
'end;',
'/',
'',
'-----------------------------------------------------------',
'-- Demo Project Task ToDos table',
'-----------------------------------------------------------',
'create table eba_demo_md_task_todos (',
'    id                 number        not null',
'                         constraint eba_demo_md_task_todos_pk ',
'                         primary key,',
'    project_id           number not null,',
'    task_id              number not null,',
'    assignee             number,',
'    --',
'    name                 varchar2(255) not null,',
'    description          varchar2(4000),',
'    is_complete_yn       varchar2(1),',
'    --',
'    created                 timestamp with time zone  not null,',
'    created_by              varchar2(255)                   not null,',
'    updated                 timestamp with time zone  not null,',
'    updated_by              varchar2(255)                   not null )',
'/',
'',
'alter table eba_demo_md_task_todos add constraint eba_demo_md_task_todo_prj_fk',
'  foreign key (project_id) references eba_demo_md_projects (id) ',
'  on delete cascade;',
'',
'create index eba_demo_md_tsk_todo_prj_idx  on eba_demo_md_task_todos (project_id);',
'',
'alter table eba_demo_md_task_todos add constraint eba_demo_md_task_todo_tsk_fk',
'  foreign key (task_id) references eba_demo_md_tasks (id) ',
'  on delete cascade;',
'',
'create index eba_demo_md_tsk_todo_tsk_idx on eba_demo_md_task_todos (task_id);',
'',
'alter table eba_demo_md_task_todos add constraint eba_demo_md_task_todo_tm_fk',
'  foreign key (assignee) references eba_demo_md_team_members (id) ',
'  on delete set null;',
'',
'create index eba_demo_md_task_todo_tm_idx on eba_demo_md_task_todos (assignee);',
'',
'create or replace trigger biu_eba_demo_md_task_todos',
'    before insert or update on eba_demo_md_task_todos',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'',
'    if inserting then',
'        :new.created    := current_timestamp;',
'        :new.created_by := nvl(wwv_flow.g_user,user);',
'    end if;',
'    :new.updated    := current_timestamp;',
'    :new.updated_by := nvl(wwv_flow.g_user,user);',
'end;',
'/',
'',
'-----------------------------------------------------------',
'-- Demo Project Task Links table',
'-----------------------------------------------------------',
'create table eba_demo_md_task_links (',
'    id                 number        not null',
'                         constraint eba_demo_md_task_links_pk ',
'                         primary key,',
'    project_id         number not null,',
'    task_id            number not null,',
'    --',
'    link_type          varchar2(20) not null,',
'    url                varchar2(255),',
'    application_id     number,',
'    application_page   number,',
'    description        varchar2(4000),',
'    --',
'    created                 timestamp with time zone  not null,',
'    created_by              varchar2(255)                   not null,',
'    updated                 timestamp with time zone  not null,',
'    updated_by              varchar2(255)                   not null )',
'/',
'',
'alter table eba_demo_md_task_links add constraint eba_demo_md_task_link_prj_fk',
'  foreign key (project_id) references eba_demo_md_projects (id) ',
'  on delete cascade;',
'',
'create index eba_demo_md_tsk_link_prj_idx  on eba_demo_md_task_links (project_id);',
'',
'alter table eba_demo_md_task_links add constraint eba_demo_md_task_link_tsk_fk',
'  foreign key (task_id) references eba_demo_md_tasks (id) ',
'  on delete cascade;',
'',
'create index eba_demo_md_tsk_link_tsk_idx on eba_demo_md_task_links (task_id);',
'',
'alter table eba_demo_md_task_links add constraint eba_demo_md_task_link_lty_ch ',
'   check ( link_type in (''URL'',''Application''));',
'',
'',
'create or replace trigger biu_eba_demo_md_task_links',
'    before insert or update on eba_demo_md_task_links',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'',
'    if inserting then',
'        :new.created    := current_timestamp;',
'        :new.created_by := nvl(wwv_flow.g_user,user);',
'    end if;',
'    :new.updated    := current_timestamp;',
'    :new.updated_by := nvl(wwv_flow.g_user,user);',
'end;',
'/',
'',
'-----------------------------------------------------------',
'-- Demo Project Comments table',
'-----------------------------------------------------------',
'create table eba_demo_md_comments (',
'    id                   number        not null',
'                         constraint eba_demo_md_comments_pk ',
'                         primary key,',
'    project_id           number not null,',
'    --',
'    comment_text         varchar2(4000) not null,',
'    --',
'    created                 timestamp with time zone  not null,',
'    created_by              varchar2(255)                   not null,',
'    updated                 timestamp with time zone  not null,',
'    updated_by              varchar2(255)                   not null )',
'/',
'',
'alter table eba_demo_md_comments add constraint eba_demo_md_comment_md_fk',
'  foreign key (project_id) references eba_demo_md_projects (id) ',
'  on delete cascade;',
'',
'create index eba_demo_md_comment_md_idx on eba_demo_md_comments (project_id);',
'',
'create or replace trigger biu_eba_demo_md_comments',
'    before insert or update on eba_demo_md_comments',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'',
'    if inserting then',
'        :new.created    := current_timestamp;',
'        :new.created_by := nvl(wwv_flow.g_user,user);',
'    end if;',
'    :new.updated    := current_timestamp;',
'    :new.updated_by := nvl(wwv_flow.g_user,user);',
'end;',
'/',
''))
);
end;
/
prompt --application/deployment/install/install_create_data_package
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(27396689229659065939)
,p_install_id=>wwv_flow_imp.id(49288120094371048011)
,p_name=>'Create Data Package'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package eba_demo_md_data_pkg as',
'  function varchar2_to_blob(p_varchar2_tab in dbms_sql.varchar2_table) return blob;',
'  procedure load_sample_data;',
'  procedure remove_sample_data;',
'end eba_demo_md_data_pkg; ',
'/',
'',
'create or replace package body eba_demo_md_data_pkg as ',
'  function varchar2_to_blob(p_varchar2_tab in dbms_sql.varchar2_table) ',
'    return blob ',
'  is ',
'    l_blob blob; ',
'    l_raw  raw(500); ',
'    l_size number; ',
'  begin ',
'    dbms_lob.createtemporary(l_blob, true, dbms_lob.session); ',
'    for i in 1 .. p_varchar2_tab.count loop ',
'      l_size := length(p_varchar2_tab(i)) / 2; ',
'      dbms_lob.writeappend(l_blob, l_size, hextoraw(p_varchar2_tab(i))); ',
'    end loop; ',
'    return l_blob; ',
'  exception ',
'    when others then ',
'      dbms_lob.close(l_blob); ',
'  end varchar2_to_blob;   ',
' ',
'  procedure load_sample_data is ',
'    i               dbms_sql.varchar2_table; ',
'    j               dbms_sql.varchar2_table default wwv_flow_api.empty_varchar2_table; ',
'    l_blob          blob; ',
'    l_full_name         varchar2(255); ',
'    l_email             varchar2(255); ',
'    l_add_days          number; ',
'  begin ',
'    -- Remove any data currenlty in the tables ',
'    remove_sample_data; ',
' ',
'    ---------------------------------- ',
'    --<< Load statuses >>-- ',
'    ---------------------------------- ',
'    delete from eba_demo_md_status; ',
'    insert into eba_demo_md_status (cd, description, display_order) ',
'      values (''ASSIGNED'', ''Assigned'', 1); ',
'    insert into eba_demo_md_status (cd, description, display_order) ',
'      values (''IN-PROGRESS'', ''In-Progress'', 2); ',
'    insert into eba_demo_md_status (cd, description, display_order) ',
'      values (''COMPLETED'', ''Completed'', 3);',
'      ',
'    ---------------------------------------- ',
'    --<< Load remaining 12 Team Members >>--   ',
'    ---------------------------------------- ',
'    -- Load Team Member 1 ',
'    insert into eba_demo_md_team_members  ',
'      (  id ',
'       , full_name ',
'       , username  ',
'       , email     ',
'       , profile   ',
'      ) ',
'    values ',
'      (  1 ',
'       , ''Lucille Beatie'' ',
'       , ''lbeatie'' ',
'       , ''lucy.beattie@email.com'' ',
'       , ''I have extensive experience running development teams. If I can''''t bring in a project on time and on budget it can''''t be done.'' ',
'      ); ',
'     ',
'    -- Load Team Member 2 ',
'    insert into eba_demo_md_team_members  ',
'      (  id ',
'       , full_name ',
'       , username  ',
'       , email     ',
'       , profile   ',
'      ) ',
'    values ',
'      (  2 ',
'       , ''Nina Herschel'' ',
'       , ''nina'' ',
'       , ''nina.herschel@email.com'' ',
'       , ''I''''m a consumate team player who likes to explore and learn new things. My belief is to work hard and play hard.'' ',
'      ); ',
'     ',
'    -- Load Team Member 3 ',
'    insert into eba_demo_md_team_members  ',
'      (  id ',
'       , full_name ',
'       , username  ',
'       , email     ',
'       , profile   ',
'      ) ',
'    values ',
'      (  3 ',
'       , ''Tameka Hall'' ',
'       , ''thall'' ',
'       , ''tamika.hall@email.com'' ',
'       , ''I am all business and thrive on developing the lowest-level code. Point me at some obtuse security bug or framework API, step back, send in pizza and coke (not diet coke - YUK) occassionally, and consider it done!'' ',
'      ); ',
'     ',
'    -- Load Team Member 4 ',
'    insert into eba_demo_md_team_members  ',
'      (  id ',
'       , full_name ',
'       , username  ',
'       , email     ',
'       , profile   ',
'      ) ',
'    values ',
'      (  4 ',
'       , ''Eva Jelinek'' ',
'       , ''eva'' ',
'       , ''eva.jelinek@email.com'' ',
'       , ''I will tell you directly what I think and expect you to tell me the same. If you are sensitive then it may be best you don''''t talk to me. '' ',
'      ); ',
'     ',
'    -- Load Team Member 5 ',
'    insert into eba_demo_md_team_members  ',
'      (  id ',
'       , full_name ',
'       , username  ',
'       , email     ',
'       , profile   ',
'      ) ',
'    values ',
'      (  5 ',
'       , ''Mei Yu'' ',
'       , ''meiyu'' ',
'       , ''mei.yu@email.com'' ',
'       , ''I have extensive experience in all aspects of application development. If you need help then come and see me.'' ',
'      ); ',
'     ',
'    -- Load Team Member 6 ',
'    insert into eba_demo_md_team_members  ',
'      (  id ',
'       , full_name ',
'       , username  ',
'       , email     ',
'       , profile   ',
'      ) ',
'    values ',
'      (  6 ',
'       , ''Madison Smith'' ',
'       , ''mady'' ',
'       , ''madison.smith@email.com'' ',
'       , ''Mady to my friends - I love being creative and coming up with beautiful solutions.'' ',
'      ); ',
'     ',
'    -- Load Team Member 7 ',
'    insert into eba_demo_md_team_members  ',
'      (  id ',
'       , full_name ',
'       , username  ',
'       , email     ',
'       , profile   ',
'      ) ',
'    values ',
'      (  7 ',
'       , ''Tyson King'' ',
'       , ''tking'' ',
'       , ''alonso.king@email.com'' ',
'       , ''No problem too big, no problem too small!'' ',
'      ); ',
'     ',
'    -- Load Team Member 8 ',
'    insert into eba_demo_md_team_members  ',
'      (  id ',
'       , full_name ',
'       , username  ',
'       , email     ',
'       , profile   ',
'      ) ',
'    values ',
'      (  8 ',
'       , ''Daniel James Lee'' ',
'       , ''dj'' ',
'       , ''daniel.lee@email.com'' ',
'       , ''I am a DJ, I am what I say. If you ask me a question and I don''''t answer, it is not because I''''m rude, it is probably because I have my earbuds in and am rocking out to some gangsta rap.'' ',
'      ); ',
'     ',
'    -- Load Team Member 9 ',
'    insert into eba_demo_md_team_members  ',
'      (  id ',
'       , full_name ',
'       , username  ',
'       , email     ',
'       , profile   ',
'      ) ',
'    values ',
'      (  9 ',
'       , ''Brock Shilling'' ',
'       , ''thebrock'' ',
'       , ''brock.shilling@email.com'' ',
'       , ''I am your man! Let me solve that for you.'' ',
'      ); ',
'     ',
'    -- Load Team Member 10 ',
'    insert into eba_demo_md_team_members  ',
'      (  id ',
'       , full_name ',
'       , username  ',
'       , email     ',
'       , profile   ',
'      ) ',
'    values ',
'      (  10 ',
'       , ''Miyazaki Yokohama'' ',
'       , ''miyazaki'' ',
'       , ''miyazaki.yokohama@email.com'' ',
'       , ''My motto is to lead by example. I run a tight ship where everyone knows where we are heading.'' ',
'      ); ',
'     ',
'    -- Load Team Member 11 ',
'    insert into eba_demo_md_team_members  ',
'      (  id ',
'       , full_name ',
'       , username  ',
'       , email     ',
'       , profile   ',
'      ) ',
'    values ',
'      (  11 ',
'       , ''Bernard Jackman'' ',
'       , ''bernie'' ',
'       , ''bernard.jackman@email.com'' ',
'       , ''I am a great believer in the fact there is no "i" in TEAM.'' ',
'      ); ',
'     ',
'    -- Load Team Member 12 ',
'    insert into eba_demo_md_team_members  ',
'      (  id ',
'       , full_name ',
'       , username  ',
'       , email     ',
'       , profile   ',
'      ) ',
'    values ',
'      (  12 ',
'       , ''Harold Youngblood'' ',
'       , ''harry'' ',
'       , ''harold.youngblood@email.com'' ',
'       , ''Providing I have my soy latte, falafel, and my MacBook - Bring It!'' ',
'      ); ',
'     ',
' ',
'    --*******************************************-- ',
'    --*** Load Projects, Milestones and Tasks ***--  ',
'    --*******************************************-- ',
'    -- Need to insert a project and all of its releated child records at once and then move to the next project ',
' ',
'    ----------------------------------- ',
'    --<< Determine the data offset >>-- ',
'    ----------------------------------- ',
'    l_add_days := sysdate - to_date(''20150101'',''YYYYMMDD''); ',
' ',
'    -------------------------- ',
'    --<< Insert Project 1 >>-- ',
'    -------------------------- ',
'    insert into eba_demo_md_projects ',
'      (  id ',
'       , name ',
'       , description ',
'       , project_lead ',
'       , completed_date ',
'       , status_cd ',
'      ) ',
'      values ',
'      (  1 ',
'       , ''Configure Web Development Tool Environment'' ',
'       , ''Determine the hardware and software required to develop with Web development tool.'' ',
'       , 7 ',
'       , to_date(''20141205'', ''YYYYMMDD'') + l_add_days ',
'       , ''COMPLETED'' ',
'      ); ',
' ',
'    -- Insert Tasks for Project 1  ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  51 ',
'       , 1 ',
'       , 7',
'       , ''Identify Server Requirements'' ',
'       , ''Determine which databases will be used to install Web development tool for Development, QA, and Production.  ',
'          Also specify which Web Listeners will be used for the three environments.'' ',
'       , null ',
'       , ''Y'' ',
'       , to_date(''20141201'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141202'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
'',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  52 ',
'       , 1 ',
'       , 5 ',
'       , ''Install Web development tool'' ',
'       , ''Install the latest version of Web development tool from the vendor into the databases for Development, QA, and Production. ',
'          Note: For QA and Production, Web development tool should be configured as "run time" only.'' ',
'       , null ',
'       , ''Y'' ',
'       , to_date(''20141203'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141203'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_task_todos',
'      (  id',
'       , project_id',
'       , task_id',
'       , assignee',
'       , name',
'       , description',
'       , is_complete_yn',
'      )',
'    values',
'      (  1',
'       , 1',
'       , 52',
'       , 7',
'       , ''Download tool from vendor''',
'       , ''Download the latest available version of the Web development tool from the vendor site.''',
'       , ''Y''',
'      );',
'',
'    insert into eba_demo_md_task_links',
'      (  id',
'       , project_id',
'       , task_id',
'       , link_type',
'       , url',
'       , application_id',
'       , application_page',
'       , description',
'      )',
'    values',
'      (  1',
'       , 1',
'       , 52',
'       , ''URL''',
'       , ''http://Web-tool.download.com''',
'       , null',
'       , null',
'       , ''Ficticous download page for Web development tool'' ',
'      );',
' ',
'    insert into eba_demo_md_task_links',
'      (  id',
'       , project_id',
'       , task_id',
'       , link_type',
'       , url',
'       , application_id',
'       , application_page',
'       , description',
'      )',
'    values',
'      (  2',
'       , 1',
'       , 52',
'       , ''URL''',
'       , ''http://Web-tool.install.com''',
'       , null',
'       , null',
'       , ''Ficticous installation guide for Web development tool'' ',
'      );',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  53 ',
'       , 1 ',
'       , 12 ',
'       , ''Configure Web Listeners'' ',
'       , ''Configure the three Web Listeners for Web development tool to support the Dev, QA, and Prod environments.'' ',
'       , null ',
'       , ''Y'' ',
'       , to_date(''20141203'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141203'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_task_todos',
'      (  id',
'       , project_id',
'       , task_id',
'       , assignee',
'       , name',
'       , description',
'       , is_complete_yn',
'      )',
'    values',
'      (  2',
'       , 1',
'       , 53',
'       , 12',
'       , ''Download Web Listener from vendor''',
'       , ''Download the latest available version of the Web Listener from the vendor site.''',
'       , ''Y''',
'      );',
' ',
'    insert into eba_demo_md_task_links',
'      (  id',
'       , project_id',
'       , task_id',
'       , link_type',
'       , url',
'       , application_id',
'       , application_page',
'       , description',
'      )',
'    values',
'      (  3',
'       , 1',
'       , 53',
'       , ''URL''',
'       , ''http://Web-Listener.download.com''',
'       , null',
'       , null',
'       , ''Ficticous download page for Web Listener'' ',
'      );',
' ',
'    insert into eba_demo_md_task_links',
'      (  id',
'       , project_id',
'       , task_id',
'       , link_type',
'       , url',
'       , application_id',
'       , application_page',
'       , description',
'      )',
'    values',
'      (  4',
'       , 1',
'       , 53',
'       , ''URL''',
'       , ''http://Web-Listener.install.com''',
'       , null',
'       , null',
'       , ''Ficticous installation guide for Web Listener'' ',
'      );',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  54 ',
'       , 1 ',
'       , 11 ',
'       , ''Configure Web development tool Instance Administration Settings'' ',
'       , ''Set the appropriate security and configuration settings for the development instance using specified tools. ',
'          Also set instance settings for QA and Production using the available APIs.'' ',
'       , null ',
'       , ''Y'' ',
'       , to_date(''20141204'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141204'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_task_links',
'      (  id',
'       , project_id',
'       , task_id',
'       , link_type',
'       , url',
'       , application_id',
'       , application_page',
'       , description',
'      )',
'    values',
'      (  6',
'       , 1',
'       , 54',
'       , ''URL''',
'       , ''https://Web-tool.admin.com''',
'       , null',
'       , null',
'       , ''Ficticous administration guide for Web development tool'' ',
'      );',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  55 ',
'       , 1 ',
'       , 5 ',
'       , ''Define Workspaces'' ',
'       , ''Define workspaces needed for different application development teams. ',
'          It is important that access be granted to the necessary schemas and/or new schemas created as appropriate. ',
'          Then export these workspaces and import them into QA and Production environments.'' ',
'       , null ',
'       , ''Y'' ',
'       , to_date(''20141205'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141205'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  56 ',
'       , 1 ',
'       , 12 ',
'       , ''Assign Workspace Administrators'' ',
'       , ''In development assign a minimum of two Workspace administators to each workspace. ',
'          These administrators will then be responsible for maintaining developer access within their own workspaces.'' ',
'       , null ',
'       , ''N'' ',
'       , to_date(''20141205'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141205'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Project Comments for Project 1 ',
'    insert into eba_demo_md_comments ',
'      (  id ',
'       , project_id ',
'       , comment_text ',
'      ) ',
'    values ',
'      (  1 ',
'       , 1 ',
'       , ''We have decided to use the Web Listener included with the database for Dev Only and a separate Web Listener for QA and Prod.'' ',
'      ); ',
'    update eba_demo_md_comments ',
'      set created = to_date(''20141202'', ''YYYYMMDD'') + l_add_days',
'      ,   created_by = ''TKING''',
'      where id = 1; ',
' ',
'    insert into eba_demo_md_comments ',
'      (  id ',
'       , project_id ',
'       , comment_text ',
'      ) ',
'    values ',
'      (  2 ',
'       , 1 ',
'       , ''Installed latest version of Web development tool.'' ',
'      ); ',
'    update eba_demo_md_comments ',
'      set created = to_date(''20141204'', ''YYYYMMDD'') + l_add_days ',
'      ,   created_by = ''MEIYU'' ',
'      where id = 2; ',
' ',
'    insert into eba_demo_md_comments ',
'      (  id ',
'       , project_id ',
'       , comment_text ',
'      ) ',
'    values ',
'      (  3 ',
'       , 1 ',
'       , ''Installed latest version of Web Listener in QA and Prod environments'' ',
'      ); ',
'    update eba_demo_md_comments ',
'      set created = to_date(''20141204'', ''YYYYMMDD'') + l_add_days ',
'      ,   created_by = ''HARRY'' ',
'      where id = 3; ',
'    commit;',
'',
' ',
'    -------------------------- ',
'    --<< Insert Project 2 >>-- ',
'    -------------------------- ',
'    insert into eba_demo_md_projects ',
'      (  id ',
'       , name ',
'       , description ',
'       , project_lead ',
'       , completed_date ',
'       , status_cd ',
'      ) ',
'      values ',
'      (  2 ',
'       , ''Train Developers on Web development tool'' ',
'       , ''Ensure all developers who will be developing with the new tool get the appropriate training.'' ',
'       , 1 ',
'       , to_date(''20141220'', ''YYYYMMDD'') + l_add_days ',
'       , ''COMPLETED'' ',
'      ); ',
' ',
'    -- Insert Milestone 1 for Project 2 ',
'    insert into eba_demo_md_milestones ',
'      (  id ',
'       , project_id ',
'       , name ',
'       , description ',
'       , due_date ',
'      ) ',
'    values ',
'      (  11 ',
'       , 2 ',
'       , ''Train the Trainers'' ',
'       , ''Rather than all developers being trained centrally, a select group will be trained. ',
'          These people will then be responsible for training other developers in their group.'' ',
'       , to_date(''20141211'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Tasks for Project 2 / Milestone 1 ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  57 ',
'       , 2 ',
'       , 6 ',
'       , ''Prepare Course Outline'' ',
'       , ''Creation of the training syllabus'' ',
'       , 11 ',
'       , ''Y'' ',
'       , to_date(''20141201'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141205'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  58 ',
'       , 2 ',
'       , 6 ',
'       , ''Write Training Guide'' ',
'       , ''Produce the powerpoint deck (with notes) for the training instructor.'' ',
'       , 11 ',
'       , ''N'' ',
'       , to_date(''20141206'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141208'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_task_todos',
'      (  id',
'       , project_id',
'       , task_id',
'       , assignee',
'       , name',
'       , description',
'       , is_complete_yn',
'      )',
'    values',
'      (  4',
'       , 2',
'       , 58',
'       , 6',
'       , ''Review the online examples hosted by the vendor''',
'       , ''Run through the numerous examples available from the vendor to get course content.''',
'       , ''Y''',
'      );',
' ',
'    insert into eba_demo_md_task_links',
'      (  id',
'       , project_id',
'       , task_id',
'       , link_type',
'       , url',
'       , application_id',
'       , application_page',
'       , description',
'      )',
'    values',
'      (  7',
'       , 2',
'       , 58',
'       , ''URL''',
'       , ''https://Web-tool.examples.com''',
'       , null',
'       , null',
'       , ''Ficticous examples page for Web development tool'' ',
'      );',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  59 ',
'       , 2 ',
'       , 6 ',
'       , ''Develop Training Exercises'' ',
'       , ''Create scripts for sample data and problem statements with solutions.'' ',
'       , 11 ',
'       , ''Y'' ',
'       , to_date(''20141202'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141208'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  60 ',
'       , 2 ',
'       , 7',
'       , ''Conduct Train-the-Trainer session'' ',
'       , ''Give the training material to the selected developers.'' ',
'       , 11 ',
'       , ''Y'' ',
'       , to_date(''20141209'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141211'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Milestone 2 for Project 2 ',
'    insert into eba_demo_md_milestones ',
'      (  id ',
'       , project_id ',
'       , name ',
'       , description ',
'       , due_date ',
'      ) ',
'    values ',
'      (  12 ',
'       , 2 ',
'       , ''All Developers Trained'' ',
'       , ''Train the Trainers will have successfully trained the remaining development team members.'' ',
'       , to_date(''20141215'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Tasks for Project 2 / Milestone 2 ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  61 ',
'       , 2 ',
'       , 7 ',
'       , ''Train Developers I'' ',
'       , ''Give the training to developers within your group.'' ',
'       , 12 ',
'       , ''Y'' ',
'       , to_date(''20141212'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141214'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  62 ',
'       , 2 ',
'       , 8 ',
'       , ''Train Developers II'' ',
'       , ''Give the training to developers within your group.'' ',
'       , 12 ',
'       , ''Y'' ',
'       , to_date(''20141214'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141216'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Project Comments for Project 2 ',
'    insert into eba_demo_md_comments ',
'      (  id ',
'       , project_id ',
'       , comment_text ',
'      ) ',
'    values ',
'      (  4 ',
'       , 2 ',
'       , ''The exercises had some errors that need correcting ASAP.'' ',
'      ); ',
'    update eba_demo_md_comments ',
'      set created = to_date(''20141211'', ''YYYYMMDD'') + l_add_days ',
'      where id = 4; ',
' ',
'    insert into eba_demo_md_comments ',
'      (  id ',
'       , project_id ',
'       , comment_text ',
'      ) ',
'    values ',
'      (  5 ',
'       , 2 ',
'       , ''Thanks for the feedback, Exercises corrected.'' ',
'      ); ',
'    update eba_demo_md_comments ',
'      set created = to_date(''20141212'', ''YYYYMMDD'') + l_add_days ',
'      ,   created_by = ''TKING'' ',
'      where id = 5; ',
'    commit;',
' ',
' ',
'    -------------------------- ',
'    --<< Insert Project 3 >>-- ',
'    -------------------------- ',
'    insert into eba_demo_md_projects ',
'      (  id ',
'       , name ',
'       , description ',
'       , project_lead ',
'       , completed_date ',
'       , status_cd ',
'      ) ',
'      values ',
'      (  3 ',
'       , ''Migrate Legacy Applications'' ',
'       , ''Move the data and redevelop the applications currently running on top of legacy servers'' ',
'       , 10 ',
'       , null ',
'       , ''IN-PROGRESS'' ',
'      ); ',
' ',
'    -- Insert Milestone 1 for Project 3 ',
'    insert into eba_demo_md_milestones ',
'      (  id ',
'       , project_id ',
'       , name ',
'       , description ',
'       , due_date ',
'      ) ',
'    values ',
'      (  13 ',
'       , 3 ',
'       , ''Move Data Structures'' ',
'       , ''Move all of the tables and program logic across to the new database'' ',
'       , to_date(''20141220'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Tasks for Project 3 / Milestone 1 ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  63 ',
'       , 3 ',
'       , 3 ',
'       , ''Create New Tables'' ',
'       , ''Create table scripts to replicate the legacy tables'' ',
'       , 13 ',
'       , ''Y'' ',
'       , to_date(''20141214'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141214'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_task_todos',
'      (  id',
'       , project_id',
'       , task_id',
'       , assignee',
'       , name',
'       , description',
'       , is_complete_yn',
'      )',
'    values',
'      (  5',
'       , 3',
'       , 63',
'       , 3',
'       , ''Reverse engineer the legacy tables into the data modeling tool''',
'       , ''Connect the data modeling tool to the legacy dev instance and suck in all of the required DB objects.''',
'       , ''Y''',
'      );',
' ',
'    insert into eba_demo_md_task_links',
'      (  id',
'       , project_id',
'       , task_id',
'       , link_type',
'       , url',
'       , application_id',
'       , application_page',
'       , description',
'      )',
'    values',
'      (  8',
'       , 3',
'       , 63',
'       , ''URL''',
'       , ''http://Web-data-modeler.info.com''',
'       , null',
'       , null',
'       , ''Ficticous information site for the data mdoeling tool'' ',
'      );',
' ',
'    insert into eba_demo_md_task_todos',
'      (  id',
'       , project_id',
'       , task_id',
'       , assignee',
'       , name',
'       , description',
'       , is_complete_yn',
'      )',
'    values',
'      (  6',
'       , 3',
'       , 63',
'       , 3',
'       , ''Add proper integrity constraints to the entities''',
'       , ''Add foreign keys as needed to correctly integrate referential integrity.''',
'       , ''Y''',
'      );',
' ',
'    insert into eba_demo_md_task_todos',
'      (  id',
'       , project_id',
'       , task_id',
'       , assignee',
'       , name',
'       , description',
'       , is_complete_yn',
'      )',
'    values',
'      (  7',
'       , 3',
'       , 63',
'       , 3',
'       , ''Generate DDL Scripts for new tables''',
'       , ''Generate the DDL scripts from the data modeling tool to create the DB objects in the new database.''',
'       , ''Y''',
'      );',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  64 ',
'       , 3 ',
'       , 2 ',
'       , ''Migrate data from Legacy Server'' ',
'       , ''Develop scripts to populate the new database tables from the legacy database.'' ',
'       , 13',
'       , ''Y'' ',
'       , to_date(''20141215'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141218'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  65 ',
'       , 3 ',
'       , 3 ',
'       , ''Convert transaction logic'' ',
'       , ''Convert the legacy database transactional objects across to the new database'' ',
'       , 13',
'       , ''Y'' ',
'       , to_date(''20141215'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141217'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Milestone 2 for Project 3 ',
'    insert into eba_demo_md_milestones ',
'      (  id ',
'       , project_id ',
'       , name ',
'       , description ',
'       , due_date ',
'      ) ',
'    values ',
'      (  14 ',
'       , 3 ',
'       , ''Redevelop HR Applications'' ',
'       , ''Build applications to replace the HR functionality currently implemented in older technologies'' ',
'       , to_date(''20141228'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Tasks for Project 3 / Milestone 2 ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  66 ',
'       , 3 ',
'       , 4 ',
'       , ''Redevelop Timesheet App'' ',
'       , ''Develop desktop and mobile app for entering timesheets'' ',
'       , 14 ',
'       , ''Y'' ',
'       , to_date(''20141217'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141222'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  67 ',
'       , 3 ',
'       , 8 ',
'       , ''Create Shift Schedule App'' ',
'       , ''Create an app for defining when people are scheduled to work different shifts.'' ',
'       , 14 ',
'       , ''Y'' ',
'       , to_date(''20141217'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141225'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  68 ',
'       , 3 ',
'       , 8 ',
'       , ''Reengineer Employee App'' ',
'       , ''Create an app for employee details and benefits.'' ',
'       , 14 ',
'       , ''N'' ',
'       , to_date(''20141226'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141228'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Milestone 3 for Project 3 ',
'    insert into eba_demo_md_milestones ',
'      (  id ',
'       , project_id ',
'       , name ',
'       , description ',
'       , due_date ',
'      ) ',
'    values ',
'      (  15 ',
'       , 3 ',
'       , ''Redevelop Project Tracking Applications'' ',
'       , ''Build applications to replace the project tracking functionality currently running on legacy servers'' ',
'       , to_date(''20150103'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Tasks for Project 3 / Milestone 3 ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  69 ',
'       , 3 ',
'       , 9 ',
'       , ''Customize Customer Tracker Packaged App'' ',
'       , ''Install Customer Tracker and use flex fields to meet requirements.'' ',
'       , 15 ',
'       , ''Y'' ',
'       , to_date(''20141228'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141228'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  70 ',
'       , 3 ',
'       , 9 ',
'       , ''Migrate data into Customer Tracker tables'' ',
'       , ''Move previous project tracking data into the Customer Tracker EBA_CUST_xxx tables.'' ',
'       , 15 ',
'       , ''Y'' ',
'       , to_date(''20141229'', ''YYYYMMDD'') + l_add_days ',
''))
);
wwv_flow_imp_shared.append_to_install_script(
 p_id=>wwv_flow_imp.id(27396689229659065939)
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'       , to_date(''20141230'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  71 ',
'       , 3 ',
'       , 11 ',
'       , ''Pilot new Customer Tracker application'' ',
'       , ''Use Customer Tracker to ensure it meets requirements.'' ',
'       , 15 ',
'       , ''N'' ',
'       , to_date(''20141231'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150109'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Project Comments for Project 3 ',
'    insert into eba_demo_md_comments ',
'      (  id ',
'       , project_id ',
'       , comment_text ',
'      ) ',
'    values ',
'      (  6 ',
'       , 3 ',
'       , ''Bernie - I have migrated all of the projects data across, so you can start your pilot now.'' ',
'      ); ',
'    update eba_demo_md_comments ',
'      set created = to_date(''201412310100'', ''YYYYMMDDHH24MI'') + l_add_days ',
'      ,   created_by = ''THEBROCK'' ',
'      where id = 6; ',
' ',
'    insert into eba_demo_md_comments ',
'      (  id ',
'       , project_id ',
'       , comment_text ',
'      ) ',
'    values ',
'      (  7 ',
'       , 3 ',
'       , ''I''''m telling you now, this Customer Tracker thing had better be good'' ',
'      ); ',
'    update eba_demo_md_comments ',
'      set created = to_date(''201412310200'', ''YYYYMMDDHH24MI'') + l_add_days ',
'      ,   created_by = ''BERNIE'' ',
'      where id = 7; ',
' ',
'    insert into eba_demo_md_comments ',
'      (  id ',
'       , project_id ',
'       , comment_text ',
'      ) ',
'    values ',
'      (  8 ',
'       , 3 ',
'       , ''This guy Mike told me this app is brilliant.'' ',
'      ); ',
'    update eba_demo_md_comments ',
'      set created = to_date(''201412310300'', ''YYYYMMDDHH24MI'') + l_add_days ',
'      ,   created_by = ''THEBROCK'' ',
'      where id = 8; ',
' ',
'    insert into eba_demo_md_comments ',
'      (  id ',
'       , project_id ',
'       , comment_text ',
'      ) ',
'    values ',
'      (  9 ',
'       , 3 ',
'       , ''So far Customer Tracker is working out great - better than the old apps. Brocky, my boy, you are the man!'' ',
'      ); ',
'    update eba_demo_md_comments ',
'      set created = to_date(''201501010100'', ''YYYYMMDDHH24MI'') + l_add_days ',
'      ,   created_by = ''BERNIE'' ',
'      where id = 9; ',
' ',
'    insert into eba_demo_md_comments ',
'      (  id ',
'       , project_id ',
'       , comment_text ',
'      ) ',
'    values ',
'      (  10 ',
'       , 3 ',
'       , ''Bernie, I told you that you were going to be impressed.'' ',
'      ); ',
'    update eba_demo_md_comments ',
'      set created = to_date(''201501010200'', ''YYYYMMDDHH24MI'') + l_add_days ',
'      ,   created_by = ''THEBROCK'' ',
'      where id = 10; ',
' ',
'    insert into eba_demo_md_comments ',
'      (  id ',
'       , project_id ',
'       , comment_text ',
'      ) ',
'    values ',
'      (  11 ',
'       , 3 ',
'       , ''All of the old tables and transactional logic now migrated and ready for developers to use in the new database.'' ',
'      ); ',
'    update eba_demo_md_comments ',
'      set created = to_date(''20141217'', ''YYYYMMDD'') + l_add_days ',
'      ,   created_by = ''THALL'' ',
'      where id = 11; ',
'    commit;',
' ',
' ',
'    -------------------------- ',
'    --<< Insert Project 4 >>-- ',
'    -------------------------- ',
'    insert into eba_demo_md_projects ',
'      (  id ',
'       , name ',
'       , description ',
'       , project_lead ',
'       , completed_date ',
'       , status_cd ',
'      ) ',
'      values ',
'      (  4 ',
'       , ''Develop Partner Portal POC'' ',
'       , ''Develop a proof of concept that partners can use to work more collaboratively with us.'' ',
'       , 7',
'       , null ',
'       , ''IN-PROGRESS'' ',
'      ); ',
' ',
'    -- Insert Milestone 1 for Project 4 ',
'    insert into eba_demo_md_milestones ',
'      (  id ',
'       , project_id ',
'       , name ',
'       , description ',
'       , due_date ',
'      ) ',
'    values ',
'      (  16 ',
'       , 4 ',
'       , ''Define Requirements'' ',
'       , ''Work with key stakeholders to define the scope of the project, and design screen flow and data requirements.'' ',
'       , to_date(''20150106'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Tasks for Project 4 / Milestone 1 ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  72 ',
'       , 4 ',
'       , 7',
'       , ''Define scope of Partner Portal App.'' ',
'       , ''Meet with internal and external SMEs and define the requirements'' ',
'       , 16 ',
'       , ''N'' ',
'       , to_date(''20141228'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150104'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_task_todos',
'      (  id',
'       , project_id',
'       , task_id',
'       , assignee',
'       , name',
'       , description',
'       , is_complete_yn',
'      )',
'    values',
'      (  8',
'       , 4',
'       , 72',
'       , 7',
'       , ''Meet key Partners for input''',
'       , ''Determine the most important functionality for Partners.''',
'       , ''Y''',
'      );',
' ',
'    insert into eba_demo_md_task_todos',
'      (  id',
'       , project_id',
'       , task_id',
'       , assignee',
'       , name',
'       , description',
'       , is_complete_yn',
'      )',
'    values',
'      (  9',
'       , 4',
'       , 72',
'       , 7',
'       , ''Meet internal Partner liason reps''',
'       , ''Determine the most important functionality for internal stakeholders.''',
'       , ''Y''',
'      );',
' ',
'    insert into eba_demo_md_task_todos',
'      (  id',
'       , project_id',
'       , task_id',
'       , assignee',
'       , name',
'       , description',
'       , is_complete_yn',
'      )',
'    values',
'      (  10',
'       , 4',
'       , 72',
'       , 7',
'       , ''Develop inital screen designs''',
'       , ''Prototype new screens using Web development tool to get buy-in from SMEs.''',
'       , ''Y''',
'      );',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  73 ',
'       , 4 ',
'       , 8 ',
'       , ''Define Partner App Data Structures'' ',
'       , ''Design the data model for new and existing entities required to support the Partner Portal.'' ',
'       , 16 ',
'       , ''N'' ',
'       , to_date(''20150104'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150107'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  74 ',
'       , 4 ',
'       , 6 ',
'       , ''Design User Experience'' ',
'       , ''Define how partners will interact with the application.'' ',
'       , 16 ',
'       , ''N'' ',
'       , to_date(''20150105'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150106'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
' ',
'    -- Insert Milestone 2 for Project 4 ',
'    insert into eba_demo_md_milestones ',
'      (  id ',
'       , project_id ',
'       , name ',
'       , description ',
'       , due_date ',
'      ) ',
'    values ',
'      (  17 ',
'       , 4 ',
'       , ''Build Proof-of-Concept'' ',
'       , ''Create the initial screens and populate with data so key stakeholders can review proposed solution.'' ',
'       , to_date(''20150113'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Tasks for Project 4 / Milestone 2 ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  75 ',
'       , 4 ',
'       , 2 ',
'       , ''Develop Admin Screens for Partner Portal'' ',
'       , ''Develop the screens needed to maintain all of the base tables for the Partner Portal app.'' ',
'       , 17 ',
'       , ''N'' ',
'       , to_date(''20150108'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150110'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  76 ',
'       , 4 ',
'       , 12 ',
'       , ''Populate Data Structures for Partner Portal'' ',
'       , ''Upload sample data provided by key partner, and ensure existing tables accessible.'' ',
'       , 17 ',
'       , ''N'' ',
'       , to_date(''20150108'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150109'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  77 ',
'       , 4 ',
'       , 6 ',
'       , ''Design first-cut of main Partner Portal app'' ',
'       , ''Implement the major functional areas and ensure navigation between pages is working correctly.'' ',
'       , 17 ',
'       , ''N'' ',
'       , to_date(''20150107'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150111'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  78 ',
'       , 4 ',
'       , 7',
'       , ''Present POC to Key Stakeholders'' ',
'       , ''Walk key stakeholders through the proof of concept and obtain their feedback.'' ',
'       , 17 ',
'       , ''N'' ',
'       , to_date(''20150112'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150112'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
' ',
'    -------------------------- ',
'    --<< Insert Project 5 >>-- ',
'    -------------------------- ',
'    insert into eba_demo_md_projects ',
'      (  id ',
'       , name ',
'       , description ',
'       , project_lead ',
'       , completed_date ',
'       , status_cd ',
'      ) ',
'      values ',
'      (  5 ',
'       , ''Develop Production Partner Portal'' ',
'       , ''Develop the production app that partners can use to work more collaboratively with us.'' ',
'       , 1 ',
'       , null ',
'       , ''ASSIGNED'' ',
'      ); ',
' ',
'    -- Insert Milestone 1 for Project 5 ',
'    insert into eba_demo_md_milestones ',
'      (  id ',
'       , project_id ',
'       , name ',
'       , description ',
'       , due_date ',
'      ) ',
'    values ',
'      (  18 ',
'       , 5 ',
'       , ''Define Production App Scope'' ',
'       , ''Based on the results of the POC, define the requirements for the production app.'' ',
'       , to_date(''20150114'', ''YYYYMMDD'') + l_add_days ',
'     ); ',
' ',
'    -- Insert Tasks for Project 5 / Milestone 1 ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  79 ',
'       , 5 ',
'       , 7',
'       , ''Define production scope of Partner Portal App.'' ',
'       , ''Define the scope and timelines for the development of the production app.'' ',
'       , 18 ',
'       , ''N'' ',
'       , to_date(''20150113'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150114'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  80 ',
'       , 5 ',
'       , 8 ',
'       , ''Finalize Partner App Data Model'' ',
'       , ''Refine the data model for new and existing entities required to support the Partner Portal.'' ',
'       , 18 ',
'       , ''N'' ',
'       , to_date(''20150113'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150114'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  81 ',
'       , 5 ',
'       , 6 ',
'       , ''Finalize User Experience'' ',
'       , ''Write developer standards on UX and development standards on how partners will interact with the application.'' ',
'       , 18 ',
'       , ''N'' ',
'       , to_date(''20150113'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150114'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
' ',
'    -- Insert Milestone 2 for Project 5 ',
'    insert into eba_demo_md_milestones ',
'      (  id ',
'       , project_id ',
'       , name ',
'       , description ',
'       , due_date ',
'      ) ',
'    values ',
'      (  19 ',
'       , 5 ',
'       , ''Build Phase 1 of Production Partner Portal App'' ',
'       , ''Develop the modules defined in the first phase of the application.'' ',
'       , to_date(''20150121'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Tasks for Project 5 / Milestone 2 ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  82 ',
'       , 5 ',
'       , 6 ',
'       , ''Refine Admin Screens for Partner Portal'' ',
'       , ''Refine screens developed in the POC to be fully operational to maintain all of the base tables for the Partner Portal app.'' ',
'       , 19 ',
'       , ''N'' ',
'       , to_date(''20150115'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150118'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  83 ',
'       , 5 ',
'       , 5 ',
'       , ''Populate Data Structures for Production Partner Portal'' ',
'       , ''Upload actual data provided by key partner, and ensure existing tables accessible.'' ',
'       , 19 ',
'       , ''N'' ',
'       , to_date(''20150115'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150117'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  84 ',
'       , 5 ',
'       , 7 ',
'       , ''Design production screens for main Partner Portal app'' ',
'       , ''Implement fully functional and complete screens to cover the major functional areas in Phase 1.'' ',
'       , 19 ',
'       , ''N'' ',
'       , to_date(''20150117'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150123'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Milestone 3 for Project 5 ',
'    insert into eba_demo_md_milestones ',
'      (  id ',
'       , project_id ',
'       , name ',
'       , description ',
'       , due_date ',
'      ) ',
'    values ',
'      (  20 ',
'       , 5 ',
'       , ''Perform Beta testing with select Partners'' ',
'       , ''Work with a few key partners to trial Phase 1 of the Partner Portal app.'' ',
'       , to_date(''20150129'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Tasks for Project 5 / Milestone 3 ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  85 ',
'       , 5 ',
'       , 10 ',
'       , ''Train Partners'' ',
'       , ''Train selected partners in how to use the Partner Portal app.'' ',
'       , 20 ',
'       , ''N'' ',
'       , to_date(''20150122'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150122'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  86 ',
'       , 5 ',
'       , 4 ',
'       , ''Monitor Partners'' ',
'       , ''Monitor partners selected for the Beta and provide assistance as necessary.'' ',
'       , 20 ',
'       , ''N'' ',
'       , to_date(''20150123'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150128'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  87 ',
'       , 5 ',
'       , 7',
'       , ''Review Beta Feedback'' ',
'       , ''Analyse feedback from the partners who participated in the Beta program.'' ',
'       , 20 ',
'       , ''N'' ',
'       , to_date(''20150129'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150129'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Milestone 4 for Project 5 ',
'    insert into eba_demo_md_milestones ',
'      (  id ',
'       , project_id ',
'       , name ',
'       , description ',
'       , due_date ',
'      ) ',
'    values ',
'      (  21 ',
'       , 5 ',
'       , ''Complete Phase 1 Development of Partner Portal app'' ',
'       , ''Based on the results of the Beta program, enhance the application to make production ready.'' ',
'       , to_date(''20150225'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Tasks for Project 5 / Milestone 4 ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  88 ',
'       , 5 ',
'       , 5 ',
'       , ''Improve existing feature functions'' ',
'       , ''Enhance existing features based on responses from Beta partners.'' ',
'       , 21 ',
'       , ''N'' ',
'       , to_date(''20150201'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150220'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  89 ',
'       , 5 ',
'       , 3 ',
'       , ''Add required feature functions'' ',
'       , ''Add missing features outlined in responses from Beta partners.'' ',
'       , 21 ',
'       , ''N'' ',
'       , to_date(''20150201'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150220'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  90 ',
'       , 5 ',
'       , 12 ',
'       , ''Load full production data'' ',
'       , ''Ensure all data required for production roll out are inserted and maintained.'' ',
'       , 21 ',
'       , ''N'' ',
'       , to_date(''20150215'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150220'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  91 ',
'       , 5 ',
'       , 8 ',
'       , ''Test Production Partner Portal'' ',
'       , ''Do full scale testing on the Partner Portal application.'' ',
'       , 21 ',
'       , ''N'' ',
'       , to_date(''20150221'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150225'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Milestone 5 for Project 5 ',
'    insert into eba_demo_md_milestones ',
'      (  id ',
'       , project_id ',
'       , name ',
'       , description ',
'       , due_date ',
'      ) ',
'    values ',
'      (  22 ',
'       , 5 ',
'       , ''Roll out Phase 1 of Partner Portal app'' ',
'       , ''Go-Live for the Partner Portal application to all partners.'' ',
'       , to_date(''20150301'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Tasks for Project 5 / Milestone 5 ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  92 ',
'       , 5 ',
'       , 3 ',
'       , ''Install Partner Portal app onto Production Server'' ',
'       , ''Install the database objects and application(s) into the production environment.'' ',
'       , 22 ',
'       , ''N'' ',
'       , to_date(''20150226'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150226'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  93 ',
'       , 5 ',
'       , 12 ',
'       , ''Configure production data load procedures'' ',
'       , ''Install and test data load procedures from internal and external data sources into production environment.'' ',
'       , 22 ',
'       , ''N'' ',
'       , to_date(''20150227'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150228'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  94 ',
'       , 5 ',
'       , 7',
'       , ''Provide user credentials for partners'' ',
'       , ''Define user credentials for each partner to allow access to the Partner Portal app.'' ',
'       , 22 ',
'       , ''N'' ',
'       , to_date(''20150228'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150228'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into eba_demo_md_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  95 ',
'       , 5 ',
'       , 1 ',
'       , ''Announce Partner Portal app to all partners'' ',
'       , ''Email or call partners to inform them of the new application and instructions on how to get started.'' ',
'       , 22 ',
'       , ''N'' ',
'       , to_date(''20150301'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150301'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'  end load_sample_data; ',
' ',
'  procedure remove_sample_data is ',
'  begin ',
'    delete from eba_demo_md_team_members;',
'    delete from eba_demo_md_projects; ',
'      -- Cascade delete will delete Milestones, Tasks, Task ToDos, Task Links and Comment records ',
'  end remove_sample_data; ',
' ',
'end eba_demo_md_data_pkg; ',
'/',
'',
'',
'-----------------------',
'--<< Load the Data >>--',
'-----------------------',
'begin',
'  eba_demo_md_data_pkg.load_sample_data;',
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
