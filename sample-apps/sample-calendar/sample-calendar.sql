--------------------------------------------------------------------------------
-- Name: Sample Calendar
-- Copyright (c) 2012, 2025 Oracle and/or its affiliates.
-- Licensed under the Universal Permissive License v 1.0 as shown
-- at https://oss.oracle.com/licenses/upl/
-- 
-- This script makes use of the FullCalendar product. Refer to
-- THIRD_PARTY_LICENSES.txt in the top directory of this project
-- or at https://github.com/oracle/apex for license information.
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
,p_default_application_id=>7820
,p_default_id_offset=>9797958909058847
,p_default_owner=>'ORACLE'
);
end;
/
 
prompt APPLICATION 7820 - Sample Calendar
--
-- Application Export:
--   Application:     7820
--   Name:            Sample Calendar
--   Exported By:     ORACLE
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     37
--       Items:                   71
--       Validations:              1
--       Processes:               19
--       Regions:                126
--       Buttons:                 31
--       Dynamic Actions:         56
--     Shared Components:
--       Logic:
--         Processes:              1
--       Navigation:
--         Parent Tabs:            1
--         Lists:                  9
--         Breadcrumbs:            1
--           Entries:             35
--         NavBar Entries:         3
--       Security:
--         Authentication:         1
--       User Interface:
--         Themes:                 1
--         Templates:
--           Region:               1
--         LOVs:                   4
--         Shortcuts:              1
--         Plug-ins:               5
--       PWA:
--       Globalization:
--         Messages:               4
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--       Install scripts:          3
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
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Sample Calendar')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'SAMPLE-CALENDAR')
,p_application_group=>wwv_flow_imp.id(4851185638549144)
,p_application_group_name=>'Sample Apps'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'0D453848360D386985C4B2C8DC5F4FD47285B41C90A9749316FD215E7F0A4AB5'
,p_checksum_salt_last_reset=>'19990804000000'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en-us'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'YYYY/MM/DD'
,p_date_time_format=>'YYYY/MM/DD HH24:MI'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>wwv_flow_string.join(wwv_flow_t_varchar2(
'1.0.7 -> 1.0.8: Added "SQL Source" show/hide region to "Monthly Calendar" and "Date Reporting" pages.',
'1.0.8 -> 1.0.9: Changed Authentication scheme to use new "ORA_WWV_PACKAGED_APPLICATIONS" cookie'))
,p_authentication_id=>wwv_flow_imp.id(8203234350151693323)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Sample Calendar'
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
,p_substitution_value_01=>'Sample Calendar'
,p_substitution_string_02=>'GETTING_STARTED_URL'
,p_substitution_value_02=>'http://www.oracle.com/technetwork/developer-tools/apex/index.html'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>10
,p_version_scn=>186626975
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'N'
,p_copyright_banner=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Name: #APP_NAME#',
'Copyright (c) 2012, #YEAR# Oracle and/or its affiliates.',
'Licensed under the Universal Permissive License v 1.0 as shown',
'at https://oss.oracle.com/licenses/upl/',
'',
'This script makes use of the FullCalendar product. Refer to',
'THIRD_PARTY_LICENSES.txt in the top directory of this project',
'or at https://github.com/oracle/apex for license information.'))
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(7820)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_theme_style_by_user_pref=>true
,p_navigation_list_id=>wwv_flow_imp.id(1707014865021906533)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_css_file_urls=>'#IMAGE_PREFIX#pkgapp_ui/css/5.0#MIN#.css'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(1707029450503015885)
,p_nav_bar_list_template_id=>2847543055748234966
);
end;
/
prompt --application/shared_components/navigation/lists/standard_calendars
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(792126456040946777)
,p_name=>'Standard Calendars'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078457
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(792126688203946778)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Monthly Calendar: Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'This is a standard Oracle APEX calendar region component built using the create calendar region wizard.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(792127107954946779)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Weekly Calendar: Conference'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'This is a standard Oracle APEX calendar region component showing a weekly view on events with a time component. '
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(792127435971946779)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Weekly Calendar: Edit Sessions'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-edit'
,p_list_text_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This weekly calendar allows to edit existing events by clicking them or to select a date range in the Calendar to create a new event.',
''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(792127923045946779)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Weekly Calendar: Drag & Drop'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-mouse-pointer'
,p_list_text_01=>'Change the start and end timestamps for calendar events with drag and drop.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(792128272008946780)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Weekly Calendar: Time Format'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-clock'
,p_list_text_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This page allows to choose the time format (12h, 24h) which is being used to display the time component of an event timestamp.',
''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(630190010218612528)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Faceted Search: Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-search'
,p_list_text_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This page allows to choose the time format (12h, 24h) which is being used to display the time component of an event timestamp.',
''))
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/calendars_and_dynamic_actions
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(792131669906999604)
,p_name=>'Calendars and Dynamic Actions'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078457
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(792131878283999605)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Calendar with Report'
,p_list_item_link_target=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'This page contains a classic report region which is always in sync with the Calendar view, i.e. shows only data which is also visible on the calendar.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(792132282140999605)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Create Calendar Events'
,p_list_item_link_target=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-plus-o'
,p_list_text_01=>'Select a date range in the calendar and have a new event being created in the database immediately.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(792132655887999605)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Delete Events By Click'
,p_list_item_link_target=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-times-o'
,p_list_text_01=>'Delete a calendar event in the database by simply clicking it in the Calendar.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(792167498918368405)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Copy Events by Click'
,p_list_item_link_target=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-files-o'
,p_list_text_01=>'This page shows, how existing calendar events can be copied with a simple mouse click.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(980697952865461060)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Custom Drag and Drop Handlers'
,p_list_item_link_target=>'f?p=&APP_ID.:112:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-pointer'
,p_list_text_01=>'Explore how to capture drag and drop events with dynamic actions.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/calendars_and_javascript
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(792136833765057608)
,p_name=>'Calendars and Javascript'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078457
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(792137040684057609)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Custom Navigation'
,p_list_item_link_target=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-user'
,p_list_text_01=>'Use APEX components like buttons or page items to navigate within your Calendar.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(792137480817057610)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Query Calendar Status'
,p_list_item_link_target=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-search'
,p_list_text_01=>'This page shows how to get the current calendar status with the FullCalendar JavaScript API.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(792137851111057610)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Calendar Client Events'
,p_list_item_link_target=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-plus-o'
,p_list_text_01=>'Add "client-only" events" to your calendar view with JavaScript. Edit them and when ready, save to the database.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(796235462519286547)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Schedule Builder'
,p_list_item_link_target=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-apex'
,p_list_text_01=>'Explore how to create a <i>Schedule Builder</i> with Application Express'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/calendar_styling
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(792142473996102806)
,p_name=>'Calendar Styling'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078457
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(792142716223102806)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Custom CSS Classes'
,p_list_item_link_target=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'This page shows custom styling of calendar events using your own CSS classes.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(792143042701102807)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Custom Event Icons'
,p_list_item_link_target=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-square-o'
,p_list_text_01=>'Add custom icons to your calendar events. '
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/custom_calendar_initialization
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(849917758492309422)
,p_name=>'Custom Calendar Initialization'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078457
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(849917956094309423)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Weekly schedule'
,p_list_item_link_target=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-o'
,p_list_text_01=>'This example customizes the weekly view to act as a conference schedule without day dates. Column headings are set to week names, a custom title is being used and nightly hours are removed from the calendar.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1707014865021906533)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078457
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(788168359878536640)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Standard Calendars'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(788238133143817803)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Monthly Calendar: Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(788168359878536640)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(778855593832085021)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Weekly Calendar: Conference'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(788168359878536640)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'32'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(785448112227373339)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Weekly Calendar: Edit Sessions'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(788168359878536640)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'33'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(788174515738556280)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Weekly Calendar: Drag & Drop'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(788168359878536640)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'34'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(792057823306314322)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Weekly Calendar: Time Format'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(788168359878536640)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'35'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(618972162704616344)
,p_list_item_display_sequence=>310
,p_list_item_link_text=>'Faceted Search: Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(788168359878536640)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'36'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(788180364295598678)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Calendar and Dynamic Actions'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-check-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(788186075763610750)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Calendar and Report'
,p_list_item_link_target=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(788180364295598678)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'51'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(788199449309624497)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Create Calendar Events'
,p_list_item_link_target=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(788180364295598678)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'52'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(788214720525703975)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Delete Events By Click'
,p_list_item_link_target=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(788180364295598678)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'53'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(792159700892323090)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Copy Events By Click'
,p_list_item_link_target=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(788180364295598678)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'54'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(893819932985379083)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Custom Drag & Drop Handlers'
,p_list_item_link_target=>'f?p=&APP_ID.:112:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(788180364295598678)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'112'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(788238725583844114)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Calendar and Javascript'
,p_list_item_link_target=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-code'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(788239529679868765)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Custom Navigation'
,p_list_item_link_target=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(788238725583844114)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'71'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(788266041795060868)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Query Calendar Status'
,p_list_item_link_target=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(788238725583844114)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'72'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(788366906881234392)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Calendar Client Events'
,p_list_item_link_target=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(788238725583844114)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'73'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(796190610705736526)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'Schedule Builder'
,p_list_item_link_target=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(788238725583844114)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'74'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(849915643705296078)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Custom Calendar Initialization'
,p_list_item_link_target=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-wrench'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(849902079489172190)
,p_list_item_display_sequence=>300
,p_list_item_link_text=>'Weekly schedule'
,p_list_item_link_target=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(849915643705296078)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'111'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(788336957765920277)
,p_list_item_display_sequence=>65
,p_list_item_link_text=>'Calendar Styling'
,p_list_item_link_target=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(788337769050928055)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Custom CSS Classes'
,p_list_item_link_target=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(788336957765920277)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'91'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(788344594364014960)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Custom Event Icons'
,p_list_item_link_target=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(788336957765920277)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'92'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1710235277410407975)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-gear'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6,7,8,15'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar_top
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1707029450503015885)
,p_name=>'Navigation Bar (Top)'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078457
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1707029631954015887)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Help'
,p_list_item_link_target=>'f?p=&APP_ID.:HELP:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1707030027303015981)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1707030419171015981)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_parent_list_item_id=>wwv_flow_imp.id(1707030027303015981)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/administration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1872361808815655863)
,p_name=>'Administration'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078457
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1872362127866655866)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Manage Sample Data'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-edit'
,p_list_text_01=>'This application ships with sample data.  You can remove or recreate sample data using this administrative page.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1872362477290655867)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Theme Style'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-desktop'
,p_list_text_01=>'Set application user interface default theme style and determine whether end users can choose between public theme styles.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/home_page_list
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(2585695133450492399)
,p_name=>'Home Page List'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078457
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3420747121910027966)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Standard Calendars'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'Review a collection of Standard Calendar examples. These Calendars only utilize standard component attributes and no custom Dynamic Actions or Javascript code.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3417515338057467899)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Dynamic Action Examples'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-check-o'
,p_list_text_01=>'These Calendar Regions are using Dynamic Actions to communicate with other page components of your APEX application.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3417515352885467899)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Calendars and Javascript'
,p_list_item_link_target=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-code'
,p_list_text_01=>'Use the FullCalendar Javascript API and fully exploit the capabilities of your calendar component.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3417515490034467899)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Calendar Styling'
,p_list_item_link_target=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Apply custom styles to your Calendar region. Change colors, fonts or add icons to your calendar events.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(792096443572637386)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cog'
,p_list_text_01=>'Administer this Sample Application.'
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE9000001864944415458476354683DF09F610001E3A8034643604884408A9934C3FFFF0C0C734F3F05E79714331986FF0CFF19E69E82F0';
wwv_flow_imp.g_varchar2_table(2) := '93CDA4191890E4934DA519FEFE6760587006228F0FE0CC054EAF2F324CBA3C8781F5FF5F06A6D00406900BFEAD5908368B29241E4CE3E6C73130FCFBC7F06FDD1286DF8CCC0C79BA290CFB44F5B1BA03A70372EE6D65C8BDBF95900788929FACE8CD3045';
wwv_flow_imp.g_varchar2_table(3) := 'C97B883920DF569EA1C05681281F125234E1F0038689871F921602C43AE03F28753230420D8795EA083E23232303450EF8FCE52B030883002F0F3703EFEB050C0C0FA6412C54C862F82412CFF0E5EB373097879B0B4C23F3F97879461D405908104A6090';
wwv_flow_imp.g_varchar2_table(4) := '34801B503D0D80AC424E135C6B1730FC5D044913CC71590CDF821350D30C0F376521809E08479E03D063173DCE41714C0850540E30DC9F8A37DF831C809C26D0A30854768C3A80B210408B60BAA501176501866921BA0CACCC4C84D2185EF9DF7FFF3164';
wwv_flow_imp.g_varchar2_table(5) := 'ADB9CCB0E7EE07D26AC3FFFFFE31FCFFFD8322CB619A195939181899B07B64B463321A02A321000013FD88B00E73A39A0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(540259233933030438)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE900000C8449444154785EED9D6D8C54D519C7FFF7CEECCC2E2E2CBB749797AC0DD6A6686928240A2C6210498DDA37B50ADAC4145F8A89';
wwv_flow_imp.g_varchar2_table(2) := 'E90BA9D80F7C69FAA17EA8B12F600CB1D1DA68AB1281B6D8B4A521D8F226B06911A44A532220C2B20B2CACCBC2CCCEDCDBDCDDE565BA3378CF73CE5D0E7BFEF72BE779EE79FECFF39BFFBD337B2FDEC49FBC158207157054018F0038DA7996DDA70001E0';
wwv_flow_imp.g_varchar2_table(3) := '2038AD000170BAFD2C9E0070069C56800038DD7E164F0038034E2B40009C6E3F8B27009C01A71520004EB79FC51300CE80D30A1000A7DBCFE2090067C069050880D3ED67F1048033E0B40204C0E9F6B37802C019705A0102E074FB593C01E00C38AD0001';
wwv_flow_imp.g_varchar2_table(4) := '70BAFD2C9E0070069C56800038DD7E164F0038034E2B40009C6E3F8B27009C01A71520004EB79FC51300CE80D30A1000A7DBCFE2090067C069050880D3ED67F1048033E0B40204C0E9F6B37802C019705A0102E074FB593C01E00C38AD000170BAFD2CDE';
wwv_flow_imp.g_varchar2_table(5) := '09004657A7F1F0F4667C63CA588421B066F751BCB0FD104E9E2D189980FA9A2A3C3AA319774D6E42F41FAEAD7CA70D2FB57E842E83F917CD6CC6573FDFD4B7DF55BBDBF0E2F68F70CA50FE86115578747A7FFEB4EFE18DDD6DFDFA9C31A38F1191134AE2';
wwv_flow_imp.g_varchar2_table(6) := '04004BE65C83C75AAEEE6B6E74F416432CDF7C00CB371D3022EBE0FCC140FE8386F24FC4632D9F3EBFFF4210E299B73EC08AB73F34927FE9AD9FC143D39B4BF22FDB78A0AF86E17E0C7B006A3329FCF5DB3760425D75492F8F74E570F373DB500CF4FE93';
wwv_flow_imp.g_varchar2_table(7) := 'CCEA2A1F9B1E9F813157654AF21FEC3C83DB7ED58A5C21D09AA194E761C7E216442E73F1B1EF580FEE7CA115F9A2DEFE3D0FF8E7E29B30BA265D927FFF893398BB62BBD6DEAF84E0610F40636D065BBE330369DF2FE947210830ED675BD09D2F6AF529BA';
wwv_flow_imp.g_varchar2_table(8) := 'BC6A5D3C0BA9017739972CCA3FFD975BD1A97919914DFBD8B364F6A0FCDDB9026E59B11DC74FF76AED3F72C57797CC46749E8B8F8EEE3C662E7F1B4174CD388C8F610F40531F0033CB0C6888693FDF8CEE9C1E00F53569B47E7F16FC41008498B16C2B4E';
wwv_flow_imp.g_varchar2_table(9) := 'F4E80D683498FF5E32BB4CFE00B3966F43C7E9BCD6785602A0BD3B879667B721D07448ADCD0D4130012000651D80000C017D714EE121447DBE1BB7B5EFC43D47B6E2BAEE43C8060ADF4E343422F3FA7AC04F959EAE5844FEAE59404F779C6D545E336A34';
wwv_flow_imp.g_varchar2_table(10) := '32AB3602FF77898528FFFC39C0C94EBDFCD92C326FB696C95F407EC13CA0F3985EFE541A99B5DB816CB6244F78A203BD0B6E0582F8F730393F8DF76B9BB17A7C0BD6354D4567A61621FABF78B0F5B0DA01A2E19F726A3F16EFFB236675EE956948002EAD';
wwv_flow_imp.g_varchar2_table(11) := '9B41002E3ED196FA49F8C5B55FC3AEBA8956436035000DF98FF1CCBB2FA2A5F33F8860101D0D6390796D03902AE3005F6F01CE9C16A53D1F34B20E99D5910394C97FDF1CE094A60364B2C8FC69C7A0FC613E87DE6F7E09E83CAEB7FF540A99B53B8C38C0';
wwv_flow_imp.g_varchar2_table(12) := 'C51B893EF9B7D67F0E4F7CE1619CC88CD4DB6382D1560370FFA18DF8F1DE57F5CAAFAE41D5AFD7C26B1A5F6AF1C73BFA07A8A077938A4C1655AFFC05DE98FE1FA9CE1D617B1B7A177E19C89DD5DBBFEFA3EA8D7FC0ABAB2FCD7FE8007A17DDA39F1F40D5';
wwv_flow_imp.g_varchar2_table(13) := '9A2DF046D595E63F7C10BD0FDEA1B777003F9AF4005E6BBE593B4F5209AC0660E58E9FE28B5DFBB56B4F3DB218A9FB1FB9701D5D2CA2F8DBE751FCCDB3DAB9A30465F3FFEE79145F32947FD10F90BA77E1051733BDFF454F2075EFB74AF31BDAFF3BA326';
wwv_flow_imp.g_varchar2_table(14) := '62FE8D3F34A2731249AC0660D786EFA9DDF0565268740352F72D843FEF2B405040F0B7B528AE7A19E83A6946D3BA7AA4E63F047FDE9D40102258F7071457BF622E7FB4FF28FF2DB703F010ACFBBDD9FCE7F61FE50F4304EBDF34A64F74633C65EE32333A';
wwv_flow_imp.g_varchar2_table(15) := '2790C56A00F6AE7FDC6CC9D5357D038ABCE66549A55D65077E6DD6BDECB99CF9A32F6DCE9AD567D2BCE7CCF6D16036B70030281C53C5578000C4D7AA64A5710710EE83617A0A1000A17E0440289C65610440D810022014CEB23002206C0801100A675918';
wwv_flow_imp.g_varchar2_table(16) := '01103684000885B32C8C00081B420084C259164600840D210042E12C0B2300C2861000A17096851100614308805038CBC20880B0210440289C65610440D8900F96CE114632CC2605AE79EAEF366DA7642F56FF2D1001B0766E9436460094E4BAB0980008';
wwv_flow_imp.g_varchar2_table(17) := '85B32C8C00081B420084C259164600840D210042E12C0B2300C2861000A17096851100614308805038CBC20880B0210440289C65610440D810022014CEB23002206C0801100A67591801103684000885B32C8C00081BE21A0061DFBBF8755F261BC28BFE';
wwv_flow_imp.g_varchar2_table(18) := 'D78B3247D2F92BB599000C110087DBDA85672A0D9B30AEF43587E7FF75C36423F931774FD93C478E76541C5E95138F6D1C33284F34FC473B34DF233AB08972F92FB53F02A0D2BD8BD6AA3AC0950C4034A01100BA87EF7918DBF4A9B200B4B51F43BF0BC8';
wwv_flow_imp.g_varchar2_table(19) := '8FC85DC695C94F00E49A568C2400EAA2120035CD86D55F83D20100024000D41428B3FA72DC03F01248BB6DA204740002A03438BC0750924B6F31EF01D4F5E325909A6674003A80D2C4D00194E4D25B4C0750D78F0EA0A6191D800EA03431740025B9F416';
wwv_flow_imp.g_varchar2_table(20) := 'D301D4F5A303A8694607A003284D0C1D40492EBDC5740075FDE8006A9AD101E8004A13430750924B6F311D405D3F3A809A6674003A80D2C4D00194E4D25B4C0750D78F0EA0A6191D60983940A54F68537F6C17C9357E6CA3D2833B7C20460DCAF3AB551D';
wwv_flow_imp.g_varchar2_table(21) := '40781A6BC2A221D57B5CA5FF81CA4B3D129964FE4A421200E188B906805026EBC30880B0450440289C65610440D810022014CEB23002206C0801100A67591801103684000885B32C8C00081BA20A40D20FC5279D3F3FCFCC7B8732EBCBBF7728E9FDF35B';
wwv_flow_imp.g_varchar2_table(22) := '20E1A0570A2300324109407CDDF84398C20F61497F82D201E20FAEA99504800028CF52C5D7C654C8C47B006589FB03780924138E9740F175A303D001E24FCBC04A3A80B264B2003A804C373A407CDDE8007480F8D3420750D64A2B800E20938F0E105F37';
wwv_flow_imp.g_varchar2_table(23) := '3A001D20FEB4D00194B5D20AA003C8E4A303C4D78D0E4007883F2D740065ADB402E80032F9E800F175A303D001E24F0B1D40592BAD003A804C3E3A407CDDE8007480F8D3420750D64A2B800E20938F0E105F373A001D20FEB4D00194B5D20A507500AD93';
wwv_flow_imp.g_varchar2_table(24) := '31383105F8E7D0426909805038CBC20880B0210440289C65610440D810022014CEB23002206C0801100A675918011036C436008A4120ACA4342CE5FB46F25C29490880B053CA006C30F35E1DCC1DFC5E9DE8CDCD47DB8F2108F5DEAFECFB3EC6368E29FB';
wwv_flow_imp.g_varchar2_table(25) := '06E7A4DF3A9174FE4A6D2600C3048023473B84955C082300DA121A4D30AC7E0843C20E4000FA678F0FC51B65B07232DB2E8108000118A2D1EF3F0D0190C95DE9139AF70083F5E42550B919AB70134C07A003C83E928451740099707480F8BAD101E800F1';
wwv_flow_imp.g_varchar2_table(26) := 'A76560256F8295259305D00164BAD101E2EB4607A003C49F163A80B2565A017400997C7480F8BAD101E800F1A7850EA0AC9556001D40261F1D20BE6E74003A40FC69A103286BA515400790C9470788AF1B1D800E107F5AE800CA5A6905D00164F2D101E2';
wwv_flow_imp.g_varchar2_table(27) := 'EB4607507080B6F663881E8CD139F83C808E7AE663871700E6F529C918187924D283EF7B09EFD4AEF47C224CD80FE54B20E1791896AC020440A82F01100A67591801103684000885B32C8C00081B420084C259164600840D210042E12C0B2300C286BCFF';
wwv_flow_imp.g_varchar2_table(28) := 'E46C64AB52C26886D9A040AEB788EB9EDE64C356CAEEC1EAAF41D73C380553AFAEB7563C6EEC9315D8F96127EE7E79D7272FBC4C2BAC06E081EB47E1A9BBA75D2669785A130A2C5DF32FBCFA5E97895489E4B01A80D16137962FB811375DDB58F6558289';
wwv_flow_imp.g_varchar2_table(29) := '28C2A44614887E31DFBCAF03DF7D7D074E7AB546722691C46A00829E53983A61249EBC6D32667FB62989FA9933210536FDB71D4FAFDB839D873F863FA22EA1B3E8A7B51A80B0F72CC2DC69348CC8E28EC91330FF8689B87EDC28DE18EBF73D910CD10DEF';
wwv_flow_imp.g_varchar2_table(30) := '7B6D5D58D9BA1F7FDE7318277A72F0B257C1ABAA4EE47C26925A0D00C200C1996E84C55E13B532C7102BE0A5AAE0D7D4029EBDAF83B71B000061B18030D74308867878754F170DBF971D012F95D64D9568BCF500F4551F06080B7904F91C1014121584C9';
wwv_flow_imp.g_varchar2_table(31) := '3515F0D3F0335978E98CD59FFCE7AABC3200D0EC09C3A9402505080067C369050880D3ED67F1048033E0B40204C0E9F6B37802C019705A0102E074FB593C01E00C38AD000170BAFD2C9E0070069C56800038DD7E164F0038034E2B40009C6E3F8B27009C';
wwv_flow_imp.g_varchar2_table(32) := '01A71520004EB79FC51300CE80D30A1000A7DBCFE2090067C069050880D3ED67F1048033E0B40204C0E9F6B37802C019705A0102E074FB593C01E00C38AD000170BAFD2C9E0070069C56800038DD7E164F0038034E2B40009C6E3F8B27009C01A7152000';
wwv_flow_imp.g_varchar2_table(33) := '4EB79FC51300CE80D30A1000A7DBCFE2090067C069050880D3ED67F1048033E0B40204C0E9F6B37802C019705A0102E074FB59FCFF00E66E6C39A0E927440000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(540259368173030448)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EEDDD0B9465657527F07DABAA9B069AEEA61B9A06414589BC140DE0DBD1A8793A6A8CC9C431C904A24E5C794E';
wwv_flow_imp.g_varchar2_table(2) := '8C8FC4B8E2448D24D144D4A8F1119318954870E2C4449D89A2A28E464014118508410179D3D03CEC86EEAA3BEB14A21269A973F7F9CE3DF79C5FADE5CACAE27CAFDFFEFAD6BF77DD5B3DBAEF2B3F3E0E5F040810204080C0A0044602C0A0EAEDB0040810';
wwv_flow_imp.g_varchar2_table(3) := '20406059400070110810204080C0000504800116DD9109102040808000E00E102040800081010A0800032CBA2313204080000101C01D204080000102031410000658744726408000010202803B408000010204062820000CB0E88E4C8000010204040077';
wwv_flow_imp.g_varchar2_table(4) := '8000010204080C5040001860D11D9900010204080800EE00010204081018A0800030C0A23B3201020408101000DC01020408102030400101608045776402040810202000B803040810204060800202C0008BEEC80408102040400070070810204080C000';
wwv_flow_imp.g_varchar2_table(5) := '0504800116DD9109102040808000E00E102040800081010A0800032CBA2313204080000101C01D204080000102031410000658744726408000010202803B408000010204062820000CB0E88E4C80000102040400778000010204080C5040001860D11D99';
wwv_flow_imp.g_varchar2_table(6) := '00010204080800EE00010204081018A0800030C0A23B3201020408101000DC01020408102030400101608045776402040810202000B803040810204060800202C0008BEEC80408102040400070070810204080C0000504800116DD9109102040808000E0';
wwv_flow_imp.g_varchar2_table(7) := '0E102040800081010A0800032CBA2313204080000101C01D204080000102031410000658744726408000010202803B408000010204062820000CB0E88E4C80000102040400778000010204080C5040001860D11D9900010204080800EE00010204081018';
wwv_flow_imp.g_varchar2_table(8) := 'A0800030C0A23B3201020408101000DC01020408102030400101608045776402040810202000B803040810204060800202C0008BEEC80408102040400070070810204080C0000504800116DD9109102040808000E00E102040800081010A0800032CBA23';
wwv_flow_imp.g_varchar2_table(9) := '13204080000101C01D204080000102031410000658744726408000010202803B408000010204062820000CB0E88E4C80000102040400778000010204080C5040001860D11D9900010204080800EE00010204081018A0800030C0A23B3201020408101000';
wwv_flow_imp.g_varchar2_table(10) := 'DC01020408102030400101608045776402040810202000B803040810204060800202C0008BEEC80408102040400070070810204080C0000504800116DD9109102040808000E00E102040800081010A0800032CBA2313204080000101C01D204080000102';
wwv_flow_imp.g_varchar2_table(11) := '031410000658744726408000010202803B408000010204062820000CB0E88E4C80000102040400778000010204080C5040001860D11D9900010204080800EE00010204081018A0800030C0A23B3201020408101000DC0102040810203040010160804577';
wwv_flow_imp.g_varchar2_table(12) := '6402040810202000B803040810204060800202C0008BEEC80408102040400070070810204080C0000504800116DD9109102040808000E00E102040800081010A0800032CBA2313204080000101C01D204080000102031410000658744726408000010202';
wwv_flow_imp.g_varchar2_table(13) := '803B408000010204062820000CB0E88E4C80000102040400778000010204080C5040001860D11D9900010204080800EE00010204081018A0800030C0A23B3201020408101000DC01020408102030400101608045EFCA91E74611E371C4B82B1B6A791FA3';
wwv_flow_imp.g_varchar2_table(14) := 'D11D0B560643FCAA8E5F192C0DF8FC73A3512C0EF5020CF1D277ECCC0240C70AD2F7ED3CFABEFBC6E30FDB18C7DE6B5DAC59985B3EEED6ED3BE3F3DFB839FEF5EB37C69997DE183B7BFA1D61D5FC281E76C88678ECFDF68D871CB42EF6D9637E39FCDC7A';
wwv_flow_imp.g_varchar2_table(15) := 'FB627CEEF29BE2F48BAE8FB32FDBD6DB2BB07A7E2E1E7DE88638FEE0F5F1E083F6894D7BAD8EA5F1386EB96D31CEBDF2A6F8E857B7C6BF5E7A636FCF5FDDF7E30F591F8FBACF86386ACBDAD8BCF7EA989F1BC58E5D4B71D665DBE2C3FF767D9C75D98D83';
wwv_flow_imp.g_varchar2_table(16) := '0D44BD2D7C870F260074B8387DDADA5EABE7E3058FBB6F3CFD415B62FD9A85BB3D5AF54278CA3957C49B3F73595C7BEBED7D3A7E1CB46E8FF89547DD3B7EF6C15BA2FA4678775F5BBFB933DE7DCE15F1C64F5F1AB7ED5AEAD5F90FD9B0267EE3D1F789A7';
wwv_flow_imp.g_varchar2_table(17) := '1CBDF9DBC1EF3F1EF086ED3BE3FDE75F13AFFAD825F1CD9D8BBD3AFFBDD6AF8917FDD0A1F143F7DF18EB7673FF6FDCBE333E7EF1D678C987BEDABBF3F7AA983D3A8C00D0A36276F928EF7CE631F19843F75DD116FFCF05D7C50BFEF982E5BF19F7E16BC3';
wwv_flow_imp.g_varchar2_table(18) := '9E0BF1174F3F3A1E719F0D2B3ACE07BE726DFCFAFBBEBCA26767E1A103D6AE8ED73DEDC878F8BD5776FE332EDE1A279E7ADE2C1C6D457BACC2DF6B7FF2C878E821EB57F4FCA72EB9219E73DA977A17025774780FB52A2000B4CA3DCCC55EF3D423E2A71E';
wwv_flow_imp.g_varchar2_table(19) := '7840ADC3BFEDB397C549A7FF7BAD315D7DF8E4A71E114FAB79FEBF3AF3F278C5472EEEEA916AEDEBE53FF603F1DF8E3BA8D698D77FEAEB71F227BE566B4C171FAEDEE750859FA71CB5B9D6F6DE7EE6E571D2E917FB71402D350FD7151000EA8A79BE9640';
wwv_flow_imp.g_varchar2_table(20) := 'F533FF77FDDC31B5C6540F572DF027BEE5ACF8C6B61DB5C77669C003B7AC8DF7FFD271CB6F76ABFBF5C36F392B2EBEFE9B758775EAF9A30E581BA7FDE24362AF55F3B5F6B56DC7AEF8D1B79E15D7DC32DB3F0A7AC2619BE2F54F3B32F65E5DEFFCD58FC0';
wwv_flow_imp.g_varchar2_table(21) := '7EFEDDE7C657AF9BEDFAD72ABA875B1710005A271FD682FFF3470E8B131F7AAF890EFDEA8F5F126FFAF4A5138DEDC2A0EA0D5E2F7EC2FDE2D90F3B78A2EDFCE1472E8EEA6F82B3FCF5EA271F1E3F73CC96898EF0A20F5C18A79D7BD54463BB32E84D4F3F';
wwv_flow_imp.g_varchar2_table(22) := '2A7EE288FD27DACEAB3E7E49FCC50CDFFF890E6D50AB020240ABDCC35AECC0757B44F50DA0EA024CF2557D2AE084F79C17B72FCEE61BE236EEB52ADEF5CC63E2C803D64E72FCF8D005D746F54DB07A97FC2C7E556F76FCF02F1F1FF7DE77CF89B65FBD21';
wwv_flow_imp.g_varchar2_table(23) := 'F07FFCE357261ADB95419FFCB587C7C1EBD74CB49DD3BF7AFDF27B017C11282520009492356F3C70CB3EF1674F393C1EB0FFDE13695C7DF36DF1E37FF9B9A8DE1D3D8B5F876EDC33FEF959C745F5098849BE2EBCF6D678EE7BCF8FAFDFB07D92E1531F53';
wwv_flow_imp.g_varchar2_table(24) := 'BDDBFD33BFF188DAEDFF3B377EE6A5DBE2773E78617C6DEB6C9E7F8F85B9F8EC6F3E72B79F7AB9A702551F0DFDD9777EDEFB00EE09CA7F9F5840009898CEC07B1238EEE075F1B7CF3C66E26F00D547C17EECAD67C7E533FA3E80C3F7DF3BFEF1978E8DEA';
wwv_flow_imp.g_varchar2_table(25) := '1BC1245FD5A7207EFA1D9F8F2A08CCE257D501F9F4AF3F62E2F37FE18A9BE2A5FFF7A238EFCA9B67F1F8CBF7BEEA00540E937C55E77FC63BCF9DD90ED8246736A65D0101A05DEF41AD56FDC297EA0D80937E03DCBE73297EFC6D67C5A537CEE61B018FD8';
wwv_flow_imp.g_varchar2_table(26) := 'BC77FCE389C7C6EA09034075FEEA6F805FBAEA9699BC379BAA00F01B8FD8EDEF3DB8A7435DFFCD9DF1DF4FFB527CFE1B37DDD3A39DFCEF55E7E793BF3A790038E7F29BE2E74E39D7C7013B59DD7E6C4A00E8471D3B790A01201F009EF1AE2FCCECDF80B3';
wwv_flow_imp.g_varchar2_table(27) := '0160FBCEC5F88553BE18E70C34009C7DF9B6E5F3F7ED974275F2C56AA09B1200065AF8368E2D000800990E80002000B4F13A35E43504802157BFF0D9050001400098FC47003A00855FA04C1F02804B504C40001000040001A0D80B8C89D30202409AD004';
wwv_flow_imp.g_varchar2_table(28) := 'BB1310000400014000F00AD95D0101A0BBB599F99D09000280002000CCFC0B598F0F2000F4A4B89B6FDB168FBFEEBC38FEC68BE2F05BBE1107EED81AEB764DF717A88C1E786CAC7AF55F46ACDE6332E5DB76C4CE67FF648CAF9CCD5F873BBADF0362D59B';
wwv_flow_imp.g_varchar2_table(29) := '4E8D58B57AF2F3FFD62FC6F8DFCE9F6CFC94478D366C8C55EF397DF2F3EFD81E3B5FF49C189FFF85299F64C2E5F7DC2B56BFFB5F22D64FF69B30C75F3A2776BEF03911B7DF36E1069A1976D3C29E71E59A8D71E1DA7BC5D91B0E8B8FEDF7A0B8668F95FD';
wwv_flow_imp.g_varchar2_table(30) := 'CB86CDECC02CA504048052B22DCDFB906D97C409977D349E74F5E75A5A71E5CB080002800030FB01E0EEFEC47FF080E3E21D873C21BEB0FED095BF2078B273020240E74AB2B20DCD8F97E225FF765AFCFCE567AC6CC0149E1200040001A09F01E0CE9793';
wwv_flow_imp.g_varchar2_table(31) := '771FFCB878E503FE4B2C8E26FB6D97537859B2E47709080033781DAA16FFABCE7F471C714BB75BE30280002000F43B00542F9F17AC3D385E74F409CB3F22F0355B0202C06CD52B8EBBF1E278CBB96F8A7DA6FCF3FD95B00900028000D0FF0050BD16DCBC';
wwv_flow_imp.g_varchar2_table(32) := 'B0673CF7C1BF1A9FDB70FF95BC3478A623020240470AB1926D547FF37FF7E75E3313DFFCABF30800028000308C00706708F8F9E37E5B2760252FE61D794600E84821EE691BD5CFFCFFE1CC3FEE7CDBFFBBCF2100080002C07002C09D3F0E78FAC37ED77B';
wwv_flow_imp.g_varchar2_table(33) := '02EEE905BD23FF5D00E84821EE691B2FBDF0D44EBFE1EFEEF63F3AE241B1EACFFE3A62CD9EF774BCBBFFEFD5C7004F7C728CAFB972B2F1531E35BAF7FD62D59B4F8BD863CD643BA9CEFF9BBF10E38BBE32D9F8298F1AEDB33E569DFAD189CF3FBEFA8AD8';
wwv_flow_imp.g_varchar2_table(34) := 'F58AE7C7F82B5F9CF249265C7E8F35B1FA940F476CD838D104E32F9F1B3B9FFF4B53FF1860DDCD576F0C7CF9E1CFA83BCCF353101000A6805E77C9EAA37EA79EFDEABAC3A6FEFCE83EF78F853F796B8CF6DF32D95EB6DD183B9FFDD418DF70FD64E3A73C';
wwv_flow_imp.g_varchar2_table(35) := '6A74C041B1F086BF8BD1C6FD26DAC978EBB5B1EB7927C4F8F2AF4F347EEA83AACFC1FFDD4722F699EC33E3E32F9E1DBB5EFBF2187FFDE2A91F65A20DCCCDC5EAF77E3262FD8689862FFF1E80E79D18B1B438D1F8690E7AC6F12FF411C1691660856B0B00';
wwv_flow_imp.g_varchar2_table(36) := '2B849AE663277FE9ED9DFC9CFF3D998CF6DD14F32F7845CC3DE271F7F4E8DDFEF7F105E7C5CE173C2B62FB37271A3FED41A3751B62E1E5AF8FD1838E9B682B4B9FFD442CFEF18B637CD38D138D9FFAA055AB62D5DBDE17A34326FBACF8D2273F1CBBFEE4';
wwv_flow_imp.g_varchar2_table(37) := 'F766B6FE95FFAAD3CE9838002EFDEB19B1EB25BF3AF5324EB281EAF7043CEF81CF9E64A8312D0A08002D624FB254F51BFE3EF9A9174F3274FA63E6E663FE39BF15F3CF78D6447B593CE56DB1F8F6D74E34B61383AAF33FF7F931FF33274CB49DC577BF35';
wwv_flow_imp.g_varchar2_table(38) := '16FFFACF23C64B138DEFC2A085DF3929E67EF42727DACAE2A97F158B6FFDB389C67665D0C28B5E19733FF6B489B6B3F8F77F1D8B6FF9D389C67661D07F7ACC1FF98D815D28C4F7D98300D0F1023DE31B9F8A975F704AC777B9FBED8D1E70F41DBF0E7734';
wwv_flow_imp.g_varchar2_table(39) := 'AA7786DB6E8B9DCFFDE9185F7649BD711D7B7AF40347C5AA37BE27627EBEDECE161763E72F3F3DC65FBBA8DEB88E3D3D3AF29858F5BA7746CC2FD4DBD9AE5D779C7F56DBFFDF3AEDDCF18F5EEE02D57E1FC8CEDB6367F56BA02F38AF9E5B879E7EE9113F';
wwv_flow_imp.g_varchar2_table(40) := '17A7DEEB311DDA91ADFC470101A0E377E2D5E7FF4D3CF5AA333BBECBEFB3BDF9F958FE5BE0139F5CEB0C4B1FFA87D8F5A7BF5F6B4C271F1E8D62E1A5AF89B9C7FE68ADED2D7DE0B4D875F2CB22C6E35AE3BAF8F0C2CB5E17738FF9E15A5B5B7CEFDFC6E2';
wwv_flow_imp.g_varchar2_table(41) := '9B5FD58FF3FFEE1FC7DC8F3CA5DEF9DFF5E6587CC71B239666B7FBF3FE2D0F8B171E7D62AD737BB85D0101A05DEFDAABBDFFB3AF5CFEC77D66F9ABFA476116DE704A8C0E3C6445C7A8DEF5BDFCB3FF1DD3FDC78C56B4D9953CB46E43ACFAF3536274F07D';
wwv_flow_imp.g_varchar2_table(42) := '56F2F4F23FFEB3FCE6AF1DB3F9DE87EFF95BC6A6FD63E10F5E17A3A31EBCB2F37FF5CBB1EB85CF89F1CDDB56F47CD71F1A6DDE120B2F3D39AA6EC84ABEAA7FFC68E7EFFD4AC42D37ADE4F1CE3E53FD66C0A73EFC259DDD9F8D4508001DBF05679DF18258';
wwv_flow_imp.g_varchar2_table(43) := 'B76BF6BF118C361F18F3CF7F59CC1DF7A8DDFF38603C8EA58F7D2876BDF66511B7DED2F1CAD4DB5EF54980E537443EFCB1BB1FB8B4144B9FF897587CFD1FC678DB0DF516E8FAD36BF78955AF78438C8E397EF73B5D5CBCE3FC7FFECADE9D7FB469FF987F';
wwv_flow_imp.g_varchar2_table(44) := 'E12B63EEA18FDEFDF9ABFBFFE98FC5AE57BF24E2E6D9FEE65F1DF2A685BDE2A18F9BDDF73074FD8F5413FB13009A502C38C785A7CFE6BB80EF9664612146871DB9FC4D70F9FF3EE8D8186FDF1EE30BBE18E30BBF144BE77C26C6175D30D36DCFEF7B15E6';
wwv_flow_imp.g_varchar2_table(45) := '176274C40363EE918F8FD17D0F8BD1E147C7686E2E96CE3B67F9B3FE4B1FFC5F31DE7A5DC1DB34E5A9E7E763EED8472E7F2AA2FAA79247F7BD7F8CF6DA2796CE3B3BC65FFD722C7DF89FA2FAEC7F6FBF46A3983BE6F818FDE0C3A37A6F48D519A8FEA9E8';
wwv_flow_imp.g_varchar2_table(46) := 'F1D72E5EFE33507DF31F5FFAEFBD3AFEE14F7C53AFCED3B7C308001DAF68AF02C09DD673F3116BD7C668D3E6889D3BEFF89CFFAD3777BC120D6E6F7E3E467BAD8DD877D37237647CFD3577743C7AF0F3FE952A551F915CFEFD00737311376E8DF12D37CF';
wwv_flow_imp.g_varchar2_table(47) := 'F4A71D567AEE6F3FB76E4354BF282956AF8EF1B5574554E7EFE19700D0EDA20A00DDAE4FF4320074DCDCF608106846400068C6B1D42C024029D986E615001A82340D0102AD0B0800AD93D75A5000A8C5D5FEC30240FBE6562440A0190101A019C752B308';
wwv_flow_imp.g_varchar2_table(48) := '00A5641B9A57006808D2340408B42E2000B44E5E6B4101A01657FB0F0B00ED9B5B91008166040480661C4BCD220094926D685E01A02148D31020D0BA8000D03A79AD0505805A5CED3F2C00B46F6E4502049A1110009A712C358B00504AB6A17905808620';
wwv_flow_imp.g_varchar2_table(49) := '4D438040EB020240EBE4B51614006A71B5FFB000D0BEB91509106846400068C6B1D42C024029D986E615001A82340D0102AD0B0800AD93D75A5000A8C5D5FEC30240FBE6562440A0190101A019C752B30800A5641B9A57006808D2340408B42E2000B44E';
wwv_flow_imp.g_varchar2_table(50) := '5E6B4101A01657FB0F0B00ED9B5B91008166040480661C4BCD220094926D685E01A02148D31020D0BA8000D03A79AD0505805A5CED3F2C00B46F6E4502049A1110009A712C358B00504AB6A179058086204D438040EB020240EBE4B51614006A71B5FFB0';
wwv_flow_imp.g_varchar2_table(51) := '00D0BEB91509106846400068C6B1D42C024029D986E615001A82340D0102AD0B0800AD93D75A5000A8C5D5FEC30240FBE6562440A0190101A019C752B30800A5641B9A57006808D2340408B42E2000B44E5E6B4101A01657FB0F0B00ED9B5B9100816604';
wwv_flow_imp.g_varchar2_table(52) := '0480661C4BCD220094926D685E01A02148D31020D0BA8000D03A79AD0505805A5CED3F2C00B46F6E4502049A1110009A712C358B00504AB6A179058086204D438040EB020240EBE4B51614006A71B5FFB000D0BEB91509106846400068C6B1D42C024029';
wwv_flow_imp.g_varchar2_table(53) := 'D986E615001A82340D0102AD0B0800AD93D75A5000A8C5D5FEC30240FBE6562440A0190101A019C752B30800A5641B9A57006808D2340408B42E2000B44E5E6B4101A01657FB0F0B00ED9B5B91008166040480661C4BCD220094926D685E01A02148D310';
wwv_flow_imp.g_varchar2_table(54) := '20D0BA8000D03A79AD0505805A5CED3F2C00B46F6E4502049A1110009A712C358B00504AB6A1792FF9BDC735349369081020D0AEC0A1279DD1EE8256AB252000D4E26AFF6101A07D732B1220D08C8000D08C63A959048052B20DCD2B003404691A02045A';
wwv_flow_imp.g_varchar2_table(55) := '1710005A27AFB5A000508BABFD870580F6CDAD48804033020240338EA56611004AC93634AF00D010A4690810685D4000689DBCD68202402DAEF61F1600DA37B7220102CD080800CD38969A45002825DBD0BC02404390A62140A0750101A075F25A0B0A00';
wwv_flow_imp.g_varchar2_table(56) := 'B5B8DA7F580068DFDC8A04083423200034E3586A1601A0946C43F30A000D419A860081D6050480D6C96B2D2800D4E26AFF6101A07D732B1220D08C8000D08C63A959048052B20DCD2B003404691A02045A1710005A27AFB5A000508BABFD870580F6CDAD';
wwv_flow_imp.g_varchar2_table(57) := '48804033020240338EA56611004AC93634AF00D010A4690810685D4000689DBCD68202402DAEF61F1600DA37B7220102CD080800CD38969A45002825DBD0BC02404390A62140A0750101A075F25A0B0A00B5B8DA7F580068DFDC8A04083423200034E358';
wwv_flow_imp.g_varchar2_table(58) := '6A1601A0946C43F30A000D419A860081D6050480D6C96B2D2800D4E26AFF6101A07D732B1220D08C8000D08C63A959048052B20DCD2B003404691A02045A1710005A27AFB5A000508BABFD870580F6CDAD48804033020240338EA56611004AC93634AF00';
wwv_flow_imp.g_varchar2_table(59) := 'D010A4690810685D4000689DBCD68202402DAEF61F1600DA37B7220102CD080800CD38969A45002825DBD0BC02404390A62140A0750101A075F25A0B0A00B5B8DA7F580068DFDC8A04083423200034E3586A1601A0946C43F30A000D419A860081D60504';
wwv_flow_imp.g_varchar2_table(60) := '80D6C96B2D2800D4E26AFF6101A07D732B1220D08C8000D08C63A959048052B20DCD2B003404691A02045A1710005A27AFB5A000508BABFD870580F6CDAD48804033020240338EA56611004AC93634AF00D010A4690810685D4000689DBCD68202402DAE';
wwv_flow_imp.g_varchar2_table(61) := 'F61F1600DA37B7220102CD080800CD38969A45002825DBD0BC02404390A62140A0750101A075F25A0B0A00B5B8DA7F580068DFDC8ADF11188FC7DFFA7F4633C6328ED1A8993DDF61D0CC5CED213677FECC9E05808C5EF9B1024079E3D40AD30E00575C75';
wwv_flow_imp.g_varchar2_table(62) := '4D6AFFD31E7CD096CDB92D7CECE8DCF8698F7EFCF9A91D5C7DCD75319A9B8B86BE97A6F65267F07869BCBCEFFD37ED5B67D8F73C7BCD755B23A21BDF4CEB1CE4CED0B279BF8D758635FEAC00D03869A3130A008D72363F9900903315007201609603E0DC';
wwv_flow_imp.g_varchar2_table(63) := 'DC5C1CB0FFA6893B01D537D1ABAEB92EBED305C9DDC5B647571D902D9BF79BF8FC4DEC57006842B1DC1C024039DB46661600728C02C0E40160D6BF012ECCCFC7FEFB6D9CF81B6075FEABAFBD3E9696967297704AA3B301A8896D0B004D28969B43002867';
wwv_flow_imp.g_varchar2_table(64) := 'DBC8CC02408E51001000267D2F800090FBB3578D1600F286256710004AEA3630B70090431400040001607A6F60140072AF5FA5470B00A58593F30B00394001400010000480DCAB487F470B001DAFAD00902B9000200008000240EE55A4BFA305808ED756';
wwv_flow_imp.g_varchar2_table(65) := '00C8154800100004000120F72AD2DFD10240C76B2B00E40A24000800028000907B15E9EF6801A0E3B51500720512000400014000C8BD8AF477B400D0F1DA0A00B90209000280002000E45E45FA3B5A00E8786D05805C810400014000100072AF22FD1D2D';
wwv_flow_imp.g_varchar2_table(66) := '0074BCB60240AE4002800020000800B95791FE8E16003A5E5B0120572001400010000480DCAB487F470B001DAFAD00902B9000200008000240EE55A4BFA305808ED75600C8154800100004000120F72AD2DFD10240C76B2B00E40A24000800028000907B';
wwv_flow_imp.g_varchar2_table(67) := '15E9EF6801A0E3B51500720512000400014000C8BD8AF477B400D0F1DA0A00B90209000280002000E45E45FA3B5A00E8786D05805C810400014000100072AF22FD1D2D0074BCB60240AE4002800020000800B95791FE8E16003A5E5B0120572001400010';
wwv_flow_imp.g_varchar2_table(68) := '000480DCAB487F470B001DAFAD00902B9000200008000240EE55A4BFA305808ED75600C8154800100004000120F72AD2DFD10240C76B2B00E40A24000800028000907B15E9EF6801A0E3B51500720512000400014000C8BD8AF477B400D0F1DA0A00B902';
wwv_flow_imp.g_varchar2_table(69) := '09000280002000E45E45FA3B5A00E8786D05805C810400014000100072AF22FD1D2D0074BCB60240AE4002800020000800B95791FE8E16003A5E5B0120572001400010000480DCAB487F470B001DAFAD00902B9000200008000240EE55A4BFA305808ED7';
wwv_flow_imp.g_varchar2_table(70) := '5600C8154800100004000120F72AD2DFD10240C76B2B00E40A24000800028000907B15E9EF6801A0E3B51500720512000400014000C8BD8AF477B400D0F1DA0A00B90209000280002000E45E45FA3B5A00E8786D05805C810400014000100072AF22FD1D';
wwv_flow_imp.g_varchar2_table(71) := '2D0074BCB60240AE4002800020000800B95791FE8E16003A5E5B0120572001400010000480DCAB487F470B001DAFAD00902B9000200008000240EE55A4BFA305808ED75600C8154800100004000120F72AD2DFD10240C76B2B00E40A2400080002800090';
wwv_flow_imp.g_varchar2_table(72) := '7B15E9EF6801A0E3B51500720512000400014000C8BD8AF477B400D0F1DA0A00B90209000280002000E45E45FA3B5A00E8786D05805C810400014000100072AF22FD1D2D0074BCB60240AE4002800020000800B95791FE8E16003A5E5B01205720014000';
wwv_flow_imp.g_varchar2_table(73) := '10000480DCAB487F470B001DAFAD00902B900030DC00303F3F1F9BF7DB18028000907B15E9EF6801A0E3B5150072051200260F0095FC15575D932BC0144757DFF80FD8BC5FCC8D26FB06381E8FE3CAABAF9DE209F24B1F78C0FE1307A0FCEA11879E7446';
wwv_flow_imp.g_varchar2_table(74) := '13D398A39080005008B6A969A71D009A3A87796653A0FA26B8FCBF19DB7EF52D7F6E6E2EBDEBA19F3F0B28006405CB8E1700CAFAA6671700D284262040604A0202C094E057B8AC00B042A8693D26004C4BDEBA040864050480AC60D9F1024059DFF4EC02';
wwv_flow_imp.g_varchar2_table(75) := '409AD00404084C4940009812FC0A971500560835ADC7048069C95B970081AC800090152C3B5E0028EB9B9E5D0048139A8000812909080053825FE1B202C00AA1A6F59800302D79EB122090151000B28265C70B00657DD3B30B0069421310203025010160';
wwv_flow_imp.g_varchar2_table(76) := '4AF02B5C56005821D4B41E1300A6256F5D0204B202024056B0EC7801A0AC6F7A7601204D68020204A62420004C097E85CB0A002B849AD66302C0B4E4AD4B8040564000C80A961D2F0094F54DCF2E00A4094D4080C09404048029C1AF705901608550D37A';
wwv_flow_imp.g_varchar2_table(77) := '4C009896BC750910C80A080059C1B2E30580B2BEE9D9058034A1090810989280003025F8152E2B00AC106A5A8F0900D392B72E0102590101202B5876BC0050D6373DBB0090263401010253121000A604BFC265058015424DEBB16907802BAEBA665A476F';
wwv_flow_imp.g_varchar2_table(78) := '64DD83B66C4ECD33F4F3DFFEC4A3537ED31EBCFAF4F3535B187AFD53781121006405CB8E1700CAFAA6671700728402402E000900C30EC0B93F7D0240D6AFF47801A0B470727E01200728000800991BA40390D11300727AE5470B00E58D532B080029BE10';
wwv_flow_imp.g_varchar2_table(79) := '000480CC0D1200327A02404EAFFC6801A0BC716A050120C5270024DF03E147007E0490F913E83D0019BDF2630580F2C6A9150480149F002000A42E900E408ACF9B00737CC5470B00C589730B0800393F3F02F02380CC0D1200327A7E0490D32B3F5A0028';
wwv_flow_imp.g_varchar2_table(80) := '6F9C5A410048F1E900E800A42E900090E2D301C8F1151F2D001427CE2D2000E4FC7400740032374800C8E8E900E4F4CA8F1600CA1BA7561000527C3A003A00A90B2400A4F87400727CC5470B00C589730B0800393F1D001D80CC0D1200327A3A0039BDF2';
wwv_flow_imp.g_varchar2_table(81) := 'A30580F2C6A9150480149F0E800E40EA020900293E1D801C5FF1D1024071E2DC020240CE4F07400720738304808C9E0E404EAFFC6801A0BC716A050120C5A703A00390BA4002408A4F0720C7577CB400509C38B7800090F3D301D001C8DC200120A3A703';
wwv_flow_imp.g_varchar2_table(82) := '90D32B3F5A00286F9C5A410048F1E900E800A42E900090E2D301C8F1151F2D001427CE2D2000E4FC7400740032374800C8E8E900E4F4CA8F1600CA1BA7561000527C3A003A00A90B2400A4F87400727CC5470B00C589730B0800393F1D001D80CC0D1200';
wwv_flow_imp.g_varchar2_table(83) := '327A3A0039BDF2A30580F2C6A9150480149F0E800E40EA020900293E1D801C5FF1D1024071E2DC020240CE4F0740F37C2B8700001450494441540720738304808C9E0E404EAFFC6801A0BC716A050120C5A703A00390BA4002408A4F0720C7577CB40050';
wwv_flow_imp.g_varchar2_table(84) := '9C38B7800090F3D301D001C8DC200120A3A70390D32B3F5A00286F9C5A410048F1E900E800A42E900090E2D301C8F1151F2D001427CE2D2000E4FC7400740032374800C8E8E900E4F4CA8F1600CA1BA7561000527C3A003A00A90B2400A4F87400727CC5';
wwv_flow_imp.g_varchar2_table(85) := '470B00C589730B0800393F1D001D80CC0D1200327A3A0039BDF2A30580F2C6A9150480149F0E800E40EA020900293E1D801C5FF1D1024071E2DC020240CE4F07400720738304808C9E0E404EAFFC6801A0BC716A050120C5A703A00390BA4002408A4F07';
wwv_flow_imp.g_varchar2_table(86) := '20C7577CB400509C38B7800090F3D301D001C8DC200120A3A70390D32B3F5A00286F9C5A410048F1E900E800A42E900090E2D301C8F1151F2D001427CE2D2000E4FC7400740032374800C8E8E900E4F4CA8F1600CA1BA7561000527C3A003A00A90B2400';
wwv_flow_imp.g_varchar2_table(87) := 'A4F87400727CC5470B00C589730B0800393F1D001D80CC0D1200327A3A0039BDF2A30580F2C6A9150480149F0E800E40EA020900293E1D801C5FF1D1024071E2DC020240CE4F07400720738304808C9E0E404EAFFC6801A0BC716A050120C5A703A00390';
wwv_flow_imp.g_varchar2_table(88) := 'BA4002408A4F0720C7577CB400509C38B7800090F3D301D001C8DC200120A3A70390D32B3F5A00286F9C5A410048F1E900E800A42E900090E2D301C8F1151F2D001427CE2D2000E4FC7400740032374800C8E8E900E4F4CA8F1600CA1BA7561000527C3A';
wwv_flow_imp.g_varchar2_table(89) := '003A00A90B2400A4F87400727CC5470B00C589730B0800393F1D001D80CC0D1200327A3A0039BDF2A30580F2C6A9150480149F0E800E40EA020900293E1D801C5FF1D1024071E2DC020240CE4F07400720738304808C9E0E404EAFFC6801A0BC716A0501';
wwv_flow_imp.g_varchar2_table(90) := '20C5A703A00390BA4002408A4F0720C7577CB400509C38B7800090F3D301D001C8DC200120A3A70390D32B3F5A00286F9C5A410048F1E900E800A42E900090E2D301C8F1151F2D001427CE2D30ED0090DBBDD104080C59E0D093CE18F2F13B7F7601A0E3';
wwv_flow_imp.g_varchar2_table(91) := '2512003A5E20DB234060B7020240B72F8700D0EDFA8400D0F102D91E010202C08CDE0101A0E38513003A5E20DB2340400098D13B200074BC700240C70B647B04080800337A0704808E174E00E878816C8F0001016046EF8000D0F1C209001D2F90ED1120';
wwv_flow_imp.g_varchar2_table(92) := '2000CCE81D10003A5E3801A0E305B23D0204048019BD030240C70B270074BC40B64780800030A3774000E878E104808E17C8F60810100066F40E08001D2F9C00D0F102D91E010202C08CDE0101A0E38513003A5E20DB2340400098D13B200074BC700240';
wwv_flow_imp.g_varchar2_table(93) := 'C70B647B04080800337A0704808E174E00E878816C8F0001016046EF8000D0F1C209001D2F90ED11202000CCE81D10003A5E380160BA05DAB56B572C2D8D633CDD6DD45E7D348A989F9B8BF9F9F9DA630D20D094807F0DB029C932F30800655C1B9B75EA';
wwv_flow_imp.g_varchar2_table(94) := '01E06347377696A94CF4F8F353CB5EBFF5C6585C5A8AC5C5C5188F6727068C46A3D8638FD5B171C3FAD4F9AFB8EA9AD4F8690F3E68CBE6D416867EFE145E44080059C1B2E30580B2BEE9D9058024612200547FF3BFFADAEB66EA1BFF776BCDCFCFC5E6FD';
wwv_flow_imp.g_varchar2_table(95) := '3645150626FD1AFA37C0A19F7FD27B73E73801202B5876BC0050D6373DBB0090244C0580A5B8FADAEB673600AC5A5888FD36ED2B0024AE900090C0D301C8E1B5305A00680139B3840090D18B08014000485C210120812700E4F05A182D00B4809C594200';
wwv_flow_imp.g_varchar2_table(96) := 'C8E809003A00DE0390FC13941AEE470029BEE2830580E2C4B90504809C9F0E801F01646E900E4046CF9B00737AE5470B00E58D532B0800293E3F02F01E80D4051200527C3E0590E32B3E5A00284E9C5B4000C8F9E900E800646E900090D1D301C8E9951F';
wwv_flow_imp.g_varchar2_table(97) := '2D0094374EAD2000A4F8740074005217480048F1E900E4F88A8F16008A13E7161000727E3A003A00991B240064F47400727AE5470B00E58D532B0800293E1D001D80D4051200527C3A0039BEE2A30580E2C4B90504809C9F0E800E40E6060900193D1D80';
wwv_flow_imp.g_varchar2_table(98) := '9C5EF9D1024079E3D40A02408A4F0740072075810480149F0E408EAFF86801A038716E010120E7A703A00390B9410240464F0720A7577EB40050DE38B5820090E2D301D001485D200120C5A70390E32B3E5A00284E9C5B4000C8F9E900E800646E900090';
wwv_flow_imp.g_varchar2_table(99) := 'D1D301C8E9951F2D0094374EAD2000A4F8740074005217480048F1E900E4F88A8F16008A13E7161000727E3A003A00991B240064F47400727AE5470B00E58D532B0800293E1D001D80D4051200527C3A0039BEE2A30580E2C4B90504809C9F0E800E40E6';
wwv_flow_imp.g_varchar2_table(100) := '060900193D1D809C5EF9D1024079E3D40A02408A4F0740072075810480149F0E408EAFF86801A038716E010120E7A703A00390B9410240464F0720A7577EB40050DE38B5820090E2D301D001485D200120C5A70390E32B3E5A00284E9C5B4000C8F9E900';
wwv_flow_imp.g_varchar2_table(101) := 'E800646E900090D1D301C8E9951F2D0094374EAD2000A4F8740074005217480048F1E900E4F88A8F16008A13E7161000727E3A003A00991B240064F47400727AE5470B00E58D532B0800293E1D001D80D4051200527C3A0039BEE2A30580E2C4B9050480';
wwv_flow_imp.g_varchar2_table(102) := '9C9F0E800E40E6060900193D1D809C5EF9D1024079E3D40A02408A4F0740072075810480149F0E408EAFF86801A038716E010120E7A703A00390B9410240464F0720A7577EB40050DE38B5820090E2D301D001485D200120C5A70390E32B3E5A00284E9C';
wwv_flow_imp.g_varchar2_table(103) := '5B4000C8F9E900E800646E900090D1D301C8E9951F2D0094374EAD2000A4F8740074005217480048F1E900E4F88A8F16008A13E7161000727E3A003A00991B240064F47400727AE5470B00E58D532B0800293E1D001D80D4051200527C3A0039BEE2A305';
wwv_flow_imp.g_varchar2_table(104) := '80E2C4B90504809C9F0E800E40E6060900193D1D809C5EF9D1024079E3D40A02408A4F0740072075810480149F0E408EAFF86801A038716E010120E7A703A00390B9410240464F0720A7577EB40050DE38B5820090E2D301D001485D200120C5A70390E3';
wwv_flow_imp.g_varchar2_table(105) := '2B3E5A00284E9C5B4000C8F9E900E800646E900090D1D301C8E9951F2D0094374EAD2000A4F8740074005217480048F1E900E4F88A8F16008A13E7161000727E3A003A00991B240064F47400727AE5470B00E58D532B0800293E1D001D80D4051200527C';
wwv_flow_imp.g_varchar2_table(106) := '3A0039BEE2A30580E2C4B90504809C9F0E800E40E6060900193D1D809C5EF9D1024079E3D40A02408A4F0740072075810480149F0E408EAFF86801A038716E010120E7A703A00390B9410240464F0720A7577EB40050DE38B5820090E24B7600C671F5B5';
wwv_flow_imp.g_varchar2_table(107) := 'D7C5783C4E6E623AC3E7E7E762F37E9B62341A4DBC81A17F031CFAF927BE38DF1A78E8496764A730BEA080005010B789A90580A4E2E3CF4F4D70DDF537C4CE5DBB52734C6370F53D7F8FD5AB63C3FA750240A2000240022F7400727AE5470B00E58D532B';
wwv_flow_imp.g_varchar2_table(108) := '4C3D00A4763FFB8397969662716969E60E328A51CCCDCFC55CE26FFF3377681BEE9C800E40E74A72970D0900DDAE4F08001D2F90ED1120B05B0101A0DB974300E8767D04808ED7C7F60810D8BD8000D0EDDB210074BB3E0240C7EB637B04080800B37A07';
wwv_flow_imp.g_varchar2_table(109) := '04808E57CE8F003A5E20DB2340C08F0066F40E08001D2F9C00D0F102D91E010202C08CDE0101A0E38513003A5E20DB2340400098D13B200074BC700240C70B647B04080800337A0704808E174E00E878816C8F0001016046EF8000D0F1C209001D2F90ED';
wwv_flow_imp.g_varchar2_table(110) := '11202000CCE81D10003A5E3801A0E305B23D0204048019BD030240C70B270074BC40B64780800030A3774000E878E104808E17C8F60810100066F40E08001D2F9C00D0F102D91E010202C08CDE0101A0E38513003A5E20DB2340400098D13B200074BC70';
wwv_flow_imp.g_varchar2_table(111) := '0240C70B647B04080800337A0704808E174E00E878816C8F0001016046EF8000D0F1C29DFBBC47C5BA3D57757C97B647800081BB0ADCB47D673CF8E44F63E9B08000D0E1E2545BFBE0B31E12476E59DFF15DDA1E010204EE2AF095ABB6C593FEEA0B583A';
wwv_flow_imp.g_varchar2_table(112) := '2C200074B838D5D65EF3A4FBC54F3DE4908EEFD2F6081020705781F77DE1B2F8ED0FFE3B960E0B08001D2E4EB5B5FF7AE4BAF8A39FFAC18EEFD2F608102070578117BFEFF3F19EAFDC84A5C3020240878B536D6DBFD1AD71D68B9FD4F15DDA1E010204EE';
wwv_flow_imp.g_varchar2_table(113) := '2AF0D03FFA605C37DE1B4B870504800E17A7DADAE2CDD7C71B9FF9B078CA3107777CA7B6478000813B04FEE98B97C7AFFDDD9931BFCF26241D1610003A5C9C3B03C0B1F7DE18FFFB577EA8E33BB53D020408DC21F0B4BFF8789C73E95601A0E3174200E8';
wwv_flow_imp.g_varchar2_table(114) := '7881AA0E40F5F58AA73E384E78E4FD3BBE5BDB234060E802EFF8CCC5F1FBEF3F77994107A0DBB74100E8767D62F196AD11E371CCCF8DE203BFFE8438EA401F09EC78C96C8FC06005BE7CE5B6F8CF6FF8682C2E8D2346A3985FBB71B016B3707001A0E355';
wwv_flow_imp.g_varchar2_table(115) := '5ABC755BC4D2AEE55D56BF0FE0BDCF7D6CECB3C62F06EA78D96C8FC0E0046EDEB1337EE62D9F88EAF3FFCB5F730B31BFB7BFB074F92208005DAE4E442CEDB825C63B6FFBF62E1F7ADF4DF137273C4A08E878DD6C8FC09004AA6FFE27BEE3D371D6D7EEF8';
wwv_flow_imp.g_varchar2_table(116) := '9165F5355AB547CCAD593B2486993BAB00D0F1928D77EE88A51DB7DE65975527E0E49F3DDE8F033A5E3BDB23300481AAEDFFBCBF3FFB3B7FF3FFD6A1E7D6EC1DA3556B864030B3671400BA5EBAF1522CDE72C3F7ECB27A4FC01F3CF9186F0CEC7AFDEC8F';
wwv_flow_imp.g_varchar2_table(117) := '408F05AA37FCFDC13F7FF18E9FF9FF87AFF9B5FB468CE67A7CFAD93F9A003003355CDA7E4B8C777DE7C700DFBDE5EA2382CF7EF4617E4FC00CD4D11609F445A0FA9CFFDBFFDF45CB1FF5BBBBAFD1C21E31B7A7F67FD7EB2D0074BD4211315EDC154BDFFC';
wwv_flow_imp.g_varchar2_table(118) := 'D61B6B76B3DF03D6AD891F3EE2C078D8A1FBC5115BD6C5BDD6EFE55F119C81DADA2281AE0B54FFAADF37B67D332EB8EAA638F392EBE223175C1957DFB4E3FB6E7B6EAFF5319A5FE8FAD106BF3F016046AE40F53E80EAFD00BE081020D06581EAE7FED5CF';
wwv_flow_imp.g_varchar2_table(119) := 'FF7D755F4000E87E8DBEBDC3EFFE48E00C6DDB560910188A808FFECD54A50580192AD77869F18E1F058CBFF70D3733740C5B2540A08F02A3512CB7FEE7E6FB78BA5E9E490098B1B22EBF1F60FB4D42C08CD5CD7609F45AA0FAE6BFE73A3FF79FB1220B00';
wwv_flow_imp.g_varchar2_table(120) := '3356B06ABBCB9D80EDB77CFB3704CEE0116C990081BE08CC2D2CBFE3DFDFFC67AFA002C0ECD5ECDB3BF6C6C0192E9EAD13E8818037FCCD76110580D9AEDFF24704C7B7EFD8EDEF0998F1E3D93E01021D14A83EE73F5ABD46CBBF83B5A9B32501A08E5697';
wwv_flow_imp.g_varchar2_table(121) := '9F1D2FC578D7ED770482C5C5EA9707789F4097EB656F04664560348A18CDC768BEFADF428C1656FB0D7FB352BB7BD8A700D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8';
wwv_flow_imp.g_varchar2_table(122) := '898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1';
wwv_flow_imp.g_varchar2_table(123) := 'F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A06010204';
wwv_flow_imp.g_varchar2_table(124) := '0810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000';
wwv_flow_imp.g_varchar2_table(125) := 'D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C01';
wwv_flow_imp.g_varchar2_table(126) := '02040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8';
wwv_flow_imp.g_varchar2_table(127) := '232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D09342';
wwv_flow_imp.g_varchar2_table(128) := '3A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C01020408';
wwv_flow_imp.g_varchar2_table(129) := '10E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000';
wwv_flow_imp.g_varchar2_table(130) := 'D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A0601';
wwv_flow_imp.g_varchar2_table(131) := '02040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E889';
wwv_flow_imp.g_varchar2_table(132) := '8000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F2';
wwv_flow_imp.g_varchar2_table(133) := '2C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A0601020408';
wwv_flow_imp.g_varchar2_table(134) := '10A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E8898000D0';
wwv_flow_imp.g_varchar2_table(135) := '93423A060102040810A8232000D4D1F22C0102040810E8898000D093423A060102040810A8232000D4D1F22C0102040810E889C0FF07C41C7A5A22390A260000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(540259664986030485)
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
 p_id=>wwv_flow_imp.id(9798527504058856)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>186626129
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11319730952578171)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>37166093867983
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11349409444539518)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>37167665069464
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11349831419539519)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>37167665069464
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11372563954385134)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>155466034
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(109644086732947752)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>37166093867983
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(131196499169438634)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'N')).to_clob
,p_version_scn=>37166093867983
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(133013300825537314)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>37166093867983
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(185928905343565668)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>37166093867983
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(616582499487767397)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>37166093867981
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1131028025744565386)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>37166093867983
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1777391880835450256)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'N')).to_clob
,p_version_scn=>37166093867983
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1844092021901732356)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>37166093867983
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1930007023679678402)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>37166093867983
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
wwv_flow_imp_shared.create_icon_bar_item(
 p_id=>wwv_flow_imp.id(3209328728763327633)
,p_icon_sequence=>10
,p_icon_subtext=>'Administration'
,p_icon_target=>'f?p=&APP_ID.:settings:&SESSION.::&DEBUG.::::'
,p_nav_entry_is_feedback_yn=>'N'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_imp_shared.create_icon_bar_item(
 p_id=>wwv_flow_imp.id(3209328124261326306)
,p_icon_sequence=>20
,p_icon_subtext=>'Help'
,p_icon_target=>'f?p=&APP_ID.:help:&SESSION.::&DEBUG.::::'
,p_nav_entry_is_feedback_yn=>'N'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_imp_shared.create_icon_bar_item(
 p_id=>wwv_flow_imp.id(8203233861469693321)
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
 p_id=>wwv_flow_imp.id(1565229633605682387)
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
,p_version_scn=>37166093867983
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
wwv_flow_imp_shared.create_toplevel_tab(
 p_id=>wwv_flow_imp.id(3175280707478778726)
,p_tab_set=>'TS1'
,p_tab_sequence=>10
,p_tab_name=>'T_ADMINISTRATION'
,p_tab_text=>'TS1'
,p_tab_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_current_on_tabset=>'TS1'
);
end;
/
prompt --application/shared_components/user_interface/lovs/distinct_projects
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2582001537793906958)
,p_lov_name=>'DISTINCT PROJECTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project || '' ('' || count(*) ||'' tasks from '' || to_char(min(start_date),''Mon RR'') ||'' to '' ||to_char(max(start_date), ''Mon RR'')||'')'' d, project r',
'from eba_demo_cal_projects',
'group by project',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089078457
);
end;
/
prompt --application/shared_components/user_interface/lovs/session_types
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(788163932279513196)
,p_lov_name=>'SESSION_TYPES'
,p_lov_query=>'.'||wwv_flow_imp.id(788163932279513196)||'.'
,p_location=>'STATIC'
,p_version_scn=>1089078457
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(788164295790513196)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Business'
,p_lov_return_value=>'BUSINESS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(788164635155513198)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Technical'
,p_lov_return_value=>'TECHNICAL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(788165047496513198)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'General Session'
,p_lov_return_value=>'GENERAL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(788165506350513198)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Break'
,p_lov_return_value=>'BREAK'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(788165888598513199)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Hands On Session'
,p_lov_return_value=>'Hands On'
);
end;
/
prompt --application/shared_components/user_interface/lovs/status
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(332761733338626435)
,p_lov_name=>'STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(332761733338626435)||'.'
,p_location=>'STATIC'
,p_version_scn=>1089078457
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(332761967048626436)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Active'
,p_lov_return_value=>'ACTIVE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(332762452009626436)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Inactive'
,p_lov_return_value=>'INACTIVE'
);
end;
/
prompt --application/shared_components/user_interface/lovs/valid_status_codes
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2661056819897279509)
,p_lov_name=>'VALID STATUS CODES'
,p_lov_query=>'.'||wwv_flow_imp.id(2661056819897279509)||'.'
,p_location=>'STATIC'
,p_version_scn=>1089078457
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2661057027642279512)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'Closed'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2661057212353279520)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'On-Hold'
,p_lov_return_value=>'On-Hold'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2661057407916279520)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'Open'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2661057617620279520)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'Pending'
,p_lov_return_value=>'Pending'
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
 p_id=>wwv_flow_imp.id(8203235651002693333)
,p_name=>' Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(618974227183616392)
,p_parent_id=>wwv_flow_imp.id(792130824362979533)
,p_short_name=>'Faceted Search: Projects'
,p_link=>'f?p=&APP_ID.:36:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>36
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(792109320338728935)
,p_parent_id=>wwv_flow_imp.id(792130824362979533)
,p_short_name=>'Monthly Calendar: Projects'
,p_link=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:::'
,p_page_id=>31
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(792109556912740780)
,p_parent_id=>wwv_flow_imp.id(792130824362979533)
,p_short_name=>'Weekly Calendar: Conference'
,p_link=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:::'
,p_page_id=>32
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(792109758250742823)
,p_parent_id=>wwv_flow_imp.id(792130824362979533)
,p_short_name=>'Weekly Calendar: Edit Sessions'
,p_link=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:::'
,p_page_id=>33
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(792109964990744527)
,p_parent_id=>wwv_flow_imp.id(792130824362979533)
,p_short_name=>'Weekly Calendar: Drag & Drop'
,p_link=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:::'
,p_page_id=>34
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(792110143494745692)
,p_parent_id=>wwv_flow_imp.id(792130824362979533)
,p_short_name=>'Weekly Calendar: Time Format'
,p_link=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:::'
,p_page_id=>35
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(792110395339749545)
,p_parent_id=>wwv_flow_imp.id(792135872441042661)
,p_short_name=>'Calendar and Report'
,p_link=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:::'
,p_page_id=>51
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(792110565486751307)
,p_parent_id=>wwv_flow_imp.id(792135872441042661)
,p_short_name=>'Create Calendar Events'
,p_link=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:::'
,p_page_id=>52
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(792110791423753472)
,p_parent_id=>wwv_flow_imp.id(792135872441042661)
,p_short_name=>'Delete Events By Click'
,p_link=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.:::'
,p_page_id=>53
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(792110989559755795)
,p_parent_id=>wwv_flow_imp.id(792142013461093262)
,p_short_name=>'Custom Navigation'
,p_link=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.:::'
,p_page_id=>71
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(792111144736757995)
,p_parent_id=>wwv_flow_imp.id(792142013461093262)
,p_short_name=>'Query Calendar Status'
,p_link=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.:::'
,p_page_id=>72
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(792111410472759117)
,p_parent_id=>wwv_flow_imp.id(792142013461093262)
,p_short_name=>'Calendar Client Events'
,p_link=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:::'
,p_page_id=>73
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(792111538875761455)
,p_parent_id=>wwv_flow_imp.id(792146037597125339)
,p_short_name=>'Custom CSS Classes'
,p_link=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.:::'
,p_page_id=>91
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(792111778518763131)
,p_parent_id=>wwv_flow_imp.id(792146037597125339)
,p_short_name=>'Custom Event Icons'
,p_link=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.:::'
,p_page_id=>92
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(792130824362979533)
,p_short_name=>'Standard Calendars'
,p_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
,p_page_id=>30
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(792135872441042661)
,p_short_name=>'Dynamic Action Examples'
,p_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:::'
,p_page_id=>50
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(792142013461093262)
,p_short_name=>'Calendars and Javascript'
,p_link=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:::'
,p_page_id=>70
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(792146037597125339)
,p_short_name=>'Calendar Styling'
,p_link=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.:::'
,p_page_id=>90
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(792167133065360581)
,p_parent_id=>wwv_flow_imp.id(792135872441042661)
,p_short_name=>'Copy Events By Click'
,p_link=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.:::'
,p_page_id=>54
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(827320903115689349)
,p_parent_id=>wwv_flow_imp.id(792135872441042661)
,p_short_name=>'Custom Drag and Drop Handlers'
,p_link=>'f?p=&APP_ID.:112:&SESSION.::&DEBUG.:::'
,p_page_id=>112
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(849920391402330917)
,p_short_name=>'Custom Calendar Initialization'
,p_link=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.:::'
,p_page_id=>110
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(849920624547334182)
,p_parent_id=>wwv_flow_imp.id(849920391402330917)
,p_short_name=>'Custom weekly schedule'
,p_link=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.:::'
,p_page_id=>111
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(895011229699432934)
,p_parent_id=>wwv_flow_imp.id(792142013461093262)
,p_short_name=>'Schedule Builder'
,p_link=>'f?p=&FLOW_ID.:74:&SESSION.'
,p_page_id=>74
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1313038235243414450)
,p_short_name=>'Mini Calendar'
,p_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::'
,p_page_id=>13
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1313038908406414454)
,p_parent_id=>wwv_flow_imp.id(1313038235243414450)
,p_short_name=>'&P14_PROJECT.'
,p_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::'
,p_page_id=>14
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1871880064607171610)
,p_parent_id=>wwv_flow_imp.id(1872361547547655859)
,p_short_name=>'Application Theme Style'
,p_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1872361547547655859)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:15:&SESSION.'
,p_page_id=>15
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2580184435815657245)
,p_short_name=>'Calendar Entry'
,p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2580593112347740786)
,p_short_name=>'Time Line'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2593316114903579586)
,p_parent_id=>wwv_flow_imp.id(1872361547547655859)
,p_short_name=>'Manage Sample Data'
,p_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2594927816596799506)
,p_parent_id=>wwv_flow_imp.id(2593316114903579586)
,p_short_name=>'Report'
,p_link=>'f?p=&APP_ID.:7:&SESSION.'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2660652209530216526)
,p_short_name=>'Project Due Dates'
,p_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
,p_page_id=>9
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2660652539206216527)
,p_parent_id=>wwv_flow_imp.id(2660652209530216526)
,p_short_name=>'Project Detail'
,p_link=>'f?p=&FLOW_ID.:10:&SESSION.'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3250105026741727150)
,p_short_name=>'Help'
,p_link=>'f?p=&FLOW_ID.:12:&SESSION.'
,p_page_id=>12
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8203236062850693336)
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
 p_id=>wwv_flow_imp.id(3174219511674197879)
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
 p_id=>wwv_flow_imp.id(152510632919400417)
,p_plug_template_id=>wwv_flow_imp.id(3174219511674197879)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(152510676469400417)
,p_plug_template_id=>wwv_flow_imp.id(3174219511674197879)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(152510783376400417)
,p_plug_template_id=>wwv_flow_imp.id(3174219511674197879)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(152510885521400417)
,p_plug_template_id=>wwv_flow_imp.id(3174219511674197879)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(152511006677400417)
,p_plug_template_id=>wwv_flow_imp.id(3174219511674197879)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(152511110343400417)
,p_plug_template_id=>wwv_flow_imp.id(3174219511674197879)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(152511257937400417)
,p_plug_template_id=>wwv_flow_imp.id(3174219511674197879)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(152511354902400417)
,p_plug_template_id=>wwv_flow_imp.id(3174219511674197879)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(152511360993400417)
,p_plug_template_id=>wwv_flow_imp.id(3174219511674197879)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(152511495058400417)
,p_plug_template_id=>wwv_flow_imp.id(3174219511674197879)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(152511561945400417)
,p_plug_template_id=>wwv_flow_imp.id(3174219511674197879)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(152511732446400417)
,p_plug_template_id=>wwv_flow_imp.id(3174219511674197879)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(152511839736400417)
,p_plug_template_id=>wwv_flow_imp.id(3174219511674197879)
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
 p_id=>wwv_flow_imp.id(1706971926045785440)
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
,p_default_header_template=>wwv_flow_imp.id(1706937225695785323)
,p_default_footer_template=>wwv_flow_imp.id(1706937225695785323)
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
 p_id=>wwv_flow_imp.id(27665601008397086)
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
 p_id=>wwv_flow_imp.id(27669576461397088)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(27671615785397089)
,p_theme_id=>42
,p_name=>'ICON_STYLE'
,p_display_name=>'Icon Style'
,p_display_sequence=>35
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(27674817712397091)
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
 p_id=>wwv_flow_imp.id(27683147788397097)
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
 p_id=>wwv_flow_imp.id(27693070365397103)
,p_theme_id=>42
,p_name=>'RESULT_SEPARATOR'
,p_display_name=>'Result Separator'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_null_text=>'Show'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(27697082426397106)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980424200765737928)
,p_theme_id=>142
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980424517600737928)
,p_theme_id=>142
,p_name=>'DISPLAY_TYPE'
,p_display_name=>'Display Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980426367336737933)
,p_theme_id=>142
,p_name=>'REGION_STYLE'
,p_display_name=>'Region Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980426729599737933)
,p_theme_id=>142
,p_name=>'REGION_PADDING'
,p_display_name=>'Region Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980428524116737936)
,p_theme_id=>142
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Extend to Fit Contents'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980428985417737936)
,p_theme_id=>142
,p_name=>'REGION_HEADER'
,p_display_name=>'Region Header'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980429247635737937)
,p_theme_id=>142
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980430386343737937)
,p_theme_id=>142
,p_name=>'REGION_TYPE'
,p_display_name=>'Region Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Normal - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980431365362737938)
,p_theme_id=>142
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980432037854737939)
,p_theme_id=>142
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980432377546737939)
,p_theme_id=>142
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980434430989737944)
,p_theme_id=>142
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980434889887737944)
,p_theme_id=>142
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980435190795737944)
,p_theme_id=>142
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980436605557737947)
,p_theme_id=>142
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980437523903737949)
,p_theme_id=>142
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980438947116737950)
,p_theme_id=>142
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980440085842737951)
,p_theme_id=>142
,p_name=>'ICON_STYLE'
,p_display_name=>'Icon Style'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980441931789737956)
,p_theme_id=>142
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980443039281737958)
,p_theme_id=>142
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980443769114737960)
,p_theme_id=>142
,p_name=>'BREADCRUMB_DIVIDER'
,p_display_name=>'Breadcrumb Divider'
,p_display_sequence=>1
,p_template_types=>'BREADCRUMB'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980445057811737963)
,p_theme_id=>142
,p_name=>'BUTTON_TYPE'
,p_display_name=>'Button Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980445390173737963)
,p_theme_id=>142
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980445720231737963)
,p_theme_id=>142
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980446071470737963)
,p_theme_id=>142
,p_name=>'BUTTON_SIZE'
,p_display_name=>'Button Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Size'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980446362550737963)
,p_theme_id=>142
,p_name=>'BUTTON_STYLE'
,p_display_name=>'Button Style'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Style'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980446901446737963)
,p_theme_id=>142
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980447638493737963)
,p_theme_id=>142
,p_name=>'BUTTON_WIDTH'
,p_display_name=>'Button Width'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Width'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980448155891737964)
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
 p_id=>wwv_flow_imp.id(980448676978737964)
,p_theme_id=>142
,p_name=>'FORM_LABEL_POSITION'
,p_display_name=>'Form Label Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980448940645737964)
,p_theme_id=>142
,p_name=>'FORM_ITEMS_SIZE'
,p_display_name=>'Form Items Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Size'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(980449283429737964)
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
 p_id=>wwv_flow_imp.id(980449597172737964)
,p_theme_id=>142
,p_name=>'FORM_ITEM_PADDING'
,p_display_name=>'Form Item Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Padding'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1044557252226097857)
,p_theme_id=>142
,p_name=>'NAVIGATION_COLOR_SCHEME'
,p_display_name=>'Navigation Color Scheme'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1067310383697180598)
,p_theme_id=>142
,p_name=>'CURRENT_PAGE'
,p_display_name=>'Current Page'
,p_display_sequence=>1
,p_template_types=>'BREADCRUMB'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1226519358664752582)
,p_theme_id=>142
,p_name=>'REGION_ACCENT'
,p_display_name=>'Region Accent'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1226525156296752594)
,p_theme_id=>142
,p_name=>'LIST_STYLE'
,p_display_name=>'List Style'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1263371147355980467)
,p_theme_id=>142
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1263373574318980469)
,p_theme_id=>142
,p_name=>'DISPLAY'
,p_display_name=>'Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1263392691018980494)
,p_theme_id=>142
,p_name=>'FORM_ITEM_WIDTH'
,p_display_name=>'Form Item Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1350147487795002375)
,p_theme_id=>142
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1353674634029359749)
,p_theme_id=>142
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1529923741182449045)
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
 p_id=>wwv_flow_imp.id(3175280217820753313)
,p_name=>'ADMINISTRATION'
,p_message_text=>'Administration'
,p_version_scn=>37166093867993
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(2577965435005404623)
,p_name=>'HELP'
,p_message_text=>'Help'
,p_version_scn=>37166093867993
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(2577957432928404003)
,p_name=>'LOGOUT'
,p_message_text=>'Logout'
,p_version_scn=>37166093867993
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(2686048933097880540)
,p_name=>'USER'
,p_message_text=>'User'
,p_version_scn=>37166093867993
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
 p_id=>wwv_flow_imp.id(2660645618014216484)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_version_scn=>1089078471
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/apex_auth
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(8203234350151693323)
,p_name=>'APEX Auth'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_logout_url=>'f?p=&APP_ID.:1'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>186626975
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_gantt_chart
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(1309333132484067183)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.GANTT_CHART'
,p_display_name=>'Gantt Chart'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.GANTT_CHART'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'procedure render_header_rows( p_period in varchar2, p_start_date in date,',
'        p_num_periods in number );',
'',
'function render (',
'        p_region              in apex_plugin.t_region,',
'        p_plugin              in apex_plugin.t_plugin,',
'        p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result',
'is',
'    l_region_source varchar2(32767) := p_region.source;',
'    l_bind_list apex_plugin_util.t_bind_list;',
'',
'    -- It''s better to have named variables instead of using the generic ones,',
'    -- makes the code more readable. We are using the same defaults for the',
'    -- required attributes as in the plug-in attribute configuration, because',
'    -- they can still be null. Keep them in sync!',
'    c_summary_element_col        constant varchar2(255) := p_region.attribute_01;',
'    c_terminal_element_col       constant varchar2(255) := p_region.attribute_02;',
'    c_terminal_element_alt_col   constant varchar2(255) := p_region.attribute_03;',
'    c_terminal_element_style_col constant varchar2(255) := p_region.attribute_04;',
'    c_terminal_element_start_col constant varchar2(255) := p_region.attribute_05;',
'    c_terminal_element_end_col   constant varchar2(255) := p_region.attribute_06;',
'',
'    c_summary_link_target  constant varchar2(255) := p_region.attribute_07;',
'    c_terminal_link_target constant varchar2(255) := p_region.attribute_08;',
'',
'    c_period_type_page_item       constant varchar2(255) := p_region.attribute_09;',
'    c_period_start_date_page_item constant varchar2(255) := p_region.attribute_10;',
'    c_periods_per_type            constant varchar2(255) := p_region.attribute_11;',
'',
'    l_summ_element_col_no       pls_integer;',
'    l_term_element_col_no       pls_integer;',
'    l_term_element_alt_col_no   pls_integer;',
'    l_term_element_style_col_no pls_integer;',
'    l_term_element_start_col_no pls_integer;',
'    l_term_element_end_col_no   pls_integer;',
'    l_column_value_list apex_plugin_util.t_column_value_list2;',
'',
'    l_summ_element       varchar2(4000);',
'    l_term_element       varchar2(4000);',
'    l_term_element_alt   varchar2(4000);',
'    l_term_element_style varchar2(4000);',
'    l_term_element_start date;',
'    l_term_element_end   date;',
'    l_summ_link          varchar2(4000);',
'    l_term_link          varchar2(4000);',
'',
'    l_period_type       varchar2(1);',
'    l_period_start_date date;',
'    l_period_end_date   date;',
'    l_period_lengths    apex_application_global.vc_arr2;',
'    l_num_periods       number;',
'',
'    l_cs          number;',
'    l_current     varchar2(4000) := ''X'';',
'    l_short       varchar2(64) := '''';',
'    l_start_cell  number;',
'    l_label       varchar2(512) := '''';',
'begin',
'    -- Get the appropriate values from the page items, if supplied.',
'    l_period_type := nvl( v(c_period_type_page_item), ''M'' );',
'    l_period_start_date := nvl( v(c_period_start_date_page_item), trunc(current_date));',
'    if c_periods_per_type is not null then',
'        l_period_lengths := apex_util.string_to_table( c_periods_per_type );',
'    else',
'        l_period_lengths := apex_util.string_to_table( ''30:22:18:8'' );',
'    end if;',
'',
'    -- CSS for the Gantt Chart',
'    apex_css.add_file (',
'        p_name => ''com_oracle_apex_gantt_chart'',',
'        p_directory => p_plugin.file_prefix );',
'',
'    case l_period_type',
'        when ''D'' then',
'            l_num_periods := l_period_lengths(1);',
'            l_period_end_date := l_period_start_date + l_num_periods - 1;',
'        when ''W'' then',
'            l_num_periods := l_period_lengths(2);',
'            l_period_end_date := l_period_start_date + 7*(l_num_periods - 1);',
'        when ''M'' then',
'            l_num_periods := l_period_lengths(3);',
'            l_period_end_date := add_months(l_period_start_date, l_num_periods - 1);',
'        when ''Q'' then',
'            l_num_periods := l_period_lengths(4);',
'            l_period_end_date := add_months(l_period_start_date, 3*(l_num_periods - 1));',
'    end case;',
'',
'    -- Wrap the user''s SQL so that we only get the rows we actually care about.',
'    l_region_source := ''select * from ('' || rtrim(l_region_source, '' ;'') || '') '' ||',
'                       ''where "'' || c_terminal_element_start_col || ''" <= to_date(:apex$_end_date,   ''''YYYYMMDD'''')'' ||',
'                       ''  and "'' || c_terminal_element_end_col   || ''" >= to_date(:apex$_start_date, ''''YYYYMMDD'''')'';',
'',
'    l_bind_list(1).name  := ''apex$_start_date'';',
'    l_bind_list(1).value := to_char(l_period_start_date,''YYYYMMDD'');',
'    l_bind_list(2).name  := ''apex$_end_date'';',
'    l_bind_list(2).value := to_char(l_period_end_date,''YYYYMMDD'');',
'',
'    -- Read the data based on the region source query',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'                               p_sql_statement  => l_region_source,',
'                               p_min_columns    => 4,',
'                               p_max_columns    => null,',
'                               p_component_name => p_region.name,',
'                               p_bind_list      => l_bind_list',
'                               );',
'',
'    -- Get the actual column# for faster access and also verify that the data type',
'    -- of the column matches with what we are looking for',
'    l_summ_element_col_no         := apex_plugin_util.get_column_no (',
'                                        p_attribute_label   => ''Parent Element Column'',',
'                                        p_column_alias      => c_summary_element_col,',
'                                        p_column_value_list => l_column_value_list,',
'                                        p_is_required       => true,',
'                                        p_data_type         => apex_plugin_util.c_data_type_varchar2 );',
'',
'    l_term_element_col_no       := apex_plugin_util.get_column_no (',
'                                        p_attribute_label   => ''Child Element Column'',',
'                                        p_column_alias      => c_terminal_element_col,',
'                                        p_column_value_list => l_column_value_list,',
'                                        p_is_required       => true,',
'                                        p_data_type         => apex_plugin_util.c_data_type_varchar2 );',
'',
'    l_term_element_alt_col_no   := apex_plugin_util.get_column_no (',
'                                        p_attribute_label   => ''Child Element Alt. Name Column'',',
'                                        p_column_alias      => c_terminal_element_alt_col,',
'                                        p_column_value_list => l_column_value_list,',
'                                        p_is_required       => false,',
'                                        p_data_type         => apex_plugin_util.c_data_type_varchar2 );',
'',
'    l_term_element_style_col_no := apex_plugin_util.get_column_no (',
'                                        p_attribute_label   => ''Child Element Style Column'',',
'                                        p_column_alias      => c_terminal_element_style_col,',
'                                        p_column_value_list => l_column_value_list,',
'                                        p_is_required       => false,',
'                                        p_data_type         => apex_plugin_util.c_data_type_varchar2 );',
'',
'    l_term_element_start_col_no := apex_plugin_util.get_column_no (',
'                                        p_attribute_label   => ''Child Element Start Column'',',
'                                        p_column_alias      => c_terminal_element_start_col,',
'                                        p_column_value_list => l_column_value_list,',
'                                        p_is_required       => true,',
'                                        p_data_type         => apex_plugin_util.c_data_type_date );',
'',
'    l_term_element_end_col_no   := apex_plugin_util.get_column_no (',
'                                        p_attribute_label   => ''Child Element End Column'',',
'                                        p_column_alias      => c_terminal_element_end_col,',
'                                        p_column_value_list => l_column_value_list,',
'                                        p_is_required       => true,',
'                                        p_data_type         => apex_plugin_util.c_data_type_date );',
'',
'    -- Generate the top part of the Gantt chart.',
'    render_header_rows(',
'        p_period => l_period_type,',
'        p_start_date => l_period_start_date,',
'        p_num_periods => l_num_periods );',
'',
'    -- Ensure that a tbody tag is open, since we close it when starting a new project.',
'    sys.htp.p(''<tbody class="hideMe">'');',
'',
'    -- It''s time to emit the selected data',
'    for l_row_num in 1 .. l_column_value_list(1).value_list.count loop',
'        -- Set the column values of our current row so that apex_plugin_util.replace_substitutions',
'        -- can do substitutions for columns contained in the region source query.',
'        apex_plugin_util.set_component_values (',
'            p_column_value_list => l_column_value_list,',
'            p_row_num           => l_row_num );',
'    ',
'        -- get the summary element label',
'        l_summ_element := apex_plugin_util.escape (',
'                       apex_plugin_util.get_value_as_varchar2 (',
'                           p_data_type => l_column_value_list(l_summ_element_col_no).data_type,',
'                           p_value     => l_column_value_list(l_summ_element_col_no).value_list(l_row_num) ),',
'                       p_region.escape_output );',
'',
'        -- get the terminal element label',
'        l_term_element := apex_plugin_util.escape (',
'                       apex_plugin_util.get_value_as_varchar2 (',
'                           p_data_type => l_column_value_list(l_term_element_col_no).data_type,',
'                           p_value     => l_column_value_list(l_term_element_col_no).value_list(l_row_num) ),',
'                       p_region.escape_output );',
'',
'        -- get the terminal element alternate label if it exists',
'        if l_term_element_alt_col_no is not null then',
'            l_term_element_alt := apex_escape.html_attribute (',
'                           apex_plugin_util.get_value_as_varchar2 (',
'                               p_data_type => l_column_value_list(l_term_element_alt_col_no).data_type,',
'                               p_value     => l_column_value_list(l_term_element_alt_col_no).value_list(l_row_num) )',
'                           );',
'        end if;',
'',
'        -- get the terminal element style if it exists',
'        if l_term_element_style_col_no is not null then',
'            l_term_element_style := apex_escape.html_attribute (',
'                           apex_plugin_util.get_value_as_varchar2 (',
'                               p_data_type => l_column_value_list(l_term_element_style_col_no).data_type,',
'                               p_value     => l_column_value_list(l_term_element_style_col_no).value_list(l_row_num) )',
'                           );',
'        end if;',
'',
'        -- get the terminal element start date',
'        l_term_element_start := l_column_value_list(l_term_element_start_col_no).value_list(l_row_num).date_value;',
'',
'        -- get the terminal element end date',
'        l_term_element_end   := l_column_value_list(l_term_element_end_col_no).value_list(l_row_num).date_value;',
'',
'        -- get the summary element link target if it does exist',
'        if c_summary_link_target is not null then',
'            l_summ_link := apex_util.prepare_url (',
'                                apex_plugin_util.replace_substitutions (',
'                                    p_value  => c_summary_link_target,',
'                                    p_escape => false ));',
'        end if;',
'',
'        -- get the terminal element link target if it does exist',
'        if c_terminal_link_target is not null then',
'            l_term_link := apex_util.prepare_url (',
'                                apex_plugin_util.replace_substitutions (',
'                                    p_value  => c_terminal_link_target,',
'                                    p_escape => false ));',
'        end if;',
'',
'        if l_term_element_start > l_period_end_date or l_term_element_end < l_period_start_date then',
'            -- Ignore the entry if it falls outside of the current window.',
'            -- This should never happen, since we''re wrapping the user''s SQL, but better safe than sorry.',
'            null;',
'        else',
'            if l_summ_element <> l_current then',
'                l_current := l_summ_element;',
'                if length(l_summ_element) > 50 then',
'                    l_short := substr(l_summ_element,1,50)||''...'';',
'                else',
'                    l_short := l_summ_element;',
'                end if;',
'                sys.htp.p(''</tbody> <tbody>'');',
'                sys.htp.p(''<tr><th id="gantt_labels_''||l_row_num||''"><a href="''',
'                    ||case when l_summ_link is not null then apex_escape.html_attribute(l_summ_link) else ''#'' end',
'                    ||''">''||l_short||''</a>''',
'                    ||''</th>'');',
'            else',
'                sys.htp.p(''<tr><th id="gantt_labels_''||l_row_num||''"></th>'');',
'            end if;',
'            -- Put in the row data here.',
'            case l_period_type',
'                when ''D'' then',
'                    if l_term_element_start <= l_period_start_date then l_start_cell := 1; else',
'                        l_start_cell := 1 + trunc(l_term_element_start) - trunc(l_period_start_date);',
'                    end if;',
'                    l_cs := 2 + (trunc(l_term_element_end) - trunc(l_period_start_date) - l_start_cell);',
'                when ''W'' then',
'                    if l_term_element_start <= l_period_start_date then l_start_cell := 1; else',
'                        l_start_cell := ceil((1 + l_term_element_start - l_period_start_date) / 7);',
'                    end if;',
'                    l_cs := 1 + ceil((l_term_element_end - l_period_start_date) / 7) - l_start_cell;',
'                when ''M'' then',
'                    if l_term_element_start <= l_period_start_date then l_start_cell := 1; else',
'                        l_start_cell := 1 + months_between(last_day(l_term_element_start),last_day(l_period_start_date));',
'                    end if;',
'                    l_cs := 2 + (months_between(last_day(l_term_element_end),last_day(l_period_start_date))) - l_start_cell;',
'                when ''Q'' then',
'                    if l_term_element_start <= l_period_start_date then l_start_cell := 1; else',
'                        l_start_cell := 1 + (ceil(extract(month from l_term_element_start)/3)',
'                                + 4*(extract(year from l_term_element_start) - extract(year from l_period_start_date)))',
'                            - ceil(extract(month from l_period_start_date)/3);',
'                    end if;',
'                    l_cs := 2 + (ceil(extract(month from l_term_element_end)/3)',
'                            + 4*(extract(year from l_term_element_end) - extract(year from l_period_start_date)))',
'                        - ceil(extract(month from l_period_start_date)/3)',
'                        - l_start_cell;',
'            end case;',
'            if l_start_cell + l_cs > l_num_periods + 1 then',
'                l_cs := l_num_periods + 1 - l_start_cell;',
'            end if;',
'            if l_start_cell > 1 then',
'                for c in 1..l_start_cell - 1 loop',
'                    sys.htp.p(''<td headers="sub_date''||to_char(c - 1)||''"></td>'');',
'                end loop;',
'            end if;',
'            if l_cs > 1 then',
'                sys.htp.p(''<td colspan="''||l_cs||''" headers="'');',
'                for c in 0..l_cs - 1 loop',
'                    sys.htp.p(''sub_date''||to_char((l_start_cell - 1) + c)||'''');',
'                end loop;',
'                sys.htp.p(''">'');',
'            else',
'                sys.htp.p(''<td colspan="''||l_cs||''" headers="sub_date''||to_char(l_start_cell - 1)||''">'');',
'            end if;',
'            l_label := substr(l_term_element,1,greatest(l_cs * 15,l_num_periods));',
'            if length(l_label) < length(l_term_element) then',
'                l_label := l_label || ''...'';',
'            end if;',
'            sys.htp.prn(''<a href="''',
'                    ||case when l_term_link is not null then apex_escape.html_attribute(l_term_link) else ''#'' end',
'                    ||''" title="''||l_term_element_alt||''"''',
'                ||'' class="''||l_term_element_style||''">'');',
'            sys.htp.prn( l_label||''</a></td>'' );',
'            if l_start_cell + l_cs < l_num_periods then',
'                for c in l_start_cell+l_cs..l_num_periods loop',
'                    sys.htp.p(''<td headers="sub_date''||to_char(c - 1)||''"></td>'');',
'                end loop;',
'            end if;',
'',
'            sys.htp.p(''</tr>'');',
'        end if;',
'    end loop;',
'    sys.htp.p(''</tbody>'');',
'    sys.htp.p(''</table>'');',
'',
'    return null;',
'end render;',
'',
'-- Procedure: render_header_rows',
'-- Generate the top section of the Gantt chart.',
'procedure render_header_rows( p_period in varchar2, p_start_date in date,',
'        p_num_periods in number ) is',
'    l_current    varchar2(30) := ''X'';',
'    l_cs         number;',
'begin',
'    sys.htp.p(''<table cellspacing="0" cellpadding="0" class="apex-gantt-chart" summary="Gantt Chart">'');',
'    sys.htp.p(''<thead>'');',
'    sys.htp.p(''<tr>'');',
'    -- First column is reserved for the labels.',
'    sys.htp.p(''<th id="toplabels"> </th>'');',
'    case p_period',
'        when ''D'' then',
'            for d in 0..p_num_periods-1 loop',
'                if to_char(p_start_date + d,''Month YYYY'') <> l_current then',
'                    l_current := to_char(p_start_date + d,''Month YYYY'');',
'                    l_cs := last_day(p_start_date+d) - greatest(last_day(add_months(p_start_date+d,-1)),p_start_date-1);',
'                    if l_cs > p_num_periods - d then',
'                        l_cs := p_num_periods - d;',
'                    end if;',
'                    sys.htp.p(''<th class="topLevelDate" colspan="''||l_cs||''" id="top_date''||d||''">''||l_current||''</th>'');',
'                end if;',
'            end loop;',
'            sys.htp.p(''</tr>'');',
'            sys.htp.p(''<tr>'');',
'            -- First column is reserved for the labels.',
'            sys.htp.p(''<th id="sublabels"> </th>'');',
'            for d in 0..p_num_periods-1 loop',
'                sys.htp.p(''<th class="subLevelDate" id="sub_date''||d||''">''||to_char(p_start_date + d,''DD'')||''</th>'');',
'            end loop;',
'        when ''W'' then',
'            for d in 0..p_num_periods-1 loop',
'                if to_char(p_start_date + (d*7),''Month YYYY'') <> l_current then',
'                    l_current := to_char(p_start_date + (d*7),''Month YYYY'');',
'                    l_cs := to_number(to_char(last_day(p_start_date + (d*7)),''IW''))',
'                        - to_number(to_char(p_start_date + (d*7),''IW'')) + 1;',
'                    if l_cs > p_num_periods - d then',
'                        l_cs := p_num_periods - d;',
'                    end if;',
'                    sys.htp.p(''<th class="topLevelDate" colspan="''||l_cs||''" id="top_date''||d||''">''||l_current||''</th>'');',
'                end if;',
'            end loop;',
'            sys.htp.p(''</tr>'');',
'            sys.htp.p(''<tr>'');',
'            -- First column is reserved for the labels.',
'            sys.htp.p(''<th id="sublabels"> </th>'');',
'            for d in 0..p_num_periods-1 loop',
'                sys.htp.p(''<th class="subLevelDate" id="sub_date''||d||''">''||to_char(p_start_date + (d*7),''DD'')',
'                    ||''-''||to_char(p_start_date + (d*7)+6, ''DD'')||''</th>'');',
'            end loop;',
'        when ''M'' then',
'            for d in 0..p_num_periods-1 loop',
'                if to_char(add_months(p_start_date, d),''YYYY'') <> l_current then',
'                    l_current := to_char(add_months(p_start_date, d),''YYYY'');',
'                    l_cs := 12 - to_number(to_char(add_months(p_start_date, d),''MM'')) + 1;',
'                    if l_cs > p_num_periods - d then',
'                        l_cs := p_num_periods - d;',
'                    end if;',
'                    sys.htp.p(''<th class="topLevelDate" colspan="''||l_cs||''" id="top_date''||d||''">''||l_current||''</th>'');',
'                end if;',
'            end loop;',
'            sys.htp.p(''</tr>'');',
'            sys.htp.p(''<tr>'');',
'            -- First column is reserved for the labels.',
'            sys.htp.p(''<th id="sublabels"> </th>'');',
'            for d in 0..p_num_periods-1 loop',
'                sys.htp.p(''<th class="subLevelDate" id="sub_date''||d||''">''||to_char(add_months(p_start_date, d),''Month'')||''</th>'');',
'            end loop;',
'        when ''Q'' then',
'            for d in 0..p_num_periods-1 loop',
'                if to_char(add_months(p_start_date, d*3),''YYYY'') <> l_current then',
'                    l_current := to_char(add_months(p_start_date, d*3),''YYYY'');',
'                    l_cs := 4 - floor((to_number(to_char(add_months(p_start_date, d*3),''MM''))-1)/3);',
'                    if l_cs > p_num_periods - d then',
'                        l_cs := p_num_periods - d;',
'                    end if;',
'                    sys.htp.p(''<th class="topLevelDate" colspan="''||l_cs||''" id="top_date''||d||''">''||l_current||''</th>'');',
'                end if;',
'            end loop;',
'            sys.htp.p(''</tr>'');',
'            sys.htp.p(''<tr>'');',
'            -- First column is reserved for the labels.',
'            sys.htp.p(''<th id="sublabels"> </th>'');',
'            for d in 0..p_num_periods-1 loop',
'                sys.htp.p(''<th class="subLevelDate" id="sub_date''||d||''">Q''',
'                    ||floor((to_number(to_char(add_months(p_start_date, d*3),''fmMM''))+2)/3)',
'                    ||''</th>'');',
'            end loop;',
'    end case;',
'    sys.htp.p(''</tr>'');',
'    sys.htp.p(''</thead>'');',
'end render_header_rows;'))
,p_api_version=>1
,p_render_function=>'render'
,p_standard_attributes=>'SOURCE_SQL:ESCAPE_OUTPUT'
,p_substitute_attributes=>false
,p_reference_id=>1299592847187987766
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'5.0.1'
,p_about_url=>'http://apex.oracle.com/plugins'
,p_files_version=>2
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4023706126848063665)
,p_plugin_id=>wwv_flow_imp.id(1309333132484067183)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'attribute_01'
,p_prompt=>'Parent Element Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'The column from the source query containing the name of the summary element of the Gantt chart.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4023706354989063670)
,p_plugin_id=>wwv_flow_imp.id(1309333132484067183)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'attribute_02'
,p_prompt=>'Child Element Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'The column from the source query containing the name of the terminal elements.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4023706788062063670)
,p_plugin_id=>wwv_flow_imp.id(1309333132484067183)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'attribute_03'
,p_prompt=>'Child Element Alt. Name Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'The alternate title for the terminal element. Displayed when the user hovers over the terminal element with the mouse.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4023707153006063670)
,p_plugin_id=>wwv_flow_imp.id(1309333132484067183)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'attribute_04'
,p_prompt=>'Child Element Style Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'The CSS class to be applied to the terminal element.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4023707607698063671)
,p_plugin_id=>wwv_flow_imp.id(1309333132484067183)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'attribute_05'
,p_prompt=>'Child Element Start Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'DATE:TIMESTAMP:TIMESTAMP_TZ:TIMESTAMP_LTZ'
,p_is_translatable=>false
,p_help_text=>'The date the terminal element starts on.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4023707971392063671)
,p_plugin_id=>wwv_flow_imp.id(1309333132484067183)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'attribute_06'
,p_prompt=>'Child Element End Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'DATE:TIMESTAMP:TIMESTAMP_TZ:TIMESTAMP_LTZ'
,p_is_translatable=>false
,p_help_text=>'The date the terminal element ends on.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4023708386400063671)
,p_plugin_id=>wwv_flow_imp.id(1309333132484067183)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'attribute_07'
,p_prompt=>'Parent Element Link'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_reference_scope=>'ROW'
,p_help_text=>'The link target for the summary element.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4023708766274063671)
,p_plugin_id=>wwv_flow_imp.id(1309333132484067183)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'attribute_08'
,p_prompt=>'Child Element Link'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_reference_scope=>'ROW'
,p_help_text=>'The link target for the terminal element.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4023709186666063672)
,p_plugin_id=>wwv_flow_imp.id(1309333132484067183)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'attribute_09'
,p_prompt=>'Period Type Page Item'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The name of the page item which allows the user to determine the view of the Gantt Chart. This page item must return one of the following values:',
'',
'D - Daily',
'W - Weekly',
'M - Monthly',
'Q - Quarterly'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4023709552357063672)
,p_plugin_id=>wwv_flow_imp.id(1309333132484067183)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'attribute_10'
,p_prompt=>'Start Date Page Item'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'The name of the page item which contains the start date for the chart. If no page item is provided, or if the page item has no value, the chart will start on the current date.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4023710022662063673)
,p_plugin_id=>wwv_flow_imp.id(1309333132484067183)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'attribute_11'
,p_prompt=>'Periods Per Type'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'30:22:18:8'
,p_is_translatable=>false
,p_help_text=>'The number of periods to display for each of the different period types, separated by colons. The default value (30:22:18:8) provides for 30 days, 22 weeks, 18 months, and 8 quarters.'
);
wwv_flow_imp_shared.create_plugin_std_attribute(
 p_id=>wwv_flow_imp.id(4023710933727063696)
,p_plugin_id=>wwv_flow_imp.id(1309333132484067183)
,p_name=>'SOURCE_SQL'
,p_sql_min_column_count=>4
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '7461626C652E617065782D67616E74742D63686172742074686561642074682E746F704C6576656C446174657B666F6E743A626F6C6420313470782F3134707820417269616C2C73616E732D73657269663B746578742D616C69676E3A6C6566743B636F';
wwv_flow_imp.g_varchar2_table(2) := '6C6F723A233333333B70616464696E673A3570783B77696474683A32303070787D0D0A7461626C652E617065782D67616E74742D63686172742074686561642074682E7375624C6576656C446174657B666F6E743A6E6F726D616C20313170782F313270';
wwv_flow_imp.g_varchar2_table(3) := '7820417269616C2C73616E732D73657269663B636F6C6F723A233730373037303B77696474683A383070783B746578742D616C69676E3A6C6566743B70616464696E673A302035707820357078203570783B77686974652D73706163653A6E6F77726170';
wwv_flow_imp.g_varchar2_table(4) := '7D0D0A7461626C652E617065782D67616E74742D63686172742074686561642074682E7375624C6576656C446174652E626567696E546F704C6576656C446174657B626F726465722D6C6566743A31707820736F6C696420234444447D0D0A7461626C65';
wwv_flow_imp.g_varchar2_table(5) := '2E617065782D67616E74742D63686172742074626F64792074723A66697273742D6368696C642074682C7461626C652E617065782D67616E74742D63686172742074626F64792074723A66697273742D6368696C642074647B626F726465722D746F703A';
wwv_flow_imp.g_varchar2_table(6) := '31707820736F6C696420234141417D0D0A7461626C652E617065782D67616E74742D63686172742074626F64792074723A66697273742D6368696C642074647B70616464696E672D746F703A3270787D0D0A7461626C652E617065782D67616E74742D63';
wwv_flow_imp.g_varchar2_table(7) := '686172742074626F64792074687B70616464696E673A3570783B666F6E743A626F6C6420313170782F3132707820417269616C2C73616E732D73657269663B746578742D616C69676E3A6C6566743B77696474683A32303070787D0D0A7461626C652E61';
wwv_flow_imp.g_varchar2_table(8) := '7065782D67616E74742D63686172742074626F647920746820617B636F6C6F723A233333333B746578742D6465636F726174696F6E3A6E6F6E653B77686974652D73706163653A6E6F777261707D0D0A7461626C652E617065782D67616E74742D636861';
wwv_flow_imp.g_varchar2_table(9) := '72742074626F647920746820613A686F7665727B746578742D6465636F726174696F6E3A756E6465726C696E657D0D0A7461626C652E617065782D67616E74742D63686172742074626F64792074647B626F726465722D6C6566743A31707820736F6C69';
wwv_flow_imp.g_varchar2_table(10) := '6420234545453B70616464696E673A302032707820327078203270787D0D0A7461626C652E617065782D67616E74742D63686172742074626F647920746420617B646973706C61793A626C6F636B3B70616464696E673A303B666F6E743A6E6F726D616C';
wwv_flow_imp.g_varchar2_table(11) := '20313170782F3232707820417269616C2C73616E732D73657269663B636F6C6F723A233333333B746578742D696E64656E743A3570783B6261636B67726F756E643A234630463046303B626F726465723A31707820736F6C696420234141413B74657874';
wwv_flow_imp.g_varchar2_table(12) := '2D6465636F726174696F6E3A6E6F6E653B2D7765626B69742D626F726465722D7261646975733A3370783B2D6D6F7A2D626F726465722D7261646975733A3370783B2D6D732D626F726465722D7261646975733A3370783B626F726465722D7261646975';
wwv_flow_imp.g_varchar2_table(13) := '733A3370783B2D7765626B69742D7472616E736974696F6E3A616C6C2C302E31733B2D6D6F7A2D7472616E736974696F6E3A616C6C2C302E31733B2D6D732D7472616E736974696F6E3A616C6C2C302E31733B7472616E736974696F6E3A616C6C2C302E';
wwv_flow_imp.g_varchar2_table(14) := '31733B77686974652D73706163653A206E6F777261703B7D0D0A7461626C652E617065782D67616E74742D63686172742074626F64792074642061207370616E7B646973706C61793A626C6F636B3B666F6E743A6E6F726D616C20313270782F32327078';
wwv_flow_imp.g_varchar2_table(15) := '20417269616C2C73616E732D73657269663B746578742D6465636F726174696F6E3A6E6F6E653B746578742D696E64656E743A307D0D0A7461626C652E617065782D67616E74742D63686172742074626F64792074642061207370616E2E7370616E5072';
wwv_flow_imp.g_varchar2_table(16) := '65767B666C6F61743A6C6566743B70616464696E672D6C6566743A3570787D0D0A7461626C652E617065782D67616E74742D63686172742074626F64792074642061207370616E2E7370616E4E6578747B666C6F61743A72696768743B70616464696E67';
wwv_flow_imp.g_varchar2_table(17) := '2D72696768743A3570787D0D0A7461626C652E617065782D67616E74742D63686172742074626F647920746420613A686F7665727B6261636B67726F756E642D636F6C6F723A234530453045303B746578742D6465636F726174696F6E3A756E6465726C';
wwv_flow_imp.g_varchar2_table(18) := '696E657D0D0A';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(4023711706956063704)
,p_plugin_id=>wwv_flow_imp.id(1309333132484067183)
,p_file_name=>'com_oracle_apex_gantt_chart.css'
,p_mime_type=>'text/css'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_display_source
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(1330046617043642547)
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
 p_id=>wwv_flow_imp.id(618664487342378018)
,p_plugin_id=>wwv_flow_imp.id(1330046617043642547)
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
 p_id=>wwv_flow_imp.id(618664910212378019)
,p_plugin_id=>wwv_flow_imp.id(1330046617043642547)
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
prompt --application/shared_components/plugins/region_type/com_oracle_apex_minicalendar
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(1466624508357813341)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.MINICALENDAR'
,p_display_name=>'Mini Calendar'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.MINICALENDAR'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'procedure render_mini_calendar( p_region in apex_plugin.t_region ) is',
'    c_date_col  constant varchar2(255) := p_region.attribute_01;',
'    c_label_col constant varchar2(255) := p_region.attribute_02;',
'',
'    l_date_col_no  pls_integer;',
'    l_label_col_no pls_integer;',
'',
'    c_collection constant varchar2(255) := ''APEX$MINICALENDAR$''||rawtohex(sys_guid());',
'    l_column_value_list    apex_plugin_util.t_column_value_list2;',
'',
'    l_region_source        varchar2(32767) := p_region.source;',
'',
'    --',
'    l_date  timestamp with local time zone;',
'    l_label varchar2(2000);',
'    l_found boolean;',
'    l_count number;',
'',
'    cursor dt_csr is',
'        select c001 label, d001 the_date',
'        from apex_collections',
'        where collection_name = c_collection',
'        order by d001 asc;',
'    dt_rec dt_csr%ROWTYPE;',
'',
'    -- Variables for knowing what to display.',
'    l_startdate  date;',
'    l_enddate    date;',
'    l_daycount   number;',
'    l_month      varchar2(6);',
'',
'    l_class      varchar2(512) := '''';',
'    l_disp       varchar2(255)  := '''';',
'    l_id         varchar2(512) := p_region.static_id;',
'begin',
'    -- get the data to be displayed',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'                               p_sql_statement  => l_region_source,',
'                               p_min_columns    => 2,',
'                               p_max_columns    => null,',
'                               p_component_name => p_region.name,',
'                               p_max_rows       => null );',
'',
'    -- Get the actual column number for the fields we want.',
'    l_date_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Date column'',',
'                        p_column_alias      => c_date_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => true,',
'                        p_data_type         => null -- might be date, timestamp, etc.',
'                    );',
'',
'    l_label_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Label column'',',
'                        p_column_alias      => c_label_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => true,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    apex_collection.create_or_truncate_collection( p_collection_name => c_collection );',
'    -- Loop through the data and shove it into the collection for ease of access.',
'    for l_row_num in 1..l_column_value_list(1).value_list.count loop',
'        l_found := true;',
'        if l_column_value_list(l_date_col_no).value_list(l_row_num).date_value is not null then',
'            l_date := l_column_value_list(l_date_col_no).value_list(l_row_num).date_value;',
'        elsif l_column_value_list(l_date_col_no).value_list(l_row_num).timestamp_value is not null then',
'            l_date := l_column_value_list(l_date_col_no).value_list(l_row_num).timestamp_value;',
'        elsif l_column_value_list(l_date_col_no).value_list(l_row_num).timestamp_tz_value is not null then',
'            l_date := l_column_value_list(l_date_col_no).value_list(l_row_num).timestamp_tz_value;',
'        elsif l_column_value_list(l_date_col_no).value_list(l_row_num).timestamp_ltz_value is not null then',
'            l_date := l_column_value_list(l_date_col_no).value_list(l_row_num).timestamp_ltz_value;',
'        else',
'            -- Couldn''t get a usable date value; ignore this row.',
'            l_found := false;',
'        end if;',
'        if l_found then',
'            select count(*) into l_count',
'            from apex_collections',
'            where collection_name = c_collection',
'                and d001 = trunc(l_date);',
'',
'            if l_count = 0 then',
'                l_label := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_label_col_no).data_type,',
'                                p_value     => l_column_value_list(l_label_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'                apex_collection.add_member(',
'                    p_collection_name => c_collection,',
'                    p_c001            => l_label,',
'                    p_d001            => trunc(l_date)',
'                );',
'            end if;',
'        end if;',
'    end loop;',
'',
'    open dt_csr;',
'    fetch dt_csr into dt_rec;',
'    if dt_csr%FOUND then',
'        l_date  := dt_rec.the_date;',
'        l_label := dt_rec.label;',
'    else',
'        l_date  := trunc(localtimestamp);',
'        l_label := ''Today'';',
'    end if;',
'',
'    -- Print the calendar header.',
'    sys.htp.prn(''<div class="a-MiniCal">'');',
'    sys.htp.prn(''<h3 class="a-MiniCal-title">''||to_char(l_date, ''Month'')||'' ''||to_char(l_date,''YYYY'')||''</h3>'');',
'    sys.htp.prn(''<table class="a-MiniCal-month" summary="Calendar of ''||to_char(l_date, ''Month'')||'' ''||to_char(l_date,''YYYY'')||''">'');',
'    sys.htp.prn(''<thead>'');',
'    sys.htp.prn(''<tr>'');',
'    sys.htp.prn(''<th class="a-MiniCal-dayOfWeek" scope="col" id="''||l_id||''_SUN" title="Sunday">Su</th>'');',
'    sys.htp.prn(''<th class="a-MiniCal-dayOfWeek" scope="col" id="''||l_id||''_MON" title="Monday">Mo</th>'');',
'    sys.htp.prn(''<th class="a-MiniCal-dayOfWeek" scope="col" id="''||l_id||''_TUE" title="Tuesday">Tu</th>'');',
'    sys.htp.prn(''<th class="a-MiniCal-dayOfWeek" scope="col" id="''||l_id||''_WED" title="Wednesday">We</th>'');',
'    sys.htp.prn(''<th class="a-MiniCal-dayOfWeek" scope="col" id="''||l_id||''_THU" title="Thursday">Th</th>'');',
'    sys.htp.prn(''<th class="a-MiniCal-dayOfWeek" scope="col" id="''||l_id||''_FRI" title="Friday">Fr</th>'');',
'    sys.htp.prn(''<th class="a-MiniCal-dayOfWeek" scope="col" id="''||l_id||''_SAT" title="Saturday">Sa</th>'');',
'    sys.htp.prn(''</tr>'');',
'    sys.htp.prn(''</thead>'');',
'    -- Print the calendar body.',
'    sys.htp.prn(''<tbody>'');',
'    -- Do some quick manipulation to get the day of the week that the first of the month',
'     --  lands on, and then shift our starting date to the first day of that week.',
'    l_startdate := trunc(l_date,''MM'') - to_char(trunc(l_date,''MM''),''D'') + 1;',
'    l_enddate := last_day(l_date) + 7-to_char(last_day(l_date),''D'');',
'    l_month := to_char(l_date,''YYYYMM'');',
'',
'    for l_daycount in 0..(l_enddate - l_startdate) loop',
'        l_class := '''';',
'        l_disp := apex_escape.html(to_char(l_startdate+l_daycount,''fmDD''));',
'        -- If the day isn''t part of the month being displayed, grey it out.',
'        if to_char(l_startdate+l_daycount,''YYYYMM'') <> l_month then',
'            l_class := ''is-null'';',
'            l_disp := ''<span class="a-MiniCal-date">''||l_disp||''</span>'';',
'        else',
'            if to_char(l_startdate+l_daycount,''D'') in (''1'',''7'') then',
'                l_class := l_class || ''is-weekend '';',
'                l_disp := ''<span class="a-MiniCal-date">''||l_disp||''</span>'';',
'            end if;',
'            if l_month = to_char(localtimestamp,''YYYYMM'')',
'                    and l_startdate+l_daycount = current_date then',
'                l_class := l_class || ''is-today '';',
'                l_disp := ''<span class="a-MiniCal-date">''||l_disp||''</span>'';',
'            end if;',
'            if to_char(l_startdate+l_daycount,''YYYYMMDD'')',
'                    = to_char(l_date,''YYYYMMDD'') then',
'                l_class := l_class || ''is-active '';',
'                l_disp := ''<span class="a-MiniCal-date" title="''|| apex_escape.html(l_label) ||''">''||l_disp||''</span>'';',
'            end if;',
'        end if;',
'        if to_char(l_startdate+l_daycount,''D'') = ''1'' then',
'            sys.htp.prn(''<tr>'');',
'        end if;',
'        sys.htp.prn(''<td class="a-MiniCal-day ''||l_class||''" headers="''||l_id||''_''||to_char(l_startdate+l_daycount,''DY'')||''">''||l_disp||''</td>'');',
'        if to_char(l_startdate+l_daycount,''D'') = ''7'' then',
'            sys.htp.prn(''</tr>'');',
'        end if;',
'        if to_char(l_startdate+l_daycount,''YYYYMMDD'') = to_char(l_date,''YYYYMMDD'') then',
'            fetch dt_csr into dt_rec;',
'            if dt_csr%FOUND then',
'                l_date  := dt_rec.the_date;',
'                l_label := dt_rec.label;',
'            end if;',
'        end if;',
'    end loop;',
'    close dt_csr;',
'',
'    -- Clean up after ourselves.',
'    apex_collection.delete_collection( p_collection_name => c_collection );',
'',
'    sys.htp.prn(''</tbody>'');',
'    sys.htp.prn(''</table>'');',
'    sys.htp.prn(''</div>'');',
'end render_mini_calendar;',
'',
'function render ( p_region in apex_plugin.t_region,',
'    p_plugin in apex_plugin.t_plugin, p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result is',
'begin',
'    -- CSS for the Gantt Chart',
'    apex_css.add_file (',
'        p_name => ''com_oracle_apex_minicalendar'',',
'        p_directory => p_plugin.file_prefix );',
'',
'    render_mini_calendar( p_region );',
'    return null;',
'end;'))
,p_api_version=>1
,p_render_function=>'render'
,p_standard_attributes=>'SOURCE_SQL:ESCAPE_OUTPUT'
,p_substitute_attributes=>true
,p_reference_id=>1435018733936024259
,p_subscribe_plugin_settings=>true
,p_help_text=>'This region plug-in displays a small calendar with the specified date highlighted.'
,p_version_identifier=>'5.0.1'
,p_files_version=>2
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(172446963145936472)
,p_plugin_id=>wwv_flow_imp.id(1466624508357813341)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'attribute_01'
,p_prompt=>'Date Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'DATE:TIMESTAMP:TIMESTAMP_TZ:TIMESTAMP_LTZ'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query which holds the single date value for the calendar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(172447376586936472)
,p_plugin_id=>wwv_flow_imp.id(1466624508357813341)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'attribute_02'
,p_prompt=>'Label Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query which holds the label for the calendar.'
);
wwv_flow_imp_shared.create_plugin_std_attribute(
 p_id=>wwv_flow_imp.id(172448660181936473)
,p_plugin_id=>wwv_flow_imp.id(1466624508357813341)
,p_name=>'SOURCE_SQL'
,p_sql_min_column_count=>1
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The query must return at least two columns--a date and its label (other columns will be ignored). The calendar will display for the earliest date returned, highlighting all dates returned within that month.',
'',
'<pre>',
'select date_value, label_value',
'from ...',
'</pre>'))
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '7461626C652E617065782D6D696E692D63616C656E6461727B77696474683A313030257D0D0A7461626C652E617065782D6D696E692D63616C656E6461722063617074696F6E7B6261636B67726F756E642D636F6C6F723A236563663166393B6261636B';
wwv_flow_imp.g_varchar2_table(2) := '67726F756E642D696D6167653A2D7765626B69742D6772616469656E74286C696E6561722C203530252030252C2035302520313030252C20636F6C6F722D73746F702830252C2023663266356639292C20636F6C6F722D73746F7028313030252C202365';
wwv_flow_imp.g_varchar2_table(3) := '636631663929293B6261636B67726F756E642D696D6167653A2D7765626B69742D6C696E6561722D6772616469656E7428236632663566392C23656366316639293B6261636B67726F756E642D696D6167653A2D6D6F7A2D6C696E6561722D6772616469';
wwv_flow_imp.g_varchar2_table(4) := '656E7428236632663566392C23656366316639293B6261636B67726F756E642D696D6167653A6C696E6561722D6772616469656E7428236632663566392C23656366316639293B666F6E742D73697A653A313270783B666F6E742D7765696768743A626F';
wwv_flow_imp.g_varchar2_table(5) := '6C643B636F6C6F723A233430343034303B636F6C6F723A7267626128302C302C302C302E3735293B746578742D736861646F773A302031707820302072676261283235352C3235352C3235352C302E3735293B70616464696E673A387078203870782030';
wwv_flow_imp.g_varchar2_table(6) := '203870783B746578742D616C69676E3A63656E7465723B2D7765626B69742D626F782D736861646F773A302031707820302072676261283235352C3235352C3235352C302E36352920696E7365743B2D6D6F7A2D626F782D736861646F773A3020317078';
wwv_flow_imp.g_varchar2_table(7) := '20302072676261283235352C3235352C3235352C302E36352920696E7365743B626F782D736861646F773A302031707820302072676261283235352C3235352C3235352C302E36352920696E7365747D0D0A7461626C652E617065782D6D696E692D6361';
wwv_flow_imp.g_varchar2_table(8) := '6C656E6461722074686561642074687B6261636B67726F756E642D636F6C6F723A236537656466393B6261636B67726F756E642D696D6167653A2D7765626B69742D6772616469656E74286C696E6561722C203530252030252C2035302520313030252C';
wwv_flow_imp.g_varchar2_table(9) := '20636F6C6F722D73746F702830252C2023656366316639292C20636F6C6F722D73746F7028313030252C202365376564663929293B6261636B67726F756E642D696D6167653A2D7765626B69742D6C696E6561722D6772616469656E7428236563663166';
wwv_flow_imp.g_varchar2_table(10) := '392C23653765646639293B6261636B67726F756E642D696D6167653A2D6D6F7A2D6C696E6561722D6772616469656E7428236563663166392C23653765646639293B6261636B67726F756E642D696D6167653A6C696E6561722D6772616469656E742823';
wwv_flow_imp.g_varchar2_table(11) := '6563663166392C23653765646639293B666F6E742D73697A653A313070783B666F6E742D7765696768743A626F6C643B636F6C6F723A233630363036303B636F6C6F723A7267626128302C302C302C302E35293B70616464696E673A3470783B74657874';
wwv_flow_imp.g_varchar2_table(12) := '2D736861646F773A302031707820302072676261283235352C3235352C3235352C302E35293B626F726465722D626F74746F6D3A31707820736F6C696420236230626463637D0D0A7461626C652E617065782D6D696E692D63616C656E6461722074626F';
wwv_flow_imp.g_varchar2_table(13) := '64792074722074647B77696474683A3134253B6261636B67726F756E643A6E6F6E6520236661666166613B746578742D616C69676E3A63656E7465723B626F726465722D626F74746F6D3A31707820736F6C696420236538653865383B6C696E652D6865';
wwv_flow_imp.g_varchar2_table(14) := '696768743A323470783B636F6C6F723A233430343034303B666F6E742D73697A653A313170783B666F6E742D7765696768743A6E6F726D616C3B706F736974696F6E3A72656C61746976657D0D0A7461626C652E617065782D6D696E692D63616C656E64';
wwv_flow_imp.g_varchar2_table(15) := '61722074626F64792074722074643A6C6173742D6368696C647B626F726465722D72696768743A6E6F6E657D0D0A7461626C652E617065782D6D696E692D63616C656E6461722074626F64792074722074642E696E6163746976657B6261636B67726F75';
wwv_flow_imp.g_varchar2_table(16) := '6E642D636F6C6F723A234630463046303B636F6C6F723A234330433043303B666F6E742D7765696768743A6E6F726D616C7D0D0A7461626C652E617065782D6D696E692D63616C656E6461722074626F64792074722074642E7765656B656E647B636F6C';
wwv_flow_imp.g_varchar2_table(17) := '6F723A233730373037303B6261636B67726F756E642D636F6C6F723A234631463446397D0D0A7461626C652E617065782D6D696E692D63616C656E6461722074626F64792074722074642E746F6461797B666F6E742D7765696768743A626F6C647D0D0A';
wwv_flow_imp.g_varchar2_table(18) := '7461626C652E617065782D6D696E692D63616C656E6461722074626F64792074722074642E616374697665207370616E7B646973706C61793A626C6F636B3B6D617267696E3A3370783B666F6E742D73697A653A313170783B6C696E652D686569676874';
wwv_flow_imp.g_varchar2_table(19) := '3A313670783B6261636B67726F756E642D636F6C6F723A234645453439433B626F726465722D7261646975733A3370783B626F726465723A31707820736F6C696420236363623336383B666F6E742D7765696768743A626F6C643B2D7765626B69742D62';
wwv_flow_imp.g_varchar2_table(20) := '6F782D736861646F773A302031707820302072676261283235352C3235352C3235352C302E36352920696E7365743B2D6D6F7A2D626F782D736861646F773A302031707820302072676261283235352C3235352C3235352C302E36352920696E7365743B';
wwv_flow_imp.g_varchar2_table(21) := '626F782D736861646F773A302031707820302072676261283235352C3235352C3235352C302E36352920696E7365747D0D0A7461626C652E617065782D6D696E692D63616C656E6461722074626F64792074723A6C6173742D6368696C642074647B626F';
wwv_flow_imp.g_varchar2_table(22) := '726465722D626F74746F6D3A6E6F6E657D0D0A';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(172449431417936476)
,p_plugin_id=>wwv_flow_imp.id(1466624508357813341)
,p_file_name=>'com_oracle_apex_minicalendar.css'
,p_mime_type=>'text/css'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_sampleappfooter
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(1671069045320060649)
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
prompt --application/shared_components/plugins/region_type/com_oracle_apex_timelinestatuslist
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(1722378881159661598)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.TIMELINESTATUSLIST'
,p_display_name=>'Timeline and Status List'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.TIMELINESTATUSLIST'),'#IMAGE_PREFIX#plugins/com.oracle.apex.timelinestatuslist/1.2/')
,p_javascript_file_urls=>'#PLUGIN_FILES#timelinestatuslist#MIN#.js'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'procedure render_list_calendar( p_region in apex_plugin.t_region ) is',
'    c_group_col          constant varchar2(255) := p_region.attribute_01;',
'    c_color_col          constant varchar2(255) := p_region.attribute_02;',
'    c_title_col          constant varchar2(255) := p_region.attribute_03;',
'    c_link_col           constant varchar2(255) := p_region.attribute_04;',
'    c_row1_attr1_val_col constant varchar2(255) := p_region.attribute_05;',
'    c_row1_attr2_val_col constant varchar2(255) := p_region.attribute_06;',
'    c_row2_attr1_val_col constant varchar2(255) := p_region.attribute_07;',
'    c_row2_attr2_val_col constant varchar2(255) := p_region.attribute_08;',
'    c_description_1_col  constant varchar2(255) := p_region.attribute_09;',
'    c_description_2_col  constant varchar2(255) := p_region.attribute_10;',
'    c_description_3_col  constant varchar2(255) := p_region.attribute_11;',
'    c_description_4_col  constant varchar2(255) := p_region.attribute_15;',
'    c_group_type         constant varchar2(255) := p_region.attribute_12;',
'    c_status_col         constant varchar2(255) := p_region.attribute_13;',
'    c_color_label_col    constant varchar2(255) := p_region.attribute_14;',
'',
'    l_group_col_no          pls_integer;',
'    l_color_col_no          pls_integer;',
'    l_title_col_no          pls_integer;',
'    l_link_col_no           pls_integer;',
'    l_row1_attr1_val_col_no pls_integer;',
'    l_row1_attr2_val_col_no pls_integer;',
'    l_row2_attr1_val_col_no pls_integer;',
'    l_row2_attr2_val_col_no pls_integer;',
'    l_description_1_col_no  pls_integer;',
'    l_description_2_col_no  pls_integer;',
'    l_description_3_col_no  pls_integer;',
'    l_description_4_col_no  pls_integer;',
'    l_status_col_no         pls_integer;',
'    l_color_label_col_no    pls_integer;',
'',
'    l_date           timestamp with local time zone;',
'    l_last_day       varchar2(8);',
'    l_group          varchar2(4000);',
'    l_color          varchar2(4000);',
'    l_color_label    varchar2(4000);',
'    l_title          varchar2(4000);',
'    l_link           varchar2(4000);',
'    l_row1_attr1_val varchar2(4000);',
'    l_row1_attr1_lbl varchar2(4000);',
'    l_row1_attr2_val varchar2(4000);',
'    l_row1_attr2_lbl varchar2(4000);',
'    l_row2_attr1_val varchar2(4000);',
'    l_row2_attr1_lbl varchar2(4000);',
'    l_row2_attr2_val varchar2(4000);',
'    l_row2_attr2_lbl varchar2(4000);',
'    l_description_1  varchar2(4000);',
'    l_description_2  varchar2(4000);',
'    l_description_3  varchar2(4000);',
'    l_description_4  varchar2(4000);',
'    l_status         varchar2(4000);',
'',
'    --',
'    l_no_data_found     varchar2(32767) := p_region.no_data_found_message;',
'    l_num_rows          pls_integer     := p_region.fetched_rows;',
'    --',
'    l_column_value_list    apex_plugin_util.t_column_value_list2;',
'    l_region_source        varchar2(32767) := p_region.source;',
'',
'    --',
'    l_last_group  varchar2(255) := ''x'';',
'',
'    l_found boolean;',
'    l_count pls_integer := 0;',
'',
'    type vc2_aat is table of varchar2(32767) index by varchar2(255);',
'    l_colors vc2_aat;',
'    l_color_idx varchar2(255);',
'',
'begin',
'    -- get the data to be displayed',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'                               p_sql_statement  => l_region_source,',
'                               p_min_columns    => 3,',
'                               p_max_columns    => null,',
'                               p_component_name => p_region.name,',
'                               p_max_rows       => null );',
'',
'    -- Get the actual column number for the fields we want.',
'    l_group_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Group column'',',
'                        p_column_alias      => c_group_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => null -- might be date, timestamp, etc.',
'                    );',
'',
'    l_color_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Color column'',',
'                        p_column_alias      => c_color_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_color_label_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Color Label column'',',
'                        p_column_alias      => c_color_label_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_status_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Status column'',',
'                        p_column_alias      => c_status_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_title_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Title column'',',
'                        p_column_alias      => c_title_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => true,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_link_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Link column'',',
'                        p_column_alias      => c_link_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_row1_attr1_val_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''First Attribute Value column'',',
'                        p_column_alias      => c_row1_attr1_val_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_row1_attr2_val_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Second Attribute Value column'',',
'                        p_column_alias      => c_row1_attr2_val_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_row2_attr1_val_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Third Attribute Value column'',',
'                        p_column_alias      => c_row2_attr1_val_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_row2_attr2_val_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Fourth Attribute Value column'',',
'                        p_column_alias      => c_row2_attr2_val_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_description_1_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''First Description column'',',
'                        p_column_alias      => c_description_1_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_description_2_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Second Description column'',',
'                        p_column_alias      => c_description_2_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_description_3_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Third Description column (allows HTML)'',',
'                        p_column_alias      => c_description_3_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_description_4_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Fourth Description column (allows HTML)'',',
'                        p_column_alias      => c_description_4_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    -- Loop through the data',
'    if c_group_type = ''D'' then',
'        sys.htp.p(''<div class="t-StatusList t-StatusList--dates">'');',
'    else',
'        sys.htp.p(''<div class="t-StatusList t-StatusList--bullets">'');',
'    end if;',
'',
'    for l_row_num in 1..l_column_value_list(1).value_list.count loop',
'        wwv_flow_plugin_util.set_component_values (',
'            p_column_value_list => l_column_value_list,',
'            p_row_num           => l_row_num );',
'',
'        l_found := true;',
'',
'        if l_group_col_no is not null then',
'            if c_group_type = ''D'' then',
'                if l_column_value_list(l_group_col_no).value_list(l_row_num).date_value is not null then',
'                    l_date := l_column_value_list(l_group_col_no).value_list(l_row_num).date_value;',
'                elsif l_column_value_list(l_group_col_no).value_list(l_row_num).timestamp_value is not null then',
'                    l_date := l_column_value_list(l_group_col_no).value_list(l_row_num).timestamp_value;',
'                elsif l_column_value_list(l_group_col_no).value_list(l_row_num).timestamp_tz_value is not null then',
'                    l_date := l_column_value_list(l_group_col_no).value_list(l_row_num).timestamp_tz_value;',
'                elsif l_column_value_list(l_group_col_no).value_list(l_row_num).timestamp_ltz_value is not null then',
'                    l_date := l_column_value_list(l_group_col_no).value_list(l_row_num).timestamp_ltz_value;',
'                else',
'                    -- Couldn''t get a usable date value; ignore this row.',
'                    l_found := false;',
'                end if;',
'            else',
'                l_group := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_group_col_no).data_type,',
'                                p_value     => l_column_value_list(l_group_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'            end if;',
'        end if;',
'        if l_found = true and l_count < nvl(l_num_rows,l_count) then',
'            l_count := l_count + 1;',
'            if l_color_col_no is not null then',
'                l_color := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_color_col_no).data_type,',
'                                p_value     => l_column_value_list(l_color_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'            end if;',
'',
'            if l_color_label_col_no is not null then',
'                l_color_label := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_color_label_col_no).data_type,',
'                                p_value     => l_column_value_list(l_color_label_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'            end if;',
'',
'            if l_status_col_no is not null then',
'                l_status := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_status_col_no).data_type,',
'                                p_value     => l_column_value_list(l_status_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'            end if;',
'',
'            if l_title_col_no is not null then',
'                l_title := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_title_col_no).data_type,',
'                                p_value     => l_column_value_list(l_title_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'            end if;',
'',
'            if l_link_col_no is not null then',
'                l_link := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_link_col_no).data_type,',
'                                p_value     => l_column_value_list(l_link_col_no).value_list(l_row_num) ),',
'                            false );',
'            end if;',
'',
'            if l_row1_attr1_val_col_no is not null then',
'                l_row1_attr1_lbl := apex_plugin_util.escape(',
'                            p_region.region_columns( l_row1_attr1_val_col_no ).heading,',
'                            p_region.escape_output );',
'                l_row1_attr1_val := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_row1_attr1_val_col_no).data_type,',
'                                p_value     => l_column_value_list(l_row1_attr1_val_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'            end if;',
'',
'            if l_row1_attr2_val_col_no is not null then',
'                l_row1_attr2_lbl := apex_plugin_util.escape(',
'                            p_region.region_columns( l_row1_attr2_val_col_no ).heading,',
'                            p_region.escape_output );',
'                l_row1_attr2_val := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_row1_attr2_val_col_no).data_type,',
'                                p_value     => l_column_value_list(l_row1_attr2_val_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'            end if;',
'',
'            if l_row2_attr1_val_col_no is not null then',
'                l_row2_attr1_lbl := apex_plugin_util.escape(',
'                            p_region.region_columns( l_row2_attr1_val_col_no ).heading,',
'                            p_region.escape_output );',
'                l_row2_attr1_val := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_row2_attr1_val_col_no).data_type,',
'                                p_value     => l_column_value_list(l_row2_attr1_val_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'            end if;',
'',
'            if l_row2_attr2_val_col_no is not null then',
'                l_row2_attr2_lbl := apex_plugin_util.escape(',
'                            p_region.region_columns( l_row2_attr2_val_col_no ).heading,',
'                            p_region.escape_output );',
'                l_row2_attr2_val := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_row2_attr2_val_col_no).data_type,',
'                                p_value     => l_column_value_list(l_row2_attr2_val_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'            end if;',
'',
'            if l_description_1_col_no is not null then',
'                l_description_1 := substr(apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_description_1_col_no).data_type,',
'                                p_value     => l_column_value_list(l_description_1_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output ),0,2000);',
'            end if;',
'',
'            if l_description_2_col_no is not null then',
'                l_description_2 := substr(apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_description_2_col_no).data_type,',
'                                p_value     => l_column_value_list(l_description_2_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output ),0,2000);',
'            end if;',
'',
'            if l_description_3_col_no is not null then',
'                l_description_3 := substr(apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_description_3_col_no).data_type,',
'                                p_value     => l_column_value_list(l_description_3_col_no).value_list(l_row_num) ),',
'                            false ),0,2000);',
'            end if;',
'',
'            if l_description_4_col_no is not null then',
'                l_description_4 := substr(apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_description_4_col_no).data_type,',
'                                p_value     => l_column_value_list(l_description_4_col_no).value_list(l_row_num) ),',
'                            false ),0,2000);',
'            end if;',
'',
'            -- Start of the actual rendering code.',
'            if c_group_type = ''D'' then',
'                if l_last_group != to_char(l_date,''YYYYMM'') then',
'                    l_last_group := to_char(l_date,''YYYYMM'');',
'',
'                    if l_count > 1 then',
'                        -- Not the first row; close the previous group.',
'                        sys.htp.p(''</ul></div>'');',
'                    end if;',
'',
'                    sys.htp.p(''<div class="t-StatusList-block">'');',
'                    sys.htp.p(''<div class="t-StatusList-blockHeader"><span class="t-StatusList-headerTextPrimary">''||trim(to_char(l_date,''Month''))||',
'                        ''</span><span class="t-StatusList-headerTextAlt">''||to_char(l_date,''YYYY'')||''</span></div>'');',
'                    sys.htp.p(''<ul class="t-StatusList-list">'');',
'                end if;',
'            else',
'                if l_last_group != l_group then',
'                    l_last_group := l_group;',
'                    if l_count > 1 then',
'                        -- Not the first row; close the previous group.',
'                        sys.htp.p(''</ul></div>'');',
'                    end if;',
'',
'                    sys.htp.p(''<div class="t-StatusList-block" aria-labelledby="tl_''||trim(l_group)||''">'');',
'                    sys.htp.p(''<div class="t-StatusList-blockHeader" id="tl_''||trim(l_group)||''">''',
'                        ||''<span class="t-StatusList-headerTextPrimary">''||trim(l_group)||''</span></div>'');',
'                    sys.htp.p(''<ul class="t-StatusList-list">'');',
'                end if;',
'            end if;',
'',
'            if l_color_col_no is not null then',
'                -- Limit it down to the colors we support.',
'                l_color := lower(l_color);',
'                if l_color = ''red'' then',
'                    l_color := ''is-danger'';',
'                elsif l_color = ''black'' then',
'                    l_color := ''is-complete'';',
'                elsif l_color = ''blue'' then',
'                    l_color := ''is-info'';',
'                elsif l_color = ''yellow'' then',
'                    l_color := ''is-warning'';',
'                elsif l_color = ''green'' then',
'                    l_color := ''is-success'';',
'                end if;',
'',
'                l_colors(l_color) := l_color_label;',
'            end if;',
'',
'            if c_group_type = ''D'' then',
'                sys.htp.p(''<li class="t-StatusList-item ''||l_color||''" aria-label="''',
'                    ||to_char(l_date,''Month fmDD, YYYY'')||''" aria-describedby="tl_''||to_char(l_date,''DD_MON_YYYY'')||''">''',
'                    ||''<div class="t-StatusList-itemMarker">'');',
'',
'                if l_last_day is null or to_char(l_date,''YYYYMMDD'') != l_last_day',
'                then',
'                    sys.htp.p(''<span class="t-StatusList-marker" role="presentation">''',
'                        ||to_char(l_date,''fmDD'')||''</span>'');',
'                end if;',
'',
'                sys.htp.p(''</div>'');',
'',
'                l_last_day := to_char(l_date, ''YYYYMMDD'');',
'',
'                sys.htp.p(''<div class="t-StatusList-itemBody" id="tl_''||to_char(l_date,''DD_MON_YYYY'')||''_''||l_count||''_''|| p_region.static_id ||''">'');',
'            else',
'                sys.htp.p(''<li class="t-StatusList-item ''||l_color||''" aria-label="''',
'                    ||trim(l_title)||''" aria-describedby="tl_''||trim(l_title)||''">''',
'                    ||''<div class="t-StatusList-itemMarker">''',
'                    ||''<span class="t-StatusList-marker" role="presentation">''',
'                    ||trim(l_title)||''</span></div>'');',
'',
'                sys.htp.p(''<div class="t-StatusList-itemBody" id="tl_''||trim(l_title)||''_''||l_count||''">'');',
'            end if;',
'',
'            sys.htp.p(''<h3 class="t-StatusList-itemTitle">''',
'                ||case when l_link is null then l_title',
'                    else ''<a href="''||apex_util.prepare_url(l_link)||''">''||l_title||''</a>''',
'                    end',
'                ||''</h3>'');',
'',
'            if l_row1_attr1_lbl is not null or l_row1_attr1_val is not null',
'                    or l_row1_attr2_lbl is not null or l_row1_attr2_val is not null then',
'                sys.htp.prn(''<div class="t-StatusList-itemAttrs">'');',
'',
'                if l_status is not null then',
'                    sys.htp.p(''<span class="t-Badge t-Badge--basic t-Badge--xsmall ''',
'                        ||l_color||''">''||l_status||''</span>'');',
'                end if;',
'',
'                if l_row1_attr1_lbl is not null and l_row1_attr1_val is not null then',
'                    sys.htp.prn(''<span class="t-StatusList-attr"><span class="t-StatusList-attrLabel">''||l_row1_attr1_lbl||''</span> ''',
'                        ||''<span class="t-StatusList-attrValue">''||l_row1_attr1_val||''</span></span>'');',
'                elsif l_row1_attr1_lbl is null and l_row1_attr1_val is not null then',
'                    sys.htp.prn(''<span class="t-StatusList-attrValue">''||l_row1_attr1_val||''</span></span>'');',
'                elsif l_row1_attr1_lbl is not null and l_row1_attr1_val is null then',
'                    sys.htp.prn(''<span><span class="t-StatusList-attrLabel"></span></span>'');',
'                else',
'                    -- No attr1.',
'                    null;',
'                end if;',
'',
'                if l_row1_attr2_lbl is not null and l_row1_attr2_val is not null then',
'                    sys.htp.prn(''<span class="t-StatusList-attr"><span class="t-StatusList-attrLabel">''||l_row1_attr2_lbl||''</span> ''',
'                        ||''<span class="t-StatusList-attrValue">''||l_row1_attr2_val||''</span></span>'');',
'                elsif l_row1_attr2_lbl is null and l_row1_attr2_val is not null then',
'                    sys.htp.prn(''<span class="t-StatusList-attrValue">''||l_row1_attr2_val||''</span></span>'');',
'                elsif l_row1_attr2_lbl is not null and l_row1_attr2_val is null then',
'                    sys.htp.prn(''<span class="t-StatusList-attr"><span class="t-StatusList-attrLabel"></span></span>'');',
'                else',
'                    -- No attr2.',
'                    null;',
'                end if;',
'                -- sys.htp.prn(''</div>'');',
'            end if;',
'',
'            if l_row2_attr1_lbl is not null or l_row2_attr1_val is not null',
'                    or l_row2_attr2_lbl is not null or l_row2_attr2_val is not null then',
'                -- sys.htp.prn(''<p>'');',
'                if l_row2_attr1_lbl is not null and l_row2_attr1_val is not null then',
'                    sys.htp.prn(''<span class="t-StatusList-attr"><span class="t-StatusList-attrLabel">''||l_row2_attr1_lbl||''</span> ''',
'                        ||''<span class="t-StatusList-attrValue">''||l_row2_attr1_val||''</span></span>'');',
'                elsif l_row2_attr1_lbl is null and l_row2_attr1_val is not null then',
'                    sys.htp.prn(''<span class="t-StatusList-attrValue">''||l_row2_attr1_val||''</span></span>'');',
'                elsif l_row2_attr1_lbl is not null and l_row2_attr1_val is null then',
'                    sys.htp.prn(''<span class="t-StatusList-attr"><span class="t-StatusList-attrLabel"></span></span>'');',
'                else',
'                    -- No attr3.',
'                    null;',
'                end if;',
'',
'                if l_row2_attr2_lbl is not null and l_row2_attr2_val is not null then',
'                    sys.htp.prn(''<span class="t-StatusList-attr"><span class="t-StatusList-attrLabel">''||l_row2_attr2_lbl||''</span> ''',
'                        ||''<span class="t-StatusList-attrValue">''||l_row2_attr2_val||''</span></span>'');',
'                elsif l_row2_attr2_lbl is null and l_row2_attr2_val is not null then',
'                    sys.htp.prn(''<span class="t-StatusList-attrValue">''||l_row2_attr2_val||''</span></span>'');',
'                elsif l_row2_attr2_lbl is not null and l_row2_attr2_val is null then',
'                    sys.htp.prn(''<span class="t-StatusList-attr"><span class="t-StatusList-attrLabel"></span></span>'');',
'                else',
'                    -- No attr4.',
'                    null;',
'                end if;',
'                sys.htp.prn(''</div>'');',
'            end if;',
'',
'            if l_description_1 is not null then',
'                sys.htp.prn(''<p class="t-StatusList-textDesc">''||l_description_1||''</p>'');',
'            end if;',
'',
'            if l_description_2 is not null then',
'                sys.htp.prn(''<p class="t-StatusList-textDesc">''||l_description_2||''</p>'');',
'            end if;',
'',
'            if l_description_3 is not null then',
'                sys.htp.prn(''<p class="t-StatusList-textDesc">''||l_description_3||''</p>'');',
'            end if;',
'',
'            if l_description_4 is not null then',
'                sys.htp.prn(''<p class="t-StatusList-textDesc">''||l_description_4||''</p>'');',
'            end if;',
'',
'            sys.htp.prn(''</div></li>'');',
'        end if;',
'    end loop;',
'    if l_count > 0 then',
'        -- Close the HTML.',
'        sys.htp.p(''</ul></div>'');',
'',
'        -- Print Legend',
'        if l_color_label_col_no is not null then',
'            sys.htp.p(''<div class="t-StatusList-legend" style="padding: 8px; border-top: 1px solid rgba(0,0,0,.05); font-size: 11px;">'');',
'            sys.htp.p(''  <strong>Status Color Coding:</strong>'');',
'            l_color_idx := l_colors.first;',
'            while l_color_idx is not null loop',
'                if l_colors(l_color_idx) is not null then',
'                    sys.htp.p(''  <span class="t-Badge t-Badge--basic t-Badge--small ''||apex_escape.html(p_string => l_color_idx)||''">''||apex_escape.html(p_string => l_colors(l_color_idx))||''</span>'');',
'                end if;',
'                l_color_idx := l_colors.next( l_color_idx );',
'            end loop;',
'            sys.htp.p(''</div>'');',
'        end if;',
'    else',
'        sys.htp.p(''<span class="nodatafound">''||l_no_data_found||''</span>'');',
'    end if;',
'    sys.htp.p(''</div>'');',
'end render_list_calendar;',
'',
'function render ( p_region in apex_plugin.t_region,',
'    p_plugin in apex_plugin.t_plugin, p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result is',
'begin',
'    sys.htp.p(''<div id="'' || p_region.static_id || ''_inner">'');',
'    render_list_calendar( p_region );',
'    sys.htp.p(''</div>'');',
'    ',
'    /* ',
'    apex_javascript.add_onload_code (',
'        p_code => ''(function( apex, util, server, $ ){',
'  window.com_oracle_apex_timeline_status_list = function( regionId, details ) {',
'    function _clear() {',
'      _inner$.empty();',
'    }',
'    function _render( markup ) {',
'      _inner$.html( markup );',
'    }',
'    function _debug( error ) {',
'            if ( error.status >= 200 && error.status < 300 ) {',
'                _render( error.responseText );',
'            } else {',
'                debugger;',
'            }',
'    }',
'    function _refresh() {',
'      server.plugin( details.ajaxIdentifier, { pageItems : details.pageItems }, {',
'        refreshObject : _region$,',
'        clear : _clear,',
'        success : _render,',
'        error : _debug,',
'        loadingIndicator : _inner$,',
'        loadingIndicatorPosition : "append"',
'      });',
'    }',
'',
'    var _region$ = $( "#" + regionId );',
'        var _inner$ = $( "#" + details.innerRegionId );',
'    _region$.on( "apexrefresh", _refresh );',
'  }',
'})( apex, apex.util, apex.server, apex.jQuery );''',
'    );',
'    */',
'    ',
'    apex_javascript.add_onload_code (',
'        p_code => ''(function(){ var a = com_oracle_apex_timeline_status_list('' ||',
'            apex_javascript.add_value(p_region.static_id) ||',
'            ''{'' ||',
'                apex_javascript.add_attribute(''innerRegionId'',  p_region.static_id || ''_inner'' ) ||',
'                apex_javascript.add_attribute(''pageItems'',      apex_plugin_util.page_item_names_to_jquery(p_region.ajax_items_to_submit)) ||',
'                apex_javascript.add_attribute(''ajaxIdentifier'', apex_plugin.get_ajax_identifier, false, false) ||',
'            ''});})()'' );',
'    return null;',
'end render;',
'',
'function ajax (',
'    p_region in apex_plugin.t_region,',
'    p_plugin in apex_plugin.t_plugin )',
'    return apex_plugin.t_region_ajax_result is',
'begin',
'    render_list_calendar( p_region );',
'    return null;',
'end ajax;'))
,p_api_version=>1
,p_render_function=>'render'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'SOURCE_SQL:AJAX_ITEMS_TO_SUBMIT:FETCHED_ROWS:NO_DATA_FOUND_MESSAGE:ESCAPE_OUTPUT:COLUMNS:COLUMN_HEADING'
,p_substitute_attributes=>true
,p_reference_id=>9646339904178755041
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Timeline and Status lists are useful for displaying a region with calendar dates and summary information. </p>',
'<p>This plug-in is suitable for adding to Master / Detail pages to show important summary information with dates.</p>'))
,p_version_identifier=>'5.1'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(151287187912867027)
,p_plugin_id=>wwv_flow_imp.id(1722378881159661598)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'attribute_01'
,p_prompt=>'Group By Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:TIMESTAMP:TIMESTAMP_TZ:TIMESTAMP_LTZ'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the column the report will be grouped by.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(151287577663867028)
,p_plugin_id=>wwv_flow_imp.id(1722378881159661598)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>120
,p_static_id=>'attribute_02'
,p_prompt=>'Color Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the color for the list.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(151288043268867028)
,p_plugin_id=>wwv_flow_imp.id(1722378881159661598)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'attribute_03'
,p_prompt=>'Title Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the title for each grouping.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(151288443225867028)
,p_plugin_id=>wwv_flow_imp.id(1722378881159661598)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'attribute_04'
,p_prompt=>'Link Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the link for each record.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(151288814456867028)
,p_plugin_id=>wwv_flow_imp.id(1722378881159661598)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'attribute_05'
,p_prompt=>'First Value'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the first value to be displayed in the report.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(151289162160867028)
,p_plugin_id=>wwv_flow_imp.id(1722378881159661598)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'attribute_06'
,p_prompt=>'Second Value'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the second value to be displayed in the report.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(151289565155867029)
,p_plugin_id=>wwv_flow_imp.id(1722378881159661598)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'attribute_07'
,p_prompt=>'Third Value'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_is_common=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the third value to be displayed in the report.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(151290044701867029)
,p_plugin_id=>wwv_flow_imp.id(1722378881159661598)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'attribute_08'
,p_prompt=>'Fourth Value'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_is_common=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the fourth value to be displayed in the report.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(151290386746867029)
,p_plugin_id=>wwv_flow_imp.id(1722378881159661598)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'attribute_09'
,p_prompt=>'Primary Description'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the primary description to be displayed in the report.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(151290837076867029)
,p_plugin_id=>wwv_flow_imp.id(1722378881159661598)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'attribute_10'
,p_prompt=>'Secondary Description'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_is_common=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the secondary description to be displayed in the report.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(151291164421867029)
,p_plugin_id=>wwv_flow_imp.id(1722378881159661598)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'attribute_11'
,p_prompt=>'Additional Description (with HTML)'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_is_common=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds an additional description to be displayed in the report, which allows HTML content.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(151291595071867029)
,p_plugin_id=>wwv_flow_imp.id(1722378881159661598)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>5
,p_static_id=>'attribute_12'
,p_prompt=>'Display As'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'D'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select whether the region should be displayed as a timeline, based on a given date, or a list.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(151291980568867030)
,p_plugin_attribute_id=>wwv_flow_imp.id(151291595071867029)
,p_display_sequence=>10
,p_display_value=>'Timeline'
,p_return_value=>'D'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(151292463544867030)
,p_plugin_attribute_id=>wwv_flow_imp.id(151291595071867029)
,p_display_sequence=>20
,p_display_value=>'Status List'
,p_return_value=>'L'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(151292964398867030)
,p_plugin_id=>wwv_flow_imp.id(1722378881159661598)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>20
,p_static_id=>'attribute_13'
,p_prompt=>'Status Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the status to be displayed in the report.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(151293421568867030)
,p_plugin_id=>wwv_flow_imp.id(1722378881159661598)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_static_id=>'attribute_14'
,p_prompt=>'Color Label'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_show_in_wizard=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(151287577663867028)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(151293770020867031)
,p_plugin_id=>wwv_flow_imp.id(1722378881159661598)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>115
,p_static_id=>'attribute_15'
,p_prompt=>'Second Additional Description (with HTML)'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_is_common=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds an additional description to be displayed in the report, which allows HTML content.'
);
wwv_flow_imp_shared.create_plugin_std_attribute(
 p_id=>wwv_flow_imp.id(151295072326867032)
,p_plugin_id=>wwv_flow_imp.id(1722378881159661598)
,p_name=>'SOURCE_SQL'
,p_sql_min_column_count=>3
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
,p_name=>'Sample Calendar'
,p_alias=>'HOME'
,p_step_title=>'&APP_NAME.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1307304507561418061)
,p_plug_name=>'About this application'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>Oracle APEX has an integrated calendaring component.  This application demonstrates how this component can be used and also shows APEX plugins which can display calendars useful in some applications.  Calendars in APEX are based on data obtained f'
||'rom SQL queries.</p>'
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
 p_id=>wwv_flow_imp.id(1671069255456066397)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>60
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.SAMPLEAPPFOOTER'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2133109644237510190)
,p_plug_name=>'&APP_NAME.'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'<p>Demonstrations of calendars in Oracle APEX</p>'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2585696228076492403)
,p_plug_name=>'Calendar Examples'
,p_component_template_options=>'#DEFAULT#:t-Cards--basic:t-Cards--displayIcons:t-Cards--3cols:t-Cards--desc-4ln:u-colors:t-Cards--animColorFill'
,p_plug_display_sequence=>20
,p_plug_new_grid_column=>false
,p_list_id=>wwv_flow_imp.id(2585695133450492399)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Edit Calendar Entry'
,p_alias=>'EDIT-CALENDAR-ENTRY'
,p_page_mode=>'MODAL'
,p_step_title=>'Edit Calendar Entry'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(792087761318540590)
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
 p_id=>wwv_flow_imp.id(2580179313370657206)
,p_plug_name=>'Edit Calendar Entry'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody:t-Form--large'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2580179526695657207)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(792087761318540590)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3289438224841729735)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(792087761318540590)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Event'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2580179709899657207)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(792087761318540590)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:&P3_LASTVIEW.:&SESSION.::&DEBUG.:&P3_LASTVIEW.::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1635203344275123434)
,p_name=>'P3_LASTVIEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2580179313370657206)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2580180129891657214)
,p_name=>'P3_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2580179313370657206)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2580180309747657225)
,p_name=>'P3_TASK_NAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2580179313370657206)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Task Name'
,p_source=>'TASK_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2580180534466657228)
,p_name=>'P3_END_DATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2580179313370657206)
,p_use_cache_before_default=>'NO'
,p_item_default=>'return to_date(:"P3_END_DATE_TMP",''RRRRMMDDHH24MISS'');'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2594775212959782748)
,p_name=>'P3_START_DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2580179313370657206)
,p_use_cache_before_default=>'NO'
,p_item_default=>'return to_date(:"P3_END_DATE_TMP",''RRRRMMDDHH24MISS'');'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3289437218881472545)
,p_name=>'P3_END_DATE_TMP'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2580179313370657206)
,p_format_mask=>'RRRRMMDDHH24MISS'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3289439639657828608)
,p_name=>'P3_PROJECT'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2580179313370657206)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project'
,p_source=>'PROJECT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DISTINCT PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project || '' ('' || count(*) ||'' tasks from '' || to_char(min(start_date),''Mon RR'') ||'' to '' ||to_char(max(start_date), ''Mon RR'')||'')'' d, project r',
'from eba_demo_cal_projects',
'group by project',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select a Project'
,p_cHeight=>1
,p_display_when=>'P3_ID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3289440421958870867)
,p_name=>'P3_STATUS'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2580179313370657206)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'VALID STATUS CODES'
,p_lov=>'.'||wwv_flow_imp.id(2661056819897279509)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select a Status'
,p_cHeight=>1
,p_display_when=>'P3_ID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1901501199833197834)
,p_validation_name=>'End Date later than start date'
,p_validation_sequence=>10
,p_validation=>'to_date(:P3_START_DATE,''DD-MON-YYYY'') <= to_date(:P3_END_DATE, ''DD-MON-YYYY'')'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'End date must be later than the start date.'
,p_associated_item=>wwv_flow_imp.id(2580180534466657228)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3286725917403339783)
,p_name=>'Update End Date'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_START_DATE'
,p_condition_element=>'P3_END_DATE'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3286726207608339803)
,p_event_id=>wwv_flow_imp.id(3286725917403339783)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_END_DATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$v("P3_START_DATE")'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2580181135050657231)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_DEMO_CAL_PROJECTS'
,p_attribute_02=>'EBA_DEMO_CAL_PROJECTS'
,p_attribute_03=>'P3_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P3_ID'
,p_attribute_11=>'I:U:D'
,p_return_key_into_item1=>'P3_ID'
,p_internal_uid=>2570383176141598384
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2580181325661657232)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_DEMO_CAL_PROJECTS'
,p_attribute_02=>'EBA_DEMO_CAL_PROJECTS'
,p_attribute_03=>'P3_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P3_ID'
,p_attribute_11=>'I:U'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_return_key_into_item1=>'P3_ID'
,p_internal_uid=>2570383366752598385
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(792087843975540591)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>782289885066481744
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_tab_set=>'TS1'
,p_name=>'Time Line'
,p_alias=>'TIME-LINE'
,p_step_title=>'Time Line'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'div.ebaTimeline{border-bottom:1px solid #DDD;clear:both;position:relative;}',
'div.ebaTimeline:last-child{border-bottom:none;}',
'div.ebaTimeline h3{font:bold 11px/12px Arial,sans-serif;margin:0;padding:9px 10px;width:80px;color:#333;position:absolute;top:0;left:0;}',
'div.ebaTimeline h3 + ul{margin:0;list-style:none;padding:0;margin:0 0 0 80px;}',
'div.ebaTimeline ul li{display:table;width:100%;position:relative;}',
'div.ebaTimeline ul.ebaNoHover li:hover span.eS,',
'div.ebaTimeline ul.ebaNoHover li:hover span.eL{background:transparent;}',
'div.ebaTimeline ul li:hover span.eS{background-color:#F8F8F8;}',
'div.ebaTimeline ul li:hover span.eL{background:#F8F8F8;}',
'div.ebaTimeline ul li:hover span.eL a.eN span{text-decoration:underline;}',
'div.ebaTimeline ul li span.eD,',
'div.ebaTimeline ul li span.eS,',
'div.ebaTimeline ul li span.eL{display:table-cell;vertical-align:top;}',
'div.ebaTimeline ul li span.eD{width:20px;padding:0 10px 0 0;font:normal 11px/30px Arial,sans-serif;border-right:1px solid #EEE;text-align:right;color:#666;}',
'div.ebaTimeline ul li span.eS{padding:5px;width:20px;border-bottom:1px dotted #EEE;;}',
'div.ebaTimeline ul li:last-child span.eS,',
'div.ebaTimeline ul li:last-child span.eL{border-bottom:none;}',
'div.ebaTimeline ul li span.eS span{display:block;width:12px;height:12px;border-radius:10px;-moz-border-radius:10px;-webkit-box-shadow:0 1px 1px rgba(255,255,255,.75),0 0 2px rgba(0,0,0,.5) inset;-moz-box-shadow:0 1px 1px rgba(255,255,255,.75),0 0 2px'
||' rgba(0,0,0,.5) inset;box-shadow:0 1px 1px rgba(255,255,255,.75),0 0 2px rgba(0,0,0,.5) inset;background:-webkit-gradient(linear,0 0,0 100%,from(transparent),to(rgba(0,0,0,.25)));background:-moz-linear-gradient(top,transparent,rgba(0,0,0,.25));margin'
||':4px;}',
'div.ebaTimeline ul li span.eS span.ebaRed{background-color:#F00;}',
'div.ebaTimeline ul li span.eS span.ebaYellow{background-color:#FCE709;}',
'div.ebaTimeline ul li span.eS span.ebaGreen{background-color:#22C615;}',
'div.ebaTimeline ul li span.eS span.ebaBlack{background-color:#444;}',
'div.ebaTimeline ul li span.eS span.ebaNull{background-color:#CCC;}',
'div.ebaTimeline ul li span.eL{border-bottom:1px dotted #EEE;}',
'div.ebaTimeline ul li a.eN{display:block;padding:7px 0;text-decoration:none;}',
'div.ebaTimeline ul li a.eN span{display:block;font:bold 12px/16px Arial,sans-serif;color:#333;}',
'div.ebaTimeline ul li a.eN em,',
'div.ebaTimeline ul li span.eL em{display:block;font:normal 11px/16px Arial,sans-serif;color:#666;}',
'div.ebaTimeline ul li a.ebaEditLink{position:absolute;right:0;top:0;display:block;margin:7px 7px 0 0;font:normal 11px/12px Arial,sans-serif;text-decoration:none;color:#666;padding:2px 10px;border-radius:4px;-moz-border-radius:4px;border:1px solid #EE'
||'E;-webkit-transition:background .2s linear,border .2s linear,color .2s linear;}',
'div.ebaTimeline ul li a.ebaEditLink:hover{border:1px solid #BBB;background:#FFF;color:#333;}',
'</style>'))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1309368633622051156)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This page uses an Oracle APEX plugin region to display this custom hand crafted timeline. The HTML is generated in a PL/SQL function and is displayed using the PL/SQL web toolkit via the <strong>HTP</strong> package.</p>'
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
 p_id=>wwv_flow_imp.id(1635201417068123414)
,p_plug_name=>'Project Tasks'
,p_region_name=>'project_tasks'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'    ''#''         the_link,',
'    null color,',
'    project,',
'    task_name   primary_label,',
'    status,',
'    assigned_to,',
'    cost,',
'    end_date',
'from eba_demo_cal_projects',
'where (nvl(:P4_PROJECTS,''0'') = ''0'' or project = :P4_PROJECTS)',
'order by end_date'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TIMELINESTATUSLIST'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'END_DATE',
  'attribute_03', 'PRIMARY_LABEL',
  'attribute_04', 'THE_LINK',
  'attribute_05', 'PROJECT',
  'attribute_06', 'ASSIGNED_TO',
  'attribute_07', 'COST',
  'attribute_12', 'D',
  'attribute_13', 'STATUS')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1635201525994123415)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'ID'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Id'
,p_display_sequence=>10
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1635201545630123416)
,p_name=>'THE_LINK'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'THE_LINK'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'The link'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1635201728605123418)
,p_name=>'PRIMARY_LABEL'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'PRIMARY_LABEL'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Primary label'
,p_display_sequence=>50
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1635202119188123421)
,p_name=>'COST'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'COST'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Cost'
,p_display_sequence=>80
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1635202195362123422)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'END_DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'End date'
,p_display_sequence=>90
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1635202617050123426)
,p_name=>'PROJECT'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'PROJECT'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Project'
,p_display_sequence=>40
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1635202715216123427)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'STATUS'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Status'
,p_display_sequence=>60
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1635202758847123428)
,p_name=>'ASSIGNED_TO'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'ASSIGNED_TO'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Assigned to'
,p_display_sequence=>70
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1635202894000123429)
,p_name=>'COLOR'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'COLOR'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Color'
,p_display_sequence=>30
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2580592834164740786)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2587081225682679345)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>40
,p_translate_title=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2590792109854157320)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2580592834164740786)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP,4::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2587081410102679347)
,p_name=>'P4_PROJECTS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2587081225682679345)
,p_item_default=>'0'
,p_prompt=>'Project'
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DISTINCT PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project || '' ('' || count(*) ||'' tasks from '' || to_char(min(start_date),''Mon RR'') ||'' to '' ||to_char(max(start_date), ''Mon RR'')||'')'' d, project r',
'from eba_demo_cal_projects',
'group by project',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Projects -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'REDIRECT_SET_VALUE')).to_clob
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_tab_set=>'TS1'
,p_name=>'Administration'
,p_alias=>'ADMINISTRATION'
,p_step_title=>'Administration'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_navigation_list_position=>'TOP'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2593315839705579585)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3181430231687871387)
,p_plug_name=>'Manage Sample Data'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--defaultIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_source=>'<p>Click the Reset Data button to reset data used by the department and employee tables to their initial defaults. Click the View Report button to see the data used for this application in a report.</p>'
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
 p_id=>wwv_flow_imp.id(2136302345712562700)
,p_plug_name=>'Buttons'
,p_parent_plug_id=>wwv_flow_imp.id(3181430231687871387)
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2595311114092839898)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2136302345712562700)
,p_button_name=>'VIEW_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'View Report'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2593382010209583230)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2136302345712562700)
,p_button_name=>'RESET_DATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset Data'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3282823122312064665)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2136302345712562700)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2593440727524588225)
,p_branch_name=>'Go Back To Admin'
,p_branch_action=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 01-DEC-2011 11:26 by MIKE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2593402015403584790)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'reset data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  EBA_DEMO_CAL_DATA;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2593382010209583230)
,p_process_success_message=>'Data Reset'
,p_internal_uid=>2583604056494525943
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_tab_set=>'TS1'
,p_name=>'Report'
,p_alias=>'REPORT'
,p_step_title=>'Report'
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
 p_id=>wwv_flow_imp.id(2594927512914799503)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2594927925293799506)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	 "ID",',
'	 "PROJECT",',
'	 "TASK_NAME",',
'	 "START_DATE",',
'	 "END_DATE",',
'	 "STATUS",',
'	 "ASSIGNED_TO",',
'	 "COST",',
'	 "BUDGET",',
'	 "ROW_VERSION_NUMBER" ',
' from	 "EBA_DEMO_CAL_PROJECTS"'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2594928007602799506)
,p_name=>'Report'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ws/small_page.gif" alt="">'
,p_owner=>'MIKE'
,p_internal_uid=>1942696500298079223
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2594928217157799510)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2594928315854799512)
,p_db_column_name=>'PROJECT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Project'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2594928412004799512)
,p_db_column_name=>'TASK_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Task Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2594928510730799512)
,p_db_column_name=>'START_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2594928634216799512)
,p_db_column_name=>'END_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2594928724589799512)
,p_db_column_name=>'STATUS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2594928830130799512)
,p_db_column_name=>'ASSIGNED_TO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Assigned To'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2594928912118799512)
,p_db_column_name=>'COST'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2594929033883799512)
,p_db_column_name=>'BUDGET'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2594929119339799512)
,p_db_column_name=>'ROW_VERSION_NUMBER'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Row Version Number'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2594937038717799667)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'19427056'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PROJECT:TASK_NAME:START_DATE:END_DATE:STATUS:ASSIGNED_TO:COST:BUDGET'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2595391633831845588)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2594927925293799506)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP,7,RIR,CIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Application Theme Style'
,p_alias=>'APPLICATION-THEME-STYLE'
,p_step_title=>'Application Theme Style'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(663568232044195189)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1871875846835171606)
,p_plug_name=>'Set User Interface Theme Style'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
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
 p_id=>wwv_flow_imp.id(1871876248137171606)
,p_plug_name=>'About this page'
,p_parent_plug_id=>wwv_flow_imp.id(1871875846835171606)
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<br><p>Select the look and feel of the application you would like to use as default for all users of this application.</p>'
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
 p_id=>wwv_flow_imp.id(1871876659659171607)
,p_plug_name=>'items'
,p_parent_plug_id=>wwv_flow_imp.id(1871875846835171606)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_translate_title=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1871879678211171610)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1871877854029171608)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1871879678211171610)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:settings:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1871878271911171609)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1871879678211171610)
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
 p_id=>wwv_flow_imp.id(1871880747470171613)
,p_branch_action=>'f?p=&APP_ID.:settings:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(1871878271911171609)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(980688099217377892)
,p_name=>'P8_ENABLE_USER_STYLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1871876659659171607)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End users can choose Theme Styles'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ui.theme_style_by_user_pref',
'  from apex_application_themes t, apex_applications ui',
' where t.application_id = ui.application_id',
'   and t.theme_number   = ui.theme_number',
'   and t.application_id = :APP_ID',
'   and t.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1871877088658171607)
,p_name=>'P8_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1871876659659171607)
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1871880235174171611)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Theme Style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P8_DESKTOP_THEME_STYLE_ID is not null then',
'    for c1 in (select theme_number',
'               from apex_application_themes',
'               where application_id = :app_id',
'               and ui_type_name   = ''DESKTOP''',
'               and is_current = ''Yes'')',
'    loop',
'        apex_theme.set_current_style (',
'            p_theme_number  => c1.theme_number,',
'            p_id => :P8_DESKTOP_THEME_STYLE_ID',
'            );',
'        if :P8_ENABLE_USER_STYLE = ''Y'' then ',
'            apex_theme.enable_user_style (',
'                p_theme_number  => c1.theme_number',
'                );',
'        else ',
'            apex_theme.disable_user_style (',
'                p_theme_number  => c1.theme_number',
'                );',
'        end if;    ',
'',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1871878271911171609)
,p_process_success_message=>'Theme Style Set for All Users.'
,p_internal_uid=>1862082276265112764
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_tab_set=>'TS1'
,p_name=>'Date Reporting'
,p_alias=>'DATE-REPORTING'
,p_step_title=>'Date Reporting'
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
 p_id=>wwv_flow_imp.id(1309373620172151339)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This page uses an Oracle APEX interactive report and highlights some data format masks.  The <strong>End Date (Formatted)</strong> report column uses a <strong>Day Month DD, YYYY</strong> format mask. The <strong>SINCE</strong> report column forma'
||'t mask displays the time elapsed or before the current time in the format X seconds / minutes / hours or days ago.  The <strong>SINCE</strong> format mask is specific to APEX, however the other data formats are standard Oracle data format masks.</p>'
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
 p_id=>wwv_flow_imp.id(2196736016930016197)
,p_plug_name=>'Container'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1330054716537733973)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(2196736016930016197)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'date_reporting')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2660650308434216515)
,p_plug_name=>'Date Reporting'
,p_region_name=>'date_reporting'
,p_parent_plug_id=>wwv_flow_imp.id(2196736016930016197)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'    row_version_number,',
'    project,',
'    task_name,',
'    start_date,',
'    end_date,',
'    end_date end_date2,',
'    end_date end_date3,',
'    status,',
'    assigned_to,',
'    cost,',
'    budget',
'from eba_demo_cal_projects'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2660650523153216516)
,p_name=>'Project Due Dates'
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
,p_internal_uid=>2008419015848496233
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2660650618858216522)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2660650709116216523)
,p_db_column_name=>'ROW_VERSION_NUMBER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Row Version Number'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2660650834599216523)
,p_db_column_name=>'PROJECT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Project'
,p_column_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,10:P10_ID:#ID#'
,p_column_linktext=>'#PROJECT#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2660650921608216524)
,p_db_column_name=>'TASK_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Task Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2660651016046216524)
,p_db_column_name=>'START_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2660651131498216524)
,p_db_column_name=>'END_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'End Date (default)'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2660651229870216525)
,p_db_column_name=>'STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2660651319463216525)
,p_db_column_name=>'ASSIGNED_TO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Assigned To'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2660651421511216525)
,p_db_column_name=>'COST'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2660651520832216525)
,p_db_column_name=>'BUDGET'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2660732519934232187)
,p_db_column_name=>'END_DATE2'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'End Date (Formatted)'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'Day Month DD, YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2660732631345232188)
,p_db_column_name=>'END_DATE3'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'End Date (Since)'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2660656532139216746)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'20084251'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'PROJECT:TASK_NAME:END_DATE:END_DATE2:END_DATE3:STATUS:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2660651834566216526)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2660903421928251656)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2660651834566216526)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP,9,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2660651739696216525)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2660651834566216526)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Project'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10::'
,p_icon_css_classes=>'fa-plus'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Project Detail'
,p_alias=>'PROJECT-DETAIL'
,p_page_mode=>'MODAL'
,p_step_title=>'Project Detail'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1635203133932123432)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2660644813803216476)
,p_plug_name=>'Project Detail'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2660645239084216477)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1635203133932123432)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P10_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2660645136484216477)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1635203133932123432)
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
 p_id=>wwv_flow_imp.id(2660645013067216477)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1635203133932123432)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P10_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2660645418134216477)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1635203133932123432)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2660646338692216490)
,p_branch_action=>'f?p=&APP_ID.:9:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2660646511614216491)
,p_name=>'P10_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2660644813803216476)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2660646728280216493)
,p_name=>'P10_PROJECT'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2660644813803216476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project'
,p_source=>'PROJECT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2660646937996216494)
,p_name=>'P10_TASK_NAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2660644813803216476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Task Name'
,p_source=>'TASK_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2660647123342216495)
,p_name=>'P10_START_DATE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2660644813803216476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(2660647329671216495)
,p_name=>'P10_END_DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2660644813803216476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(2660647536040216495)
,p_name=>'P10_STATUS'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2660644813803216476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'VALID STATUS CODES'
,p_lov=>'.'||wwv_flow_imp.id(2661056819897279509)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Status -'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2660647737684216495)
,p_name=>'P10_ASSIGNED_TO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2660644813803216476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Assigned To'
,p_source=>'ASSIGNED_TO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2660647938872216495)
,p_name=>'P10_COST'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2660644813803216476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cost'
,p_source=>'COST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2660648111291216497)
,p_name=>'P10_BUDGET'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2660644813803216476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Budget'
,p_source=>'BUDGET'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(238823279615102304)
,p_name=>'Cancel Modal'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2660645418134216477)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238823399694102305)
,p_event_id=>wwv_flow_imp.id(238823279615102304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2660649317956216504)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_DEMO_CAL_PROJECTS'
,p_attribute_02=>'EBA_DEMO_CAL_PROJECTS'
,p_attribute_03=>'P10_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_internal_uid=>2650851359047157657
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2660649515150216506)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_DEMO_CAL_PROJECTS'
,p_attribute_02=>'EBA_DEMO_CAL_PROJECTS'
,p_attribute_03=>'P10_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>2650851556241157659
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2660649737974216507)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2660645239084216477)
,p_internal_uid=>2650851779065157660
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_tab_set=>'TS1'
,p_name=>'Help'
,p_alias=>'HELP'
,p_step_title=>'Help'
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
'</style>'))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2058629733334187518)
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
 p_id=>wwv_flow_imp.id(2058629904901187519)
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
 p_id=>wwv_flow_imp.id(2058630021533187520)
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
 p_id=>wwv_flow_imp.id(2058630064214187521)
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
 p_id=>wwv_flow_imp.id(3250103216430727137)
,p_plug_name=>'Help Container'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3250103609224727141)
,p_plug_name=>'Quick Start'
,p_parent_plug_id=>wwv_flow_imp.id(3250103216430727137)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<H2>Getting Started</h2>',
'<p>Run the application as a developer; at the bottom of the page will be buttons for viewing the page in the Application Express Application Builder. Click on the "Edit Page X" button to see how the pages are defined.</p>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3250103837726727146)
,p_plug_name=>'Features'
,p_parent_plug_id=>wwv_flow_imp.id(3250103216430727137)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2>Features</h2>',
'<p>',
'<ul>',
'<li>Standard Calendars</li>',
'<ul>',
'<li>SQL Query Driven</li>',
'<li>Monthly, Weekly, Daily, and List Views</li>',
'<li>Drag and Drop</li>',
'<li>Template Driven</li>',
'<li>Easy to use Wizard to Create</li>',
'</ul>',
'<li>Calendars and Dynamic Actions</li>',
'<ul>',
'<li>Synchronize Calendar with a Report</li>',
'<li>Create new events by selecting a date range</li>',
'<li>Change or copy events with a mouse click</li>',
'</ul>',
'<li>Calendars and Javascript</li>',
'<ul>',
'<li>Control your calendar with APEX components</li>',
'<li>Query current Calendar view </li>',
'<li>Create calendar events with Javascript</li>',
'</ul>',
'',
'<li>Calendar Styling</li>',
'<ul>',
'<li>Use your own CSS classes</li>',
'<li>Add Icons to your calendar events</li>',
'</ul>',
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
 p_id=>wwv_flow_imp.id(3250104016057727146)
,p_plug_name=>'About this Application'
,p_parent_plug_id=>wwv_flow_imp.id(3250103216430727137)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2>About this Application</h2>',
'<p>This application highlights the native calendaring capabilities of Oracle APEX. It features the CSS Calendar component which provides monthly, weekly or daily calendars with stylized tasks. The dates can be changed using forms, dialogs or drag and'
||' drop, which is all declarative and easily created using native APEX wizards. Advanced developers can use custom Javascript code and the FullCalendar API to fully exploit all calendar capabilities.</p><p>',
'',
'Use this application to familiarize yourself with the Calendar component, the combination with Dynamic Actions or how to apply custom Javascript code. </p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3250104630064727148)
,p_plug_name=>'Help'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_display_condition_type=>'NEVER'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_tab_set=>'TS1'
,p_name=>'Report'
,p_alias=>'REPORT2'
,p_step_title=>'Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1313036814260414444)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'    project,',
'    task_name,',
'    start_date,',
'    end_date,',
'    status,',
'    assigned_to,',
'    cost,',
'    budget',
'from eba_demo_cal_projects'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1313037027667414444)
,p_name=>'Report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
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
,p_internal_uid=>660805520362694161
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1313037134891414447)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1313037233598414449)
,p_db_column_name=>'PROJECT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Project'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1313037339628414449)
,p_db_column_name=>'TASK_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Task Name'
,p_column_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:14:P14_ID:#ID#'
,p_column_linktext=>'#TASK_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1313037421846414449)
,p_db_column_name=>'START_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1313037524504414449)
,p_db_column_name=>'END_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1313037639598414449)
,p_db_column_name=>'STATUS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1313037730924414450)
,p_db_column_name=>'ASSIGNED_TO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Assigned To'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1313037826112414450)
,p_db_column_name=>'COST'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1313037915958414450)
,p_db_column_name=>'BUDGET'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1313045130915416075)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6608137'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TASK_NAME:PROJECT:START_DATE:END_DATE:STATUS:ASSIGNED_TO:COST:BUDGET:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1313038420956414453)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1313378719150488365)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>To view the mini calendar click on a task name.  This will display a form page with mini calendars in the side bar.  Mini Calendars are implemented using Oracle APEX plugins. Plugins allow APEX developers to extend their applications with custom s'
||'olutions that are currently unavailable.</p>'
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
 p_id=>wwv_flow_imp.id(1313676213010543390)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1313036814260414444)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:13,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_tab_set=>'TS1'
,p_name=>'&P14_PROJECT.'
,p_alias=>'P14-PROJECT'
,p_step_title=>'&P14_PROJECT.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>1998361449248688088
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1313032019747414420)
,p_plug_name=>'Project Details'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin: 8px;"'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1313038726939414453)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1313702435613606662)
,p_plug_name=>'Hidden Items'
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_07'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1466628321931822230)
,p_plug_name=>'Start Date'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Region--noBorder'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>'select start_date, ''Start Date'' lbl from EBA_DEMO_CAL_PROJECTS where id = :P14_ID'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.MINICALENDAR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'START_DATE',
  'attribute_02', 'LBL')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1466628509423828016)
,p_plug_name=>'End Date'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Region--noBorder'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>'select END_DATE, ''End Date'' lbl from EBA_DEMO_CAL_PROJECTS where id = :P14_ID'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.MINICALENDAR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'END_DATE',
  'attribute_02', 'LBL')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1313032534622414421)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1313038726939414453)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1313032837828414421)
,p_branch_action=>'f?p=&APP_ID.:13:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1313033009351414422)
,p_name=>'P14_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1313702435613606662)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1313033233690414432)
,p_name=>'P14_PROJECT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1313032019747414420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project'
,p_source=>'PROJECT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1313033424728414432)
,p_name=>'P14_TASK_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1313702435613606662)
,p_use_cache_before_default=>'NO'
,p_source=>'TASK_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1313033627847414432)
,p_name=>'P14_START_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1313032019747414420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1313033836628414433)
,p_name=>'P14_END_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1313032019747414420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1313034016827414433)
,p_name=>'P14_STATUS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1313032019747414420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1313034224423414433)
,p_name=>'P14_ASSIGNED_TO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1313032019747414420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Assigned To'
,p_source=>'ASSIGNED_TO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1313034424294414433)
,p_name=>'P14_COST'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1313032019747414420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cost'
,p_source=>'COST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1313034611216414434)
,p_name=>'P14_BUDGET'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1313032019747414420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Budget'
,p_source=>'BUDGET'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1313036007695414436)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_DEMO_CAL_PROJECTS'
,p_attribute_02=>'EBA_DEMO_CAL_PROJECTS'
,p_attribute_03=>'P14_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>1303238048786355589
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1313036212113414436)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1303238253204355589
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1313035829309414435)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_DEMO_CAL_PROJECTS'
,p_attribute_02=>'EBA_DEMO_CAL_PROJECTS'
,p_attribute_03=>'P14_ID'
,p_attribute_04=>'ID'
,p_internal_uid=>1303237870400355588
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'Administration'
,p_alias=>'SETTINGS'
,p_step_title=>'Administration'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1872359944700655850)
,p_plug_name=>'Administration'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(1872361808815655863)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1872361185082655858)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_imp_page.create_page(
 p_id=>30
,p_name=>'Standard Calendars'
,p_alias=>'STANDARD-CALENDARS'
,p_step_title=>'Standard Calendars'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(792089470806540607)
,p_plug_name=>'Breakcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2652175962595851504)
,p_plug_name=>'Standard Calendars'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(792126456040946777)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_imp_page.create_page(
 p_id=>31
,p_name=>'Monthly Calendar: Projects'
,p_alias=>'MONTHLY-CALENDAR-PROJECTS'
,p_step_title=>'Monthly Calendar: Projects'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(792088213441540594)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2486170643936535197)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This is a standard Oracle APEX calendar region component built using the create calendar region wizard. A <strong>Button Bar</strong> region was also created and a <strong>P31_PROJECTS</strong> page item to allow for filtering by project. Click on'
||' a calendar event to open a dialog where you can edit the event''s details.</p>'
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
 p_id=>wwv_flow_imp.id(2486171775746535203)
,p_plug_name=>'Tasks'
,p_region_name=>'task_due_dates'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   project,',
'   task_name,',
'   status,',
'   assigned_to,',
'   cost,',
'   start_date,',
'   end_date,',
'   case',
'      when status = ''Pending'' then ''apex-cal-blue''',
'      when status = ''Open'' then ''apex-cal-green''',
'      when status = ''Closed'' then ''apex-cal-gray''',
'      when status = ''On-Hold'' then ''apex-cal-orange''',
'   end as css_class',
'from eba_demo_cal_projects',
'where (nvl(:P31_PROJECTS,''0'') = ''0'' or project = :P31_PROJECTS)',
'order by end_date'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P31_PROJECTS'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function (p) {',
' p.endDateExclusive = false;',
'}'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'calendar_views_and_navigation', 'month:week:day:list:navigation',
  'css_class', 'CSS_CLASS',
  'display_column', 'TASK_NAME',
  'drag_and_drop', 'N',
  'end_date_column', 'END_DATE',
  'first_hour', '9',
  'maximum_events_day', '3',
  'multiple_line_event', 'N',
  'primary_key_column', 'ID',
  'show_time', 'Y',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'START_DATE',
  'time_format', '00',
  'view_edit_link', 'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_ID,P3_LASTVIEW:&ID.,&APP_PAGE_ID.')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2486173747168535287)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_translate_title=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(788233793162806781)
,p_name=>'P31_PROJECTS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2486173747168535287)
,p_item_default=>'0'
,p_prompt=>'Project'
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DISTINCT PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project || '' ('' || count(*) ||'' tasks from '' || to_char(min(start_date),''Mon RR'') ||'' to '' ||to_char(max(start_date), ''Mon RR'')||'')'' d, project r',
'from eba_demo_cal_projects',
'group by project',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Projects -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#:margin-bottom-md'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(788235918423806784)
,p_name=>'Change Project - Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31_PROJECTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788236393427806785)
,p_event_id=>wwv_flow_imp.id(788235918423806784)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2486171775746535203)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(792087998061540592)
,p_name=>'Dialog closed'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2486171775746535203)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(792088072522540593)
,p_event_id=>wwv_flow_imp.id(792087998061540592)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2486171775746535203)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_imp_page.create_page(
 p_id=>32
,p_name=>'Week Calendar: Conference'
,p_alias=>'WEEK-CALENDAR-CONFERENCE'
,p_step_title=>'Week Calendar: Conference'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(792088260741540595)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2476793683634813427)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This is a standard Oracle APEX calendar region component showing a <b>weekly</b> view on events with a time component. This region component is well-suited to display conference or similar type schedules.</p>'
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
 p_id=>wwv_flow_imp.id(2476794815444813433)
,p_plug_name=>'Sessions'
,p_region_name=>'task_due_dates'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE''',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'calendar_views_and_navigation', 'week:day:list:navigation',
  'css_class', 'CSS_CLASS',
  'display_column', 'TITLE',
  'drag_and_drop', 'N',
  'end_date_column', 'END_DATE',
  'first_hour', '9',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'primary_key_column', 'ID',
  'show_time', 'Y',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'START_DATE',
  'time_format', '00')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(778859197933085080)
,p_name=>'Change Project - Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P32_PROJECTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(778859660912085085)
,p_event_id=>wwv_flow_imp.id(778859197933085080)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2476794815444813433)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_imp_page.create_page(
 p_id=>33
,p_name=>'Weekly Calendar: Edit Sessions'
,p_alias=>'WEEKLY-CALENDAR-EDIT-SESSIONS'
,p_step_title=>'Weekly Calendar: Edit Sessions'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(778368301762231716)
,p_plug_name=>'Items Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(792088393663540596)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3249932486019448577)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This is a standard Oracle APEX calendar region component showing a <b>weekly</b> view on events with a time component. This region component is well-suited for displaying conference or similar type schedules. In this example, you can select existi'
||'ng events to edit and date ranges in the calendar to create new events.</p>',
'<p>To have the edit dialog open upon clicking an existing event, navigate to the calendar components <b>Edit Link</b> attribute. Fill out the dialog to navigate to an application page containing the edit form and make sure to pass a primary key (whic'
||'h must be returned by your SQL query).</p>',
'<p>To have the edit dialog open upon selecting an empty date range (in order to create a new event), navigate to the calendar attribute <b>Create Link</b>. Fill out the dialog to navigate to the form page. The selected start and end timestamps must b'
||'e passed to the form using the substitutions <b>&amp;APEX$NEW_START_DATE.</b> and <b>&amp;APEX$NEW_END_DATE.</b>.'))
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
 p_id=>wwv_flow_imp.id(3249933617829448583)
,p_plug_name=>'Sessions'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE'' or :P33_SHOW_INACTIVE=''Y''',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P33_SHOW_INACTIVE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'calendar_views_and_navigation', 'week:day:list:navigation',
  'create_link', 'f?p=&APP_ID.:301:&SESSION.::&DEBUG.:RP,301:P301_START_DATE,P301_END_DATE:&APEX$NEW_START_DATE.,&APEX$NEW_END_DATE.',
  'css_class', 'CSS_CLASS',
  'display_column', 'TITLE',
  'end_date_column', 'END_DATE',
  'first_hour', '9',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'show_time', 'Y',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'START_DATE',
  'time_format', '00',
  'view_edit_link', 'f?p=&APP_ID.:301:&SESSION.::&DEBUG.:RP:P301_ID:&ID.')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(778368337364231717)
,p_name=>'P33_SHOW_INACTIVE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(778368301762231716)
,p_prompt=>'Show Inactive Sessions'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(778368038791231714)
,p_name=>'Dialog Closed: Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3249933617829448583)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(778368176735231715)
,p_event_id=>wwv_flow_imp.id(778368038791231714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3249933617829448583)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(778368516087231718)
,p_name=>'Change Show Inactive Sessions'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_SHOW_INACTIVE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(778368604771231719)
,p_event_id=>wwv_flow_imp.id(778368516087231718)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3249933617829448583)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_imp_page.create_page(
 p_id=>34
,p_name=>'Weekly Calendar: Drag & Drop'
,p_alias=>'WEEKLY-CALENDAR-DRAG-DROP'
,p_step_title=>'Weekly Calendar: Drag & Drop'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(792088437183540597)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1554233528039049780)
,p_plug_name=>'Items Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4025797712296266641)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This is a standard Oracle APEX calendar region component showing a <b>weekly</b> view on events with a time component. This region component is well-suited for displaying conference or similar type schedules. On this page, you can change the start'
||' and end timestamps for the individual sessions by dragging them around.</p>',
'<p>Calendar drag and drop can be enabled using the component attribute <b>Drag and Drop</b>. Your SQL query <i>must</i> select a primary key column and you must have set the <b>Primary Key Column</b> calendar attribute. Then enter the PL/SQL code to '
||'update the event row in the database in the <b>Drag and Drop PL/SQL Code</b> attribute. That PL/SQL code typically performs a SQL update on the database table - the bind variables <b>:APEX$PK_VALUE.</b>, <b>:APEX$NEW_START_DATE</b> and <b>:APEX$NEW_E'
||'ND_DATE</b> contain the dragged events primary key value as well as the new start and new end timestamp.</p>'))
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
 p_id=>wwv_flow_imp.id(4025798844106266647)
,p_plug_name=>'Sessions'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE'' or :P34_SHOW_INACTIVE=''Y''',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P34_SHOW_INACTIVE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'calendar_views_and_navigation', 'week:day:list:navigation',
  'create_link', 'f?p=&APP_ID.:301:&SESSION.::&DEBUG.:RP,301:P301_START_DATE,P301_END_DATE:&APEX$NEW_START_DATE.,&APEX$NEW_END_DATE.',
  'css_class', 'CSS_CLASS',
  'display_column', 'TITLE',
  'drag_and_drop', 'Y',
  'drag_and_drop_plsql_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'begin',
    '    update eba_demo_cal_sessions',
    '       set start_date = to_date(:APEX$NEW_START_DATE, ''YYYYMMDDHH24MISS''),',
    '           end_date = to_date(:APEX$NEW_END_DATE, ''YYYYMMDDHH24MISS'')',
    '     where id = :APEX$PK_VALUE;',
    'end;')),
  'end_date_column', 'END_DATE',
  'first_hour', '9',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'primary_key_column', 'ID',
  'show_time', 'Y',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'START_DATE',
  'time_format', '00')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(788175806490556284)
,p_name=>'P34_SHOW_INACTIVE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1554233528039049780)
,p_prompt=>'Show Inactive Sessions'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(788177015455556286)
,p_name=>'Dialog Closed: Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4025798844106266647)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788177498363556287)
,p_event_id=>wwv_flow_imp.id(788177015455556286)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4025798844106266647)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(788177855508556288)
,p_name=>'Change Show Inactive Sessions'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_SHOW_INACTIVE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788178424318556288)
,p_event_id=>wwv_flow_imp.id(788177855508556288)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4025798844106266647)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00035
begin
wwv_flow_imp_page.create_page(
 p_id=>35
,p_name=>'Weekly Calendar: Time format'
,p_alias=>'WEEKLY-CALENDAR-TIME-FORMAT'
,p_step_title=>'Weekly Calendar 12h/24h'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(788247869458878034)
,p_plug_name=>'Sessions (12h)'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE'' or :P35_SHOW_INACTIVE=''Y''',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P35_SHOW_INACTIVE'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P35_SHOW_TIME_FORMAT'
,p_plug_display_when_cond2=>'12'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( pOptions ) {',
'    pOptions.displayEventTime = true;',
'}',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'calendar_views_and_navigation', 'week:day:list:navigation',
  'css_class', 'CSS_CLASS',
  'display_column', 'TITLE',
  'drag_and_drop', 'N',
  'end_date_column', 'END_DATE',
  'first_hour', '9',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'primary_key_column', 'ID',
  'show_time', 'Y',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'START_DATE',
  'time_format', '12')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(788247997575878035)
,p_plug_name=>'Sessions (24h)'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE'' or :P35_SHOW_INACTIVE=''Y''',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P35_SHOW_INACTIVE'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P35_SHOW_TIME_FORMAT'
,p_plug_display_when_cond2=>'24'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( pOptions ) {',
'    pOptions.displayEventTime = true;',
'}',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'calendar_views_and_navigation', 'week:day:list:navigation',
  'css_class', 'CSS_CLASS',
  'display_column', 'TITLE',
  'drag_and_drop', 'N',
  'end_date_column', 'END_DATE',
  'first_hour', '9',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'primary_key_column', 'ID',
  'show_time', 'Y',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'START_DATE',
  'time_format', '24')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(792088581578540598)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2333982113909625895)
,p_plug_name=>'Items Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4805546298166842756)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This is a standard Oracle APEX calendar region component showing a <b>weekly</b> view on events with a time component. This page allows you to choose the time format (12h, 24h) used to display the time component of an event timestamp.</p>',
'<p>Note the <b>Time Format</b> attribute of the calendar component can be set to <b>Default</b> which chooses the time format based on the current locale (e.g. 12h for the US, 24h for Germany), <b>12 hour</b>, or <b>24 hour</b>. Select the <b>12 hour'
||'</b> or <b>24 hour</b> options to force the chosen format (independent from the current locale''s time format).</p>'))
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
 p_id=>wwv_flow_imp.id(4805547429976842762)
,p_plug_name=>'Sessions (default)'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE'' or :P35_SHOW_INACTIVE=''Y''',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P35_SHOW_INACTIVE'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P35_SHOW_TIME_FORMAT'
,p_plug_display_when_cond2=>'default'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( pOptions ) {',
'    pOptions.displayEventTime = true;',
'}',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'calendar_views_and_navigation', 'week:day:list:navigation',
  'css_class', 'CSS_CLASS',
  'display_column', 'TITLE',
  'drag_and_drop', 'N',
  'end_date_column', 'END_DATE',
  'first_hour', '9',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'primary_key_column', 'ID',
  'show_time', 'Y',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'START_DATE',
  'time_format', '00')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(788248036003878036)
,p_name=>'P35_SHOW_TIME_FORMAT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2333982113909625895)
,p_item_default=>'default'
,p_prompt=>'Time format'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Default (based on NLS);default,12 hour;12,24 hour;24'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'REDIRECT_SET_VALUE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(792059027226314369)
,p_name=>'P35_SHOW_INACTIVE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2333982113909625895)
,p_prompt=>'Show Inactive Sessions'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(792061073395314405)
,p_name=>'Change Show Inactive Sessions'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P35_SHOW_INACTIVE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(792061604303314406)
,p_event_id=>wwv_flow_imp.id(792061073395314405)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4805547429976842762)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00036
begin
wwv_flow_imp_page.create_page(
 p_id=>36
,p_name=>'Faceted Search: Projects'
,p_alias=>'FACETED-SEARCH-PROJECTS'
,p_step_title=>'Faceted Search: Projects'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'22'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(618976845537618448)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>3
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(3095345692962092657)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1401262130657098048)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3095344561152092651)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This is a standard Oracle APEX Calendar region component built using the create calendar region wizard. Additionally a Faceted Search region was added to enable rich search capabilities of the calendar region. Click on a calendar event to open a d'
||'ialog where you can edit the event''s details.</p>'
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
 p_id=>wwv_flow_imp.id(3095345692962092657)
,p_plug_name=>'Tasks'
,p_region_name=>'task_due_dates'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   project,',
'   task_name,',
'   status,',
'   assigned_to,',
'   cost,',
'   start_date,',
'   end_date,',
'   case',
'      when status = ''Pending'' then ''apex-cal-blue''',
'      when status = ''Open'' then ''apex-cal-green''',
'      when status = ''Closed'' then ''apex-cal-gray''',
'      when status = ''On-Hold'' then ''apex-cal-orange''',
'   end as css_class',
'from eba_demo_cal_projects',
'order by end_date'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function (p) {',
' p.endDateExclusive = false;',
'}'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'calendar_views_and_navigation', 'month:week:day:list:navigation',
  'css_class', 'CSS_CLASS',
  'display_column', 'TASK_NAME',
  'drag_and_drop', 'N',
  'end_date_column', 'END_DATE',
  'first_hour', '9',
  'maximum_events_day', '3',
  'multiple_line_event', 'N',
  'primary_key_column', 'ID',
  'show_time', 'Y',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'START_DATE',
  'time_format', '00',
  'view_edit_link', 'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_ID,P3_LASTVIEW:&ID.,&APP_PAGE_ID.')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(618976930076618449)
,p_name=>'P36_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(618976845537618448)
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
 p_id=>wwv_flow_imp.id(618977047751618450)
,p_name=>'P36_PROJECT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(618976845537618448)
,p_prompt=>'Project'
,p_source=>'PROJECT'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'DISTINCT PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project || '' ('' || count(*) ||'' tasks from '' || to_char(min(start_date),''Mon RR'') ||'' to '' ||to_char(max(start_date), ''Mon RR'')||'')'' d, project r',
'from eba_demo_cal_projects',
'group by project',
'order by 1'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>false
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(618974371316616395)
,p_name=>'Change Project - Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P36_PROJECTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(618974871419616397)
,p_event_id=>wwv_flow_imp.id(618974371316616395)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3095345692962092657)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(618975266119616398)
,p_name=>'Dialog closed'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3095345692962092657)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(618975816994616398)
,p_event_id=>wwv_flow_imp.id(618975266119616398)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3095345692962092657)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00050
begin
wwv_flow_imp_page.create_page(
 p_id=>50
,p_name=>'Calendars and Dynamic Actions'
,p_alias=>'CALENDARS-AND-DYNAMIC-ACTIONS'
,p_step_title=>'Calendars and Dynamic Actions'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(792089557265540608)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3432000937285145573)
,p_plug_name=>'Calendars and Dynamic Actions'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(792131669906999604)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
end;
/
prompt --application/pages/page_00051
begin
wwv_flow_imp_page.create_page(
 p_id=>51
,p_name=>'Calendar with Report'
,p_alias=>'CALENDAR-WITH-REPORT'
,p_step_title=>'Calendar with Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function formatYYYYMMDDhhmmss( pDate ) {',
'    var date = pDate || new Date();',
'',
'    return (',
'        ( "0000" + date.getFullYear() ).substr( -4 ) +',
'        ( "00" + ( date.getMonth() + 1 ) ).substr( -2 ) +',
'        ( "00" + date.getDate() ).substr( -2 ) +',
'        ( "00" + date.getHours() ).substr( -2 ) +',
'        ( "00" + date.getMinutes() ).substr( -2 ) +',
'        ( "00" + date.getSeconds() ).substr( -2 )',
'    );',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(792088632416540599)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3252187443974851426)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Upon a view change (navigate to next or previous month), the calendar Component sends a <b>View changed [Calendar]</b> event for which a <i>dynamic action</i> can be created. The event passes the current view''s begin (attribute <b>startDate</b>) a'
||'nd end (<b>endDate</b>) timestamps as the <b>data</b> object (<b>this.data</b>). In this example, the <b>Set Value</b> action stores the timestamps in hidden APEX items <b>P51_CAL_START_DATE</b> and <b>P51_CAL_END_DATE</b> and then refreshes the clas'
||'sic report region.',
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
 p_id=>wwv_flow_imp.id(3252188575784851432)
,p_plug_name=>'Tasks'
,p_region_name=>'tasks_cal'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   project,',
'   task_name,',
'   status,',
'   assigned_to,',
'   cost,',
'   start_date,',
'   end_date,',
'       case STATUS',
'           when ''Open''    then ''apex-cal-green''',
'           when ''Pending'' then ''apex-cal-yellow''',
'           when ''Closed''  then ''apex-cal-red''',
'           when ''On-Hold'' then ''apex-cal-black''',
'       end as css_class',
'from eba_demo_cal_projects',
'where (nvl(:P51_PROJECTS,''0'') = ''0'' or project = :P51_PROJECTS)',
'order by end_date'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P51_PROJECTS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'additional_calendar_views', 'navigation',
  'css_class', 'CSS_CLASS',
  'display_column', 'TASK_NAME',
  'drag_and_drop', 'N',
  'end_date_column', 'END_DATE',
  'maximum_events_day', '5',
  'multiple_line_event', 'N',
  'show_time', 'N',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'START_DATE',
  'view_edit_link', 'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_ID,P3_LASTVIEW:&ID.,&APP_PAGE_ID.')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1554242579228104247)
,p_name=>'Tasks '
,p_parent_plug_id=>wwv_flow_imp.id(3252188575784851432)
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff:t-Report--horizontalBorders'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   project,',
'   task_name,',
'   status,',
'   assigned_to,',
'   cost,',
'   start_date,',
'   end_date,',
'          case STATUS',
'           when ''Open''    then ''apex-cal-green''',
'           when ''Pending'' then ''apex-cal-yellow''',
'           when ''Closed''  then ''apex-cal-red''',
'           when ''On-Hold'' then ''apex-cal-black''',
'       end as css_class',
'from eba_demo_cal_projects',
'where (nvl(:P51_PROJECTS,''0'') = ''0'' or project = :P51_PROJECTS)',
'and (:P51_CAL_END_DATE is null or :P51_CAL_START_DATE is null or (',
'    start_date < next_day(to_date(:P51_CAL_END_DATE, ''YYYYMMDDHH24MISS''),1) -1  and ',
'    end_date   > next_day(to_date(:P51_CAL_START_DATE, ''YYYYMMDDHH24MISS'')-7,1)',
'))',
'order by start_date'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P51_PROJECTS,P51_CAL_START_DATE,P51_CAL_END_DATE'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No tasks found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(788188430658610762)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(788188840805610762)
,p_query_column_id=>2
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>4
,p_column_heading=>'Project'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(788189240010610762)
,p_query_column_id=>3
,p_column_alias=>'TASK_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Task name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(788189675156610763)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(788190039137610767)
,p_query_column_id=>5
,p_column_alias=>'ASSIGNED_TO'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(788190507996610768)
,p_query_column_id=>6
,p_column_alias=>'COST'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(788190885716610768)
,p_query_column_id=>7
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'from'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(788191228744610768)
,p_query_column_id=>8
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'to'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(788188048077610760)
,p_query_column_id=>9
,p_column_alias=>'CSS_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'Status'
,p_column_html_expression=>'<div class="fc"><div class="fc-event  #CSS_CLASS#">#STATUS#</div></div>'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3252190547206851516)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_translate_title=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(788186748719610756)
,p_name=>'P51_PROJECTS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3252190547206851516)
,p_item_default=>'0'
,p_prompt=>'Project'
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DISTINCT PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project || '' ('' || count(*) ||'' tasks from '' || to_char(min(start_date),''Mon RR'') ||'' to '' ||to_char(max(start_date), ''Mon RR'')||'')'' d, project r',
'from eba_demo_cal_projects',
'group by project',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Projects -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#:margin-left-none'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(788191634639610769)
,p_name=>'P51_CAL_START_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1554242579228104247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(788192084197610769)
,p_name=>'P51_CAL_END_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1554242579228104247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(788193245932610770)
,p_name=>'Change Project - Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P51_PROJECTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788193777750610771)
,p_event_id=>wwv_flow_imp.id(788193245932610770)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3252188575784851432)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788194296534610771)
,p_event_id=>wwv_flow_imp.id(788193245932610770)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1554242579228104247)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(788194662121610771)
,p_name=>'Calendar View Changed: Refresh Report'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3252188575784851432)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_CSS_CALENDAR|REGION TYPE|apexcalendarviewchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788195216715610780)
,p_event_id=>wwv_flow_imp.id(788194662121610771)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P51_CAL_START_DATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.startDate'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788196187181610792)
,p_event_id=>wwv_flow_imp.id(788194662121610771)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P51_CAL_END_DATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.endDate'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788195706446610780)
,p_event_id=>wwv_flow_imp.id(788194662121610771)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1554242579228104247)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(788196563374610793)
,p_name=>'Page Load: Restrict Report to current Month'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788197087353610793)
,p_event_id=>wwv_flow_imp.id(788196563374610793)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P51_CAL_START_DATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'formatYYYYMMDDhhmmss( apex.region("tasks_cal").widget().data("fullCalendar").view.activeStart )'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788197588663610794)
,p_event_id=>wwv_flow_imp.id(788196563374610793)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P51_CAL_END_DATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'formatYYYYMMDDhhmmss( apex.region("tasks_cal").widget().data("fullCalendar").view.activeEnd )'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788198030514610794)
,p_event_id=>wwv_flow_imp.id(788196563374610793)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1554242579228104247)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00052
begin
wwv_flow_imp_page.create_page(
 p_id=>52
,p_name=>'Create Calendar Events'
,p_alias=>'CREATE-CALENDAR-EVENTS'
,p_step_title=>'Create Calendar Events'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(792088740429540600)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1554258502008118019)
,p_plug_name=>'Items Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4025822686265334880)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This is a standard Oracle APEX calendar region component showing a <b>weekly</b> view on events with a time component. This region component is well-suited for displaying conference or similar type schedules. Upon clicking an existing event, the e'
||'dit dialog opens, like on page <a href="f?p=&APP_ID.:33:&APP_SESSION.">"Weekly Calendar: Edit Sessions</a>. When an empty date is selected, the new event is being created <i>immediately</i> using a default title (<b>New Event</b>). The newly created '
||'event can then be edited by simply clicking on it.</p>',
'<p>This page uses a dynamic action on a <b>Date Selected [Calendar]</b> event which the calendar component fires upon selecting an empty date or date range. The event passes information about the selection as the <b>data</b> event object (<b>this.dat'
||'a</b>). In this object, the <b>newStartDate</b> and <b>newEndDate</b> attributes contain the selected start and end timestamp as strings in <b>YYYYMMDDHH24MMSS</b> format.',
'</p><p>Note that this dynamic action is only fired when the calendar attribute <b>Create Link</b> <i>is empty</i>.</p>'))
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
 p_id=>wwv_flow_imp.id(4025823818075334886)
,p_plug_name=>'Sessions'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE'' or :P52_SHOW_INACTIVE=''Y''',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P52_SHOW_INACTIVE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'calendar_views_and_navigation', 'week:list:navigation',
  'css_class', 'CSS_CLASS',
  'display_column', 'TITLE',
  'end_date_column', 'END_DATE',
  'first_hour', '9',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'show_time', 'Y',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'START_DATE',
  'time_format', '00',
  'view_edit_link', 'f?p=&APP_ID.:301:&SESSION.::&DEBUG.:RP:P301_ID:&ID.')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(778369222423231725)
,p_name=>'P52_ENDDATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1554258502008118019)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(778369296321231726)
,p_name=>'P52_STARTDATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1554258502008118019)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(788200784711624499)
,p_name=>'P52_SHOW_INACTIVE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1554258502008118019)
,p_prompt=>'Show Inactive Sessions'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(788201975287624501)
,p_name=>'Dialog Closed: Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4025823818075334886)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788202429386624502)
,p_event_id=>wwv_flow_imp.id(788201975287624501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4025823818075334886)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(788202855103624503)
,p_name=>'Change Show Inactive Sessions'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_SHOW_INACTIVE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788203416283624503)
,p_event_id=>wwv_flow_imp.id(788202855103624503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4025823818075334886)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(778369023260231723)
,p_name=>'Date Range Selected: Create new Event'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4025823818075334886)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_CSS_CALENDAR|REGION TYPE|apexcalendardateselect'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(778369046881231724)
,p_event_id=>wwv_flow_imp.id(778369023260231723)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_STARTDATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.newStartDate'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(778369417418231727)
,p_event_id=>wwv_flow_imp.id(778369023260231723)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_ENDDATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.newEndDate'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(778369592589231729)
,p_event_id=>wwv_flow_imp.id(778369023260231723)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'insert into eba_demo_cal_sessions (title, speaker, session_type, status, start_date, end_date)',
'values (''New Event'', ''N/A'', ''GENERAL'', ''ACTIVE'', to_date(:P52_STARTDATE, ''YYYYMMDDHH24MISS''),  to_date(:P52_ENDDATE, ''YYYYMMDDHH24MISS''));',
'end;'))
,p_attribute_02=>'P52_STARTDATE,P52_ENDDATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(778369631702231730)
,p_event_id=>wwv_flow_imp.id(778369023260231723)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4025823818075334886)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00053
begin
wwv_flow_imp_page.create_page(
 p_id=>53
,p_name=>'Delete Events by Click'
,p_alias=>'DELETE-EVENTS-BY-CLICK'
,p_step_title=>'Delete Events by Click'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(792088874832540601)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2330163970865083801)
,p_plug_name=>'Items Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4801728155122300662)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This is a standard Oracle APEX calendar region component showing a <b>weekly</b> view on events with a time component. This region component is well-suited for displaying conference or similar type schedules. In this page, calendar events can be d'
||'eleted by simply clicking them. Upon clicking an existing event, an alert box opens to confirm whether this object should really be deleted. When <b>OK</b> is chosen, the event is being deleted in the database and the calendar view is being refreshed'
||'.</p>',
'<p>This page uses a dynamic action on  the <b>Event Selected [Calendar]</b> event which the calendar component fires upon clicking an existing event. The event passes the <a href="https://fullcalendar.io/docs/event-object" target="_blank">FullCalenda'
||'r Event Object</a> (<b>this.data</b>). In this object, the <b>id</b> attribute contains the primary key value which is being stored in a hidden APEX page item (<b>P53_SESSION_ID</b>). Finally, the calendar event is being deleted with the <b>Execute P'
||'L/SQL Code</b> action.</p>',
'<p>Note that the <b>Event Selected [Calendar]</b> event is only fired when the calendar attribute <b>Edit Link</b> <i>is empty</i>.</p>'))
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
 p_id=>wwv_flow_imp.id(4801729286932300668)
,p_plug_name=>'Sessions'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE'' or :P53_SHOW_INACTIVE=''Y''',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P53_SHOW_INACTIVE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'calendar_views_and_navigation', 'week:list:navigation',
  'css_class', 'CSS_CLASS',
  'display_column', 'TITLE',
  'drag_and_drop', 'N',
  'end_date_column', 'END_DATE',
  'first_hour', '9',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'primary_key_column', 'ID',
  'show_time', 'Y',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'START_DATE',
  'time_format', '00')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(778369998280231733)
,p_name=>'P53_SESSION_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2330163970865083801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(788215935978703979)
,p_name=>'P53_SHOW_INACTIVE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2330163970865083801)
,p_prompt=>'Show Inactive Sessions'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(788218905321703982)
,p_name=>'Change Show Inactive Sessions'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P53_SHOW_INACTIVE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788219338537703982)
,p_event_id=>wwv_flow_imp.id(788218905321703982)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4801729286932300668)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(778369820067231731)
,p_name=>'Event Clicked: Confirm and Delete'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4801729286932300668)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_CSS_CALENDAR|REGION TYPE|apexcalendareventselect'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(778369863849231732)
,p_event_id=>wwv_flow_imp.id(778369820067231731)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P53_SESSION_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.event.id'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(778370098588231734)
,p_event_id=>wwv_flow_imp.id(778369820067231731)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Do you really want to delete that event?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(778370172755231735)
,p_event_id=>wwv_flow_imp.id(778369820067231731)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    delete from eba_demo_cal_sessions where id =:P53_SESSION_ID;',
'end;'))
,p_attribute_02=>'P53_SESSION_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(778370295275231736)
,p_event_id=>wwv_flow_imp.id(778369820067231731)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4801729286932300668)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00054
begin
wwv_flow_imp_page.create_page(
 p_id=>54
,p_name=>'Copy Events by Click'
,p_alias=>'COPY-EVENTS-BY-CLICK'
,p_step_title=>'Copy Events by Click'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(792089935065540612)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3110014429769668695)
,p_plug_name=>'Items Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5581578614026885556)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This is a standard Oracle APEX calendar region component showing a <b>weekly</b> view on events with a time component. This region component is well-suited for displaying conference or similar type schedules. In this page, calendar events can be c'
||'opied by simply clicking them. Upon clicking an existing event, a new event with the same attributes will be created. The application will add 30 minutes to the begin and end timestamps of the new event.</p>',
'<p>This page uses a dynamic action on the <b>Event Selected [Calendar]</b> event which the calendar component fires upon clicking an existing event. The event passes the <a href="https://fullcalendar.io/docs/event-object" target="_blank">FullCalendar'
||' Event Object</a> (<b>this.data</b>). In this object, the <b>id</b> attribute contains the primary key value which is then being stored in a hidden APEX page item (<b>P54_SESSION_ID</b>) using a <b>Set Value</b> action. Finally, the calendar event is'
||' being copied with the <b>Execute PL/SQL Code</b> action.</p>',
'<p>Note that the <b>Event Selected [Calendar]</b> event is only fired when the calendar attribute <b>Edit Link</b> <i>is empty</i>.</p>'))
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
 p_id=>wwv_flow_imp.id(5581579745836885562)
,p_plug_name=>'Sessions'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE'' or :P54_SHOW_INACTIVE=''Y''',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P54_SHOW_INACTIVE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'calendar_views_and_navigation', 'week:list:navigation',
  'css_class', 'CSS_CLASS',
  'display_column', 'TITLE',
  'drag_and_drop', 'N',
  'end_date_column', 'END_DATE',
  'first_hour', '9',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'primary_key_column', 'ID',
  'show_time', 'Y',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'START_DATE',
  'time_format', '00')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(792161249404323094)
,p_name=>'P54_SHOW_INACTIVE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3110014429769668695)
,p_prompt=>'Show Inactive Sessions'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(792161648588323103)
,p_name=>'P54_SESSION_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3110014429769668695)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(792162313298323104)
,p_name=>'Change Show Inactive Sessions'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P54_SHOW_INACTIVE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(792162744198323108)
,p_event_id=>wwv_flow_imp.id(792162313298323104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5581579745836885562)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(792163133919323109)
,p_name=>'Event Clicked: Confirm and Delete'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5581579745836885562)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_CSS_CALENDAR|REGION TYPE|apexcalendareventselect'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(792165185782323111)
,p_event_id=>wwv_flow_imp.id(792163133919323109)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P54_SESSION_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.event.id'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(792164130613323110)
,p_event_id=>wwv_flow_imp.id(792163133919323109)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  insert into eba_demo_cal_sessions (title, session_type, status, speaker, start_date, end_date)',
'  (',
'      select ''Copy of ''||title, session_type, status, speaker, start_date + interval ''30'' minute, end_date + interval ''30'' minute',
'        from eba_demo_cal_sessions ',
'       where id =:P54_SESSION_ID);',
'end;'))
,p_attribute_02=>'P54_SESSION_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(792164637151323110)
,p_event_id=>wwv_flow_imp.id(792163133919323109)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5581579745836885562)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00070
begin
wwv_flow_imp_page.create_page(
 p_id=>70
,p_name=>'Calendars and Javascript'
,p_alias=>'CALENDARS-AND-JAVASCRIPT'
,p_step_title=>'Calendars and Javascript'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(792089710808540609)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4211831255223492871)
,p_plug_name=>'Calendars and Javascript'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(792136833765057608)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
end;
/
prompt --application/pages/page_00071
begin
wwv_flow_imp_page.create_page(
 p_id=>71
,p_name=>'Custom Navigation'
,p_alias=>'CUSTOM-NAVIGATION'
,p_step_title=>'Custom Navigation'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function formatYYYYMMDD( pDate ) {',
'    var date = pDate || new Date(),',
'        separator = "-";',
'',
'    return ( "0000" + date.getFullYear() ).substr( -4 ) + separator + ( "00" + ( date.getMonth() + 1 ) ).substr( -2 ) + separator + ( "00" + date.getDate() ).substr( -2 );',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(792088946930540602)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3262101006624665767)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This calendar component has all navigation elements being disabled. Instead, Application Express buttons (<b>NEXT</b> and <b>PREV</b>) have been created to move to the next or previous pages. After entering a date (format <b>YYYY-MM-DD</b>) into t'
||'he <b>P71_GOTODATE</b> text field, the calendar component displays that date immediately.</p>',
'<p>Dynamic actions with <b>Execute JavaScript Code</b> action have been created on the buttons as well as on the text field. The <i>Application Express region interface</i> allows to access the calendar widget Javascript object, onto which <a href="h'
||'ttps://fullcalendar.io/docs/" target="_blank">FullCalendar</a> API methods are being executed as follows.</p>',
'<pre>',
'apex.region("<i>{Region Static ID}</i>").widget().data("fullCalendar").gotoDate("<i>YYYY-MM-DD</i>");',
'apex.region("<i>{Region Static ID}</i>").widget().data("fullCalendar").next();',
'apex.region("<i>{Region Static ID}</i>").widget().data("fullCalendar").prev();',
'</pre>',
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3262102138434665773)
,p_plug_name=>'Tasks'
,p_region_name=>'project_tasks'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   project,',
'   task_name,',
'   status,',
'   assigned_to,',
'   cost,',
'   start_date,',
'   end_date,',
'   case',
'      when status = ''Pending'' then ''apex-cal-blue''',
'      when status = ''Open'' then ''apex-cal-green''',
'      when status = ''Closed'' then ''apex-cal-gray''',
'      when status = ''On-Hold'' then ''apex-cal-orange''',
'   end as css_class',
'from eba_demo_cal_projects',
'where (nvl(:P71_PROJECTS,''0'') = ''0'' or project = :P71_PROJECTS)',
'order by end_date'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P71_PROJECTS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'css_class', 'CSS_CLASS',
  'display_column', 'TASK_NAME',
  'drag_and_drop', 'N',
  'end_date_column', 'END_DATE',
  'first_hour', '9',
  'maximum_events_day', '5',
  'multiple_line_event', 'Y',
  'primary_key_column', 'ID',
  'show_time', 'Y',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'START_DATE',
  'time_format', '00',
  'view_edit_link', 'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_ID,P3_LASTVIEW:&ID.,&APP_PAGE_ID.')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3262104109856665857)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_translate_title=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(788247571966878031)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3262104109856665857)
,p_button_name=>'TODAY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Today'
,p_button_position=>'NEXT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(778370387311231737)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3262104109856665857)
,p_button_name=>'NEXT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Next Calendar Page'
,p_button_position=>'NEXT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-angle-double-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(788243618428877991)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3262104109856665857)
,p_button_name=>'PREV'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Previous Calendar Page'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-angle-double-left'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(788240851796868767)
,p_name=>'P71_PROJECTS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3262104109856665857)
,p_item_default=>'0'
,p_prompt=>'Project'
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DISTINCT PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project || '' ('' || count(*) ||'' tasks from '' || to_char(min(start_date),''Mon RR'') ||'' to '' ||to_char(max(start_date), ''Mon RR'')||'')'' d, project r',
'from eba_demo_cal_projects',
'group by project',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Projects -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(788244108643877996)
,p_name=>'P71_GOTODATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3262104109856665857)
,p_prompt=>'Goto date'
,p_format_mask=>'YYYY-MM-DD'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(788245636360878012)
,p_name=>'P71_VIEWTYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3262104109856665857)
,p_prompt=>'View Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Month;dayGridMonth,Week;timeGridWeek,Day;timeGridDay,List;list'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(788242031905868769)
,p_name=>'Change Project - Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_PROJECTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788242602652868769)
,p_event_id=>wwv_flow_imp.id(788242031905868769)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3262102138434665773)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(778370521789231738)
,p_name=>'Calendar: Next Month'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(778370387311231737)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788243390543877989)
,p_event_id=>wwv_flow_imp.id(778370521789231738)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("project_tasks").widget().data("fullCalendar").next()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(788243921149877994)
,p_name=>'Calendar: Prev Month'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(788243618428877991)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788243998188877995)
,p_event_id=>wwv_flow_imp.id(788243921149877994)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("project_tasks").widget().data("fullCalendar").prev()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(788244148354877997)
,p_name=>'Focus Date'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_GOTODATE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v("P71_GOTODATE").match(/\d\d\d\d\-\d\d\-\d\d/) != null'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788244233050877998)
,p_event_id=>wwv_flow_imp.id(788244148354877997)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("project_tasks").widget().data("fullCalendar").gotoDate($v("P71_GOTODATE"))'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788244565179878001)
,p_event_id=>wwv_flow_imp.id(788244148354877997)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Please use YYYY-MM-DD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(788245771154878013)
,p_name=>'set View Type'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788245912201878014)
,p_event_id=>wwv_flow_imp.id(788245771154878013)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_PROJECTS,P71_VIEWTYPE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.region("project_tasks").widget().data("fullCalendar").view.type'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(788245955618878015)
,p_name=>'Change View'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_VIEWTYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788246048161878016)
,p_event_id=>wwv_flow_imp.id(788245955618878015)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("project_tasks").widget().data("fullCalendar").changeView($v("P71_VIEWTYPE"))'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(788247720707878032)
,p_name=>'Set Goto Date to "today"'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(788247571966878031)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788247767477878033)
,p_event_id=>wwv_flow_imp.id(788247720707878032)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_GOTODATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'formatYYYYMMDD()'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
end;
/
prompt --application/pages/page_00072
begin
wwv_flow_imp_page.create_page(
 p_id=>72
,p_name=>'Query Calendar Status'
,p_alias=>'QUERY-CALENDAR-STATUS'
,p_step_title=>'Query Calendar Status'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(792089108208540603)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4038057868574988441)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows how to get the current calendar status with javascript methods. Upon switching the view type or navigating to the next or previous page, a dynamic action is being executed. The <a href="https://fullcalendar.io/docs/" target="_blank'
||'">FullCalendar API</a> <b>view</b> object is being used to get the current <i>calendar view</i> object. Its attributes can then be used to query the view type or start and end dates. Use a <b>Set Value</b> action to store this information in Applicat'
||'ion Express page items.</p>',
'<pre>',
'// get the view type (dayGridMonth, timeGridWeek, timeGridDay or list',
'apex.region("<i>{Region Static ID}</i>").widget().data("fullCalendar").view.type ',
'',
'// get the start date of the view',
'apex.region("<i>{Region Static ID}</i>").widget().data("fullCalendar").view.activeStart',
'apex.region("<i>{Region Static ID}</i>").widget().data("fullCalendar").view.currentStart',
'',
'// get the end date of the view',
'apex.region("<i>{Region Static ID}</i>").widget().data("fullCalendar").view.activeEnd',
'apex.region("<i>{Region Static ID}</i>").widget().data("fullCalendar").view.currentEnd',
'</pre>',
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4038059000384988447)
,p_plug_name=>'Tasks'
,p_region_name=>'project_tasks'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   project,',
'   task_name,',
'   status,',
'   assigned_to,',
'   cost,',
'   start_date,',
'   end_date,',
'   case',
'      when status = ''Pending'' then ''apex-cal-blue''',
'      when status = ''Open'' then ''apex-cal-green''',
'      when status = ''Closed'' then ''apex-cal-gray''',
'      when status = ''On-Hold'' then ''apex-cal-orange''',
'   end as css_class',
'from eba_demo_cal_projects',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'calendar_views_and_navigation', 'month:week:day:list:navigation',
  'css_class', 'CSS_CLASS',
  'display_column', 'TASK_NAME',
  'drag_and_drop', 'N',
  'end_date_column', 'END_DATE',
  'first_hour', '9',
  'maximum_events_day', '5',
  'multiple_line_event', 'Y',
  'primary_key_column', 'ID',
  'show_time', 'Y',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'START_DATE',
  'time_format', '00',
  'view_edit_link', 'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_ID,P3_LASTVIEW:&ID.,&APP_PAGE_ID.')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4038060971806988531)
,p_plug_name=>'Button Bar'
,p_region_name=>'texfields-container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_translate_title=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(788244650903878002)
,p_name=>'P72_END_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4038060971806988531)
,p_prompt=>'to'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_icon_css_classes=>'fa-calendar'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(788244745406878003)
,p_name=>'P72_VIEW_TYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4038060971806988531)
,p_prompt=>'View type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_icon_css_classes=>'fa-calendar-search'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(788268158702060870)
,p_name=>'P72_START_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4038060971806988531)
,p_prompt=>'View from'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_icon_css_classes=>'fa-calendar'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(788269759646060873)
,p_name=>'Change Project - Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P72_PROJECTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788270314623060874)
,p_event_id=>wwv_flow_imp.id(788269759646060873)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4038059000384988447)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(788270724401060874)
,p_name=>'Calendar: Next Month'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(778370387311231737)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788271223156060875)
,p_event_id=>wwv_flow_imp.id(788270724401060874)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("project_tasks").widget().data("fullCalendar").next()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(788244883614878004)
,p_name=>'Get Calendar Status'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4038059000384988447)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_CSS_CALENDAR|REGION TYPE|apexcalendarviewchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788244929805878005)
,p_event_id=>wwv_flow_imp.id(788244883614878004)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P72_VIEW_TYPE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.viewType'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788245062885878006)
,p_event_id=>wwv_flow_imp.id(788244883614878004)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P72_START_DATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.dates.startDate.toDateString()'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788245175221878007)
,p_event_id=>wwv_flow_imp.id(788244883614878004)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P72_END_DATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.dates.endDate.toDateString()'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(792087680467540589)
,p_event_id=>wwv_flow_imp.id(788244883614878004)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#texfields-container input")',
'         .animate({"background-color": "#FFEC8B"}, 300)',
'         .animate({"background-color": "white"},300)',
'    ;'))
);
end;
/
prompt --application/pages/page_00073
begin
wwv_flow_imp_page.create_page(
 p_id=>73
,p_name=>'Calendar Client Events'
,p_alias=>'CALENDAR-CLIENT-EVENTS'
,p_step_title=>'Calendar Client Events'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function formatYYYYMMDDhhmmss( pDate ) {',
'    var date = pDate || new Date();',
'',
'    return (',
'        ( "0000" + date.getFullYear() ).substr( -4 ) +',
'        "-" +',
'        ( "00" + ( date.getMonth() + 1 ) ).substr( -2 ) +',
'        "-" +',
'        ( "00" + date.getDate() ).substr( -2 ) +',
'        " " +',
'        ( "00" + date.getHours() ).substr( -2 ) +',
'        ":" +',
'        ( "00" + date.getMinutes() ).substr( -2 ) +',
'        ":" +',
'        ( "00" + date.getSeconds() ).substr( -2 )',
'    );',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(792089223255540604)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2330316188470614216)
,p_plug_name=>'Items Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4801880372727831077)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows, how additional, <i>client-only</i> events can be placed onto the calendar view. Fill out the text fields and click the <b>Show in Calendar</b> button. You''ll then see your input displayed as a "red" event. That event is only visib'
||'le in your browser and not saved to the database so far. You can also select a date range with the mouse, after finishing, the text fields will be updated and the "red" event will appear. Click the <b>Save to Database</b> button to make the event per'
||'sistent.</p>',
'<p>This example uses the <i>FullCalendar API</i>''s <b>EventObject / CalendarObject</b> and its methods <b>setProp</b>, <b>setDates</b> and <b>addEvent</b> (<a href="https://fullcalendar.io/docs/" target="_blank">FullCalendar Documentation</a>). For e'
||'xample:',
'<pre>',
'var calendar = apex.region( "week_calendar" ).widget().data( "fullCalendar" );',
'',
'calendar.addEvent( {',
'    id:     "javascript-event-id",',
'    title:  "a client-only event",',
'    start:  "2016-05-03T14:00:00",',
'    end:    "2016-05-03T16:00:00",',
'    allDay: false',
'} );',
'</pre>'))
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
 p_id=>wwv_flow_imp.id(4801881504537831083)
,p_plug_name=>'Sessions'
,p_region_name=>'week_calendar'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE''',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'calendar_views_and_navigation', 'week',
  'css_class', 'CSS_CLASS',
  'display_column', 'TITLE',
  'end_date_column', 'END_DATE',
  'first_hour', '9',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'show_time', 'Y',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'START_DATE',
  'time_format', '00',
  'view_edit_link', 'f?p=&APP_ID.:301:&SESSION.::&DEBUG.:RP:P301_ID:&ID.')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(788246440974878020)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2330316188470614216)
,p_button_name=>'SHOW_IN_CALENDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Show in Calendar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(788247016347878025)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2330316188470614216)
,p_button_name=>'SAVE_IN_DATABASE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Save to Database'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(788246386803878019)
,p_name=>'P73_TITLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2330316188470614216)
,p_item_default=>'My Session'
,p_prompt=>'Title'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(788246890028878024)
,p_name=>'P73_SESSION_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2330316188470614216)
,p_prompt=>'Session Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SESSION_TYPES'
,p_lov=>'.'||wwv_flow_imp.id(788163932279513196)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(788368605694234402)
,p_name=>'P73_STARTDATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2330316188470614216)
,p_item_default=>'to_char(sysdate, ''YYYY-MM-DD'')||'' 09:00:00'''
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'From'
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(788368994549234402)
,p_name=>'P73_ENDDATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2330316188470614216)
,p_item_default=>'to_char(sysdate, ''YYYY-MM-DD'')||'' 11:00:00'''
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'To'
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(788371944919234406)
,p_name=>'Date Range Selected: Create new Event'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4801881504537831083)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_CSS_CALENDAR|REGION TYPE|apexcalendardateselect'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788372433317234406)
,p_event_id=>wwv_flow_imp.id(788371944919234406)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_STARTDATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'formatYYYYMMDDhhmmss( this.data.dates.newStartDate )'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788373008124234407)
,p_event_id=>wwv_flow_imp.id(788371944919234406)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_ENDDATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'formatYYYYMMDDhhmmss( this.data.dates.newEndDate )'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788246819137878023)
,p_event_id=>wwv_flow_imp.id(788371944919234406)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(788246440974878020)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#P73_STARTDATE,#P73_ENDDATE")',
'         .animate({"background-color": "#FFEC8B"}, 300)',
'         .animate({"background-color": "white"},300)',
'    ;',
'',
'apex.event.trigger(this.affectedElements, "click");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(788246606225878021)
,p_name=>'Create Javascript Event'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(788246440974878020)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788246711432878022)
,p_event_id=>wwv_flow_imp.id(788246606225878021)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var calendar = apex.region( "week_calendar" ).widget().data( "fullCalendar" );',
'var event = calendar.getEventById( "javascript-event-id" );',
'',
'if ( event ) {',
'',
'    event.setProp( "title", $v( "P73_TITLE" ) );',
'    event.setDates( $v( "P73_STARTDATE" ), $v( "P73_ENDDATE" ), { allDay: false } );',
'',
'} else {',
'',
'    calendar.addEvent( {',
'        id: "javascript-event-id",',
'        description: ''this is a "client-only" event which is not stored in the database so far'',',
'        title: $v( "P73_TITLE" ),',
'        start: $v( "P73_STARTDATE" ),',
'        end: $v( "P73_ENDDATE" ),',
'        className: "apex-cal-red",',
'        backgroundColor: "rgba(255,0,0,0.75)",',
'        overlap: true,',
'        allDay: false',
'    } );',
'    ',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(788247044326878026)
,p_name=>'Save Event to Database'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(788247016347878025)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788247185105878027)
,p_event_id=>wwv_flow_imp.id(788247044326878026)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    insert into eba_demo_cal_sessions (title, speaker, session_type, status, start_date, end_date)',
'    values (:P73_TITLE, ''TBD'', :P73_SESSION_TYPE, ''ACTIVE'', to_date(:P73_STARTDATE, ''YYYY-MM-DD HH24:MI:SS''), to_date(:P73_ENDDATE, ''YYYY-MM-DD HH24:MI:SS''));',
'        ',
'end;',
'        '))
,p_attribute_02=>'P73_TITLE,P73_SESSION_TYPE,P73_STARTDATE,P73_ENDDATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788247301679878028)
,p_event_id=>wwv_flow_imp.id(788247044326878026)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4801881504537831083)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(788247334565878029)
,p_name=>'Event Data Changed: Show in Calendar'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P73_TITLE,P73_STARTDATE,P73_ENDDATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788247487390878030)
,p_event_id=>wwv_flow_imp.id(788247334565878029)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(788246440974878020)
,p_attribute_01=>'apex.event.trigger(this.affectedElements, "click");'
);
end;
/
prompt --application/pages/page_00074
begin
wwv_flow_imp_page.create_page(
 p_id=>74
,p_name=>'Schedule Builder'
,p_alias=>'SCHEDULE-BUILDER'
,p_step_title=>'Schedule Builder'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function formatYYYYMMDDhhmmss( pDate ) {',
'    var date = pDate || new Date();',
'',
'    return (',
'        ( "0000" + date.getFullYear() ).substr( -4 ) +',
'        "-" +',
'        ( "00" + ( date.getMonth() + 1 ) ).substr( -2 ) +',
'        "-" +',
'        ( "00" + date.getDate() ).substr( -2 ) +',
'        " " +',
'        ( "00" + date.getHours() ).substr( -2 ) +',
'        ":" +',
'        ( "00" + date.getMinutes() ).substr( -2 ) +',
'        ":" +',
'        ( "00" + date.getSeconds() ).substr( -2 )',
'    );',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(792090068321540613)
,p_plug_name=>'My Sessions'
,p_region_name=>'my_session_calendar'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'      when session_type = ''PERSONAL'' then ''apex-cal-red''',
'   end as css_class',
'from eba_demo_cal_mysessions',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function ( pOptions) {',
'    pOptions.titleFormat            = function( pDate ) { return "My Schedule" };',
'    pOptions.slotMinTime            = "08:00:00";',
'    pOptions.slotMaxTime            = "18:00:00";',
'    pOptions.dayHeaderFormat        = { weekday: ''short'', month: ''numeric'', day: ''numeric'' };',
'    pOptions.slotDuration           = "00:15:00";',
'    return pOptions;',
'}',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'calendar_views_and_navigation', 'week:list',
  'css_class', 'CSS_CLASS',
  'display_column', 'TITLE',
  'drag_and_drop', 'N',
  'end_date_column', 'END_DATE',
  'first_hour', '7',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'primary_key_column', 'ID',
  'show_time', 'Y',
  'show_tooltip', 'Y',
  'show_weekend', 'N',
  'start_date_column', 'START_DATE',
  'supplemental_information', '&ABSTRACT.',
  'time_format', '24')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(895010856879432924)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3114197562467612501)
,p_plug_name=>'Items Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5585761746724829362)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page demomstrates how to build a <i>schedule builder</i> using the Application Express Calendar Component. On the right side, you see a list of available sessions; on the left side is the personal schedule. Click an event on the right hand si'
||'de to copy to your schedule; clicking in the personal schedule deletes it. With the mouse and the text fields, additional events can be added to the personal schedule.</p>',
'<p>This example makes use of the <i>FullCalendar API</i> <b>EventObject / CalendarObject</b> and its methods <b>setProp</b>, <b>setDates</b> and <b>addEvent</b> (<a href="https://fullcalendar.io/docs/" target="_blank">FullCalendar Documentation</a>).'
||'</p>'))
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
 p_id=>wwv_flow_imp.id(5585762878534829368)
,p_plug_name=>'Sessions'
,p_region_name=>'session_calendar'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'      when session_type = ''PERSONAL'' then ''apex-cal-red''',
'   end as css_class',
'from eba_demo_cal_sessions',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function ( pOptions) {',
'    pOptions.titleFormat            = function( pDate ) { return "Conference Sessions" };',
'    pOptions.slotMinTime            = "08:00:00";',
'    pOptions.slotMaxTime            = "18:00:00";',
'    pOptions.dayHeaderFormat        = { weekday: ''short'', month: ''numeric'', day: ''numeric'' };',
'    pOptions.slotDuration           = "00:15:00";',
'    return pOptions;',
'}'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'calendar_views_and_navigation', 'week',
  'css_class', 'CSS_CLASS',
  'display_column', 'TITLE',
  'drag_and_drop', 'N',
  'end_date_column', 'END_DATE',
  'first_hour', '7',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'primary_key_column', 'ID',
  'show_time', 'Y',
  'show_tooltip', 'Y',
  'show_weekend', 'N',
  'start_date_column', 'START_DATE',
  'time_format', '24')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(796192138900736564)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3114197562467612501)
,p_button_name=>'SHOW_IN_CALENDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Show in Calendar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(796192529272736566)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3114197562467612501)
,p_button_name=>'SAVE_IN_DATABASE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Save to Database'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(796240130553345190)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3114197562467612501)
,p_button_name=>'CLEAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Clear Schedule'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(792090374776540616)
,p_name=>'P74_MY_SESSION_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(792090068321540613)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(796192959828736566)
,p_name=>'P74_TITLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3114197562467612501)
,p_item_default=>'My Session'
,p_prompt=>'Title'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(796193741572736574)
,p_name=>'P74_STARTDATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3114197562467612501)
,p_item_default=>'to_char(sysdate, ''YYYY-MM-DD'')||'' 09:00:00'''
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'From'
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(796194199166736575)
,p_name=>'P74_ENDDATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3114197562467612501)
,p_item_default=>'to_char(sysdate, ''YYYY-MM-DD'')||'' 11:00:00'''
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'To'
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(796199892221736622)
,p_name=>'Create Javascript Event'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(796192138900736564)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(796200425344736622)
,p_event_id=>wwv_flow_imp.id(796199892221736622)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var calendar = apex.region( "my_session_calendar" ).widget().data( "fullCalendar" );',
'var event = calendar.getEventById( "javascript-event-id" );',
'',
'if ( event ) {',
'    event.setProp( "title", $v( "P74_TITLE" ) );',
'    event.setDates( $v( "P74_STARTDATE" ), $v( "P74_ENDDATE" ), { allDay: false } );',
'} else {',
'    calendar.addEvent( {',
'        id: "javascript-event-id",',
'        description: ''this is a "client-only" event which is not stored in the database so far'',',
'        title: $v( "P74_TITLE" ),',
'        start: $v( "P74_STARTDATE" ),',
'        end: $v( "P74_ENDDATE" ),',
'        className: "apex-cal-red",',
'        backgroundColor: "rgba(255,0,0,0.75)",',
'        overlap: true,',
'        allDay: false',
'    } );',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(796194772472736607)
,p_name=>'Save Event to Database'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(796192529272736566)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(796195285873736611)
,p_event_id=>wwv_flow_imp.id(796194772472736607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    insert into eba_demo_cal_mysessions (id, title, status, session_type, speaker, start_date, end_date)',
'    values (to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX''), :P74_TITLE, ''ACTIVE'', ''PERSONAL'', '''', to_date(:P74_STARTDATE, ''YYYY-MM-DD HH24:MI:SS''), to_date(:P74_ENDDATE, ''YYYY-MM-DD HH24:MI:SS''));',
'        ',
'end;',
'        '))
,p_attribute_02=>'P74_TITLE,P74_STARTDATE,P74_ENDDATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(796195796866736616)
,p_event_id=>wwv_flow_imp.id(796194772472736607)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(792090068321540613)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(980688204430377893)
,p_event_id=>wwv_flow_imp.id(796194772472736607)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess("\u0022" + $v("P74_TITLE") + "\u0022 added.")'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(796196190966736616)
,p_name=>'Event Data Changed: Show in Calendar'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P74_TITLE,P74_STARTDATE,P74_ENDDATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(796196640214736619)
,p_event_id=>wwv_flow_imp.id(796196190966736616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(796192138900736564)
,p_attribute_01=>'apex.event.trigger(this.affectedElements, "click");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(792090198967540614)
,p_name=>'Event selected: Copy to "My Sessions"'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5585762878534829368)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_CSS_CALENDAR|REGION TYPE|apexcalendareventselect'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(792090637090540619)
,p_event_id=>wwv_flow_imp.id(792090198967540614)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P74_MY_SESSION_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.event.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(792090258583540615)
,p_event_id=>wwv_flow_imp.id(792090198967540614)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  insert into eba_demo_cal_mysessions (select * from eba_demo_cal_sessions where id = :P74_MY_SESSION_ID);',
'exception',
'  when dup_val_on_index then null;',
'end;    '))
,p_attribute_02=>'P74_MY_SESSION_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(792090600870540618)
,p_event_id=>wwv_flow_imp.id(792090198967540614)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(792090068321540613)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(792090787316540620)
,p_event_id=>wwv_flow_imp.id(792090198967540614)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess("\u0022" + this.data.event.title + "\u0022 added.")'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(792090905121540621)
,p_name=>'Delete Selected Event'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(792090068321540613)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.data && this.data.event.id != ''javascript-event-id''',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_CSS_CALENDAR|REGION TYPE|apexcalendareventselect'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(792091110287540623)
,p_event_id=>wwv_flow_imp.id(792090905121540621)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P74_MY_SESSION_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.event.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(792091130809540624)
,p_event_id=>wwv_flow_imp.id(792090905121540621)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  delete from  eba_demo_cal_mysessions where id = :P74_MY_SESSION_ID;',
'end;    '))
,p_attribute_02=>'P74_MY_SESSION_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(792091268009540625)
,p_event_id=>wwv_flow_imp.id(792090905121540621)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(792090068321540613)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(792091369093540626)
,p_event_id=>wwv_flow_imp.id(792090905121540621)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess("\u0022" + this.data.event.title + "\u0022 removed.")'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(792091518686540627)
,p_name=>'Date Range Selected'
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(792090068321540613)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_CSS_CALENDAR|REGION TYPE|apexcalendardateselect'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(792091586228540628)
,p_event_id=>wwv_flow_imp.id(792091518686540627)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P74_STARTDATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'formatYYYYMMDDhhmmss( this.data.dates.newStartDate )'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(792091652509540629)
,p_event_id=>wwv_flow_imp.id(792091518686540627)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P74_ENDDATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'formatYYYYMMDDhhmmss( this.data.dates.newEndDate )'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(792091793184540630)
,p_event_id=>wwv_flow_imp.id(792091518686540627)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(796192138900736564)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#P74_STARTDATE,#P74_ENDDATE")',
'         .animate({"background-color": "#FFEC8B"}, 300)',
'         .animate({"background-color": "white"},300)',
'    ;',
'',
'apex.event.trigger(this.affectedElements, "click");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(792092482961540637)
,p_name=>'Search Changed - Refresh'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P74_SEARCH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(792092556560540638)
,p_event_id=>wwv_flow_imp.id(792092482961540637)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5585762878534829368)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(796240301307345191)
,p_name=>'Clear Schedule'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(796240130553345190)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(796240419426345192)
,p_event_id=>wwv_flow_imp.id(796240301307345191)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Clear your schedule: Really?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(796240460227345193)
,p_event_id=>wwv_flow_imp.id(796240301307345191)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'delete from eba_demo_cal_mysessions;'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(796240546929345194)
,p_event_id=>wwv_flow_imp.id(796240301307345191)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(792090068321540613)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(796240688042345195)
,p_event_id=>wwv_flow_imp.id(796240301307345191)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess("Schedule cleared.")'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(796240990586345198)
,p_name=>'Change topic'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P74_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(796241041133345199)
,p_event_id=>wwv_flow_imp.id(796240990586345198)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5585762878534829368)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2101885676760027793)
,p_name=>'Sync "Conf Session" Scroll with "My Session" Scroll'
,p_event_sequence=>130
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#my_session_calendar .fc-scroller'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'scroll'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2101885774211027794)
,p_event_id=>wwv_flow_imp.id(2101885676760027793)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#session_calendar .fc-scroller").scrollTop($("#my_session_calendar .fc-scroller").scrollTop());'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(618977142298618451)
,p_name=>'Set Calendar AspectRatio'
,p_event_sequence=>140
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(618977254373618452)
,p_event_id=>wwv_flow_imp.id(618977142298618451)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("session_calendar").widget().data("fullCalendar").setOption("aspectRatio", 1.3);',
'apex.region("my_session_calendar").widget().data("fullCalendar").setOption("aspectRatio", 1.3);'))
);
end;
/
prompt --application/pages/page_00090
begin
wwv_flow_imp_page.create_page(
 p_id=>90
,p_name=>'Calendar Styling'
,p_alias=>'CALENDAR-STYLING'
,p_step_title=>'Calendar Styling'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(792089783457540610)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4991666396624875997)
,p_plug_name=>'Calendar Styling'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(792142473996102806)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
end;
/
prompt --application/pages/page_00091
begin
wwv_flow_imp_page.create_page(
 p_id=>91
,p_name=>'Week Calendar: Conference'
,p_alias=>'WEEK-CALENDAR-CONFERENCE2'
,p_step_title=>'Week Calendar: Conference'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.fc-event .fc-content div.fc-time { display: none;}',
'',
'.fc-event.my-cal-blue {',
'    background-color: lightblue;',
'    border: 0.5pt solid black;',
'    opacity: 0.7;',
'}',
'',
'.fc-event.my-cal-blue .fc-event-title {',
'    color: darkblue;',
'    font-weight: bold;',
'}',
'',
'.fc-event.my-cal-orange {',
'    background-color: orange;',
'    border: 0.5pt solid black;',
'    opacity: 0.7;',
'}',
'',
'.fc-event.my-cal-orange .fc-title {',
'    color: darkred;',
'    font-weight: bold;',
'}',
'',
'.fc-event.my-cal-dark-orange {',
'    background-color: #8B5A00;',
'    border: 0.5pt solid black;',
'    opacity: 0.7;',
'}',
'',
'.fc-event.my-cal-dark-orange .fc-title {',
'    color: white;',
'    font-weight: bold;',
'}',
'',
'.fc-event.my-cal-white {',
'    background-color: white;',
'    border: 0.5pt solid black;',
'    opacity: 0.7;',
'}',
'',
'.fc-event.my-cal-white .fc-title {',
'    color: black;',
'    font-weight: bold;',
'}',
'',
'.fc-event.my-cal-green {',
'    background-color: lightgreen;',
'    border: 0.5pt solid black;',
'    opacity: 0.7;',
'}',
'',
'.fc-event.my-cal-green .fc-title {',
'    color: darkgreen;',
'    font-weight: bold;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(792089243124540605)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3252822230589003278)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows custom styling of calendar events using own CSS classes. Define your CSS classes (e.g. in the page attribute <b>CSS - Inline</b>) and use them as the <b>CSS_CLASS</b> column in your SQL query. An example CSS class definition (setti'
||'ng a light-blue background with black border and a dark-blue, bold font) looks as follows.</p>',
'<pre>',
'.fc-event.my-cal-blue {',
'    background-color: lightblue;',
'    border: 0.5pt solid black;',
'    opacity: 0.7;',
'}',
'',
'.fc-event.my-cal-blue .fc-event-title {',
'    color: darkblue;',
'    font-weight: bold;',
'}',
'</pre>'))
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
 p_id=>wwv_flow_imp.id(3252823362399003284)
,p_plug_name=>'Sessions'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when session_type = ''BREAK''    then ''my-cal-green''',
'      when session_type = ''BUSINESS'' then ''my-cal-blue''',
'      when session_type = ''GENERAL''  then ''my-cal-white''',
'      when session_type = ''TECHNICAL'' then ''my-cal-orange''',
'      when session_type = ''HANDS_ON'' then ''my-cal-dark-orange''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE''',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function ( pOptions) {',
'    pOptions.slotMinTime      = "07:00:00";                               // hide slots before minTime',
'    pOptions.slotMaxTime      = "18:00:00";                               // hide slots after maxTime',
'    pOptions.slotDuration     = "00:15:00";                               // custom slot duration',
'    return pOptions;',
'}',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'calendar_views_and_navigation', 'week:day:list:navigation',
  'css_class', 'CSS_CLASS',
  'display_column', 'TITLE',
  'end_date_column', 'END_DATE',
  'first_hour', '9',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'show_time', 'Y',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'START_DATE',
  'time_format', '00')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(788339999394928099)
,p_name=>'Change Project - Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P91_PROJECTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788340498748928105)
,p_event_id=>wwv_flow_imp.id(788339999394928099)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3252823362399003284)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00092
begin
wwv_flow_imp_page.create_page(
 p_id=>92
,p_name=>'Week Calendar with Icons'
,p_alias=>'WEEK-CALENDAR-WITH-ICONS'
,p_step_title=>'Week Calendar with Icons'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.icon-left .fc-content .fc-title:before {',
'  font-family: FontAwesome;',
'  margin-right: 5px;',
'  float: left;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(792089388930540606)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4028857617705280044)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page displays <i>icons</i> with each calendar event, depending on the event type. This is being achieved by passing HTML code as the <b>title</b> column as follows.</p>',
'<pre>',
'select apex_escape.html( id ),',
'       <b>''&lt;span class="fa fa-flag&gt;&lt;/span&gt;'' || apex_escape.html( title )</b>,',
'       :',
'  from eba_demo_cal_sessions',
'</pre>',
'<p>Set the <b>Escape Special Characters</b> region attribute to <b>No</b> in order to prevent HTML code escaping. To avoid CSS vulnerabilities make sure to use <b>APEX_ESCAPE.HTML</b> in your SQL query for all columns.</p>'))
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
 p_id=>wwv_flow_imp.id(4028858749515280050)
,p_plug_name=>'Sessions'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   ''<span class="fa fa-'' ||',
'       case',
'          when status       = ''INACTIVE'' then  ''times-circle-o''',
'          when session_type = ''BREAK''    then  ''coffee''',
'          when session_type = ''BUSINESS'' then  ''money''',
'          when session_type = ''GENERAL''  then  ''users''',
'          when session_type = ''TECHNICAL'' then ''wrench''',
'          when session_type = ''HANDS_ON'' then ''laptop''',
'          else ''apex''',
'       end || '' fc fc-title" style="float: left;"></span>&nbsp;'' || apex_escape.html(title) as title,',
'   apex_escape.html(speaker) as speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE'' or :P33_SHOW_INACTIVE=''Y''',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function ( pOptions) {',
'    pOptions.slotMinTime      = "07:00:00";                               // hide slots before minTime',
'    pOptions.slotMaxTime      = "18:00:00";                               // hide slots after maxTime',
'    pOptions.slotDuration     = "00:15:00";                               // custom slot duration',
'    return pOptions;',
'}',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'calendar_views_and_navigation', 'week:day:list:navigation',
  'css_class', 'CSS_CLASS',
  'display_column', 'TITLE',
  'drag_and_drop', 'N',
  'end_date_column', 'END_DATE',
  'first_hour', '9',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'primary_key_column', 'ID',
  'show_time', 'Y',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'START_DATE',
  'supplemental_information', '&SPEAKER.',
  'time_format', '00')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(788346391811014966)
,p_name=>'Change Project - Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_PROJECTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(788346841669014967)
,p_event_id=>wwv_flow_imp.id(788346391811014966)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4028858749515280050)
,p_attribute_01=>'N'
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
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'U'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8203234846958693327)
,p_plug_name=>'Sample Calendar'
,p_region_name=>'sample_calendar'
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
 p_id=>wwv_flow_imp.id(3137244319607275846)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8203234846958693327)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8203234959561693331)
,p_name=>'P101_USERNAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8203234846958693327)
,p_prompt=>'Username'
,p_placeholder=>'username'
,p_post_element_text=>'<span class="t-Login-iconValidation a-Icon icon-check"></span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>100
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8203235059287693331)
,p_name=>'P101_PASSWORD'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8203234846958693327)
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
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3253695609816235606)
,p_name=>'Set Focus'
,p_event_sequence=>10
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'( $v( "P101_USERNAME" ) === "" )'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3253695931222235607)
,p_event_id=>wwv_flow_imp.id(3253695609816235606)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_USERNAME'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3253696111094235607)
,p_event_id=>wwv_flow_imp.id(3253695609816235606)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_PASSWORD'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8203235334473693333)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8193437375564634486
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8203235241377693332)
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
,p_internal_uid=>8193437282468634485
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8203235536297693333)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8193437577388634486
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8203235431979693333)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8193437473070634486
);
end;
/
prompt --application/pages/page_00110
begin
wwv_flow_imp_page.create_page(
 p_id=>110
,p_name=>'Custom Calendar Initialization'
,p_alias=>'CUSTOM-CALENDAR-INITIALIZATION'
,p_step_title=>'Custom Calendar Initialization'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(803318437491389320)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5049438600559057112)
,p_plug_name=>'Custom Calendar Initialization'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(849917758492309422)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
end;
/
prompt --application/pages/page_00111
begin
wwv_flow_imp_page.create_page(
 p_id=>111
,p_name=>'FullCalendar API initialization'
,p_alias=>'FULLCALENDAR-API-INITIALIZATION'
,p_step_title=>'FullCalendar API initialization'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(803318528854389321)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4863415563062768881)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This is a standard Oracle APEX calendar region component showing a <b>weekly</b> view on events with a time component. In this example the region attribute <b>Plugin Initialization Javascript</b> is being used to override the standard FullCalendar'
||' initialization attributes with custom values. The javascript function, provided by the developer, must accept an Object containing the calendar initialization attributes, as parameter. In the javascript code, modify that object as needed and return.'
||' The function will be called by the calendar component automatically.</p>',
'<pre>',
'function ( pOptions) {',
'    pOptions.titleFormat            = function( pDate ) { return "Conference Schedule" };       // custom title',
'    pOptions.slotMinTime            = "07:00:00";                                               // hide slots before minTime',
'    pOptions.slotMaxTime            = "21:00:00";                                               // hide slots after maxTime',
'    pOptions.dayHeaderFormat        = { weekday: ''short'', month: ''numeric'', day: ''numeric'' };   // week view column headings',
'    pOptions.slotDuration           = "00:15:00";                                               // custom slot duration',
'    pOptions.weekNumbers            = true;                                                     // show week numbers',
'    pOptions.weekText               = "CW";                                                     // heading for week numbers',
'    pOptions.weekNumberCalculation  = "ISO";                                                    // use "ISO" week numbers',
'    pOptions.displayEventTime       = true;                                                     // show event time ...',
'    pOptions.displayEventEnd        = false;                                                    // ... but not the end time',
'    pOptions.disableKeyboardSupport = true;                                                     // disable builtin keyboard navigation',
'    pOptions.windowResize           = null;                                                     // suppress automatic switch to list view on small screens',
'    return pOptions;',
'}',
'</pre>',
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4863416694872768887)
,p_plug_name=>'Sessions'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE''',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function ( pOptions) {',
'    pOptions.titleFormat            = function( pDate ) { return "Conference Schedule" };',
'    pOptions.slotMinTime            = "07:00:00";',
'    pOptions.slotMaxTime            = "21:00:00";',
'    pOptions.dayHeaderFormat        = { weekday: ''short'', month: ''numeric'', day: ''numeric'' };',
'    pOptions.slotDuration           = "00:15:00";',
'    pOptions.weekNumbers            = true;',
'    pOptions.weekText               = "CW";',
'    pOptions.weekNumberCalculation  = "ISO";',
'    pOptions.displayEventTime       = true;',
'    pOptions.displayEventEnd        = false;',
'    pOptions.disableKeyboardSupport = true;',
'    pOptions.windowResize           = null;',
'    return pOptions;',
'}',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'calendar_views_and_navigation', 'week:list',
  'css_class', 'CSS_CLASS',
  'display_column', 'TITLE',
  'end_date_column', 'END_DATE',
  'first_hour', '9',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'show_time', 'Y',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'START_DATE',
  'time_format', '00',
  'view_edit_link', 'f?p=&APP_ID.:301:&SESSION.::&DEBUG.:RP:P301_ID:&ID.')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(849905181519172196)
,p_name=>'Dialog Closed: Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4863416694872768887)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(849905690328172196)
,p_event_id=>wwv_flow_imp.id(849905181519172196)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4863416694872768887)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(849906081349172197)
,p_name=>'Change Show Inactive Sessions'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P111_SHOW_INACTIVE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(849906585238172197)
,p_event_id=>wwv_flow_imp.id(849906081349172197)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4863416694872768887)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00112
begin
wwv_flow_imp_page.create_page(
 p_id=>112
,p_name=>'Custom Drag & Drop Handlers'
,p_alias=>'CUSTOM-DRAG-DROP-HANDLERS'
,p_step_title=>'Custom Drag & Drop Handlers'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(822157004031873880)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8203235651002693333)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5744926360349409759)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This is a standard Oracle APEX calendar region component showing a <b>weekly</b> view on events with a time component. Using drag and drop, calendar events can be moved within the displayed week. In this example, dynamic actions are being executed'
||' to display messages based on drag and drop events. These advanced calendar events are not exposed in the builder, but can be accessed as a custom event type. When creating a dynamic action, choose <b>Custom</b> as the event type, <b>Region</b> as <b'
||'>Selection Type</b> the the calendar region as <b>Region</b>.</p>',
'<ul>',
'<li>The <b>apexcalendardragdropstart</b> event is being fired when the user starts dragging an event. The event data is being passed as the <b>data</b> attribute.</li>',
'<li>The <b>apexcalendardragdropfinish</b> event is being fired after the drag and drop PL/SQL code has been successfully executed on the server.</li>',
'<li>The <b>apexcalendardragdroperror</b> event is being fired when an error occurs on the server. The <b>data</b> attribute contains the server''s error message.</li>',
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
 p_id=>wwv_flow_imp.id(5744927492159409765)
,p_plug_name=>'Sessions'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE''',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function ( pOptions) {',
'    pOptions.titleFormat            = function( pDate ) { return "Conference Schedule" };',
'    pOptions.slotMinTime            = "07:00:00";',
'    pOptions.slotMaxTime            = "18:00:00";',
'    pOptions.dayHeaderFormat        = { weekday: ''short'', month: ''numeric'', day: ''numeric'' };',
'    pOptions.slotDuration           = "00:15:00";',
'    pOptions.weekNumbers            = true;',
'    pOptions.weekText               = "CW";',
'    pOptions.weekNumberCalculation  = "ISO";',
'    pOptions.eventStartEditable     = true;',
'    pOptions.disableKeyboardSupport = true;',
'    return pOptions;',
'}'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'calendar_views_and_navigation', 'week:list:navigation',
  'css_class', 'CSS_CLASS',
  'display_column', 'TITLE',
  'drag_and_drop', 'Y',
  'drag_and_drop_plsql_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'declare',
    '  l_title eba_demo_cal_sessions.title%type;',
    '  l_start varchar2(30);',
    'begin',
    '    update eba_demo_cal_sessions',
    '       set start_date = to_date(:APEX$NEW_START_DATE, ''YYYYMMDDHH24MISS''),',
    '           end_date = to_date(:APEX$NEW_END_DATE, ''YYYYMMDDHH24MISS'')',
    '     where id = :APEX$PK_VALUE',
    '     returning title, ltrim(to_char(start_date, ''Dy, HH24:MI'')) ',
    '     into l_title, l_start;',
    '     :P112_DRAGDROP_MSG := ''"'' || l_title || ''": now at '' || l_start ||''.'';',
    'end;')),
  'end_date_column', 'END_DATE',
  'first_hour', '9',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'primary_key_column', 'ID',
  'show_time', 'Y',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'START_DATE',
  'time_format', '00')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(948467513939192935)
,p_name=>'P112_DRAGDROP_MSG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5744927492159409765)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(948467068456192931)
,p_name=>'Begin Drag & Drop '
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5744927492159409765)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'apexcalendardragdropstart'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(948467224792192932)
,p_event_id=>wwv_flow_imp.id(948467068456192931)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess("moving \"" + this.data.title + "\" ...");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(948467242395192933)
,p_name=>'Finish Drag & Drop'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5744927492159409765)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'apexcalendardragdropfinish'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(948467341795192934)
,p_event_id=>wwv_flow_imp.id(948467242395192933)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P112_DRAGDROP_MSG'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'v( ''P112_DRAGDROP_MSG'' ) '
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(980687853668377890)
,p_event_id=>wwv_flow_imp.id(948467242395192933)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess( $v( "P112_DRAGDROP_MSG") );'
);
end;
/
prompt --application/pages/page_00301
begin
wwv_flow_imp_page.create_page(
 p_id=>301
,p_name=>'Edit Session'
,p_alias=>'EDIT-SESSION'
,p_page_mode=>'MODAL'
,p_step_title=>'Edit Session'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(785451201154380840)
,p_plug_name=>'Edit Session'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(785451898304380841)
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
 p_id=>wwv_flow_imp.id(785452308158380842)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(785451898304380841)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(785451775847380841)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(785451898304380841)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P301_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(785451725069380841)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(785451898304380841)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P301_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(785451573104380841)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(785451898304380841)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P301_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(785454688031380851)
,p_name=>'P301_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(785451201154380840)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(785455088938380885)
,p_name=>'P301_ROW_VERSION_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(785451201154380840)
,p_use_cache_before_default=>'NO'
,p_source=>'ROW_VERSION_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(785455373924380889)
,p_name=>'P301_TITLE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(785451201154380840)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Title'
,p_source=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(785455813057380889)
,p_name=>'P301_SESSION_TYPE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(785451201154380840)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Session Type'
,p_source=>'SESSION_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SESSION_TYPES'
,p_lov=>'.'||wwv_flow_imp.id(788163932279513196)||'.'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(785456170294380890)
,p_name=>'P301_SPEAKER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(785451201154380840)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Speaker'
,p_source=>'SPEAKER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(785456540167380890)
,p_name=>'P301_START_DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(785451201154380840)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date'
,p_format_mask=>'YYYY-MM-DD HH24:MI'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(785457012162380890)
,p_name=>'P301_END_DATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(785451201154380840)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date'
,p_format_mask=>'YYYY-MM-DD HH24:MI'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(785457383548380891)
,p_name=>'P301_STATUS'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(785451201154380840)
,p_use_cache_before_default=>'NO'
,p_item_default=>'ACTIVE'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'STATUS'
,p_lov=>'.'||wwv_flow_imp.id(332761733338626435)||'.'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(785452336659380842)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(785452308158380842)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(785453170507380845)
,p_event_id=>wwv_flow_imp.id(785452336659380842)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(778368721934231720)
,p_name=>'Change Session Type'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P301_SESSION_TYPE'
,p_condition_element=>'P301_SESSION_TYPE'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'BREAK'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(778368774702231721)
,p_event_id=>wwv_flow_imp.id(778368721934231720)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P301_SPEAKER'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(778368888422231722)
,p_event_id=>wwv_flow_imp.id(778368721934231720)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P301_SPEAKER'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(785458219656380897)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_DEMO_CAL_SESSIONS'
,p_attribute_02=>'EBA_DEMO_CAL_SESSIONS'
,p_attribute_03=>'P301_ID'
,p_attribute_04=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>775660260747322050
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(785458584350380898)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_DEMO_CAL_SESSIONS'
,p_attribute_02=>'EBA_DEMO_CAL_SESSIONS'
,p_attribute_03=>'P301_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>775660625441322051
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(785458952091380898)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(785451775847380841)
,p_internal_uid=>775660993182322051
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(785459399804380898)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>775661440895322051
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(2575266633949852551)
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
'DROP TABLE  "EBA_DEMO_CAL_PROJECTS" cascade constraints;',
'',
'drop table "EBA_DEMO_CAL_SESSIONS" cascade constraints;',
'',
'drop table "EBA_DEMO_CAL_MYSESSIONS" cascade constraints;',
'',
'',
'drop procedure EBA_DEMO_CAL_DATA;',
''))
,p_required_free_kb=>100
,p_required_sys_privs=>'CREATE PROCEDURE:CREATE TABLE:CREATE TRIGGER:CREATE VIEW'
,p_required_names_available=>'EBA_DEMO_CAL_DATA:EBA_DEMO_CAL_PROJECTS'
);
end;
/
prompt --application/deployment/install/install_set_plscope_settings
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(3352073017530934504)
,p_install_id=>wwv_flow_imp.id(2575266633949852551)
,p_name=>'Set plscope_settings'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>'ALTER SESSION SET PLSCOPE_SETTINGS = ''IDENTIFIERS:NONE'';'
);
end;
/
prompt --application/deployment/install/install_create_tables
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(2579188023203524298)
,p_install_id=>wwv_flow_imp.id(2575266633949852551)
,p_name=>'create tables'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE TABLE EBA_DEMO_CAL_PROJECTS',
'   (',
'    "ID" NUMBER, ',
'    row_version_number number,',
'    "PROJECT" VARCHAR2(30) not null, ',
'    "TASK_NAME" VARCHAR2(255) not null, ',
'    "START_DATE" DATE not null, ',
'    "END_DATE" DATE not null, ',
'    "STATUS" VARCHAR2(30) not null, ',
'    "ASSIGNED_TO" VARCHAR2(30), ',
'    "COST" NUMBER, ',
'    "BUDGET" NUMBER, ',
'     CONSTRAINT EBA_DEMO_CAL_PROJECTS_PK PRIMARY KEY ("ID") ENABLE',
'   ) ;',
'',
'CREATE OR REPLACE TRIGGER  BIU_EBA_DEMO_CAL_PROJECTS',
'   before insert or update on EBA_DEMO_CAL_PROJECTS',
'   for each row',
'begin',
'   if :new."ID" is null then',
'     select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') into :new.id from dual;',
'   end if;',
'   if inserting then',
'       :new.row_version_number := 1;',
'   elsif updating then',
'       :new.row_version_number := nvl(:old.row_version_number,1) + 1;',
'   end if;',
'   if :new.start_date > :new.end_date then',
'       RAISE_APPLICATION_ERROR(-20001, ''Error start date must be before end date'');',
'   end if;',
'end;',
'/',
'ALTER TRIGGER BIU_EBA_DEMO_CAL_PROJECTS ENABLE',
'/',
'',
'',
'CREATE TABLE EBA_DEMO_CAL_SESSIONS',
'   (',
'    "ID"                 NUMBER, ',
'    "ROW_VERSION_NUMBER" NUMBER,',
'    "TITLE"              VARCHAR2(50)  not null, ',
'    "SESSION_TYPE"       VARCHAR2(30)  not null,',
'    "SPEAKER"            VARCHAR2(255),',
'    "START_DATE"         DATE          not null, ',
'    "END_DATE"           DATE          not null, ',
'    "STATUS"             VARCHAR2(30)  not null, ',
'     CONSTRAINT EBA_DEMO_CAL_EVENTS_PK PRIMARY KEY ("ID") ENABLE',
'   ) ;',
'',
'CREATE OR REPLACE TRIGGER  BIU_EBA_DEMO_CAL_SESSIONS',
'   before insert or update on EBA_DEMO_CAL_SESSIONS',
'   for each row',
'begin',
'   if :new."ID" is null then',
'     select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') into :new.id from dual;',
'   end if;',
'   if inserting then',
'       :new.row_version_number := 1;',
'   elsif updating then',
'       :new.row_version_number := nvl(:old.row_version_number,1) + 1;',
'   end if;',
'   if :new.start_date > :new.end_date then',
'       RAISE_APPLICATION_ERROR(-20001, ''Error start date must be before end date'');',
'   end if;',
'end;',
'/',
'',
'',
'CREATE TABLE EBA_DEMO_CAL_MYSESSIONS',
'   (',
'    "ID"                 NUMBER, ',
'    "ROW_VERSION_NUMBER" NUMBER,',
'    "TITLE"              VARCHAR2(50)  not null, ',
'    "SESSION_TYPE"       VARCHAR2(30)  not null,',
'    "SPEAKER"            VARCHAR2(255),',
'    "START_DATE"         DATE          not null, ',
'    "END_DATE"           DATE          not null, ',
'    "STATUS"             VARCHAR2(30)  not null, ',
'     CONSTRAINT EBA_DEMO_CAL_MYEVENTS_PK PRIMARY KEY ("ID") ENABLE',
'   ) ;',
'',
'',
'',
''))
);
end;
/
prompt --application/deployment/install/install_insert_data
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(2579259408096529312)
,p_install_id=>wwv_flow_imp.id(2575266633949852551)
,p_name=>'insert data'
,p_sequence=>30
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace procedure EBA_DEMO_CAL_DATA as',
'begin',
'  delete from EBA_DEMO_CAL_PROJECTS;',
'  ',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Identify server requirements'',to_date(''12/20/2015'',''MM/DD/YYYY''),to_date(''12/21/2015'',''MM/DD/YYYY''),'''
||'Closed'',''John Watson'',''200'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Determine Web listener configuration(s)'',to_date(''12/22/2015'',''MM/DD/YYYY''),to_date(''12/22/2015'',''MM/'
||'DD/YYYY''),''Closed'',''James Cassidy'',''600'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Run installation'',to_date(''12/25/2015'',''MM/DD/YYYY''),to_date(''12/25/2015'',''MM/DD/YYYY''),''Closed'',''Jam'
||'es Cassidy'',''200'',''200'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Create pilot workspace'',to_date(''12/27/2015'',''MM/DD/YYYY''),to_date(''12/27/2015'',''MM/DD/YYYY''),''Closed'
||''',''John Watson'',''100'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Specify security authentication scheme(s)'',to_date(''01/01/2016'',''MM/DD/YYYY''),to_date(''01/01/2016'',''M'
||'M/DD/YYYY''),''Open'',''John Watson'',''200'',''300'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Configure Workspace provisioning'',to_date(''01/02/2016'',''MM/DD/YYYY''),to_date(''01/02/2016'',''MM/DD/YYYY'
||'''),''Open'',''John Watson'',''200'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Select servers for Development, Test, Production'',to_date(''01/05/2016'',''MM/DD/YYYY''),to_date(''01/07/2'
||'016'',''MM/DD/YYYY''),''Open'',''James Cassidy'',''200'',''600'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Bug Tracker'',''Document quality assurance procedures'',to_date(''11/05/2015'',''MM/DD/YYYY''),to_date(''11/08/2015'',''MM/DD/YYYY''),''Closed'',''M'
||'yra Sutcliff'',''3000'',''2000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Bug Tracker'',''Review automated testing tools'',to_date(''11/09/2015'',''MM/DD/YYYY''),to_date(''11/11/2015'',''MM/DD/YYYY''),''Closed'',''Myra Sut'
||'cliff'',''750'',''1500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Bug Tracker'',''Implement bug tracking software'',to_date(''11/24/2015'',''MM/DD/YYYY''),to_date(''11/24/2015'',''MM/DD/YYYY''),''Closed'',''Myra Su'
||'tcliff'',''100'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Bug Tracker'',''Train developers on tracking bugs'',to_date(''12/01/2015'',''MM/DD/YYYY''),to_date(''12/06/2015'',''MM/DD/YYYY''),''On-Hold'',''Myra'
||' Sutcliff'',''1000'',''2000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Bug Tracker'',''Measure effectiveness of improved QA'',to_date(''12/13/2015'',''MM/DD/YYYY''),to_date(''12/13/2015'',''MM/DD/YYYY''),''Pending'',''M'
||'yra Sutcliff'',''0'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Convert Spreadsheets'',''Collect mission-critical spreadsheets'',to_date(''12/19/2015'',''MM/DD/YYYY''),to_date(''12/20/2015'',''MM/DD/YYYY''),''C'
||'losed'',''Pam King'',''2500'',''4000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Convert Spreadsheets'',''Lock spreadsheets'',to_date(''12/22/2015'',''MM/DD/YYYY''),to_date(''12/22/2015'',''MM/DD/YYYY''),''Closed'',''Pam King'',''3'
||'00'',''800'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Convert Spreadsheets'',''Create ACME Web Express applications from spreadsheets'',to_date(''12/30/2015'',''MM/DD/YYYY''),to_date(''01/03/2016'''
||',''MM/DD/YYYY''),''Open'',''Pam King'',''6000'',''10000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Convert Spreadsheets'',''Send links to previous spreadsheet owners'',to_date(''01/05/2016'',''MM/DD/YYYY''),to_date(''01/05/2016'',''MM/DD/YYYY'''
||'),''Pending'',''Pam King'',''0'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Discussion Forum'',''Identify owners'',to_date(''11/25/2015'',''MM/DD/YYYY''),to_date(''11/25/2015'',''MM/DD/YYYY''),''Closed'',''Hank Davis'',''250'','
||'''300'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Discussion Forum'',''Install ACME Web Express application on internet server'',to_date(''12/01/2015'',''MM/DD/YYYY''),to_date(''12/01/2015'',''M'
||'M/DD/YYYY''),''Closed'',''Hank Davis'',''100'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Discussion Forum'',''Monitor participation'',to_date(''12/31/2015'',''MM/DD/YYYY''),to_date(''01/01/2016'',''MM/DD/YYYY''),''Open'',''Hank Davis'',''4'
||'50'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Email Integration'',''Complete plan'',to_date(''12/12/2015'',''MM/DD/YYYY''),to_date(''12/13/2015'',''MM/DD/YYYY''),''Closed'',''Bob Nile'',''3000'',''1'
||'500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Email Integration'',''Check software licenses'',to_date(''12/15/2015'',''MM/DD/YYYY''),to_date(''12/15/2015'',''MM/DD/YYYY''),''Closed'',''Bob Nile'''
||',''200'',''200'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Email Integration'',''Get RFPs for new server'',to_date(''12/29/2015'',''MM/DD/YYYY''),to_date(''12/30/2015'',''MM/DD/YYYY''),''Closed'',''Bob Nile'''
||',''2000'',''1000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Email Integration'',''Purchase backup server'',to_date(''01/15/2016'',''MM/DD/YYYY''),to_date(''01/17/2016'',''MM/DD/YYYY''),''Pending'',''Bob Nile'''
||',''0'',''3000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Employee Satisfaction Survey'',''Complete questionnaire'',to_date(''12/05/2015'',''MM/DD/YYYY''),to_date(''12/06/2015'',''MM/DD/YYYY''),''Closed'','
||'''Irene Jones'',''1200'',''800'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Employee Satisfaction Survey'',''Review with legal'',to_date(''12/07/2015'',''MM/DD/YYYY''),to_date(''12/07/2015'',''MM/DD/YYYY''),''On-Hold'',''Ire'
||'ne Jones'',''200'',''400'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Employee Satisfaction Survey'',''Plan rollout schedule'',to_date(''12/08/2015'',''MM/DD/YYYY''),to_date(''12/08/2015'',''MM/DD/YYYY''),''On-Hold'','
||'''Irene Jones'',''0'',''750'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Identify pilot Client Server applications'',to_date(''12/17/2015'',''MM/DD/YYYY''),to_date(''12/17/2015'',''MM/DD/Y'
||'YYY''),''Closed'',''Scott Spencer'',''200'',''200'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Migrate pilot Client Server to ACME Web Express'',to_date(''12/19/2015'',''MM/DD/YYYY''),to_date(''12/22/2015'',''M'
||'M/DD/YYYY''),''Closed'',''Scott Spencer'',''4500'',''5000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Post-migration review'',to_date(''12/23/2015'',''MM/DD/YYYY''),to_date(''12/23/2015'',''MM/DD/YYYY''),''Closed'',''Pam '
||'King'',''500'',''300'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Plan migration schedule'',to_date(''12/26/2015'',''MM/DD/YYYY''),to_date(''12/26/2015'',''MM/DD/YYYY''),''Closed'',''Pa'
||'m King'',''1000'',''1000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Migrate Client Server applications'',to_date(''12/31/2015'',''MM/DD/YYYY''),to_date(''01/03/2016'',''MM/DD/YYYY''),'''
||'Open'',''Pam King'',''300'',''12000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Test migrated applications'',to_date(''01/05/2016'',''MM/DD/YYYY''),to_date(''01/06/2016'',''MM/DD/YYYY''),''Pending'''
||',''Russ Saunders'',''0'',''6000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''User acceptance testing'',to_date(''01/09/2016'',''MM/DD/YYYY''),to_date(''01/11/2016'',''MM/DD/YYYY''),''Pending'',''R'
||'uss Saunders'',''0'',''2500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''End-user Training'',to_date(''01/15/2016'',''MM/DD/YYYY''),to_date(''01/15/2016'',''MM/DD/YYYY''),''Pending'',''Myra Su'
||'tcliff'',''0'',''2500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Rollout migrated Client Server in ACME Web Express'',to_date(''01/16/2016'',''MM/DD/YYYY''),to_date(''01/16/2016'''
||',''MM/DD/YYYY''),''Pending'',''Pam King'',''0'',''200'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Load Packaged Apps'',''Identify point solutions required'',to_date(''12/19/2015'',''MM/DD/YYYY''),to_date(''12/19/2015'',''MM/DD/YYYY''),''Closed'''
||',''John Watson'',''200'',''300'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Load Packaged Apps'',''Install in development'',to_date(''12/20/2015'',''MM/DD/YYYY''),to_date(''12/20/2015'',''MM/DD/YYYY''),''Closed'',''John Wats'
||'on'',''100'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Load Packaged Apps'',''Customize solutions'',to_date(''12/23/2015'',''MM/DD/YYYY''),to_date(''12/25/2015'',''MM/DD/YYYY''),''Open'',''John Watson'','''
||'1500'',''4000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Load Packaged Apps'',''Implement in Production'',to_date(''12/26/2015'',''MM/DD/YYYY''),to_date(''12/26/2015'',''MM/DD/YYYY''),''On-Hold'',''John Wa'
||'tson'',''200'',''1500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Load Packaged Apps'',''Train Administrators of Packaged Apps'',to_date(''12/28/2015'',''MM/DD/YYYY''),to_date(''12/28/2015'',''MM/DD/YYYY''),''Pen'
||'ding'',''John Watson'',''0'',''1000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Maintain Support Systems'',''HR software upgrades'',to_date(''11/28/2015'',''MM/DD/YYYY''),to_date(''12/01/2015'',''MM/DD/YYYY''),''Closed'',''Pam K'
||'ing'',''8000'',''7000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Maintain Support Systems'',''Apply Billing System updates'',to_date(''12/02/2015'',''MM/DD/YYYY''),to_date(''12/04/2015'',''MM/DD/YYYY''),''Closed'
||''',''Russ Saunders'',''9500'',''7000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Maintain Support Systems'',''Arrange for vacation coverage'',to_date(''12/06/2015'',''MM/DD/YYYY''),to_date(''12/06/2015'',''MM/DD/YYYY''),''Open'''
||',''Al Bines'',''300'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Maintain Support Systems'',''Investigate new Virus Protection software'',to_date(''01/15/2016'',''MM/DD/YYYY''),to_date(''01/16/2016'',''MM/DD/Y'
||'YYY''),''Open'',''Pam King'',''1700'',''1500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''Identify pilot desktop applications'',to_date(''12/10/2015'',''MM/DD/YYYY''),to_date(''12/10/2015'',''MM/DD/YYYY'
||'''),''Closed'',''Bob Nile'',''300'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''Migrate pilot applications to ACME Web Express'',to_date(''12/12/2015'',''MM/DD/YYYY''),to_date(''12/13/2015'','
||'''MM/DD/YYYY''),''Closed'',''Bob Nile'',''1250'',''1500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''Plan migration schedule'',to_date(''12/16/2015'',''MM/DD/YYYY''),to_date(''12/16/2015'',''MM/DD/YYYY''),''Closed'','
||'''Bob Nile'',''600'',''200'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''Migrate desktop applications'',to_date(''01/08/2016'',''MM/DD/YYYY''),to_date(''01/12/2016'',''MM/DD/YYYY''),''Ope'
||'n'',''Bob Nile'',''1000'',''8000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''User acceptance testing'',to_date(''01/14/2016'',''MM/DD/YYYY''),to_date(''01/15/2016'',''MM/DD/YYYY''),''Open'',''B'
||'ob Nile'',''1500'',''6000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''End-user Training'',to_date(''01/18/2016'',''MM/DD/YYYY''),to_date(''01/19/2016'',''MM/DD/YYYY''),''Open'',''John Wa'
||'tson'',''0'',''2000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''Post-migration review'',to_date(''02/01/2016'',''MM/DD/YYYY''),to_date(''02/02/2016'',''MM/DD/YYYY''),''Pending'','''
||'Bob Nile'',''100'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Obtain Legacy Server credentials'',to_date(''01/20/2016'',''MM/DD/YYYY''),to_date(''01/20/2016'',''MM/DD/YYYY''),'''
||'Pending'',''James Cassidy'',''0'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Map data usage'',to_date(''01/22/2016'',''MM/DD/YYYY''),to_date(''01/24/2016'',''MM/DD/YYYY''),''Pending'',''Bob Nile'
||''',''0'',''8000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Identify integration points'',to_date(''01/25/2016'',''MM/DD/YYYY''),to_date(''01/26/2016'',''MM/DD/YYYY''),''Pendi'
||'ng'',''Bob Nile'',''0'',''2000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Create DB Connection to new server'',to_date(''01/25/2016'',''MM/DD/YYYY''),to_date(''01/25/2016'',''MM/DD/YYYY'')'
||',''Pending'',''Scott Spencer'',''0'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Migrate table structures'',to_date(''01/19/2016'',''MM/DD/YYYY''),to_date(''01/20/2016'',''MM/DD/YYYY''),''Pending'''
||',''John Watson'',''0'',''2500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Import data'',to_date(''01/31/2016'',''MM/DD/YYYY''),to_date(''02/01/2016'',''MM/DD/YYYY''),''Pending'',''John Watson'
||''',''0'',''1000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Convert processes'',to_date(''01/31/2016'',''MM/DD/YYYY''),to_date(''02/02/2016'',''MM/DD/YYYY''),''Pending'',''Pam K'
||'ing'',''0'',''3000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Notify users'',to_date(''02/05/2016'',''MM/DD/YYYY''),to_date(''02/05/2016'',''MM/DD/YYYY''),''Pending'',''Bob Nile'','
||'''0'',''200'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Cut over to new database'',to_date(''02/06/2016'',''MM/DD/YYYY''),to_date(''02/06/2016'',''MM/DD/YYYY''),''Pending'''
||',''Bob Nile'',''0'',''1500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Decommission Legacy Server'',to_date(''02/20/2016'',''MM/DD/YYYY''),to_date(''02/20/2016'',''MM/DD/YYYY''),''Pendin'
||'g'',''Al Bines'',''0'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Public Website'',''Determine host server'',to_date(''12/05/2015'',''MM/DD/YYYY''),to_date(''12/05/2015'',''MM/DD/YYYY''),''Closed'',''Tiger Scott'','''
||'200'',''200'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Public Website'',''Check software licenses'',to_date(''12/05/2015'',''MM/DD/YYYY''),to_date(''12/05/2015'',''MM/DD/YYYY''),''Closed'',''Tom Suess'','''
||'100'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Public Website'',''Purchase additional software licenses, if needed'',to_date(''12/06/2015'',''MM/DD/YYYY''),to_date(''12/07/2015'',''MM/DD/YYYY'
||'''),''On-Hold'',''Al Bines'',''300'',''1000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Public Website'',''Develop web pages'',to_date(''01/01/2016'',''MM/DD/YYYY''),to_date(''01/02/2016'',''MM/DD/YYYY''),''Open'',''Tiger Scott'',''0'',''20'
||'00'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Public Website'',''Plan rollout schedule'',to_date(''01/03/2016'',''MM/DD/YYYY''),to_date(''01/03/2016'',''MM/DD/YYYY''),''Open'',''Tom Suess'',''0'','''
||'100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Software Project Tracking'',''Conduct project kickoff meeting'',to_date(''12/28/2015'',''MM/DD/YYYY''),to_date(''12/28/2015'',''MM/DD/YYYY''),''Cl'
||'osed'',''Pam King'',''100'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Software Project Tracking'',''Customize Software Projects software'',to_date(''12/31/2015'',''MM/DD/YYYY''),to_date(''01/01/2016'',''MM/DD/YYYY'''
||'),''Open'',''Tom Suess'',''600'',''1000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Software Project Tracking'',''Enter base data (Projects, Milestones, etc.)'',to_date(''01/02/2016'',''MM/DD/YYYY''),to_date(''01/02/2016'',''MM/'
||'DD/YYYY''),''Open'',''Tom Suess'',''200'',''200'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Software Project Tracking'',''Load current tasks and enhancements'',to_date(''01/04/2016'',''MM/DD/YYYY''),to_date(''01/04/2016'',''MM/DD/YYYY'')'
||',''Open'',''Tom Suess'',''400'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Training for ACME Web Express'',''Create training workspace'',to_date(''12/17/2015'',''MM/DD/YYYY''),to_date(''12/18/2015'',''MM/DD/YYYY''),''Clos'
||'ed'',''James Cassidy'',''500'',''700'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Training for ACME Web Express'',''Publish links to self-study courses'',to_date(''12/19/2015'',''MM/DD/YYYY''),to_date(''12/19/2015'',''MM/DD/YY'
||'YY''),''Closed'',''John Watson'',''100'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Training for ACME Web Express'',''Publish development standards'',to_date(''12/19/2015'',''MM/DD/YYYY''),to_date(''12/20/2015'',''MM/DD/YYYY''),'''
||'On-Hold'',''John Watson'',''1000'',''2000'');',
'  ',
'  update eba_demo_cal_projects',
'  set start_date = start_date + (SYSDATE - TO_DATE(''01012016'',''MMDDYYYY''))',
'  ,   end_date = end_date + (SYSDATE - TO_DATE(''01012016'',''MMDDYYYY''));',
'  ',
'  delete from eba_demo_cal_sessions;',
'',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Keynote'',                             ''GENERAL'',   ''Irene Jones'',   to_date(''20160101100000'',''YYYYMMDDHH24MISS''),to_date(''20160101110000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Current Product Overview'',            ''GENERAL'',   ''Scott Spencer'', to_date(''20160101110000'',''YYYYMMDDHH24MISS''),to_date(''20160101120000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Lunch'',                               ''BREAK'',     null,            to_date(''20160101120000'',''YYYYMMDDHH24MISS''),to_date(''20160101133000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''New Features Overview'',               ''GENERAL'',   ''John  Watson'',  to_date(''20160101133000'',''YYYYMMDDHH24MISS''),to_date(''20160101143000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Planned / Upcoming Features'',         ''GENERAL'',   ''Scott Spencer'', to_date(''20160101143000'',''YYYYMMDDHH24MISS''),to_date(''20160101153000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Coffe Break'',                         ''BREAK'',     null,            to_date(''20160101153000'',''YYYYMMDDHH24MISS''),to_date(''20160101154500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Ask the Experts'',                     ''GENERAL'',   ''John Watson'',   to_date(''20160101154500'',''YYYYMMDDHH24MISS''),to_date(''20160101170000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Open Mic Night'',                      ''GENERAL'',   null,            to_date(''20160101190000'',''YYYYMMDDHH24MISS''),to_date(''20160101214500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'                 ',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Networking Breakfast'',                ''BREAK'',     null,            to_date(''20160102073000'',''YYYYMMDDHH24MISS''),to_date(''20160102084500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Technical Overview'',                  ''TECHNICAL'', ''Tom Suess'',     to_date(''20160102084500'',''YYYYMMDDHH24MISS''),to_date(''20160102094500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Common Use Cases'',                    ''BUSINESS'',  ''Russ Saunders'', to_date(''20160102084500'',''YYYYMMDDHH24MISS''),to_date(''20160102094500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Building your first Web application'', ''HANDS_ON'',  ''Pam King'',      to_date(''20160102090000'',''YYYYMMDDHH24MISS''),to_date(''20160102110000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Installation Tips and Tricks'',        ''TECHNICAL'', ''Hank Davis'',    to_date(''20160102094500'',''YYYYMMDDHH24MISS''),to_date(''20160102104500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Success Stories'',                     ''BUSINESS'',  ''Russ Saunders'', to_date(''20160102094500'',''YYYYMMDDHH24MISS''),to_date(''20160102104500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Coffee Break'',                        ''BREAK'',     null,            to_date(''20160102104500'',''YYYYMMDDHH24MISS''),to_date(''20160102110000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Expanding with Plug-Ins'',             ''TECHNICAL'', ''Bob Nile'',      to_date(''20160102110000'',''YYYYMMDDHH24MISS''),to_date(''20160102120000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Differentiated Data Reporting'',       ''BUSINESS'',  ''Hank Davis'',    to_date(''20160102110000'',''YYYYMMDDHH24MISS''),to_date(''20160102120000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Lunch'',                               ''BREAK'',     null,            to_date(''20160102120000'',''YYYYMMDDHH24MISS''),to_date(''20160102133000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Integrating External Frameworks'',     ''TECHNICAL'', ''Bob Nile'',      to_date(''20160102133000'',''YYYYMMDDHH24MISS''),to_date(''20160102144500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''From Zero to Hero for the Noob'',      ''TECHNICAL'', ''Myra Sutcliff'', to_date(''20160102133000'',''YYYYMMDDHH24MISS''),to_date(''20160102144500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Mobilizng Apps'',                      ''HANDS_ON'',  ''Pam King'',      to_date(''20160102133000'',''YYYYMMDDHH24MISS''),to_date(''20160102144500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Coffee Break'',                        ''BREAK'',     null,            to_date(''20160102144500'',''YYYYMMDDHH24MISS''),to_date(''20160102150000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Client-Side Interactivity'',           ''TECHNICAL'', ''Al Bines'',      to_date(''20160102150000'',''YYYYMMDDHH24MISS''),to_date(''20160102160000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Showing ROI on your investment'',      ''BUSINESS'',  ''Hank Davis'',    to_date(''20160102150000'',''YYYYMMDDHH24MISS''),to_date(''20160102160000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Server-Side Logic Utilization'',       ''TECHNICAL'', ''Myra Sutcliff'', to_date(''20160102160000'',''YYYYMMDDHH24MISS''),to_date(''20160102170000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Upselling to C-Level Executives'',     ''BUSINESS'',  ''Irene Jones'',   to_date(''20160102160000'',''YYYYMMDDHH24MISS''),to_date(''20160102170000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Appreciation Event'',                  ''BREAK'',     null,            to_date(''20160102190000'',''YYYYMMDDHH24MISS''),to_date(''20160102223000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  ',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Networking Breakfast'',                ''BREAK'',     null,            to_date(''20160103073000'',''YYYYMMDDHH24MISS''),to_date(''20160103084500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Upgrading your Apps'',                 ''TECHNICAL'', ''James Cassidy'', to_date(''20160103084500'',''YYYYMMDDHH24MISS''),to_date(''20160103094500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Redevloping Legacy Apps'',             ''BUSINESS'',  ''John Watson'',   to_date(''20160103084500'',''YYYYMMDDHH24MISS''),to_date(''20160103094500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Building an Advanced App'',            ''HANDS_ON'',  ''Pam King'',      to_date(''20160103090000'',''YYYYMMDDHH24MISS''),to_date(''20160103110000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Application Globalization'',           ''TECHNICAL'', ''Tom Suess'',     to_date(''20160103094500'',''YYYYMMDDHH24MISS''),to_date(''20160103104500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''The importance of UX and UI'',         ''BUSINESS'',  ''Russ Saunders'', to_date(''20160103094500'',''YYYYMMDDHH24MISS''),to_date(''20160103104500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Coffee Break'',                        ''BREAK'',     null,            to_date(''20160103104500'',''YYYYMMDDHH24MISS''),to_date(''20160103'))
);
wwv_flow_imp_shared.append_to_install_script(
 p_id=>wwv_flow_imp.id(2579259408096529312)
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'110000'',''YYYYMMDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Enhancing Usability'',                 ''TECHNICAL'', ''James Cassidy'', to_date(''20160103110000'',''YYYYMMDDHH24MISS''),to_date(''20160103120000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Why is Accessibility Important?'',     ''BUSINESS'',  ''Scott Spencer'', to_date(''20160103110000'',''YYYYMMDDHH24MISS''),to_date(''20160103120000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Lunch'',                               ''BREAK'',     null,            to_date(''20160103120000'',''YYYYMMDDHH24MISS''),to_date(''20160103133000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Vendor Presnetations'',                ''GENERAL'',   null,            to_date(''20160103133000'',''YYYYMMDDHH24MISS''),to_date(''20160103144500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Coffee Break'',                        ''BREAK'',     null,            to_date(''20160103144500'',''YYYYMMDDHH24MISS''),to_date(''20160103150000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Testing Applications'',                ''TECHNICAL'', ''Al Bines'',      to_date(''20160103150000'',''YYYYMMDDHH24MISS''),to_date(''20160103160000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''The Power of Citizen Developers'',     ''BUSINESS'',  ''Myra Sutcliff'', to_date(''20160103150000'',''YYYYMMDDHH24MISS''),to_date(''20160103160000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Upgrading to the Latest Version'',     ''HANDS_ON'',  ''Pam King'',      to_date(''20160103150000'',''YYYYMMDDHH24MISS''),to_date(''20160103160000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Deploying Applications'',              ''TECHNICAL'', ''Hank Davis'',    to_date(''20160103160000'',''YYYYMMDDHH24MISS''),to_date(''20160103170000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Managing Agile Development Projects'', ''BUSINESS'',  ''Bob Nile'',      to_date(''20160103160000'',''YYYYMMDDHH24MISS''),to_date(''20160103170000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Wowing End Users Easily'',             ''HANDS_ON'',  ''Pam King'',      to_date(''20160103160000'',''YYYYMMDDHH24MISS''),to_date(''20160103170000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  ',
'  update eba_demo_cal_sessions',
'  set start_date = start_date + (trunc(SYSDATE) - TO_DATE(''01012016'',''MMDDYYYY''))',
'  ,   end_date = end_date + (trunc(SYSDATE) - TO_DATE(''01012016'',''MMDDYYYY''));',
'  ',
'  delete from eba_demo_cal_mysessions;',
'',
'end EBA_DEMO_CAL_DATA;',
'/',
'show errors',
'',
'begin',
'  EBA_DEMO_CAL_DATA;',
'  commit;',
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
