--------------------------------------------------------------------------------
-- Name: Sample Reporting
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
,p_default_application_id=>7810
,p_default_id_offset=>12430109862705502
,p_default_owner=>'ORACLE'
);
end;
/
 
prompt APPLICATION 7810 - Sample Reporting
--
-- Application Export:
--   Application:     7810
--   Name:            Sample Reporting
--   Exported By:     ORACLE
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     42
--       Items:                   32
--       Processes:               12
--       Regions:                210
--       Buttons:                 34
--       Dynamic Actions:         10
--     Shared Components:
--       Logic:
--         Processes:              1
--       Navigation:
--         Lists:                 11
--         Breadcrumbs:            1
--           Entries:             40
--         NavBar Entries:         3
--       Security:
--         Authentication:         1
--       User Interface:
--         Themes:                 1
--         Templates:
--           Region:               1
--           Report:               2
--         LOVs:                   3
--         Shortcuts:              1
--         Plug-ins:               2
--       PWA:
--       Globalization:
--         Messages:               4
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--       Install scripts:         11
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
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Sample Reporting')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'SAMPLE-REPORTING')
,p_application_group=>wwv_flow_imp.id(4851185638549144)
,p_application_group_name=>'Sample Apps'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'42E50F302367D1E2E016C8B34E273DF9FD76F2CF944B1C5720CF66E1B7A610BC'
,p_checksum_salt_last_reset=>'19990804000000'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>wwv_flow_string.join(wwv_flow_t_varchar2(
'1.0.7 -> 1.0.8: Added "SQL Source" show/hide region to all pages.',
'1.0.9 -> 1.0.10: Changed Authentication scheme to use new "ORA_WWV_PACKAGED_APPLICATIONS" cookie',
'1.0.11 -> 1.0.12: Added page 27 "Use Cases - String Functions" and associated list entry to use cases list on page 9.'))
,p_authentication_id=>wwv_flow_imp.id(6284506106555162472)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Sample Reporting'
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
,p_substitution_value_01=>'Sample Reporting'
,p_substitution_string_02=>'GETTING_STARTED_URL'
,p_substitution_value_02=>'http://www.oracle.com/technetwork/developer-tools/apex/index.html'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>10
,p_version_scn=>187822509
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
 p_id=>wwv_flow_imp.id(7810)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:10:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_navigation_list_id=>wwv_flow_imp.id(1584600162615908884)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_css_file_urls=>'#IMAGE_PREFIX#pkgapp_ui/css/5.0#MIN#.css'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(1584808514774007521)
,p_nav_bar_list_template_id=>2847543055748234966
);
end;
/
prompt --application/shared_components/navigation/lists/ig_report_linking_examples
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1043820299361618799)
,p_name=>'IG Report Linking Examples'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078416
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1043820422352618800)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Clearing report settings'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:CR:::'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1043820899639618801)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Resetting to Developer Defaults'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:RR:::'
,p_list_item_icon=>'fa-refresh'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1043821237769618801)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Invoking a Saved Report'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&SESSION.:IG_Status:&DEBUG.:RR:::'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1043822027299618801)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Filtering Report for budgets greater than 5000'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:18,RR:IGGT_BUDGET:5000:'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1043893933309332845)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Linking to a Saved Report'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.:IG[projects_report]_Costings:&DEBUG.:CR:IGGT_BUDGET:6000:'
,p_list_item_icon=>'fa-link'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/report_use_cases
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1311899585662635546)
,p_name=>'Report Use Cases'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078416
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2894426713209388385)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Drill Down to Interactive Report'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-level-down'
,p_list_text_01=>'Includes drill down links from one interactive report to another.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1044481373597483964)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Drill Down to Interactive Grid'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-level-down'
,p_list_text_01=>'Includes drill down links from one interactive grid to another.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2894431503708407995)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Report Highlighting'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-lightbulb-o'
,p_list_text_01=>'Shows how to use the built in row and column highlighting capabilities of Interactive Reports.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2894295708673647014)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Interactive Report Query API'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-terminal'
,p_list_text_01=>'This example shows how to call an Oracle APEX runtime API to get the SQL statement that corresponds to the current user''s interactive report filters and use this to drive a chart on another page.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2894659700294692330)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Linking to Interactive Reports'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-chain'
,p_list_text_01=>'Shows how to link to an interactive report, including syntax to clear settings, reset settings, call named reports, pass filters, etc.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1043844435255681613)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Linking to Interactive Grids'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-chain'
,p_list_text_01=>'Shows how to link to an interactive grid, including syntax to clear settings, reset settings, call named reports, pass filters, etc.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2915025819635379066)
,p_list_item_display_sequence=>55
,p_list_item_link_text=>'Bind Variables'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:RP,15:::'
,p_list_item_icon=>'fa-wrench'
,p_list_text_01=>'Shows how to filter an interactive report using a bind variable which derives its value from an Oracle APEX page item.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1311900380168635549)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Filtering'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-filter'
,p_list_text_01=>'Filter classic report results using a left hand side-bar control region.  Uses bind variable references to properly constrain the report.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1311920458048055526)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Non-Tabular Templates'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>'Classic reports are template based, Interactive Reports are not.  This example demonstrates the use of a classic report template.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2894737342634030423)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Column Format Masks'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-columns'
,p_list_text_01=>'See various formatting options for dates, numbers, and percent bar charts which are available from within classic and interactive reports.  This example uses an interactive report but the format masks are common between interactive reports and classi'
||'c reports.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2894737941883030423)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Custom Buttons'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-external-link'
,p_list_text_01=>'An example of how to turn report cells into buttons via CSS.  This example uses an interactive report.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2894776128634208903)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Reporting from Oracle APEX Collections'
,p_list_item_link_target=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:RP,38:::'
,p_list_item_icon=>'fa-paste'
,p_list_text_01=>'Demonstrates the technique of building reports based upon Oracle APEX collections.  This allows for result sets to be manipulated and cached before being reporting on.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/report_linking_examples
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1312124974607927177)
,p_name=>'Report Linking Examples'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078416
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312125159941927181)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Clearing report settings'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:CR:::'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312125486094927181)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Resetting to Developer Defaults'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RR:::'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312125760791927181)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Invoking a Saved Report'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.:IR_status:&DEBUG.:RR:::'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312126087428927181)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Resetting Pagination'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&APP_SESSION.:::RP'
,p_list_text_02=>'reportIcon'
,p_list_item_current_for_pages=>'f?p=&APP_ID.:18:&APP_SESSION.:::RP'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312126683207931507)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Filtering Report for budgets greater than 5000'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:18,RR:IRGT_BUDGET:5000:'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/sql_examples
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1312129274749012415)
,p_name=>'SQL Examples'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078416
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312130057025012420)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'CASE Statements'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RP:::'
,p_list_text_01=>'Highlights the Oracle CASE statement which can be used to perform IF-THEN-ELSE logic in queries.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312211258595505067)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Connect By'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Demonstrates a hierarchy query using connect by and the sys connect by path.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312129465162012415)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Pivot'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Highlights the use of the PIVOT operator. This operator takes data in separate rows, aggregates it, and converts it into columns. '
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312221963506563598)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Regular Expressions'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Regular expressions enable you to search for patterns in string data by using standardized syntax conventions.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312256264356110211)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Soundex'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'This function lets you compare words that are spelled differently, but sound alike in English.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312218376890542194)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'String Functions'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:27:P27_FUNCTION:SUBSTR:'
,p_list_text_01=>'Examples of substr, instr, nvl, nvl2, coalesce, replace, and trim SQL functions.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312130368308012420)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Group By'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP:::'
,p_list_text_01=>'The GROUP BY clause allows a developer to use SQL aggregate functions (AVG, COUNT, MAX, MIN, STDDEV, SUM and VARIANCE).'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312130688625012420)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Inline Views'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Inline views are commonly used to simplify complex queries by removing join operations.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312223958939589762)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Pipelined Functions'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Pipelined functions provide the ability to reference the data returned by a PL/SQL process as a table in a SQL statement.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/oracle_apex_advanced_techniques
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1312197087822385252)
,p_name=>'Oracle APEX Advanced Techniques'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078416
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312197285233385252)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'10. Reporting from Oracle APEX Collections'
,p_list_item_link_target=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:RP,38:::'
,p_list_text_01=>'Demonstrates the technique of building reports based upon Oracle APEX collections.  This allows for result sets to be manipulated and cached before being reporting on.'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/string_functions
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1312261657666199752)
,p_name=>'String Functions'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078416
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312261865677199752)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'substr()'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.::P27_FUNCTION:SUBSTR:'
,p_list_item_current_type=>'EXPRESSION'
,p_list_item_current_for_pages=>':P27_FUNCTION = ''SUBSTR'''
,p_list_item_current_language=>'PLSQL'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312262163922199752)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'instr()'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.::P27_FUNCTION:INSTR:'
,p_list_item_current_type=>'EXPRESSION'
,p_list_item_current_for_pages=>':P27_FUNCTION = ''INSTR'''
,p_list_item_current_language=>'PLSQL'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312262477980199753)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'nvl()'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.::P27_FUNCTION:NVL:'
,p_list_item_current_type=>'EXPRESSION'
,p_list_item_current_for_pages=>':P27_FUNCTION = ''NVL'''
,p_list_item_current_language=>'PLSQL'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312262784961199753)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'nvl2()'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.::P27_FUNCTION:NVL2:'
,p_list_item_current_type=>'EXPRESSION'
,p_list_item_current_for_pages=>':P27_FUNCTION = ''NVL2'''
,p_list_item_current_language=>'PLSQL'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312263065668199753)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'coalesce()'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.::P27_FUNCTION:COALESCE:'
,p_list_item_current_type=>'EXPRESSION'
,p_list_item_current_for_pages=>':P27_FUNCTION = ''COALESCE'''
,p_list_item_current_language=>'PLSQL'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312267181523208593)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'replace()'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.::P27_FUNCTION:REPLACE:'
,p_list_item_current_type=>'EXPRESSION'
,p_list_item_current_for_pages=>':P27_FUNCTION = ''REPLACE'''
,p_list_item_current_language=>'PLSQL'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312267381933208593)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'trim()'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.::P27_FUNCTION:TRIM:'
,p_list_item_current_type=>'EXPRESSION'
,p_list_item_current_for_pages=>':P27_FUNCTION = ''TRIM'''
,p_list_item_current_language=>'PLSQL'
);
end;
/
prompt --application/shared_components/navigation/lists/sql_analytic_examples
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1312351770702619820)
,p_name=>'SQL Analytic Examples'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078416
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312352566709619824)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'LEAD and LAG'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Demonstrates use of LEAD and LAG functions to get next and previous data.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312353767163619834)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'LISTAGG'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Demonstrates ordering data within each group and concatenate the values in a comma delimited list.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312354661069619834)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'RANK and DENSE_RANK'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Demonstrates how to rank the records based on a column value or expression.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312354376363619834)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'RATIO_TO_REPORT'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Demonstrates how to compare the current value against the sum of another set of values.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312354077105619834)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'ROW_NUMBER'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Demonstrates how to assign a serial number to a partition of records. This is very useful in reporting, especially in places where different partitions have their own serial numbers.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1312351974108619824)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Top N Queries'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Top-N queries provide a method for limiting the number of rows returned from ordered sets of data.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1584600162615908884)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078416
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1584600210785908885)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Sample Reports'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10,14,41,42'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1584600343474908886)
,p_list_item_display_sequence=>55
,p_list_item_link_text=>'Interactive Report'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(1584600210785908885)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1,2'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1954789570818000607)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Interactive Grid'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(1584600210785908885)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(615299523001968378)
,p_list_item_display_sequence=>63
,p_list_item_link_text=>'Faceted Search'
,p_list_item_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(1584600210785908885)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'42'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(615294041938903499)
,p_list_item_display_sequence=>65
,p_list_item_link_text=>'Cards'
,p_list_item_link_target=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(1584600210785908885)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'41'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1584600405114908886)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Classic Report'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(1584600210785908885)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1584600738930908886)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Use Cases'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-briefcase'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5035603723518512668)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Drill Down Interactive Report'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP:::'
,p_parent_list_item_id=>wwv_flow_imp.id(1584600738930908886)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1043852017804169559)
,p_list_item_display_sequence=>105
,p_list_item_link_text=>'Drill Down Interactive Grid'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(1584600738930908886)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'40'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5035608514017532278)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Report Highlighting'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP:::'
,p_parent_list_item_id=>wwv_flow_imp.id(1584600738930908886)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5035472718982771297)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Interactive Report Query API'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(1584600738930908886)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5035836710603816613)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Linking to Interactive Reports'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(1584600738930908886)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1043822900291627980)
,p_list_item_display_sequence=>135
,p_list_item_link_text=>'Linking to Interactive Grids'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(1584600738930908886)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'37'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5056202829944503349)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Bind Variables'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:RP,15:::'
,p_parent_list_item_id=>wwv_flow_imp.id(1584600738930908886)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3453077390477759832)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Filtering'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(1584600738930908886)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3453097468357179809)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Non-Tabular Templates'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(1584600738930908886)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5035914352943154706)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Column Format Masks'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:RP:::'
,p_parent_list_item_id=>wwv_flow_imp.id(1584600738930908886)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5035914952192154706)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Custom Buttons'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(1584600738930908886)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5035953138943333186)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Reporting from Collections'
,p_list_item_link_target=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:RP,38:::'
,p_parent_list_item_id=>wwv_flow_imp.id(1584600738930908886)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1584600785876908886)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'SQL Examples'
,p_list_item_link_target=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search-plus'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3453319958564159211)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'CASE Statements'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RP:::'
,p_parent_list_item_id=>wwv_flow_imp.id(1584600785876908886)
,p_list_text_01=>'Highlights the Oracle CASE statement which can be used to perform IF-THEN-ELSE logic in queries.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3453401160134651858)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Connect By'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(1584600785876908886)
,p_list_text_01=>'Demonstrates a hierarchy query using connect by and the sys connect by path.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3453319366701159206)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'Pivot'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(1584600785876908886)
,p_list_text_01=>'Highlights the use of the PIVOT operator. This operator takes data in separate rows, aggregates it, and converts it into columns. '
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3453411865045710389)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Regular Expressions'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(1584600785876908886)
,p_list_text_01=>'Regular expressions enable you to search for patterns in string data by using standardized syntax conventions.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3453446165895257002)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Soundex'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(1584600785876908886)
,p_list_text_01=>'This function lets you compare words that are spelled differently, but sound alike in English.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3453408278429688985)
,p_list_item_display_sequence=>250
,p_list_item_link_text=>'String Functions'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:27:P27_FUNCTION:SUBSTR:'
,p_parent_list_item_id=>wwv_flow_imp.id(1584600785876908886)
,p_list_text_01=>'Examples of substr, instr, nvl, nvl2, coalesce, replace, and trim SQL functions.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3453320269847159211)
,p_list_item_display_sequence=>260
,p_list_item_link_text=>'Group By'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP:::'
,p_parent_list_item_id=>wwv_flow_imp.id(1584600785876908886)
,p_list_text_01=>'The GROUP BY clause allows a developer to use SQL aggregate functions (AVG, COUNT, MAX, MIN, STDDEV, SUM and VARIANCE).'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3453320590164159211)
,p_list_item_display_sequence=>270
,p_list_item_link_text=>'Inline Views'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(1584600785876908886)
,p_list_text_01=>'Inline views are commonly used to simplify complex queries by removing join operations.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3453413860478736553)
,p_list_item_display_sequence=>280
,p_list_item_link_text=>'Pipelined Functions'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(1584600785876908886)
,p_list_text_01=>'Pipelined functions provide the ability to reference the data returned by a PL/SQL process as a table in a SQL statement.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1597533071896430744)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Analytic Functions'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-flash'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3453548708594775461)
,p_list_item_display_sequence=>290
,p_list_item_link_text=>'LEAD and LAG'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(1597533071896430744)
,p_list_text_01=>'Demonstrates use of LEAD and LAG functions to get next and previous data.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3453549909048775471)
,p_list_item_display_sequence=>300
,p_list_item_link_text=>'LISTAGG'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(1597533071896430744)
,p_list_text_01=>'Demonstrates ordering data within each group and concatenate the values in a comma delimited list.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3453550802954775471)
,p_list_item_display_sequence=>310
,p_list_item_link_text=>'RANK and DENSE_RANK'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(1597533071896430744)
,p_list_text_01=>'Demonstrates how to rank the records based on a column value or expression.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3453550518248775471)
,p_list_item_display_sequence=>320
,p_list_item_link_text=>'RATIO_TO_REPORT'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(1597533071896430744)
,p_list_text_01=>'Demonstrates how to compare the current value against the sum of another set of values.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3453550218990775471)
,p_list_item_display_sequence=>330
,p_list_item_link_text=>'ROW_NUMBER'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(1597533071896430744)
,p_list_text_01=>'Demonstrates how to assign a serial number to a partition of records. This is very useful in reporting, especially in places where different partitions have their own serial numbers.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3453548115993775461)
,p_list_item_display_sequence=>340
,p_list_item_link_text=>'Top N Queries'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(1597533071896430744)
,p_list_text_01=>'Top-N queries provide a method for limiting the number of rows returned from ordered sets of data.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1647513413672113103)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-gear'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'36,4,34'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1584808514774007521)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078416
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1584808991346007536)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Help'
,p_list_item_link_target=>'f?p=&APP_ID.:HELP:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1584809304768007536)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1584809886585007537)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_parent_list_item_id=>wwv_flow_imp.id(1584809304768007536)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/administration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1874396445953777476)
,p_name=>'Administration'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078416
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1874396666462777481)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Manage Sample Data'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-edit'
,p_list_text_01=>'This application ships with sample data.  You can remove or recreate sample data using this administrative page.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1874397057287777482)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Theme Style'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-desktop'
,p_list_text_01=>'Set application user interface theme style for all users.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/home_page_list
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3164972187330880232)
,p_name=>'Home Page List'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078416
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3164972982223880234)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Interactive Report'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'#APP_IMAGES#reports_ir.png'
,p_list_text_01=>'Reports which enable customization by the end user'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1954790921666013865)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Interactive Grid'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Reports which allow for in-line editing and other customization by the end user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1647402079410495113)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Faceted Search'
,p_list_item_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:RP,42:::'
,p_list_item_icon=>'#APP_IMAGES#reports_filter.png'
,p_list_text_01=>'Report with facets to filter the result'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(615317282018082935)
,p_list_item_display_sequence=>45
,p_list_item_link_text=>'Cards'
,p_list_item_link_target=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:RP,41:::'
,p_list_text_01=>'Report displayed in cards'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3164973281979880235)
,p_list_item_display_sequence=>47
,p_list_item_link_text=>'Classic Report'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'#APP_IMAGES#reports_classic.png'
,p_list_text_01=>'Tabular data which can be filtered by page item values'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3164973565586880235)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Use Cases'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#APP_IMAGES#reports_usecases.jpg'
,p_list_text_01=>'Demonstrations of advanced APEX report techniques '
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1332431657495350502)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'SQL Examples'
,p_list_item_link_target=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'#APP_IMAGES#reports_usecases.jpg'
,p_list_text_01=>'Demonstrations of advanced SQL techniques'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2203535665108247922)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Analytic Functions'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Demonstrations of various analytic functions available in Oracle SQL.'
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE90000010E49444154584763B40BCBFDCF30808071D401A321306843405E5A9C41415A0C237F28C9CB302CBDF48D81818111432E5A8F13';
wwv_flow_imp.g_varchar2_table(2) := 'ABDCBF8F2F18FEBCB88135AFE1CC05F5B951583538D95830782F7D8B556E6BB43056B9FFBFBF337CDDDE35700E00D9FC6553E35073405E2CF628B0366558B8F70A56B978671D9C72F366CD222D0426E49A61D5606813C3B0EFE8699C8EC325D738693169';
wwv_flow_imp.g_varchar2_table(3) := '0E3898B1177B0DE1789561DF91133813282EB9C6C9CB461D405A0880D2C0FFFF9835B5916D2C7DD2C068221CCD05039A083958FE3174645A8C9684C3A728FEF1EB1743E7CC35A495847EEAF71804387F636A52CC66B8FFE80956C314E564B0CA3D7FF58E';
wwv_flow_imp.g_varchar2_table(4) := 'E1CEE357A439805E9DA5D19ED168080C7808000018CF12301806AF7F0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(543411514496741885)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE90000087D49444154785EED9CCD8B956518C69FE38CA393D5A21234C4B012A4858B167D118549B488104A8A128A56B9B175BBF00FA8A0';
wwv_flow_imp.g_varchar2_table(2) := 'B6111158590B2B90A0A810A48F4D0C412A6AA593625F2268F3FD71E20C0C3832D3FDF13CE79CE79CFBE7F6BDDFE7BCF7EFBE2EAF73CF99398D879EDED74CFC834050020D0C1074F2B4BD4000032084D0043040E8F1D33C064003A1096080D0E3A7790C80';
wwv_flow_imp.g_varchar2_table(3) := '064213C000A1C74FF318000D84268001428F9FE631001A084D0003841E3FCD630034109A0006083D7E9AC700682034010C107AFC348F01D04068021820F4F8691E03A081D0043040E8F1D33C064003A1096080D0E3A7790C80064213C000A1C74FF31800';
wwv_flow_imp.g_varchar2_table(4) := '0D84268001428F9FE631001A084D0003841E3FCD630034109A0006083D7E9AC700682034010C107AFC348F01D04068021820F4F8691E03A081D0043040E8F1D33C064003A1096080D0E3A7790C80064213A8DA00DBB76D49DB6EDF94366DB825DDB06EB8';
wwv_flow_imp.g_varchar2_table(5) := '2B837AE4C1FB967DDDC70F5CECCAF3ACF4A287F7DC5CD573CE4F5E49F397CEA5B90B27D2CCB99FAA6275F5C3546980EBAF1B4E4F3E767FDAB26943D7C16180FC11CCFDFD4B9AFCF1506A4E8DE51F56F8842A0DF0E2EE47D3E68DEB0BB7EA3B0E03F8B85D';
wwv_flow_imp.g_varchar2_table(6) := '7BD7DC3FBFA5896FDF2B7358C153AA33C0DD77DD919ED8796FC116F38EC20079FCAEBE7B6AE4D334333A52EEC002275567803DBB76A43B376F2CD05A99233040198EAD5366FF3C99267FF8A0DC81054EAACE00AFBCB43BAD191A2AD05A99233040198EAD';
wwv_flow_imp.g_varchar2_table(7) := '535A8BF1F817AF973BB0C049D519E0D57DCF1568ABDC1118A01CCBD649FF7EB6BFEC8199A76100012006C854D835B76300812709E0135C6D9F03ACD40506C0003E850B7761001F56DE02F116C8A71CE75D240009E094CEFFDF4602F8B0920024804F39CE';
wwv_flow_imp.g_varchar2_table(8) := 'BB480012C0291D12A01DE0480012A01DBA5AF14C128004688BE0D8017C58490012C0A71CE75D240009E0940E3B403BC0910024403B74C50EE0A5CAAF42F8C8B103F8B8910024804F39CEBBD801D8019CD261076807381280046887AED801BC54D9017CE4';
wwv_flow_imp.g_varchar2_table(9) := 'D8017CDCAA4B802307DFF475C25D3D41E0E1675EAEEA39314055E3E8FF87C100C28C4980FE360106C000FDAD70A13B0C800130404504D8012A1A4684472101A404D8FB555D3AD8F1F3B2CFF3F5D1EFAB7ACE95BEBEA5B6E7DCFFD6FB5571AB2F0130804B';
wwv_flow_imp.g_varchar2_table(10) := '2018C0852D6100891B092011325D2701780B64128CB69804D0925A5A470248DC48008990E93A0940029804A32D2601B4A448001B2912C0C64BA826014880A2825A3C8C04F061650790B891001221D3751280043009465B4C026849B103D8489100365EEC';
wwv_flow_imp.g_varchar2_table(11) := '0079BC8EF049B00B2009E0C2C627C12236124044642960076007B0E8455D4B02A8512D29E4A740123712402264BA4E02900026C1688B49002D297E0A64234502D878F153A03C5EFC14C8C78F04F071630790B891001221D375760076009360B4C5248096';
wwv_flow_imp.g_varchar2_table(12) := '143B808D140960E3C50E90C78B1DC0C78F04F071630790B891001221D375760076009360B4C524809654ED3B00DF0EED9B648FDCC51763490980017A44CABEC7C40018C0A79C3EB90B0360803E91B2AF0D0C80017CCAE993BB300006E81329FBDAC00092';
wwv_flow_imp.g_varchar2_table(13) := '01F8934897B2F831A80B1B7F122962E383301191A5800FC248008B5ED4B524801AD592427E1542E2460248844CD7490012C024186D3109A025B5B48E0490B891001221D3751280043009465B4C0268499100365224808D97504D0290004505B5781809E0';
wwv_flow_imp.g_varchar2_table(14) := 'C3CA0E207123012442A6EB24000960128CB69804D0926207B09122016CBCD801F278F147F13E7E24808F1B3B80C48D04900899AEB303B0039804A32D2601B4A4D8016CA448001B2F76803C5EEC003E7E24808F1B3B80C48D04900899AEB303B0039804A3';
wwv_flow_imp.g_varchar2_table(15) := '2D2601B4A4D8016CA448001B2F76803C5EEC003E7E24808F1B3B80C48D04900899AEB303B0039804A32D2601B4A4D8016CA448001B2F76803C5E47F872DC3C8095DFCD1763496F813040E512CE7B3C0C8001F214D4E37763000CD0E312CE7B7C0C8001F2';
wwv_flow_imp.g_varchar2_table(16) := '14D4E37763000CD0E312CE7B7C0C2019806F8776298CCF015CD8F87668111B9F0388882C057C124C0258F4A2AE2501D4A89614F2BB40123712402264BA4E02900026C1688B49002DA9A5752480C48D04900899AE930024804930DA6212404B8A04B09122';
wwv_flow_imp.g_varchar2_table(17) := '016CBC846A128004282AA8C5C348001F567600891B092011325D270148009360B4C5248096143B808D140960E3C50E90C78B6F85F0F123017CDCD801246E248044C8749D1D801DC024186D3109A025C50E60234502D878B103E4F16207F0F123017CDCD8';
wwv_flow_imp.g_varchar2_table(18) := '01246E248044C8749D1D801DC024186D712F24C0E5B1F1F4C63B9F685BEA485D7509F0F653DFA5ADEBC73BD2BCEA45480015264DD1895F47D3C1C34735A51DABA9CE00CF6E3F99F63EF07BC700882F84014444DA82773FFE3C9DFDE392B6BC2375D51960';
wwv_flow_imp.g_varchar2_table(19) := '7A722C7DF8FC48BAEDA6C98E00105F040388883405C74E9F49070E7D9986D6AED39477ACA63A03CC4C4DA45B6F9C48AFED3A5E87093040B6184F9F399F3E3AFC4D1A9F984AABD70C679F57F280EA0C30373B93E666A7177A7CE19EF369E7D68BDDDD0930';
wwv_flow_imp.g_varchar2_table(20) := '804B6F97AF8CA5D10B7FA5E3A7CEA69163A716CE18181C4A0383AB5DE7B5EBA6EA0CD06AB49502CDE67CBB7AE6DC2E1068345655F7BF7F0B43950668369B69767A12137441A8ED78C996F80787D6A646A3D18EE3B3CEACD2008B1DB5DE0ECDCFCD6284AC';
wwv_flow_imp.g_varchar2_table(21) := '1177EFE696F0570D0C56F7B6E76A22551BA07BA3E395A310C00051264D9FCB12C000082334010C107AFC348F01D04068021820F4F8691E03A081D0043040E8F1D33C064003A1096080D0E3A7790C80064213C000A1C74FF318000D84268001428F9FE631';
wwv_flow_imp.g_varchar2_table(22) := '001A084D0003841E3FCD630034109A0006083D7E9AC700682034010C107AFC348F01D04068021820F4F8691E03A081D0043040E8F1D33C064003A1096080D0E3A7790C80064213C000A1C74FF318000D84268001428F9FE631001A084D0003841E3FCD63';
wwv_flow_imp.g_varchar2_table(23) := '0034109A0006083D7E9AC700682034010C107AFC34FF1F6E50C00CD70C3EB30000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(543411775300741922)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EEDDD0BB0DE757DE7F1EFF39C739E7392102E0521DC0A885C2CF1820A4241506AA1BAADA23868B5DDA9334BAB';
wwv_flow_imp.g_varchar2_table(2) := '7699A96D0719BBDA9DAE55F0325D7777AAA0D4D6AD972DAC6E0515AB2904959B0209243140E41E20211792737FAE3BFF13AE8226BFDFEF9BDFE777F8BFCFCCCE4EDBE777795EDF07F2CEFF9C90C669E79E3F30BE10400001041040A056020D02A056F3E6';
wwv_flow_imp.g_varchar2_table(3) := 'CD22800002082030274000F041400001041040A0860204400D87CE5B4600010410408000E033800002082080400D0508801A0E9DB78C00020820800001C067000104104000811A0A1000351C3A6F190104104000010280CF00020820800002351420006A';
wwv_flow_imp.g_varchar2_table(4) := '3874DE3202082080000204009F010410400001046A284000D470E8BC6504104000010408003E03082080000208D4508000A8E1D079CB08208000020810007C06104000010410A8A1000150C3A1F3961140000104102000F80C20800002082050430102A0';
wwv_flow_imp.g_varchar2_table(5) := '8643E72D2380000208204000F019400001041040A0860204400D87CE5B4600010410408000E033800002082080400D0508801A0E9DB78C00020820800001C067000104104000811A0A1000351C3A6F190104104000010280CF0002082080000235142000';
wwv_flow_imp.g_varchar2_table(6) := '6A3874DE3202082080000204009F010410400001046A284000D470E8BC6504104000010408003E03082080000208D4508000A8E1D079CB08208000020810007C06104000010410A8A1000150C3A1F3961140000104102000F80C20800002082050430102';
wwv_flow_imp.g_varchar2_table(7) := 'A08643E72D2380000208204000F019400001041040A0860204400D87CE5B4600010410408000E033800002082080400D0508801A0E9DB78C00020820800001C067000104104000811A0A1000351C3A6F190104104000010280CF00020820800002351420';
wwv_flow_imp.g_varchar2_table(8) := '006A3874DE3202082080000204009F010410400001046A284000D470E8BC6504104000010408003E03082080000208D4508000A8E1D079CB08208000020810007C06104000010410A8A1000150C3A1F3961140000104102000F80C208000020820504301';
wwv_flow_imp.g_varchar2_table(9) := '02A08643E72D2380000208204000F019400001041040A0860204400D87CE5B4600010410408000E033800002082080400D0508801A0E9DB78C00020820800001C067000104104000811A0A1000351C3A6F190104104000010280CF000208208000023514';
wwv_flow_imp.g_varchar2_table(10) := '20006A3874DE3202082080000204009F010410400001046A284000D470E8BC6504104000010408003E03082080000208D4508000A8E1D079CB08208000020810007C06104000010410A8A1000150C3A1F3961140000104102000F80C2080000208205043';
wwv_flow_imp.g_varchar2_table(11) := '0102A08643E72D2380000208204000F019400001041040A0860204400D87CE5B4600010410408000E033800002082080400D0508801A0E9DB78C00020820800001C067000104104000811A0A1000351C3A6F190104104000010280CF0002082080000235';
wwv_flow_imp.g_varchar2_table(12) := '1420006A3874DE3202082080000204009F010410400001046A284000D470E8BC6504104000010408003E03082080000208D4508000A8E1D079CB08208000020810007C06104000010410A8A1000150C3A1F3961140000104102000F80C20800002082050';
wwv_flow_imp.g_varchar2_table(13) := '430102A08643E72D2380000208204000F019400001041040A0860204400D87CE5B4600010410408000E033800002082080400D0508801A0E9DB78C00020820800001C067000104104000811A0A1000351C3A6F190104104000010280CF00020820800002';
wwv_flow_imp.g_varchar2_table(14) := '351420006A3874DE3202082080000204009F010410400001046A284000D470E8BC6504104000010408003E03082080000208D4508000A8E1D079CB08208000020810007C06104000010410A8A1000150C3A1F3961140000104102000F80C208000020820';
wwv_flow_imp.g_varchar2_table(15) := '50430102A08643E72D2380000208204000F019400001041040A0860204400D87CE5B4600010410408000E033800002082080400D0508801A0E9DB78C00020820800001C067000104104000811A0A1000351C3A6FF9698166A3610B178ED9E2450B6D7868';
wwv_flow_imp.g_varchar2_table(16) := 'C81ACDC6AFE419F407D61F0C6C6272CAB64F4CD96030306B34ADD11C82359BC0C0AC3FB0C1A03777E27EFBEC6563632D6B369B3BBFC16060DD5ECF26A6666CFC89F9351A43667373FFD5B3DFF9E6357B45C3ACFAE7C1067D33ABFEFF41CD00E6FFDB2500';
wwv_flow_imp.g_varchar2_table(17) := 'E6C90C87869AB6C7A205B6F7E23D6CBF7D16DBE2450B6CD1C2B1B97FE935F91757D0142BC7CAEF07D7DF66C71E79B81D77F41176F8214B6CE182316B8D8CFCCABDA6A6676CFBC4A46DD8B4D57EB6EE7E5B3676860DAA5F377ADDA03BF0E20481C690351A';
wwv_flow_imp.g_varchar2_table(18) := '0DEB6EBECF4E6FDD6D6F3FF394B97F16867621C2FAFDBE4DCFCEDA03EB37D8753F59653F195A6A8D7D0EDB11724F0445C2CD6AB5B4D168DAA0DF336B4F59BF336DFDADEBADB7E16EEB3DF6F31DFF7BBE8A1720000A1FD1D868CBCE38F9E576D46107D95E';
wwv_flow_imp.g_varchar2_table(19) := '8B17CDFD8B8F2F1F817E7F60072E39D08E3BFAF0E00DAB5F30EEBE6FBDFDE58D63D6EB339360408F059D19FBCA397BDBDE8B1745ED76D31D77DBE7EF5C6C1B677F75F4456D5ED345835ED706538F5BF7919F59F7E1D5D6DFBEA1A612F3E36D130085CEA9';
wwv_flow_imp.g_varchar2_table(20) := 'FA25E5C8C30EB2535FFD1B76D8C1FB177ACBF97DADD1D6A8BD62E9B1B6C7C205516F647A66D6FEF8AA6DB66596C7FF5180898B5A8D9E7DF3DDF1FF6C6CD936611FBBBE6D776EE1D175E2289E77F96066DCBA0FAEB0F63D37DB607662771CC19E89020440';
wwv_flow_imp.g_varchar2_table(21) := '22E0EE58DE6A0DDB99A7BCCA5EBDF425BB637BF67C42A037307BDD89AFB2EA294BCC57BBD3B50F7C7BAB3D32B90BDF7B8E398035BF52A00A80CBDFB99F0D0FC5F94FCDB4EDBF2E9FB0D59B0880DDF951EB6E5C67ED9557597F7ADBEE3C86BD2304088008';
wwv_flow_imp.g_varchar2_table(22) := 'B4DDB964CFC50BED3DBFF77ADB7FDFBD77E731EC5D7DDBBE6F76DA49AFB6D156DC23E04EB767FFF9DB5BEDA109BE05A0F8408D367BF6B573F6899EDF6CA76B1FBD66DC563D56FD101B5FBB53A03FBEC9A66FF8B2554F05F82A478000286716B670C1A8BD';
wwv_flow_imp.g_varchar2_table(23) := 'F79C33E77EC88FAFDD2F4000EC7EE3DD790201B03B75FDF7EE6DDF6033D7FF930DDAD3FE9BB36394000110C5E6BFA8FAE1BEB37FFB247BF93147F86FCE8ECF2B4000CCEF0F060130FFE6D7B9EFA7367BC7779FF8A383F3EFFE2FB41B1300854CF4884397';
wwv_flow_imp.g_varchar2_table(24) := 'D87F3CFB8C426E538F6B1000F37BCE04C0FC9CDFCC2D575877FDEAF979F917D8AD098002065AFD14FABB7EF7343BF8807D0BB84D7DAED0EDF5EDF4934F88FE1E72A7DB7DE26700E27E08AD3ED2BBE79D8E367AF6D577EC6363913FC331DBEED847AF99B0';
wwv_flow_imp.g_varchar2_table(25) := '559BF81980DD33A1E7DFB53FF9B8CDDCF4BFAD3FB125E7B19CF53C020440011F8B73CE3AC5961E7D580137A9D7150880F93D6F0260FECEAF73CF8D36BBEA7BF3F70DBC406E4E00880759FDEEFFCFFEE82D3634C49F25CF3D0A0220B7B8EF790480AF67CE';
wwv_flow_imp.g_varchar2_table(26) := 'DDAAA700533FBCD48C1F08CCC9FE9CB3080029BFD949C71F6B679DFA2AF12DEA793C0130BFE74E00CCE3F9F57B36BBE25BD679E8F679FC26E6FFD50900F10C5FFFDA97D9E927BE4C7C8B7A1E4F00CCEFB91300F37B7EDD076EB39915DF9ADF6F629EDF9E';
wwv_flow_imp.g_varchar2_table(27) := '00100FB0FADD7FF51480AFFC0204407E73CF1309004FCDFC7BF5B63C68D33FFE127F8B607EFAA74E240084F8D5D16F3FEB37ED65117F198DF8DA2F88E30980F93D4602607ECFAFFA4B832697FD0F02403846024088DF6C36EC3D6F7983BDF8D025C25BD4';
wwv_flow_imp.g_varchar2_table(28) := 'F76802607ECF9E0098DFF31B74DB3679F5A7CCFAFC55DAAA4912002A79331B1E1EB277FFDEEBED88430E10DEA2BE471300F37BF604C0FC9E9FF57B3679F5C536E876E6F91B99BFD7270084B31B19199E0B80C3F9EB7E2553200024EC6E8712006E94928D';
wwv_flow_imp.g_varchar2_table(29) := '06BD8E4D5DFD29ABFE7FBE34020480C67DEE540240886F660480D63FF57402205550BB9E00D0FA57A71300C219EC0880D3EDF083F91680620C048042DDEF4C02C0CF52B11301A0507FF699048070065500FCFEEF9E66471CC20F012AC6400028D4FDCE24';
wwv_flow_imp.g_varchar2_table(30) := '00FC2C153B11000A750240AFFEC40D0800ED280800AD7FEAE90440AAA0763D01A0F5E75B0062FFB900F80FAFB3230E3D507C937A1E4F00CCEFB91300F37B7E835EDBA6AEFE343F04281C23DF0210E21300427C7E08508BEF703A01E08028DC820010E23F';
wwv_flow_imp.g_varchar2_table(31) := '713401209C010120C42700B4F80EA713000E88C22D0800213E01A0C72700B433E05B005AFFD4D309805441ED7A0240EBCFCF0088FD0900ED000800AD7FEAE90440AAA0763D01A0F52700C4FE048076000480D63FF57402205550BB9E00D0FA1300627F02';
wwv_flow_imp.g_varchar2_table(32) := '403B000240EB9F7A3A01902AA85D4F0068FD0900B13F01A01D0001A0F54F3D9D004815D4AE2700B4FE0480D89F00D00E8000D0FAA79E4E00A40A6AD713005A7F0240EC4F006807400068FD534F27005205B5EB0900AD3F0120F62700B4032000B4FEA9A7';
wwv_flow_imp.g_varchar2_table(33) := '1300A982DAF50480D69F0010FB1300DA0110005AFFD4D309805441ED7A0240EB4F0088FD0900ED000800AD7FEAE90440AAA0763D01A0F52700C4FE048076000480D63FF57402205550BB9E00D0FA1300627F02403B000240EB9F7A3A01902AA85D4F0068';
wwv_flow_imp.g_varchar2_table(34) := 'FD0900B13F01A01D0001A0F54F3D9D004815D4AE2700B4FE0480D89F00D00E8000D0FAA79E4E00A40A6AD713005A7F0240EC4F006807400068FD534F27005205B5EB0900AD3F0120F62700B4032000B4FEA9A71300A982DAF50480D69F0010FB1300DA01';
wwv_flow_imp.g_varchar2_table(35) := '10005AFFD4D309805441ED7A0240EB4F0088FD0900ED000800AD7FEAE90440AAA0763D01A0F52700C4FE048076000480D63FF57402205550BB9E00D0FA1300627F02403B000240EB9F7A3A01902AA85D4F0068FD0900B13F01A01D0001A0F54F3D9D0048';
wwv_flow_imp.g_varchar2_table(36) := '15D4AE2700B4FE0480D89F00D00E8000D0FAA79E4E00A40A6AD713005A7F0240EC4F006807400068FD534F27005205B5EB0900AD3F0120F62700B4032000B4FEA9A71300A982DAF50480D69F0010FB1300DA0110005AFFD4D309805441ED7A0240EB4F00';
wwv_flow_imp.g_varchar2_table(37) := '88FD0900ED000800AD7FEAE90440AAA0763D01A0F52700C4FE048076000480D63FF57402205550BB9E00D0FA1300627F02403B000240EB9F7A3A01902AA85D4F0068FD0900B13F01A01D0001A0F54F3D9D004815D4AE2700B4FE0480D89F00D00E8000D0';
wwv_flow_imp.g_varchar2_table(38) := 'FAA79E4E00A40A6AD713005A7F0240EC4F006807400068FD534F27005205B5EB0900AD3F0120F62700B4032000B4FEA9A71300A982DAF50480D69F0010FB1300DA0110005AFFD4D309805441ED7A0240EB4F0088FD0900ED000800AD7FEAE90440AAA076';
wwv_flow_imp.g_varchar2_table(39) := '3D01A0F52700C4FE048076000480D63FF57402205550BB9E00D0FA1300627F02403B000240EB9F7A3A01902AA85D4F0068FD0900B17F6B64D8FEF0EC37D8214B5E24BE493D8F6F3687ECE4D7BCD2465B2351009D6ED7CEFFEE767B70FB206A3D8BD2045A';
wwv_flow_imp.g_varchar2_table(40) := '8D8E7DED1DFBDA58E4FC66DB1DFBE83513B66A533FED22AC8E1318F46CF23B17D9A0D78D5BCFAA6481C669E79ECFBFBD9219E336A802E0BC73CFB2FD7E6DAFB80D589524B070E1023B7EE96FA405C077B6DB83E3FC23943488C8C523DD49FBFABB96D8D8';
wwv_flow_imp.g_varchar2_table(41) := '682B6A872A003EB26CABADDE3214B59E458902FD9E4D7CE7E3667D022C51327A3901104DE7B3F0D82396D8DBCF3CCDC6C65A36DBE959BFDFF3D9985D7EA9C068AB6543C34DBBFFC10DF6CEB79C69ADC8DF4176BB3DFBD0156BECE1CE226B349B88E714E8';
wwv_flow_imp.g_varchar2_table(42) := 'F76D78FBC3F685F35E1B1D70ED76C73E7EE51ABB6B6AB119F3CB36BDC1C0ECF1A9B6F5B66FB4D99FFC4BB67339E8B9020480F853F1C7EF7AB3BDE76DBFF3D42D06D53F1D7C651368341A496731AF24BEE4C5CC2F9930EB064FCE6B6A7AC62EBF6A997DF9';
wwv_flow_imp.g_varchar2_table(43) := '9B3FB06E8FDFF4641DC2330E230054F266B6606CD43EF7B10FDA11871E24BC054723800002F9051EDBBCD52EB8E812BBE78187F31FCE8973020480F083507DEFF2331F7EBF2D3DF648E12D381A010410C82F3031356D1FFAC4E76DD55DF7E63F9C130900';
wwv_flow_imp.g_varchar2_table(44) := 'F567A00A808B2E38CF8E5F7A8CFA2A9C8F0002086415989E99B50B2FBEC456AC5997F55C0E7B5A802700C24F030120C4E7680410900A1000527E9E00A8F90900F504381F0104540204804A9E27007A79B3B93FBFCCB7008A180597400081CC02044066F0';
wwv_flow_imp.g_varchar2_table(45) := 'E7398E6F010867400008F1391A0104A4020480949F6F01A8F90900F504381F0104540204804A9E6F01E8E5F916401133E0120820A011200034EECF3C956F010867C01300213E4723808054800090F2F32D00353F01A09E00E72380804A800050C9F32D00';
wwv_flow_imp.g_varchar2_table(46) := 'BD3CDF022862065C02010434020480C69D6F01E8DDE76E503D01F8EC5F9F6FC71E79582137E21A082080401E816DE31376E14597D89A75F7E73990539E23C0CF00083F1455005C76F10576C881FB0B6FC1D1082080407E8147376EB60B3F79A9DDFBE023';
wwv_flow_imp.g_varchar2_table(47) := 'F90FE7C439010240FC4178EB1B4FB2F7FDC1DBE7FE4EFA89C969FE6ACC8CF318191EB63DF75868297FA5ECE3E3E336E80FAC61697FAD70C6B73DEF8F7AF22FCCAEFE2AE67DF65A1C3DBF6AFDF8C494F5FAFD1DFF329CF732E5BF81EADF73A3A32DDBB869';
wwv_flow_imp.g_varchar2_table(48) := '8B7D7BD98FED6B575ECBBFF38463230084F8D5D1CBDF7F8DD9E80166CD31B341F5F7623FF9AF37F1C5EA70FC9E2FB3F6511FB7D6C848D4BBED767BF6EF3FBEC9168E8D5AA3D98CDA834571028341DFD63FB2C9CE7ED31936DA8A9B5FBBD3B1EB6EBCD5C6';
wwv_flow_imp.g_varchar2_table(49) := '4687ADD1607E7193085BD568D85CB0B5DB1D7B60FDA3F6C5CBBF1FB601AF761520005C39C3375BFEBE65E18B58E123B0F709367BDCA536DA6A45EDD7E976ED9695AB6C6A7A266A3D8BD204BABDAE9D7EF289D1F3AB7E115AB166AD4D4C4CA65D84D55102';
wwv_flow_imp.g_varchar2_table(50) := 'D51398BFFDDCFFB15E6FC71318BEF20B1000F9CD9F752201201C804300DC7CDBED363BDB16BE89FA1E5D3D0538F5B527C43F0168776CE59AB5364E00483E44DD5ECF3E79E915D6E9564F3EF9520810000AF5679C49000807E0100037DD7ABBB5DB048062';
wwv_flow_imp.g_varchar2_table(51) := '8AD5EF204F7DED6B080005BEC399D513B44F7DF11BD6E9741D76638B1801022046CD710D01E08819BA1501102A56D4EB0980A2C6117C19022098CC7D0101E04E1AB6210110E6E5FA6A02C09533F76604406E71DFF308005FCF98DD08801835C735048023';
wwv_flow_imp.g_varchar2_table(52) := '66E8560440A85851AF27008A1A47F06508806032F70504803B69D88604409897EBAB090057CEDC9B1100B9C57DCF23007C3D6376230062D41CD710008E98A15B1100A16245BD9E00286A1CC197210082C9DC171000EEA4611B1200615EAEAF26005C3973';
wwv_flow_imp.g_varchar2_table(53) := '6F4600E416F73D8F00F0F58CD98D008851735C43003862866E4500848A15F57A02A0A871045F86000826735F4000B893866D48008479B9BE9A0070E5CCBD1901905BDCF73C02C0D7336637022046CD710D01E08819BA1501102A56D4EB0980A2C6117C19';
wwv_flow_imp.g_varchar2_table(54) := '022098CC7D0101E04E1AB6210110E6E5FA6A02C09533F76604406E71DFF308005FCF98DD08801835C73504802366E8560440A85851AF27008A1A47F06508806032F70504803B69D88604409897EBAB090057CEDC9B1100B9C57DCF23007C3D6376230062';
wwv_flow_imp.g_varchar2_table(55) := 'D41CD710008E98A15B1100A16245BD9E00286A1CC197210082C9DC171000EEA4611B1200615EAEAF26005C39736F4600E416F73D8F00F0F58CD98D008851735C43003862866E4500848A15F57A02A0A871045F86000826735F4000B893866D48008479B9';
wwv_flow_imp.g_varchar2_table(56) := 'BE9A0070E5CCBD1901905BDCF73C02C0D7336637022046CD710D01E08819BA1501102A56D4EB0980A2C6117C19022098CC7D0101E04E1AB6210110E6E5FA6A02C09533F76604406E71DFF308005FCF98DD08801835C73504802366E8560440A85851AF27';
wwv_flow_imp.g_varchar2_table(57) := '008A1A47F06508806032F70504803B69D88604409897EBAB090057CEDC9B1100B9C57DCF23007C3D6376230062D41CD710008E98A15B1100A16245BD9E00286A1CC197210082C9DC171000EEA4611B1200615EAEAF26005C39736F4600E416F73D8F00F0';
wwv_flow_imp.g_varchar2_table(58) := 'F58CD98D008851735C43003862866E4500848A15F57A02A0A871045F86000826735F4000B893866D48008479B9BE9A0070E5CCBD1901905BDCF73C02C0D7336637022046CD710D01E08819BA1501102A56D4EB0980A2C6117C19022098CC7D0101E04E1A';
wwv_flow_imp.g_varchar2_table(59) := 'B6210110E6E5FA6A02C09533F76604406E71DFF308005FCF98DD08801835C73504802366E8560440A85851AF27008A1A47F06508806032F70504803B69D88604409897EBAB090057CEDC9B1100B9C57DCF23007C3D6376230062D41CD710008E98A15B11';
wwv_flow_imp.g_varchar2_table(60) := '00A16245BD9E00286A1CC197210082C9DC171000EEA4611B1200615EAEAF26005C39736F4600E416F73D8F00F0F58CD98D008851735C43003862866E4500848A15F57A02A0A871045F86000826735F4000B893866D48008479B9BE9A0070E5CCBD190190';
wwv_flow_imp.g_varchar2_table(61) := '5BDCF73C02C0D7336637022046CD710D01E08819BA1501102A56D4EB0980A2C6117C19022098CC7D0101E04E1AB6210110E6E5FA6A02C09533F76604406E71DFF308005FCF98DD08801835C73504802366E8560440A85851AF27008A1A47F06508806032';
wwv_flow_imp.g_varchar2_table(62) := 'F70504803B69D88604409897EBAB090057CEDC9B1100B9C57DCF23007C3D6376230062D41CD710008E98A15B1100A16245BD9E00286A1CC197210082C9DC171000EEA4611B1200615EAEAF26005C39736F4600E416F73D8F00F0F58CD98D008851735C43';
wwv_flow_imp.g_varchar2_table(63) := '003862866E4500848A15F57A02A0A871045F86000826735F4000B893866D48008479B9BE9A0070E5CCBD1901905BDCF73C02C0D7336637022046CD710D01E08819BA1501102A56D4EB0980A2C6117C19022098CC7D0101E04E1AB6210110E6E5FA6A02C0';
wwv_flow_imp.g_varchar2_table(64) := '9533F76604406E71DFF308005FCF98DD08801835C73504802366E8560440A85851AF27008A1A47F06508806032F70504803B69D88604409897EBAB090057CEDC9B1100B9C57DCF23007C3D6376230062D41CD710008E98A15B1100A16245BD9E00286A1C';
wwv_flow_imp.g_varchar2_table(65) := 'C197210082C9DC171000EEA4611B1200615EAEAF26005C39736F4600E416F73D8F00F0F58CD98D008851735C43003862866E4500848A15F57A02A0A871045F86000826735F4000B893866D48008479B9BE9A0070E5CCBD1901905BDCF73C02C0D7336637';
wwv_flow_imp.g_varchar2_table(66) := '022046CD710D01E08819BA1501102A56D4EB0980A2C6117C19022098CC7D0101E04E1AB6210110E6E5FA6A02C09533F76604406E71DFF308005FCF98DD08801835C73504802366E8560440A85851AF27008A1A47F06508806032F70504803B69D8860440';
wwv_flow_imp.g_varchar2_table(67) := '9897EBAB090057CEDC9B1100B9C57DCF23007C3D6376230062D41CD710008E98A15B1100A16245BD9E00286A1CC197210082C9DC171000EEA4611B1200615EAEAF26005C39736F4600E416F73D8F00F0F58CD98D008851735C43003862866E4500848A15';
wwv_flow_imp.g_varchar2_table(68) := 'F57A02A0A871045F86000826735F4000B893866D48008479B9BE9A0070E5CCBD1901905BDCF73C02C0D7336637022046CD710D01E08819BA1501102A56D4EB0980A2C6117C19022098CC7D0101E04E1AB6210110E6E5FA6A02C09533F76604406E71DFF3';
wwv_flow_imp.g_varchar2_table(69) := '08005FCF98DD08801835C73504802366E8560E0170CBCA5536353D137A32AF7710E874BAF6FA534EB4D1562B6AB776BB63B7DEB1C6A6A6A7A3D6B3284DA00AB88FFDFDD7ADDF1FA46DC4EA680102209ACE67E1F20FFCD06CE1E166C37B9935477C366597';
wwv_flow_imp.g_varchar2_table(70) := '5D13D8E368EBFCFA076D646478D75EFF0BAFEAF57AB66AED3A9B6DCF5AB7DB8BDA8345E102CD66D39ACD866DDEBADD7EEB7527592B727ED5EF407FB262B50D0F35E67E11EAF7FBE197614590C0606036B081F57B3D9B9C9AB18B2EBD3C683D2FF6152000';
wwv_flow_imp.g_varchar2_table(71) := '7C3D83777BE36FBEC2DEF3B637D981FBEF6BA3AD116B341AC17BB0205E20D5BBFA5D0C5F3A01E6A7B38F39B9D7EBDBF4CCACDDF3C07ABBEEA6DBEC9BDFBFDEAAFF1D5F1A010240E33E77EAF0D090FDDD47FED45EFED297086FC1D1082080407E81DB7FB6';
wwv_flow_imp.g_varchar2_table(72) := 'CE3EF1B9AFDAC31B36E53F9C13E7040800E107616CB4655FF8C45FDAAF1FBC44780B8E46000104F20B6CDEBACDFECB672EB33577DF97FF704E2400D49F812A003EF3571FB0A5C7BC587D15CE47000104B20A4C4E4DDB85175F6AB7AFFD79D67339EC6901';
wwv_flow_imp.g_varchar2_table(73) := '9E00083F0D55005C74C17976FCD26384B7E06804104020BF40F5B300175E7C89AD58B32EFFE19CC81300F5678000504F80F3114040254000A8E47902A097373302A08831700904101008100002F45F38926F010867400008F1391A0104A4020480949F6F';
wwv_flow_imp.g_varchar2_table(74) := '01A8F90900F504381F0104540204804A9E6F01E8E5F916401133E0120820A011200034EECF3C956F010867C01300213E4723808054800090F2F32D00353F01A09E00E72380804A800050C9F32D00BDFC13DF02F8EF1FF9537BE9514714711F2E81000208';
wwv_flow_imp.g_varchar2_table(75) := 'E412D83E31697FF5A92FF21F02CA05FE3CE7F02D00217EF504E0D28FFF851D76C881C25B7034020820905F60C3A62DF6379FFD275B75D7BDF90FE744BE05A0FE0C8C0C0FD9DFFCF97BED375FFD72F555381F010410C82AB062F55D76F1255FE72F03CAAA';
wwv_flow_imp.g_varchar2_table(76) := 'FEECC3780220C46F361AF6EEB7BCC1CE79F319B6F75E8BADFA9FF9420001045EC802D55FA1BD71D3565B7ED3ADF6A52BBE6753D3B32FE4B75BF47B2300C4E359FEFE6BCD161D6D36B6C46C784FB3C690F846353A7EE1E1D63DE88F6C7838CEBCFA7BCCBF';
wwv_flow_imp.g_varchar2_table(77) := 'F5FDE5D66C366DEFC58BACD3ED59AFDBAB1160E6B7DAB039EBEAABDDE9DA96ADDBEC5D679F6523C3C35117E9767B76CDF53FB505632D9B996D33BB28C5C0458D860D0D35ED9E071EB2EB6F5965F7AEDF1CB8012FF71420003C3523F65AFEBE6511AB58E2';
wwv_flow_imp.g_varchar2_table(78) := '22B0F709367BDCA536DA6A456D57FD02F2831FDE60AD91B85F80A20E65D1530253336D7BE3EB4E9AFB4F6AC77CCDB6DBB66AEDDDB66DFB78CC72D6240AAC7FF431BBFC7B37D8B6ED13893BB13C5680008895735A47003841C66CE3100037DC729B753ADD';
wwv_flow_imp.g_varchar2_table(79) := '98D3599328503D4A3EF5C457DB684200ACBE739D3DBE6D7BE24D581E233031396D5FBB6AB93DBC714BCC72D6380810000E88295B1000297A896B5303A0D7B39B6F5D39F7F8982F8DC02927BE2AFA09CE6CBB6377AC596BD51F47E32BBF40BBDDB1AF5E79';
wwv_flow_imp.g_varchar2_table(80) := 'ADDDFFF063F90FE7C439010240FC4120008403F00880DB6EB799197E884935C5D40058B966AD4D100092F15501503D01B86FFD46C9F91C4A00C83F0304807004048010DFE76802C0C751B10B01A0507FF6993C0110CF8000100E800010E2FB1C4D00F838';
wwv_flow_imp.g_varchar2_table(81) := '2A76210014EA04805EFD1937200084E3200084F83E4713003E8E8A5D0800853A01A0572700CA98010150C61C126E410024E089971200E201F04380FA01F004403803024088EF733401E0E3A8D8850050A8F30440AFCE138032664000943187845B100009';
wwv_flow_imp.g_varchar2_table(82) := '78E2A5048078003C01D00F802700C2191000427C9FA309001F47C52E0480429D27007A759E0094310302A08C3924DC820048C0132F2500C403E009807E003C0110CE800010E2FB1C4D00F8382A76210014EA3C01D0ABF304A08C19100065CC21E1160440';
wwv_flow_imp.g_varchar2_table(83) := '029E782901201E004F00F403E009807006048010DFE76802C0C751B10B01A050E709805E9D270065CC800028630EAF6BFDB9000019694944415409B7200012F0C44B0900F1007802A01F004F008433200084F83E4713003E8E8A5D0800853A4F00F4EA3C';
wwv_flow_imp.g_varchar2_table(84) := '012863060440197348B805019080275E4A008807C01300FD007802209C010120C4F7399A00F07154EC420028D47902A057E7094019332000CA9843C22D0880043CF15202403C009E00E807C01300E10C080021BECFD104808FA362170240A1CE1300BD3A';
wwv_flow_imp.g_varchar2_table(85) := '4F00CA98010150C61C126E410024E089971200E201F004403F009E000867400008F17D8E26007C1C15BB10000A759E00E8D5790250C60C088032E690700B0220014FBC9400100F802700FA01F004403803024088EF733401E0E3A8D8850050A8F30440AF';
wwv_flow_imp.g_varchar2_table(86) := 'CE138032664000943187845B10000978E2A5048078003C01D00F802700C2191000427C9FA309001F47C52E0480429D27007A759E0094310302A08C3924DC820048C0132F2500C403E009807E003C0110CE800010E2FB1C4D00F8382A76210014EA3C01D0';
wwv_flow_imp.g_varchar2_table(87) := 'ABF304A08C19100065CC21E1160440029E782901201E004F00F403E009807006048010DFE76802C0C751B10B01A050E709805E9D270065CC800028630E09B7200012F0C44B0900F1007802A01F004F008433200084F83E4713003E8E8A5D0800853A4F00';
wwv_flow_imp.g_varchar2_table(88) := 'F4EA3C012863060440197348B805019080275E4A008807C01300FD007802209C010120C4F7399A00F07154EC420028D47902A057E7094019332000CA9843C22D0880043CF15202403C009E00E807C01300E10C080021BECFD104808FA362170240A1CE13';
wwv_flow_imp.g_varchar2_table(89) := '00BD3A4F00CA98010150C61C126E410024E089971200E201F004403F009E000867400008F17D8E26007C1C15BB10000A759E00E8D5790250C60C088032E690700B0220014FBC9400100F802700FA01F004403803024088EF733401E0E3A8D8850050A8F3';
wwv_flow_imp.g_varchar2_table(90) := '0440AFCE138032664000943187845B10000978E2A5048078003C01D00F802700C2191000427C9FA309001F47C52E0480429D27007A759E0094310302A08C3924DC820048C0132F2500C403E009807E003C0110CE800010E2FB1C4D00F8382A76210014EA';
wwv_flow_imp.g_varchar2_table(91) := '3C01D0ABF304A08C19100065CC21E1160440029E782901201E004F00F403E009807006048010DFE76802C0C751B10B01A050E709805E9D270065CC800028630E09B7200012F0C44B0900F1007802A01F004F008433200084F83E4713003E8E8A5D080085';
wwv_flow_imp.g_varchar2_table(92) := '3A4F00F4EA3C012863060440197348B805019080275E4A008807C01300FD007802209C010120C4F7399A00F07154EC420028D47902A057E7094019332000CA9843C22D0880043CF15202403C009E00E807C01300E10C080021BECFD104808FA362170240';
wwv_flow_imp.g_varchar2_table(93) := 'A1CE1300BD3A4F00CA98010150C61C126E410024E089971200E201F004403F009E000867400008F17D8E26007C1C15BB10000A759E00E8D5790250C60C088032E690700B0220014FBC9400100F802700FA01F004403803024088EF733401E0E3A8D88500';
wwv_flow_imp.g_varchar2_table(94) := '50A8F30440AFCE138032664000943187845B10000978E2A5048078003C01D00F802700C2191000427C9FA309001F47C52E0480429D27007A759E0094310302A08C3924DC820048C0132F2500C403E009807E003C0110CE203500BA3DBBF19615D6EE7484';
wwv_flow_imp.g_varchar2_table(95) := '6FA2C6470FCCE60260B4158530DBEED8AAB577D9B6EDE351EB599426303DD3B6AF7CEB1A5BBF6173DA46AC8E16689C76EEF983E8D52C4C1620009209E337700880EB6EFCA999F18F50FC10E257F6077D3BF5C4D7D8587400B46DF59DEBECF16DDBE32FC1';
wwv_flow_imp.g_varchar2_table(96) := 'CA6881C7B74FD8D7AE5C6E1BB76C8BDE8385690204409A5FF2EAB900688E990D2F34B366F27E6C1020B0D72BAD7DF4A7ADD51A0958F4F44BBBDD9EFDDD655FB5835EB4AF1DB2643FABFEE74EAF17B5178B762ED06834ACD168DA60D0B7F1C929BBFB9E87';
wwv_flow_imp.g_varchar2_table(97) := 'ECCFFFE43D36DA8A7B02503D82FEB7E537D89E8B175AA7D3B14E97D9ED7C0A69AF18191AB6A1E1A63DF8F046BBEEA69576D7031BD236647592000190C497BEF83F9DFB26FBC373DEF4D4468301BF9B4C57DDF51DAA5F5452BE98578A5EFA5AE6976E9873';
wwv_flow_imp.g_varchar2_table(98) := '8727E73539356DFF72D532FBE7FFB7CCBA4473CE113CEB2C0240466FB6606CD43EF7B10FDA11871E24BC054723800002F9051EDBBCD52EB8E812BBE78187F31FCE8973020480F083507DEFF2331F7EBF2D3DF648E12D381A010410C82F3031356D1FFAC4';
wwv_flow_imp.g_varchar2_table(99) := 'E76DD55DF7E63F9C130900F567A00A808B2E38CF8E5F7A8CFA2A9C8F0002086415989E99B50B2FBEC456AC5997F55C0E7B5A802700C24F030120C4E7680410900A1000527E9E00A8F90900F504381F0104540204804A9E27007A79B3B93FBFCCB7008A18';
wwv_flow_imp.g_varchar2_table(100) := '0597400081CC02044066F0E7398E6F010867400008F1391A0104A4020480949F6F01A8F90900F504381F0104540204804A9E6F01E8E5F916401133E0120820A011200034EECF3C956F010867C01300213E4723808054800090F2F32D00353F01A09E00E7';
wwv_flow_imp.g_varchar2_table(101) := '2380804A800050C9F32D00BD3CDF022862065C02010434020480C69D6F01E8DDE76E503D01F8EC5F9F6FC71E79582137E21A082080401E816DE31376E14597D89A75F7E73990539E23C0CF00083F1455005C76F10576C881FB0B6FC1D1082080407E8147';
wwv_flow_imp.g_varchar2_table(102) := '376EB60B3F79A9DDFBE023F90FE7C439010240FC4178DB6F9F6C7FF2076FB7919161ABFE8ACCEAEF94E72B8FC0C8F0B02DDE63A1A5FC95B28F6F1FB75EAF9FE7C29CF22C816A6EFBECB5387A7ED55FE53C3E31659D6E17D94C02D56F7AC64647ED918D9B';
wwv_flow_imp.g_varchar2_table(103) := 'ECCA1FFCD0FEEFD53FB20EFFCECBA4FFDC63080019FD8E8397BFFF1AB3D103CC9A636683EA17FF81F846353A7ECF9759FBA88F5B6B6424EA4D57B176CBEDAB6D6666965F44A204E316359B4D6B361AF6C0FA0DF6CEB37FC7465B71F36B773AF6FDEB6EB4';
wwv_flow_imp.g_varchar2_table(104) := '05A33BD6F7FBFCB317379190550D6B346CEEFFCDB6DB76D12557842CE6B5CE0204803368E876CBDFB72C7409AFF712D8FB049B3DEE521B6DB5A276AC7EE778CBCA5536353D13B59E456902ED4ED7DE70CA89D1F36BB73B76CB1DAB6D9AF9A50D227275F5';
wwv_flow_imp.g_varchar2_table(105) := '04E6637FFF75C22BD2CF631901E0A198B00701908097BAD421006EBAF5766BB7DBA937617D8440F50BC8A9AF7D4DFC138076C756AE596BE3139311A7B32455A00AE84F7DF11BD6E9F02D9854CBD8F50440AC9CD33A02C00932661B022046AD9835044031';
wwv_flow_imp.g_varchar2_table(106) := 'A388BA080110C5E6BA880070E50CDF8C000837735B4100B8512A36220014EA7E6712007E96B13B1100B1724EEB080027C8986D088018B562D61000C58C22EA220440149BEB2202C095337C330220DCCC6D0501E046A9D8880050A8FB9D4900F859C6EE44';
wwv_flow_imp.g_varchar2_table(107) := '00C4CA39AD23009C2063B6210062D48A59430014338AA88B1000516CAE8B080057CEF0CD08807033B71504801BA562230240A1EE772601E06719BB1301102BE7B48E0070828CD9860088512B660D0150CC28A22E420044B1B92E22005C39C3372300C2CD';
wwv_flow_imp.g_varchar2_table(108) := 'DC5610006E948A8D080085BADF9904809F65EC4E0440AC9CD33A02C00932661B022046AD9835044031A388BA080110C5E6BA880070E50CDF8C000837735B4100B8512A36220014EA7E6712007E96B13B1100B1724EEB080027C8986D088018B562D61000';
wwv_flow_imp.g_varchar2_table(109) := 'C58C22EA220440149BEB2202C095337C330220DCCC6D0501E046A9D8880050A8FB9D4900F859C6EE4400C4CA39AD23009C2063B6210062D48A59430014338AA88B1000516CAE8B080057CEF0CD08807033B71504801BA562230240A1EE772601E06719BB';
wwv_flow_imp.g_varchar2_table(110) := '1301102BE7B48E0070828CD9860088512B660D0150CC28A22E420044B1B92E22005C39C3372300C2CDDC5610006E948A8D080085BADF9904809F65EC4E0440AC9CD33A02C00932661B022046AD9835044031A388BA080110C5E6BA880070E50CDF8C0008';
wwv_flow_imp.g_varchar2_table(111) := '37735B4100B8512A36220014EA7E6712007E96B13B1100B1724EEB080027C8986D088018B562D61000C58C22EA220440149BEB2202C095337C330220DCCC6D0501E046A9D8880050A8FB9D4900F859C6EE4400C4CA39AD23009C2063B6210062D48A5943';
wwv_flow_imp.g_varchar2_table(112) := '0014338AA88B1000516CAE8B080057CEF0CD08807033B71504801BA562230240A1EE772601E06719BB1301102BE7B48E0070828CD9860088512B660D0150CC28A22E420044B1B92E22005C39C3372300C2CDDC5610006E948A8D080085BADF9904809F65';
wwv_flow_imp.g_varchar2_table(113) := 'EC4E0440AC9CD33A02C00932661B022046AD9835044031A388BA080110C5E6BA880070E50CDF8C000837735B4100B8512A36220014EA7E6712007E96B13B1100B1724EEB080027C8986D088018B562D61000C58C22EA220440149BEB2202C095337C3302';
wwv_flow_imp.g_varchar2_table(114) := '20DCCC6D0501E046A9D8880050A8FB9D4900F859C6EE4400C4CA39AD23009C2063B6210062D48A59430014338AA88B1000516CAE8B080057CEF0CD08807033B71504801BA562230240A1EE772601E06719BB1301102BE7B48E0070828CD9860088512B66';
wwv_flow_imp.g_varchar2_table(115) := '0D0150CC28A22E420044B1B92E22005C39C3372300C2CDDC5610006E948A8D080085BADF9904809F65EC4E0440AC9CD33A02C00932661B022046AD9835044031A388BA080110C5E6BA880070E50CDF8C000837735B4100B8512A36220014EA7E6712007E';
wwv_flow_imp.g_varchar2_table(116) := '96B13B1100B1724EEB080027C8986D088018B562D61000C58C22EA220440149BEB2202C095337C330220DCCC6D0501E046A9D8880050A8FB9D4900F859C6EE4400C4CA39AD23009C2063B6210062D48A59430014338AA88B1000516CAE8B080057CEF0CD';
wwv_flow_imp.g_varchar2_table(117) := '08807033B71504801BA562230240A1EE772601E06719BB1301102BE7B48E0070828CD9860088512B660D0150CC28A22E420044B1B92E22005C39C3372300C2CDDC5610006E948A8D080085BADF9904809F65EC4E0440AC9CD33A02C00932661B022046AD';
wwv_flow_imp.g_varchar2_table(118) := '9835044031A388BA080110C5E6BA880070E50CDF8C000837735B4100B8512A36220014EA7E6712007E96B13B1100B1724EEB080027C8986D088018B562D61000C58C22EA220440149BEB2202C095337C330220DCCC6D0501E046A9D8880050A8FB9D4900';
wwv_flow_imp.g_varchar2_table(119) := 'F859C6EE4400C4CA39AD23009C2063B6210062D48A59430014338AA88B74BB3DBBF8D22BACDBEB45AD6751BA0001906E98B4030190C497B6980048F313AF2600C403483CBE7A02500540AFD74FDC89E5B1020440AC9CD3BA6FBFF75ADB63940276E20CDB';
wwv_flow_imp.g_varchar2_table(120) := '860008F32AECD50440610309BCCED66DE3F6BFFEF92AEBF707812B79B9970001E02519B9CF65EFB8C15EB2DF54E46A9625091000497CEAC504807A0269E7AF7FF431BBECF2EF1BBFFCA739A6AC260052F41CD67EF8F52BEDAC633739ECC416C102044030';
wwv_flow_imp.g_varchar2_table(121) := '59490B088092A6117E97156BD6D9BF2EBB397C212BDC04080037CAB88DDE7CD4BDF6A1DFBA276E31ABD2040880343FF16A02403C8084E3AB1FFCFBD6BFFDC8EE58B73E611796A60A1000A98289EBF71CDA6A579E776BE22E2C8F122000A2D84A59440094';
wwv_flow_imp.g_varchar2_table(122) := '3289F07B8C4F4CD9FFFCC72BAC33180E5FCC0A370102C08D326EA3F6CCA4FDB737DF6D6F3C7A73DC06AC8A172000E2ED0A584900143084C82BDC78DB6ABBF207D75B6B6C51E40E2CF31020003C1413F6A80260E981E3F68577AE4ED885A551020440145B';
wwv_flow_imp.g_varchar2_table(123) := '298B0880522611768FEDE393F6E56F7CCF1ED9B8990008A3737F3501E04E1AB6611500D5D75FBCE13E7BC72B1E0D5BCCABD3040880343FF16A02403C80C8E3AF5E7EB3FDF0E69573AB79021089E8B48C0070828CDDA63D53FD11C0810D3507F6A5DFBFC3';
wwv_flow_imp.g_varchar2_table(124) := '8E7A117F2430D632781D01104C56D20202A0A469ECDA5D6E5FFB73BBE2BBCBADD7ADFEDB270D6B8D2DDCB585BC6AB7081000BB8575D737EDCC4EDB60B0E3BF8455FDF7003E77EE1ADBA3D5DDF50D7865BC0001106F57C04A02A08021045CA17AE4FFF9AF';
wwv_flow_imp.g_varchar2_table(125) := 'FCAB55FF09E0EAABD168DAC8E882801D78A9B70001E02D1AB85FB7336BFDDED3BFE0BFE2E071FBF45BEF2402021DA35E4E0044B195B288002865123BBFC7DDF73E64977FE75A9B9C9A7EEAC5CDA1611B1E19DDF9625EB1DB040880DD46BB6B1B57BFF857';
wwv_flow_imp.g_varchar2_table(126) := '11F0CCAFEA49C047CF5AC7B703768D30FE55A901D0E9DA4DB7ADB476BB137F0756460B54FF09D9D34F3EC14646E2FE28D96CBB63B7AF5E6BE3933B7E0E872F7F81EABFF77FE3ADABEDDF6FB8ED39FF9C54BFF85711C0974E8000D0D9CF9D5CFD2EA633FB';
wwv_flow_imp.g_varchar2_table(127) := 'DCEFFB573F13F067A7DFCF0F06EECEF9ECF9729B78E93FD81E0BE31E43CECCCEDA4F56ACB24E8700D89D63FA657BF7FA7D7BE3EB4EB646A31175FCF68949FBD95DEB9EF5BBD2A88D58F4BC021B376FB56B6FB8CD56FEECE7CFFB7F1F195D183D3BC87D04';
wwv_flow_imp.g_varchar2_table(128) := '08001FC7A45D7EF1DB00CFDCACFA2382EF3CFE51FE3B0149C2BF64F1C2C36DFD61FF68072F7951D4EED5BFE0D6ACBDDBFA4FFC0C47D4262C8A16A802EC4D679C16FD8BC83D0FACB787D63F62DD677C0B2EFA322C7C4A60B6DDB61FDD7C87FDE8A77758FB';
wwv_flow_imp.g_varchar2_table(129) := '97C4318FFFCBF8C0100005CC61D0EF5BA7FDF4F7C69EEF4AFB2D6ADBA92F7EDC5E79F0763B72BF295BB27896BF453075768D21FB870D7F6B27BD6AA91D71E841363ADAB2E64E7E37593DD2ACFE1C73F5034DB7ADBAD36666A6ECC0FDF7B5E1A1A1D4DBB0';
wwv_flow_imp.g_varchar2_table(130) := '3E40A0FADDFFCFEF7FD80ED8FF45F6D6334FB3D1D6C82E8740A7D3B5871EDD68DF5EF6636BDAC00E3BE4001B6A36034EE7A54F0A747ABDB927289BB76CB7471EDB6C77DDFBA03DBC61D34EFF8ADF91D6026B602EFF201100F211ECB840AFD3B65E8F47C9';
wwv_flow_imp.g_varchar2_table(131) := 'B9C7B1CF5E7BDA7EBFB6B7EDBBCF9E73BF08ECEC7172F537970DFA037B7CFBF85C044C4C4ED91E8BC6AC353292FBEAB53DAFFADE7FAFD7B3F1C9691B1E1EB2E38E79B1B58647ACD9DCF9B702AAF9F5FB7D7B7CDBB83DF8C8469B9D6DDBE2450B6C686868';
wwv_flow_imp.g_varchar2_table(132) := '97D6D716FD79DE78AF3FB07EBF679D6ECFBADDAECDCC76E6BEA5B9B3AFA1A1111B1A69EDEC65FCDF33081000199077F58867FE91C05D5DC3EB10400081F922C01FFD2B6B52044041F3D8F1AD8099B9FF30105F082080C00B4BA06123AD311EFD17345402';
wwv_flow_imp.g_varchar2_table(133) := 'A0A061545719548FD4DAD51F0B24020A1B0DD74100816881EA17FF516B34F9599968C2DDB09000D80DA8A95B564F02AA3F19F0E47F2130753FD6238000022A81EAB17FF567FEF9A13FD5047EF9B90440793379EA46FC6060C1C3E16A0820B053017EE06F';
wwv_flow_imp.g_varchar2_table(134) := 'A744D217100052FE9D1F5E3D0DA8FE74C033FF73C13B5FC52B104000019D40F5E7FCAB5FFCF95DBF6E06BB723201B02B4A05BCA6FAE335D5CF07547FECA68A821D7FDC869F132860345C01819A0B34E6FEF86CF58B7DB33934F77DFE9DFD71DA9A8315F3';
wwv_flow_imp.g_varchar2_table(135) := 'F609806246C145104000010410C8274000E4B3E6240410400001048A1120008A190517410001041040209F000190CF9A93104000010410284680002866145C040104104000817C0204403E6B4E420001041040A0180102A098517011041040000104F209';
wwv_flow_imp.g_varchar2_table(136) := '1000F9AC3909010410400081620408806246C145104000010410C8274000E4B3E6240410400001048A1120008A190517410001041040209F000190CF9A93104000010410284680002866145C040104104000817C0204403E6B4E420001041040A0180102';
wwv_flow_imp.g_varchar2_table(137) := 'A098517011041040000104F2091000F9AC3909010410400081620408806246C145104000010410C8274000E4B3E6240410400001048A1120008A190517410001041040209F000190CF9A93104000010410284680002866145C040104104000817C020440';
wwv_flow_imp.g_varchar2_table(138) := '3E6B4E420001041040A0180102A098517011041040000104F2091000F9AC3909010410400081620408806246C145104000010410C8274000E4B3E6240410400001048A1120008A190517410001041040209F000190CF9A93104000010410284680002866';
wwv_flow_imp.g_varchar2_table(139) := '145C040104104000817C0204403E6B4E420001041040A0180102A098517011041040000104F2091000F9AC3909010410400081620408806246C145104000010410C8274000E4B3E6240410400001048A1120008A190517410001041040209F000190CF9A';
wwv_flow_imp.g_varchar2_table(140) := '93104000010410284680002866145C040104104000817C0204403E6B4E420001041040A0180102A098517011041040000104F2091000F9AC3909010410400081620408806246C145104000010410C8274000E4B3E6240410400001048A1120008A190517';
wwv_flow_imp.g_varchar2_table(141) := '410001041040209F000190CF9A93104000010410284680002866145C040104104000817C0204403E6B4E420001041040A0180102A098517011041040000104F2091000F9AC3909010410400081620408806246C145104000010410C8274000E4B3E62404';
wwv_flow_imp.g_varchar2_table(142) := '10400001048A1120008A190517410001041040209F000190CF9A93104000010410284680002866145C040104104000817C0204403E6B4E420001041040A0180102A098517011041040000104F2091000F9AC3909010410400081620408806246C1451040';
wwv_flow_imp.g_varchar2_table(143) := '00010410C8274000E4B3E6240410400001048A1120008A190517410001041040209F000190CF9A93104000010410284680002866145C040104104000817C0204403E6B4E420001041040A0180102A098517011041040000104F2091000F9AC3909010410';
wwv_flow_imp.g_varchar2_table(144) := '400081620408806246C145104000010410C8274000E4B3E6240410400001048A1120008A190517410001041040209F000190CF9A93104000010410284680002866145C040104104000817C0204403E6B4E420001041040A0180102A09851701104104000';
wwv_flow_imp.g_varchar2_table(145) := '0104F2091000F9AC3909010410400081620408806246C145104000010410C8274000E4B3E6240410400001048A1120008A190517410001041040209F000190CF9A93104000010410284680002866145C040104104000817C0204403E6B4E420001041040';
wwv_flow_imp.g_varchar2_table(146) := 'A0180102A098517011041040000104F2091000F9AC3909010410400081620408806246C145104000010410C8274000E4B3E6240410400001048A1120008A190517410001041040209F000190CF9A93104000010410284680002866145C04010410400081';
wwv_flow_imp.g_varchar2_table(147) := '7C0204403E6B4E420001041040A0180102A098517011041040000104F2091000F9AC3909010410400081620408806246C145104000010410C8274000E4B3E6240410400001048A1120008A190517410001041040209F000190CF9A931040000104102846';
wwv_flow_imp.g_varchar2_table(148) := '80002866145C040104104000817C0204403E6B4E420001041040A0180102A098517011041040000104F2091000F9AC39090104104000816204FE3FF475133B715117AE0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(543412007320741940)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/reports_ir_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000118000000A00806000000D76073200000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000054CC4944415478DAEC5D07785445173D6F5B7A4F082124212440E8BD';
wwv_flow_imp.g_varchar2_table(2) := '37E92876C486A8E82F2AD815E945AA8A8A8005515014104140100825F4D03B8416022101D27B36D9BEEF9F79DBDE6E360D020ACEF9BE25ECDB5766E6CD3D73EF9D7B67389EE70B00F880818181A1665128616DC0C0C070A7C008868181E18E41E6782033';
wwv_flow_imp.g_varchar2_table(3) := '3313D9D9D9904818F7303030D420C164656521232303212121301A8DAC751818186A9660BCBDBDE1E9E909BD5ECF5A878181A1E608462A950A9A0B251783C1201CE3791E1CC7B196BA87C0DE19C3BFA57FC99C5D6CF9D09BC86432D6A20C35068B6FEF76';
wwv_flow_imp.g_varchar2_table(4) := '4D707ABDF81E72B9BC4648950EB296C1F576EB49076AB125505365BCD3E4A1D3E9AA4C32F4EF2D110C057D506262A2F0978D880C3521745AAD56E85F54906F95585C5C5C50AF5E3D28140AE15EF4BEE7CF9F474E4ECE2DDF9782F671B55A7DDB832A2D4F';
wwv_flow_imp.g_varchar2_table(5) := '6969299A366D8AD0D050ABC09E3D7B16797979D59E40B95B1A296DDB5AB56AA1418306551E006E9960E88B4A4B4B83BFBFBFF04006869AC0C58B1741FBA458F01CC49CF6C2F23B2C117EEA2BA47D333A3A5AD0360A0B0B5154548441830611C1A8A2F641';
wwv_flow_imp.g_varchar2_table(6) := '65DCE8480C526CDDBA050D1B3682ABAB6BA5C2531E28F1252525A1A0A040A8272587DCDC5C141717A367CF07A0D168AA5EA82AB4494D81967BEFDEBDC2248F878747A5245395F6A95083A12F8F363403434D810E5C7A7D451D97AF54CBA08339EDFC96BE';
wwv_flow_imp.g_varchar2_table(7) := '7A4BFDD4C8397D1E2530D333B832C7A9E6419FE5A825D16362B38A5E6BF1675ACA48FFAF50B808F7A15A5CF9752F4F53A9390D868AB7338548269313ED5021D445CC03B70359652FD3F121172E5CC0EEDDBB8586EAD7AF9FA0AA323054AF831B1D7C2854';
wwv_flow_imp.g_varchar2_table(8) := 'A0A5200A0478D2B98DD63E5776E4A69DDF68B43719E8FF2DF7A2BF8949A132887D24D4727126539458A8366231CFC47162B43C010101F0F2F2AAD47743EBADD71BCAD50CE83DE9394EE59AD657642ADDAEF03BBBDC60D00B65AB49734CE68C506C2FCBBE';
wwv_flow_imp.g_varchar2_table(9) := '21B66FDF8ED8D8584115A52CFCD5575FE1B9E79E43E7CE9D99D43054CBA7201E215DDCDD615015A320570D6FFF00B84AF528D5E809BD18CB9809A66B6C5A81E563B997E52F75A86ED8B05E30551CCD1DDACF552A155AB4684106C9FE654C35C7F25173E1';
wwv_flow_imp.g_varchar2_table(10) := 'FBEFBF17FC3C1F7EF8A1704F8B1643CD9DE6CD9BC3C7C7C74A56E2B288CB470F97A7195032A4DC2895C888A0EB60E24933C112F27553C8A12332A7D393DFC871698D07C272D6328ADBF58E6A30625006A704337EFC780406060AC71A366C88458B16A15D';
wwv_flow_imp.g_varchar2_table(11) := 'BB76C20B6560A82EC12808B9A49DDC8A99F396C220E5A09107E39D7153D03EDC8BC895541030835E8B529556746DF9A615D5004C83A301DDBB7747A74E9D9C8EC8C2B3150AE13CCB358E65B310012591962D5BA24E9D3A0259B993325BB423FA57200707';
wwv_flow_imp.g_varchar2_table(12) := '9273AE61F0660DC5FE374EE606B93605235E7A1B8D068FC5E861DD09016AE14ECC157012B84834F873F50AF83679049E296B70B0B411DE7ABA0F789D063CE119AD4A4DFECAE1EA2213B43F3D39AE37CAE022271A11210E83460D8D8E10B68433975D2ED4';
wwv_flow_imp.g_varchar2_table(13) := 'BBA4A444442236F2AE49C82A1B5D2CA04E355A380BB950444545098D9B9F9F2F789FA976B36BD72EE185B66EDD1ACF3EFB2C932606A7C22D746C8E0881360BDF2DFA118D1E198B714F37C5EA957F1181D04253700D5FCEF91AD78ADCF1DCF011E8DE2A54';
wwv_flow_imp.g_varchar2_table(14) := '103A4702B07DEC1D8FD461BB73E74E242626C1CDADAC06535AAA227DB4051E7C7010F94DE74002F6324067841E78E001A1FFD35955EA50A6A61205D5E42D1A9023C1382BA333D9727793E2F49EBD28501B71263E0ED94FF7827BD115CC9EFB0DAE957AE2';
wwv_flow_imp.g_varchar2_table(15) := 'A19E6DB1EABBAFE035408A179A7AC1DFDD03A917E23177EE0FD07937C6471FBD818C23EBB06E570254A51A0C78E92DB4F2B8829F56EF800E5E78F8F997D0B67E10D23332317BF62CC1D94C3596575F7D058D1AC5587D428E65BC233E18670C4E413DCB94';
wwv_flow_imp.g_varchar2_table(16) := 'F1E8341B9D59A2B876ED1A79796E56D2E9D3A78F4030D4AB3F70E04026490CE53A3385FE4548405D908B12620FF41BD01509BBBEC5F133D7D135241AEB639743133500EF3528C4A74B1622E6CBCFE1CB69ECFAA5B37E6AF9AF56AB43AF5EBD8916D3A35C';
wwv_flow_imp.g_varchar2_table(17) := '0D866ADD941CC472E44CA6E8F5D4FCA1FDBF76EDDA18326488F599F4377A9C4E6F97F71C5B19CB9697FA9E38AD125BD6AF47B7A12FE0FA9E35D8713C05C16717A128A433DEEDD7144579B9A815D30C6DDA77823EEF4FA496F0581EB705AD868C86FFA53F';
wwv_flow_imp.g_varchar2_table(18) := 'F0E31FEBD1D223099ADA6DF178D0456CDDBE03DE6D8A919074138DA21B424BB41783DE409480604294BD0492193A742862621A0BDA99BD79C9DF5982290F7E7E7E825377C68C1978FCF1C70587D68A152B849744CD274A3A54E51C33668C50685F5F5F26';
wwv_flow_imp.g_varchar2_table(19) := '470C4E411DB142C4B84103CFA050D4F5F5C48FF3BEC3FB43DB2237E1771CF06F84E60A8E5A0782E353C21969B787D160242680BD49231664B1DF906A18070F1E1406418BB62106EDA3313131E8DDBB77851A88C59F4327372891D4AD5B1757AE5C117C30';
wwv_flow_imp.g_varchar2_table(20) := '944F744478232323111C1C5CC607539EE62694D13C612477F540CAA9F53872D380AE054AB8283CB167D35AF4AE2327F5E7A12E2E241F2D8CC45C22FF42AFA11A930152D20E9C94CE56112348088ED323BC592344B9E6834B55C3CB3F065D5AE97136E118';
wwv_flow_imp.g_varchar2_table(21) := '361DB98ACE0D825144CA4F35319A0E44637428298ACB6232F36A36DE4656F6E5DB9C3B9444C4ACDCBF7F7F615E9FFA626821870F1F8E254B9660D2A4499832658A6026518F3A0343B9AE44CE2268D49BA847B1DA1DA3DE1B8BEF7EF8095F7C7512DE6D1F';
wwv_flow_imp.g_varchar2_table(22) := 'C7D0E71E45B0A40DCECEFF01F38E2BF0D2F03710C8950A9A8E94B3A9F196B416675A37258D468D1A09FDD559601BBD8E0E9A260DA67CD3860A1FF5BB6CDEBC19E7CE9DC384091388606A847B52D9A044456786C433AEE2A9E90A9DBC3C75D66A7029E13A';
wwv_flow_imp.g_varchar2_table(23) := '7A3FFE3AC6BC3504CA9B3D30F9B3BF11D36B28AEADFE19DF2E3E8AE7468CC280260DB1FBC44184368844FDDA0DD1A57304E67EBF0052D770BC37E63124C62F03E76A84CE2508F523887606034A9445A813DD063DDA4459031CA979449DDB945CEC8890B7';
wwv_flow_imp.g_varchar2_table(24) := '04F4D997FDB6DFB778453B1A04451B9E92046DC01B376E08A411161656EE0D525252F0F1C71FA371E3C6983A752A9320860A9194749974F25261C4A7D3A254EA646414F7F3F1006F200422E3505890073DAF80BF3739463ABC5A5582A2629535BE242F2F';
wwv_flow_imp.g_varchar2_table(25) := '9F6813C582E64009820A0DF511D2D199FA4B2C1A4C7C7CBC709C6AD68EA00247432C3A76EC28081B0535F7E3E2E2C87DEBDBCD3C513F2395057A0D4D04A6726299D4B06842D48560D184E8F3A8E6441DA9742284CA14752DDCBC7913AD5BB7B13ECF6292';
wwv_flow_imp.g_varchar2_table(26) := '79FAF8C15566406E4E0138853B82FCDC51ACD4C0C3DD55D0E2D4A44EF4B81C1A680C72C88C6AA88D32787BC849FB70282A2884CCC59B1C57A2D4E8020F525D8D9E839B8B8CCE0D41AB52A2A854EBC484B30F03A0753E7AF4281A3488AE52A05D155078DB';
wwv_flow_imp.g_varchar2_table(27) := '894611111182D9C4729618AA38A699E3606CF1205400D24B8AAC5A8049E3D021BDB458980521369210E36ACB7F3138313F2CA697C531AB12A2662592F2557EAA7950B3C72278F45A67BE129D4E2BF4734A5AD7AFA712929398A7A9A91F4726FCB55D8B72';
wwv_flow_imp.g_varchar2_table(28) := '6763CAD30C0AF3B25108739E96B61469E94AE1FFCAE22293F542EBC093B6E0CD91BED46C24F7200A8AA0124A68F94BB360148E97426DBEA6B8C8A49A4868EB71CE4C377B82A1019055F5BBF00E3139E5C5CE54E8E4AD2A83B1540286EA928CA94372D6EF';
wwv_flow_imp.g_varchar2_table(29) := '52292790842DD88D745AA90C1298CC145EE470759CE9B0CD1C49ECCC21AACD542430168DC80293D963FA9882DE783B9F0DD53C020383D0BF7F044CA2C10B0446636AE8EF966B2CF7E1798343F23084E396675B04DC54069BB04BA53273FD4542CB59CA69';
wwv_flow_imp.g_varchar2_table(30) := 'FE4BAEB18B27B67CA7BE21CB21AE6AEFC222F7522957AEF3BC3C9271F6FF0A09C6142969B436149D92A3C7AA9261C9C0505167A42A383533341A1511FE924A225FCD02E7103D4F8551ABD508026AE9ABA6E4C2122147E976D631A244413F4AA552D05AC4';
wwv_flow_imp.g_varchar2_table(31) := '51C1625073A7225022A29A11D56E2C1A0B2DAF52594AAECD2DA78C8E51CB7727FF480C4AC86AB5CACA03777416893E803AC1A82D999C9C5C63D3560CFF1E9802CD8C77F5BD5A9CA374E6F156898AFA3FA8FFC4E2E0A5F129D437B267CFEEDB5AEAD5A4E5';
wwv_flow_imp.g_varchar2_table(32) := '73B87AF5CA6DB509AD1F25D2264D9A584990A612F8F878E3F4E95322ADA9A2DCA34A5B0235999F649179EA1BA3BEA89A5AD1B28C93D7A406065A93BA684C0BCDBD7036D5C770EFC2F27EE92CCBBDAC1589359B1A11882AAC7152553892B7855CEF85BE51';
wwv_flow_imp.g_varchar2_table(33) := '43B077F23A3A6EE883D2D3D3D1B56B5781D518EE2F1C3F7E5C50F7E98072AF2F917A2F94BF0605F79E811DC1501B992EFA4DA7A82CD18B948519B9DC9FA0A60525181AD3F45FECFC0C779960E8541CED70D4EF6259F2AFFCC57118EE75D0774C3554EA2F';
wwv_flow_imp.g_varchar2_table(34) := '60BB4830DC7182A11DAE6DDBB67627D06025B688F4FD093A334897DAB0F861D87B66A8F141ACB2135887FBEF80BD6B86BB4E306C6A9A8181E18E114C5964E291B6FDB12FB544F8B678D10A9C3877059F7DF93BD28B6C679DDEF60BFA0F1884817DFB62DA';
wwv_flow_imp.g_varchar2_table(35) := '775B9CDCA708D367FE82E45C46600C0CCC4432E3D2D6E5B8AA3A84C51BB70ADFD3CF5D87325F89D493376009F62D4ADA8CD7C6FC88F9AB3661CB864548DBB51E09848F0A1276E2F5C71FC7172BF693B33C70FDC44DE8F2D311BBE3B870DDC17DF148CF2D';
wwv_flow_imp.g_varchar2_table(36) := '42FCDF7FE1E3D1EFE38B857F62F30F13F1FAF8CFA0811E3B36ACC5C763DFC57B0B96999E7D211EC3873E8D2F966E606FF2563B00DB839CE10EC2CEC94B67136898B42520C8B209939864BE5A7E1C4B37C763C107DFA074E4937075518093C82091DA96CC';
wwv_flow_imp.g_varchar2_table(37) := '3C77FC045AF71F8318217CAF3E16AEFE1ED05F45EF773FC7079F4CC1C61953F147C044F8068742A2BD899FE71DC1837DDA62CBF2BD78F0E5507CBDF873440E198FC42FDF43FA4B13E0776D35D66F6F811F177C8D07468E41F2EF4B11DBBA23D6CE9C82A6';
wwv_flow_imp.g_varchar2_table(38) := '4F8E8226E712D209B985B0553BAB4D2E34A2D6CBCB1B7A3D4B05A91C773F7CFF4EBFFF3B3D7B684730A6CC521A0FE302534629ECB251F5D947706CD366A4AB8163077661C5A1D3F0F3F136072CDBCEF3F4F0408E32D5A6F55C3A017DFA6978F57A060F77';
wwv_flow_imp.g_varchar2_table(39) := 'EB0CDFE70762DFC5E3D04B8284F86C57B9B7709E87BF1F79AC06B56B0DC0F4E71FC63AD51E783E3E1CADDCD370489585B0D02198F0C4202C4D4C4551BE37DE1F3B0CE33EFB018A067D21619656B541071017173979DF0A32903873F09AC2D14D1B92D184';
wwv_flow_imp.g_varchar2_table(40) := '3E1DFCFC7C2B8999A94A087BCD87B9DFA116B2D65FA3D142A52A1516562BBFFEE2DD10FEDDA0C442A3F40302FCCBCDB9AA7182A1A04175AEAE6E2296935AF751F9F5AB49E8404C9FEF3F7E0AE97B9663C8D44FD1A1454F34E675D0EB4AACCDDBBCE78328';
wwv_flow_imp.g_varchar2_table(41) := '9EDA1FF3D6B4471F9F4B1830F27BFCF5D77C70C72762EFB94EF87BD31EB41E36125967E9BA1A5EC82C5C850347EA60D7F2B5E833BC2F744A3718B5404E5E1E5CF4C4B4D295A244A786416D52E795254590165FC6A1848B98306B0E3E7DFE65AC3DF51ADE';
wwv_flow_imp.g_varchar2_table(42) := 'ECC056D1AB2EC1B8B9991681A69FCACEA51635DDDBE73FA9BB085BA318EEA3FAF344A1282503CC9D0DA275BAA29D6549429365C49B09994740E88378EBE9A784DF427A3E86B7CE16A3A8764384D7AF833ECF7681B787F9265E31F87DD56A4C98FE0D0EE9';
wwv_flow_imp.g_varchar2_table(43) := 'E4F869D51AB46F520773468FC0F8C913D0B8C30B78FEE1FE90EBA408886A8469EFF5C2377317A2F1AB7D11111A823E4F75005D5EA663E74120CA1082DA74414BCF20289E368D1C2D7B77846F641B48024F63D6ECE968F6F674BCCEC8E59660198D2BDA11';
wwv_flow_imp.g_varchar2_table(44) := 'D1622E8B57ECAFAE16F0EFB140AAAF3D59F65D32181CEBCF8B0A7D6F4DF1DBD6ACA9CAB22C15D5AFE2BADB253BD2DD016886AD383560FFFEFDE8D6AD1B8B91B80F919090006F6F2F8487475468F658F611A251DD959B08DC6D087A4D082A2F68DDE5F5D7';
wwv_flow_imp.g_varchar2_table(45) := 'EA9B77BCB0860B4D02A6CB190889C09460F8F2CAFA6F221B7159ECCB4509866E674B57ACB427981ACDF076BEA29D8DDD18A9DCFF6692F89D5736E2C1E9BE3ECEFD1055ED90B77A6D392A39517DA9EA4F85472A4C3C484CAB58097D5982D0103F616333DB';
wwv_flow_imp.g_varchar2_table(46) := 'E2D68E7E13BEDC725A1762B2FA2CF80A88B26201BF7B5A19EFF4FF15EFE1C45BD40FF37FABA3A5F1159B48F60F649ED3FF821FA6AA0453F94A6735A381DCAA50D1251B345A2DE2B66F25A3B21A1CF9C0A022A769C091BF5A5521EAB77C5A4887A10B4AD9';
wwv_flow_imp.g_varchar2_table(47) := '0B4EE5F5B7998A7C35CA2BFEDD78874886BFA5F75EA595EB783191DEA60F8603E7649F19969F72BFC2B2C463751613B32C5769771FA90C32295DEBD2286C9F6119F4380095DDD671FD1509D1402C4B3D1AE9A6F2E5CC7070E6BD9A7987FAAC5BB3167DFA';
wwv_flow_imp.g_varchar2_table(48) := '7446502D3F72249D7C94E49305A832A97A832D6B17E19CFB04346D1C2EDA849EBF758124E590CB64B05FDB565F41BD79A18E744D5DBDC53421F790C96C4B5DD23D8C8C3C5FA5F6BA5592A94883E1483B524D906E8722ACA860DD038A2F67DF28D82D6B5A';
wwv_flow_imp.g_varchar2_table(49) := 'A10653E6251264E42A211336A93193B0E5AFF5CD3A7CBFAD5E2F22FBF27E37A26C88A0F136EE2DA9E2B1EA961595D4E176DAC878EBD7D18EE0E2E22AAC5CEFE9E97E5BDA874CAE20B7D5239F982432771F78B929A0239D920A9DC1A825C252FE7DE5E45A';
wwv_flow_imp.g_varchar2_table(50) := '8E331241D75B0942AFD140671E315DDD3C8475666D4460EE97C4F4911316129671B5088AF937B556036F0F72BE2A0970D3E28F9F37A2435B6F44D6275DBD340FEE8A52A8D4BA1AEBAC9CD100B5AAD42A653C1129B95C2A90AD7352E7A0D7AA85FDA515C2';
wwv_flow_imp.g_varchar2_table(51) := '16AE4661DD618D4A6D2265894C882DE30D7AE80CF6F7902B14A65D02B4BA3B38E8D0AD7025282ACC8501AEC26E0F3446CA34CBA827CF363A9011A9AF4C229CC33B190CEC0986B3D8D846A1B1E88505253A0C9B7352D80281179AC5EE64BBD1AA324F332F';
wwv_flow_imp.g_varchar2_table(52) := 'AC112FB249795836CA11B65FE0CABB4EB48B1E6F1E462DCB1B966FEB96EDD896AEC8956B3373D661DA569EF25468CEA6DD95391FD57260F2D6FAD8EC5D4B6880DDCBB1A810A22183373F9FE31CEACCC36E2579FB15E089FCE965681E908329C3824CEBC6';
wwv_flow_imp.g_varchar2_table(53) := 'F24673BB386B4BCEEA7BB1F50FD2790849A97392F0E5B4E9D875F62A646EC1787DC20C0CEE1A838D4B7F4154B7C7D038CACF3606E835304A14909963AB72920E627B7C319E7BB93F346A2D640A1EBFCDF904EB0F5F808268451EA1CD30EAA377D12EDCCF';
wwv_flow_imp.g_varchar2_table(54) := 'AEEDF425D7B0EC970378F4B5E7E1A5E045E586B06F12A7CD01FCE4D8B022166367FC8D260D6B61CDB76DE15AA700127D8969957EC06103B78A9CB612D16E03B6FABB1022C8B8780863C6CC81CADD0D3C210ECEBD2E3EFB6E2E22BD6C5BA5F08468353AA3';
wwv_flow_imp.g_varchar2_table(55) := '40EAF4095BE68EC31E794BCC7E6F18A47433B992144C7E6702AE961241367008EFF430C6BF3B147E0EDBADA49ED985C3E72418F25C4F5B69793D310BF555EC6BB6E3CEEA43779994494AB16AEEA758BA351EC5A50A3CF8E2288CFBDF6348D8F5176E68A2';
wwv_flow_imp.g_varchar2_table(56) := '30706073FB3B6A32B07CE1560C7CF94504787244EBD440CFCB09794AA0D5A89DF9602C830227AC9C4E55DFBAE121707525A71A79EBD4B5292CC2D2D105E3CA760F2A6CBCBD400B1592588EDB04CAEA8CE7CD2C653453914860794E4C4A563623A3875988';
wwv_flow_imp.g_varchar2_table(57) := 'CCC2661176A15C2239179E47AE13FC7A94651D34004E7CBEF51A73B18C2201A585B76C8447AEA1EF4578A4E5BE9CA50CA272194D246AABA28834CD65168E9BC99A33B3B57D992DCFE1ADBE370BABF32226E2ACE632DD96D5DCD696A6339ADBDFFC3ED446';
wwv_flow_imp.g_varchar2_table(58) := '397C255AF3E6EFA6C2F165889173E20CB6FD9F6A17C7F7ADC66F7145883BB8058716BE8355CB7662408C0EF3BEF9194FB83743C3F08688DFB107A5F20074E9D60186AC6BB8965E40EC80121CD8BA1C7F1EF044CF27BAA396878B30425EBF7613112D1EC7';
wwv_flow_imp.g_varchar2_table(59) := 'EB4FD6C7ECB1EF61F6774158F5E95B38B36F3BAE1771E8DCAB0FB20F6FC39C1F37A141FF41E8585787ADDBF7C13BA2353AB7AC273485C2B504BF2CDC81D19FFC8DA0206F9C4D54A2E7F34710B7C8172E8A12527EA95D9D50E1E0C895910DF1757A6D2E6E';
wwv_flow_imp.g_varchar2_table(60) := 'E4FA60F6EC4FE02B5541ADE151DB5587AB172F130D4083A4ABF968D1B1334203DC9096780A89395A242426222734DCFABE2512152E5F29C6D3E3C623447306E3A6CEC4CF4DDBE0833E75B07D5B3CE01D86BE3D5B62E31FBF60FD85483C4808469B7C1A7B';
wwv_flow_imp.g_varchar2_table(61) := '4E5E47ABAEBD1019EC2E6C0677AB75B1BE4FB91CC537F761DAB75B31FDB73568A6DA8091733661E8635DB17CE912A4F93C863E031BE3C2817D48CED3A15DF75ED027EEC2978B5621A46337847B94C035B83EFC2579389B9C8B666D9A55ECE435CB80302D';
wwv_flow_imp.g_varchar2_table(62) := '67D4390EA9547838FB11D56EF4B41FF985D30C96533827BE1DF10AF2CE9C6F966795FDBF8D60CC8262108DE82245C92CC9A0DBEA58C988B39C5F96EC0551E4CA3E5F681ECB3DEC1E00BB7338888EC3DE7EB535195746EBE1451A89F32A97D5342CF7B656';
wwv_flow_imp.g_varchar2_table(63) := 'CB68696798EB407E30D8DEA1819798B7614595B7A870F441D07FEB45B64193806D78FFCD77D0BE43274C9AF402B2CFAF81DA908F837BB6C05DB90FFB765F42497602F6257D880E8AB398F8F54634896A885AEE79C8CBD262CF89AB78AE5753A15179A90B';
wwv_flow_imp.g_varchar2_table(64) := 'C21B35439356ED316BF21B1832E30CB66F5A813F7EDF0589EE3A56ED3E86BE21859018B31017BB1A6B520E232387872A7B099E9FB108EE6E2ED01767A259B40B76AC788898F62A726E91901261D4660A7E1D092FA99263BB329F052F38965D89D691810D';
wwv_flow_imp.g_varchar2_table(65) := 'AB7E035F528080968FA2458B307C39E67D647884A134FD3422BABE8ECFDEE9803746BE03CF8886C84B484354434FDB7D09F94BDCFCD1BC757B340FE98C372E1D41ECF63DF8FD4621B61FBC8E82F404EC4F7C1B92AC5C64679660F5AA5F10BB6613023C3C';
wwv_flow_imp.g_varchar2_table(66) := 'B0E2CFBF3175DE0234F5A55A69D5EB63999A16D787C6F9B8F9D443BF56A15834EB23B469DB1E63668E47209F83F48C345CC93880356BE5D8F1D77E488D69581EBB0F8F342126B224077BB7AFC5F96307D1EFB52FF148E061CC98B11B9F7F3EC479B2A35D';
wwv_flow_imp.g_varchar2_table(67) := '47325A464B2A88461495EA51483F2A03B4065E346C8ABCCD8210F328D5186D4E680E4E1DC7065251ADC8D965472E3C1C845B2450764C20DE3F46342BC23B318878CEE628336B009CA3EA62AEAF981C6D0187A6EB3971BDAD5A1D6F2D3E67B987689B508E';
wwv_flow_imp.g_varchar2_table(68) := '13258F3A5611B67B88CF31694E9CB5DC65485E14CE6E311B3991F7DFCE31E7380BC239DF2ED5E916AA4EFA06356B7CEBB6C4E43933F1ECA3DD917E3A16EF8F9E863ADD07222AAC3D3E1A3F063D1A47A249DBE6A8EBEF8EAB576E42A9D120BCE53358B576';
wwv_flow_imp.g_varchar2_table(69) := '19860CEC85760FBC20904B6989DAE6CF9248CD2618B1FF757A0404D645BBCEAD101512809BD733D0B85B3F346DFD38DE7AA239CE9FBD84984E3D105A5B8A2D6B0F1082E2A051DD44BBBEFE68D1CD154D3A1A10D341854E7D0AE1533F192585D7A9FA2932';
wwv_flow_imp.g_varchar2_table(70) := 'F96EE32310B5019CC207514D5BA079AB5668105947204A8DD613C3C77E89EF278C8021270DE70EC42223A007562CFE09FFEB1D03955269563679D3FE49F4FF3273BD656E4433021AC6C4A045EB260876056E144BD1B6532F0C786A14BA7B6722552943D7';
wwv_flow_imp.g_varchar2_table(71) := '5E9D5198918A03F18980DCE5B6EB6334E8A0851F467D32156FBC3A04DE86647CFCCE7B48750945C7D6DD3164F8FB78F681B668DCBA31EA87D642FA8D344477E98B460DFA60E2D857209518E0E6EE056FFA7191104DD2BBAACB35F0822759EEEA82016D03';
wwv_flow_imp.g_varchar2_table(72) := 'F04487403CD1D617412E64E4209A998AA8851A32A2EBF49454A8138A9C4B54DE76D16EE08879A82164A322C7F466E1A5BEAB52AD917C488188E915E42A85DE28B20D79CE4A5465877C8B90DB7943EC7C181641B629169C557B31DD93875D90B27813303B';
wwv_flow_imp.g_varchar2_table(73) := 'DB4D24B04ECC059BCB85135D6A36E138DEFE7E2212B62B2BCF5B4D529E17D78B379792176984E25197B3B76BED762773A6259BEB6D21A21A58E787E630ED5B330723A62E454CFB5E68DB320A85C9E92821D2A12ECAC5899D9BF1DD777370C510887AA101';
wwv_flow_imp.g_varchar2_table(74) := 'A403EB89E0E888F899D2128A4B4B909A7012A9F92590093B24D21DD855B878721F8E1EDB83CF66FD4C88A4098E6F9C8FD84BA568D0200246BD1E069D0AD9C9177026319DA8102E7071F142FDA80668D33E1C03FA3F49CC3503E2D72760EFFA14ECFD3B13';
wwv_flow_imp.g_varchar2_table(75) := '7B3715918F063BD64BC1D5FD1AAD9A853A9814B73141AC2742A9972022A21E1A346A086FBE183A839A0C9AA6D1434D888496D93DA01674394938987006472F2743677D5DF43CA24D966661DF8E58EC8E5D86956B4EA04B5B7FFC38FF0B64BB8623949879';
wwv_flow_imp.g_varchar2_table(76) := 'BC4E4BE44A89A49347915A68241AAA02EE5E0168D3A1351A350C22F7B87DC7AFDCC505F99762F1F4FF3E86D6A711FAF5ED0C63660E0A8A4AA0D61623E9D4712C5F381D9BCFE593BA46131E25EF52A342EEF5441C3F930A5752952B17F763777C3CF25512';
wwv_flow_imp.g_varchar2_table(77) := '68755CE52692A563EB744684847862580B0F6C3C5784B07ABEE81BA9C0B4AD79F0F17685BE440BA5548A085F39AEDF28864A2643AB50054E5D50C227D803F5BC25B896568A5CA2D5F87B2BD038408E2BA92AF46A551B0D754A7C7D381FBC426AD52E383B';
wwv_flow_imp.g_varchar2_table(78) := '0B406C278885C742449C4DAF11394CAD668648C6C424C09B1D4056FF87BD95237A0CE720D47C993001CEE6E9166961229F914899E138917F4AC49B3673CCC1C9CBD91C209C9D539813FDEE302F2C52FAECCC2DCE66FA42149650551349BC15878690458F';
wwv_flow_imp.g_varchar2_table(79) := '67DEC7E08B9331E6AD91909211EBDDE953E02F0B42B78E8188DBB30DED5B3D84B367E390ECE98DBA7EEE70F70B46545480707DA3A62DE1B37A2EFEDC7E1CEF3CDD83F63244D60FC7F1F86D98F2C95684351E88CF27BF8DAC035E88FF79178EC87D51AF56';
wwv_flow_imp.g_varchar2_table(80) := '30DC3CEBA2595826369CCEC52B2F3F8F3FD7AD84C2B3165E7A2A0C9E1E0A74E8F506AEA5A4C355C81BE2CCD367526177C4164DEA40A72DADF6426ACE4C24231938656E01880C2AC1824FA711225183736D8006AD2620B261243CE4E477DF00D426DA5593';
wwv_flow_imp.g_varchar2_table(81) := 'EE2FE285CE47316BFA5CD40B8846937A75041F9EB085AEC41D8D1B0460EB1F0BB1C920418FE113F1E12B7DB034EB38761CDE0C5F973A08902810DDAC398CEBBF43B2D7043CD35549CCC6950869D81D911101D069B47665AC2CB4C4597DB42A3542DA3C89';
wwv_flow_imp.g_varchar2_table(82) := '712F5EC56F9F8F8541A6C0A3EF7D84F661B5A16ED3087B576D40CEC01E88329C42FC392F448484C3C52D181D9A6AB1ECEF0318FCD420FCBA6E19525C5D11D9B803D1665CEC5305043BD568B4EE81249771D8B6FB105627860A1D33BC5E205E8C04A6C666';
wwv_flow_imp.g_varchar2_table(83) := '12FBAC3646B592212E5B81410D15384E8824B43651D308734BC90B5C105F8A475AB960C56135C63E1C48CC2A2364AA527CBDA718A307D785424FBE731AE470EE08519760CA9A9B2826A398CCD9EC9088E8CACEB238D911CFE25B293313C3DB6B1D0EF714';
wwv_flow_imp.g_varchar2_table(84) := 'FB86AC42CC7356A7346F262347AEE1E1603239F119F18E333D223BDEEA18169121E774A2CB9E50AC5BAC72154E8839F1DB108D9357A09E3419A31E0A87977F6885CB3598B28935C2B430DD404C1C5A2E952BE0E6A220A68C16123A654D04A694A8B56E1E';
wwv_flow_imp.g_varchar2_table(85) := '6E824D2F23830EEDFC72178560FFD0DD456452234A946AA211BB4121E7842C6DD3CEA11CB9CEC36ECB53BD96681A44B8383A42930E4F6789E8B4B65C2113F6969613B38206CD4964A4331B34285169858DD94C7B469705D55CAA4B2E968DD4681BD01D18';
wwv_flow_imp.g_varchar2_table(86) := 'ECEA4F34283737FB445175A90A2EEEAEA4DE2A1838395CE512624EEAE1EA46DB89B4895C0A9E8CFEB49D78F3EC8D87877DD2A18694532EB4AB4E48DF21EC059DD1B4C5AE406C4450E8EC910BF94D43E447A7AFBE464AB3A9E9E68A76A902A42C9EA42C54';
wwv_flow_imp.g_varchar2_table(87) := 'EB32125352469EA722F591D31930CE9486C1130DD52855105935BD0B0579175A9D293481DECBB44795116A8DB1B09C64479106638939E1E9FEBC06C24C81985DCB1D2EA463FCB22B03214D43B071FD35A48406A2C3CD3C7CB4AE18DF0C0B47DFFA7A9412';
wwv_flow_imp.g_varchar2_table(88) := '3DB055131FB812AA3E94A646AF682F0CEB22474E6E21A6FF998DE6F5DDD13C9CD8970585C8208DE7E37476D9E22BB1385C6D731DF62463A74E8804CF36D3653139AC33612213C322FC761A825531E0ACA6984D786D24C439DBF2D3C18E2A4B400EDFCC53';
wwv_flow_imp.g_varchar2_table(89) := '3E9CD52F023BB38B179B76104F3F8B67AF393B5EB39BFEB65789EC7C50D50BB4B33F971240B1792B57D241ACE556162B6D0E67BADC83B6AC49A2519742ABE1EC22C74B95C54E9EAA3591BEC8ACD16A4DEDACB6D45B18C161D6B675776CABE332F5275A4B';
wwv_flow_imp.g_varchar2_table(90) := '71B1BACC79BA62A5256C0E4A8DE598CED4266A877EC0EBC93DCAD65BABD3C2D4AC1A278176A6BEA2BDC55D3FCA8D4C369745ACF50AF52C2DB17B9FA454D6DF2C614A1A75D940409963449E78DA8A37DA2B08EE2E52A45E28C467BB3261904890456E38AA';
wwv_flow_imp.g_varchar2_table(91) := '1DB1BBD4348E828C3EC4C4211A2A211FEA8F211A1067E22625195512924B104048BAC4C021C2532204F334A8E785BAD4FF52C241C273F6B328B09F51E2387B42E1E1440DE4503677426CEF581DBA9C9D80F2D6D8179B36611F9B2276E872655EB65D59C5';
wwv_flow_imp.g_varchar2_table(92) := '1A0E6FEF26B16930BC79EADA212583B38FF7E14482C7F1652D3471342B67572E7B7272F401594D3A70562EAC8C5F9C4D6B3A53B91DAFA96CB6A63AC456DEF7BBB16E7465F5AF4407B2BEF7EA5EEB78BE988C2BBF57F92910CEC20ECA3EC7FEFAF2DEA71D';
wwv_flow_imp.g_varchar2_table(93) := '3F3946793B0B1E73F4945BFA220DA5D018F4A081904609072F17090C5A03A40A094E9FCB8757801F16BF568F98424AACBFA286A79B14C7CFE4424BD4AB67BB05209410CCA62379D049DD317F7804BA04F23897A346C776FE6842D4178DC1E4842D3B5B22';
wwv_flow_imp.g_varchar2_table(94) := 'D62E60755696A9A0DD94B9BD43D466A27056E11433B2C50AB31FF59DD81D56D386B7920BEFA86D710E92CEDBFB416C536B0E335722BB86B33A8C38DBAC96C87EE21C88CECED1EB2C79CD71D6CBF228235F8D99245E589CE8B6675FCC1A5AD58E55E53767';
wwv_flow_imp.g_varchar2_table(95) := 'E7A186CAE930357F4BD71A6BA87DAA7BBDF1369F61BCEDB2CA9CCD18D9994866A1702176647A5A1EBE4AE3A1F0900A416032198F753B6E9A02E9746ACC58978ADA6E12DCCCD7A073CF3084781A50945D82E9EB6E20DC9D4346811E2A72B3B91BAE23D447';
wwv_flow_imp.g_varchar2_table(96) := '8AAC5C1DB4443812AE49A1D1715048CACC9FD84679BE6C08918534388E771A5064334B78075304657C34B6295E5E643239190DC4CE614E1C9A2636991CCA2EBA0767157638CC1A89DD4E5CD972F3B66966B1A90491239BB38B3F4299B81C7144AF85908C';
wwv_flow_imp.g_varchar2_table(97) := 'CE4C242781A08E9DF6F6D401D8CF10966F385670BCBCD1F9CE24EA56981C58E94276B7B0D00DCFDF665E64254E7BA3A99FDBEA733B8BF1F01524533871685947FA3231609C68DA562C28BC60F2406F445AA11E46991C017A2D761CCC85D14D06B9C188EB';
wwv_flow_imp.g_varchar2_table(98) := '8534884A0237B91472726D46BEC98652108A2B5619CC31609C2D9A55F857347B63915C917A616FEFD96257EC338439AB385A1BD21AF9EA90B6005E9CF760C7D0366D83336B108E52C88BA6B31DCB2E9A4AE638D194346F099171F89DB746D73AF6328BC3';
wwv_flow_imp.g_varchar2_table(99) := '9687635600E73025CEC321C2C72E5D40CC4F4EB954D43D2CD7710E9A5305DDA872CDFD1684A2E273EFDCE2E5E2FA3B7D26874AC880AF625525E2F0F20A9AE376EB2A3145AF730E53A17780CBCA683074511DEA31A78D2997F030109348C271B610765E34';
wwv_flow_imp.g_varchar2_table(100) := 'ABC38B6662A8BFC52C78D4BBBC6E5F96109AEE2E37D5422E855D509854622306991422E7ADB3B4005EF4166D334BF622C43B4CCB3A44B088C8C721D6CD2AE41C6F37972D8AA1B137C16CD3DA8EB352E50DD6F63338367F0CEC82DEC4A69CBD53D81C816C';
wwv_flow_imp.g_varchar2_table(101) := '9DD6E6ED521238CBEFBC28278CB319969C28181076336B12619D59141755BA3735D55CE8AC9029B5E06E2CE3F1EF5A60DB284C29EB51B515E0EE36AADF56BC3953BAB8B8E88E964CE63883141C1C0C5757575130559290BE2D211A8AC45C11A1798D9CB0';
wwv_flow_imp.g_varchar2_table(102) := '8E0F8DD5358F737609BEDE9E52F3B99C902D0AEB3926A990082FCA9CCEC4991C3CC28495C4962624A40C9985883A812D69E3A69D3638E749D5E65424E1FF42D94C3955128949B88CBCFD8823FC4EEE2BB19B71827D0E7A7961FDA2A91E5B3B98D84A289B';
wwv_flow_imp.g_varchar2_table(103) := '990C8C668996884C18E199A2D1DC92886A2BBBE93EF4BBA51E421B71F6C784059B8563E6F614F539A3255FCCDC26B67A5265532A1064ADE0DAF0F00DAEB4A3D015EDB45A0D7C7C7C2BB27B6AD228C1BF69C1338D462D2C644557F4FBF7A1FA6D45092627';
wwv_flow_imp.g_varchar2_table(104) := '2707414141778F609C414F6C976B29594236B525B3D4361AF2622A40C5AB82499CF84344EA8330B45AD442A3C3EF1067159ACB508EFBDB8E0324F669F396EF65426724A2296E731D7971F09AD1969069379BC497EF1E10AB45CE1648E124B6A93A4EA4F6';
wwv_flow_imp.g_varchar2_table(105) := 'DA9597B3AF2327113D531CED2C8EB9918833351DE6B125D6A9419541064FFF12A24972D5E894B764F7DCC6A8FC6FD312FEADB8B5B2DD0D4DB45282F1749560F6D04821A089AD7077FF8006C8A5A76A51AC36C0D59BB507C33F443072A9049D9A87B096BA';
wwv_flow_imp.g_varchar2_table(106) := '0F21D77841AB33B28660B863A8D41DCDDF25558AE11FB0DCD97B65F8A70986818181E1AE108C4E558C8222A5305559909F0FB546CF5A908181E17609C6E4A5DEBBF4733CF5705F448645E091C1C3B13AEE4C85572DFB7E2116FE79D5FEA0FE1A1E6DD806';
wwv_flow_imp.g_varchar2_table(107) := 'FB6E9A92B4267CF01AD69F2C666F8281E1BF4B30265BBDCF1BD311B7ED57F46CD70D5B76FE8561831AE0AB8F46A06FDFFE98F4D356E19C25733E41AF5EBDF1FBBEC390F2AE08D4BB61EB8FEFE3C78D474CB792B9A324F32446BD3BD5C437D9B97091B8E2';
wwv_flow_imp.g_varchar2_table(108) := 'FCCE2578B26F6F3C36620C68906FFCEAC5183C6C28860EFB004BE77C88DEFDFAE2409616C5378FE37FFDFB62D8FB539156C25EE0BF01D9A9893879FE9AF57BDECD641C3B7D098EFAAD322F13674E9DC489536790AD34653BF33A1512CF25E0D4A9533871';
wwv_flow_imp.g_varchar2_table(109) := 'EC18AE679902BF4AF26FE2407C3CCE5F4D77FE50753E0A4A45BB0D1894C82BFE673A445EFA551C4B48B28B03D36A8B915FACB23B4F559083045ACF93A7915168CEC0366870E5FC396BFD9333F24CD52BCAC0C1FDF13873F97A39E64411F295A22C6E6329';
wwv_flow_imp.g_varchar2_table(110) := 'F28A6A6AA036E0D2B9133870E8040ACC8FC8C9C9BBA58D2CA453A74E1D4BFE0A9175747B4CBA96864C669B5C4A4D4D457878B82DF2B424037FAEDA8187863E03E9CD733890C6E1FD573A61DEDCEDE8D54681315356E2C3A91F92FB48C84D959831FE1D5C';
wwv_flow_imp.g_varchar2_table(111) := 'D574227F9F161689D615A423B3B019BA869EC3969422044838D48A6E8BF4AB87D1E78511C8D8FB3B0A3CBA21E9C077D0767F170F156FC2465D377CD433087B0F9FC5BAA54B506FC85844DD5C896FB767E29987BA3009BF4564656509DB04D3354E2A038D';
wwv_flow_imp.g_varchar2_table(112) := 'FAA4D1BEE2204C8AF40BBBF0E9F76B7125211E97546168E97D05E3BE5C8AD2AC2BD871AA083DDA37B29EFBCB9C29883B7513CAEC4B58B66A1D1A767D10EA8B9B31FDAB9550B8499178F13C5CEB36814FFE314C9CFA038CDEEE885BFE2B128B83D0B1455D';
wwv_flow_imp.g_varchar2_table(113) := '1B51A52762C2D851B8A2688FCE0D03A12BCEC6BCC96F604B5A6DF46B1B7947DA8AD69D2E0121DE5699223FE508667CB90CD7120FE3D87505BAB6A2CFD760EC0B4391E2DA001D1BDBCAFDE7C24FB16EDF45688B53B17CE51FA8DDB21FDCB2E2317EFA6228';
wwv_flow_imp.g_varchar2_table(114) := 'BC14B872E13CA4B51AA0B6FE32264DF8122A776F1CF873058EDDF440B776B67AA97253316BFCEB38AA6A8C9ECDEAC0A82EC40F334761E579570CEA1C53E53AD1A87D0F0F0FC7378D659F8DC5E6D384E80A2E61E14FFBD0AB4F14BE9DFD3B9A77EF047742';
wwv_flow_imp.g_varchar2_table(115) := '0D45854590B9BA98B51303F20B8AE166EE17BC4E832242FCAE2EC21A391A59F59B9A17B6B810D849AA45CA89535892AA41895B5D8436EF87696313F1EB8FDF21B0FD73E815918D2BD7AE23BC6F10E42276CC2928C4D8AF17E0E96E9DB1B7B439D6BF2421';
wwv_flow_imp.g_varchar2_table(116) := 'A35B0196FDB40C97F3BCD0CD4F8A02F77678B96D1778D4EA80B6BECFA387219690CE29242AF5B87060276A4B43D18C742E867F16BBD76D44A78746E3993E2A7C3CE10F14F47A0353274C41C6B1E558B427DB5E5DF6AC8557DF7A074DFDDD90B0E51BACFC';
wwv_flow_imp.g_varchar2_table(117) := '65355EEAEF8F0EBDFBE285618FA0900C9741FE5E5830690A7ABD3E094FB40B8571500FEC3A5F68779F237BCEC03FBC3EBC5D4D5DFC4CFC09187DC310E42DBBEBF53FB0FE2FC4747B052306FB61F447DF9051BE174EFDB504E7B3D568ED6B4FC606850F5E';
wwv_flow_imp.g_varchar2_table(118) := '7E7738DA85FB23E5E0527CF7F3AF787B5833B4EDD61D2FBCF83C8A7395080CF0C1CFB3E6A0C5731FE0A55E849C9FEA8DB863F65ADCF13DA7E052AB1E3CDC4D6BF89EDF7F022AD7DA08F577BB7D6DEC7C2CE2B3FCB0F0CBF785EF6DF61F844EAB8242EE05';
wwv_flow_imp.g_varchar2_table(119) := '77A901BF7EF509F65FC8847F5877CC9EFC347E9B3F07093772E11DD3131F0E258AC6ACF944B3D4A171B7A178F1B106D59F45A28BE3946AF48257E6EAE1581C4E029E7DB403A4E78FE1F491B588DD7611C39E1880C4EDB1389DEE89557F1D410BED37F8F0';
wwv_flow_imp.g_varchar2_table(120) := '9B1DE61BE8905B9C01BA88DEDC4FDE40E6C9C390A8D3B072E50EF478F86134525D43CAC58B50ABA4C2C2C705B959282A2E464969090AE18F7ACD2210D1AC19A283DDE0EBEBC324FC9F8697077C03E97BF0859F8B027E9EBE0850E463D596A350FACA89D0';
wwv_flow_imp.g_varchar2_table(121) := '6462CFB6EDB87CE53A38A90CEA1293691416DD807C2F86DCCD1DFBD6FE8E09E3C662FCD4B9B87AFD1A0C9C1F9A879962AF240191E8D3BD15D2CF9DC2B6AD71B8702907BD9F7D0A4F756A04A57911ABB60F0EC08847BB41A3D3DEF5EA1BDC5CE11FEC2FF4';
wwv_flow_imp.g_varchar2_table(122) := 'E73AB56BE1EC91ADD8705182D11F3C09A5B288DA45D8BB7D1BCE0BA68E94F46B53FDEB444643AE5041E6E28E235BFFC2C4B1633076F21C9CBB72033A83175A44849BDB37147D7BB543566202B66FDB86330999E8F6E4A378B14F6BA8CC8B6A35EBD30B6F';
wwv_flow_imp.g_varchar2_table(123) := '0FE90B8D5E7DFB04939D85B03AB6BD8F5A77ED4C489F68B87237DC38BA0E478BEBE1871F7F40187F0EBFC7EE22A65422623AF4C5031D9AE1C89A25B85C1284C10FB5C1FAB53FE1C8EE95A836E54B3C223175F2C7A05C19FD28E914E93F60FF450E537E1C';
wwv_flow_imp.g_varchar2_table(124) := '8766EDBAE2E5E70AB1F6500E3E5BF61D42B81C94C822D0AFD3626C3E684AA6937B46E09D0F860BFF0FEDF30E0EED6E86FA0D9BE2B3AFA6E08FB883E83D7A1A9A356E0CBE4B146A11ED52EAF72A025C7DE1C677C5A030291A46F9E2BB2FE7A3C8AF27DE7C';
wwv_flow_imp.g_varchar2_table(125) := 'E17126E0FF30B8221572B3A8865188029D0189E78FA3C0108E4FBEFA01E3C7BE857DA7A271EDEC09280969486836BD9B6933B184030721937782A6A8048F8D7C1FCF0CB099BA2EF242EC3C7311D1FD9A4099B21FDFC75E448F06113875F23878453D346E';
wwv_flow_imp.g_varchar2_table(126) := '140895DEDE2340978F34FC0391E6529516D9E9D46FA243815A89AB09177023F12A7E3B7511A57EDDD18768D909678E2344E72D24D1B99A97D73C7FF000D17622A02B2941DF6123F0F2E001D67B9EF25063E7A933685DBF23F459A73177753C7A346D8633';
wwv_flow_imp.g_varchar2_table(127) := 'A78E23DA188A16CD82A1D61BEC368E2BA5DBCD1A6FBFFE7522A27069752C4AF128E89E9FAB7EFA1C211D7BC29D10292530CF4053EE925F2D05D4D240BC3C7224CE259CC4D2C517D03EB414819E81E03D82F060FF1EE05419D52718C87DD0E681EEE6DEE5';
wwv_flow_imp.g_varchar2_table(128) := '8627DF78CFEEE7360386938F757833FF6D85418F58AEF722ACD8CC7A7EC79EBD85BF019DFB632CF994817B3398F6068C84C5221AF9E14426D9FF12F41C321093167E89B3EB4A10D1FF4D447A66E3ADD99370B06E2024AEADF1509FCE00FD102C3EBA0CDF';
wwv_flow_imp.g_varchar2_table(129) := 'CC988E602F35AE66E931EB9B81E013D6E1AF9F962239E1104AF27250BFD74B78E9E561F870C274CCB9D819E70E1F43FB211FA0639F56E4D3D7E6D324B6BE5A6F73231B0D5A68FF81B0896E4F3E8C8FBE5A8889FBF4F06AF5189E78A50FF9009B7F99890B';
wwv_flow_imp.g_varchar2_table(130) := '8ACE888A698C91E443B16AC1DF58F4E96C6C0D96E2424A1E267D351A9ED971D8B6EC67645C3B0715A97F9D4E43F0F20B2F63CC98999895DA15D74E1D433469D78E0F74269F9EB6FAEA754463B3D59733E8882973FBF577AFF7001EABBF0EEFBE3F0931FE';
wwv_flow_imp.g_varchar2_table(131) := '1A1C480BC06FC3C2B177E51984367D106E9BA661F6171790916AC4C78F7AE2B739F310D4B2155C8932D5AA773F24AFDB81D3C70B90AEF1C6D0C71FB55FF43B3F3F5F7062891D79F1F1F1E8DAB56BA5AB9433DC7B48484810167D0E0D0DADF45C9A4D4DD7';
wwv_flow_imp.g_varchar2_table(132) := '86F5F52D9B4D9D957211370A6568D322DA3C8B9484CB692AB46AD31C2E52D13D8AF2703D2D0B7A890C75EBD587375D61CCA0C1B5E45468E85E36063D14FE751059DB0F9A822C9C4BBC069FD068448596CD60D6A98AA0227AB4B75923E0B5C484D64AE1EB';
wwv_flow_imp.g_varchar2_table(133) := 'E97A47DA8AD6BD84681BCEB2A973D392909C6944DBD60DAD6987DA52253450C0CBDDB6FDAB465988D41B6944D791A14EBD48F8D2DD52792DAE5F4D153410BAB0B7CC3B98D437103A652E12CE5F8147ED7A68185EABAC69A651A2D82087AFBB8BD937AB42';
wwv_flow_imp.g_varchar2_table(134) := 'BE8A879F977B155D1D3CB2B3B351AB562DA7BFA75C3C8B6C35872644737297536EA00B84FB40AFCCC689F3D71019D31C41DEAE28CD4BC3B9A434D48B6949BECB85779F985682E66D5BC243824246308C606E9B60FE0BA88860EE45544630358442962AC0';
wwv_flow_imp.g_varchar2_table(135) := 'C0C070C7C00886818181110C03030323180606060646300C0C0C8C60181818FE4B04B373F1D7183A6408DEFE6021E8EEBB9AFC3C149728CB3D9FD7EB91959E66FD7EEAAF5FF1DAD06178E9B51158B036BE9C6B0CC8BA7193BD1D0686FF12C15CDEFD33A6';
wwv_flow_imp.g_varchar2_table(136) := '2C3B8079CB56A243AD2BF8EDF76DF862C62B7863DA46C058841FE77C8A5FB71C17CECD4D4D44DCC6387C3FF73DF41A3C16F916828ADB8B063D1EC3B87787E3D88AF198F4C37EE1F881B5CB306BEE12D0A0EB2B07BF438781234193DDCF6FFE1D0B16AF85';
wwv_flow_imp.g_varchar2_table(137) := '96BD2B0686FB9B60EA366E8E40C3497C347A12DCDB3C89379FEB0FD77C03FC8DF9F87CF614180283B165F158C41ECBC7D2051FE2F9AFFF00576C408051625D1B4421A98DAE3D7A20A659677C3BFD3D9C3FB407174FAFC7F27D89A885A318F1C152C8A55E';
wwv_flow_imp.g_varchar2_table(138) := 'A8EFE18D35CBBFC1B43FCEC0237F375E7C773E7B5B0C0CF718AA958BA4F06D86759B8E61EBB675F8FE8BD1389C39067DBBBF8C760D6308C904E1B70DF148CD7185D6500C23D714CBBF9B82EE9E5750A03E02CBF64EBC91834E6F49CA920AEB8CD46FDC11';
wwv_flow_imp.g_varchar2_table(139) := 'B53D8EE2D8D90CE44A8C0869D6074F3D2487346D279292F588F4E571EEE446A2DDBC037FF6CE1818EE4F82D9FDF358BC131B8073EB2721DA5589695B8F23B76920D4E753F0F5B23D78E79BAF21BFFE210A33F3A09705C2D3E8066DC94D24655EB4DE438B';
wwv_flow_imp.g_varchar2_table(140) := '34E4E6661293CA13B3664C45A31EDF62FB82B138A71C8469C382F1E6A799D068F29092711E887041DBBE03F0EED060B8AFDC070FF6BE1818EE5F13A9CF1B33F084DF39F4ECFE005E9BB70FEF4F9C881EAD3CB16BDF4E44C734C00F533F40925E0E995489';
wwv_flow_imp.g_varchar2_table(141) := 'A00691707305BCEB474393BE19EB134C4B0136AD1F88F91FBD8E071E7A0C998D5FC7E7AF7741E3D60FA2E0D04FF86A553C6A854BE0121481D2ECEDF06AF93821AC3FF1EC2B9FC227B23D5CD8FB6260B8A7C0921DFFC360C98E55074B76BC25B064470606';
wwv_flow_imp.g_varchar2_table(142) := '867F8989C4C0C0C0C00886818181110C03030323180606060646300C0C0C8C6018181818C130303030DC1EAAB72F925183CB671290A5D282D7EB105CAF211A84D5767E2EAF41668116C17EE6BD91344A9C25D716680C08896A82E8103FD6FA0C0C4C83B1';
wwv_flow_imp.g_varchar2_table(143) := '21FD741C5E1DFC3AD66CDC805F972CC69E9397CCBFE8A1D4D87699331A80A2D4037873E49FD66387FF5C84D75FFA006BD6AFC2F09706E3FBCDA7CC44C4A320BFD87C561EC68CFF04A61D8D8D282A2A666F8881E17ED2602A4A0950A90CE8F3E40B9832F3';
wwv_flow_imp.g_varchar2_table(144) := '3DA88916E3EAA6C0DF8B6762D686D3D02AD331FEAB0D78343819CF3E3F16CABC5C68DBBF6EBDB648E58137A6CCC18BCF74059F1E876E4F2DC0737DE660F6EB239098570CFF0E2FE1AB67BDB1E8B33968D2F331E4ECF801872EA4A2E563EF61E2FFFAB137';
wwv_flow_imp.g_varchar2_table(145) := '758750D514107ADE7F395DE47EABFFDDAA8F1DC1482412E4E4E440A15098950B1E3A9DCE5A105F5F176CF86936769DDD88BC22577CBB623952AF26A3D7B029782FF438662E3E0C5DCC5FE8387A0946373C8941936D2BD971BC1125C5A665A3B89016A855';
wwv_flow_imp.g_varchar2_table(146) := '7B15720B4AD1A4D7237824548F0F3FD901FDE805F868C43444E97762FEA1122C98361C23FEF702FA3F96810E412C17AAC6D557F3FBA6F9673AF346EAE57546FABBD1688456AB15FAC5BF4548EE56590C0683B0B408FDFC5BEA7F3BA075A0F955341FE94E';
wwv_flow_imp.g_varchar2_table(147) := 'D6C78E6068070A0C0C848B8B2D6F3931315128007D9939B9063C377A3E3E1AFF8CF5F77D7C23F48A6C0085D70DC8A572E815520404D6061715062F759EA8428087B7699B4FF5A51DC82C7281BCE812B6AD3F86DE0FD6213F06432E334222E32031AAA020';
wwv_flow_imp.g_varchar2_table(148) := '45CB2CD461D0E3CFC04B42CD2F2963841A86E57DD384C7CAA056AB850EE9E3E3F39F6C2B4AAC34D9B12A6D75AF80924B5050D0DD35912A62332F4F2DD6FE300157F28E419D998EB68F3D058DD6081DF968D4C5504A82D0A3454B0C9FFA1476EAAFE0B2FB';
wwv_flow_imp.g_varchar2_table(149) := '4BB66B3DF23079FAFB3876A413E20FECC5FB7336C1333F0E0949191824F546C199BDC8514D40FAF91F111BF912EA86EB71F9E265DCCC5622248091CB9D1CC9AA7ADEFD3072DF4E3BDD4FF5BF5BF5A9DE720D460DCE1E3D89EC5215D11975F00D6B88F060';
wwv_flow_imp.g_varchar2_table(150) := '3FB8BBFBC08D5322BD48823A01EEB878321E97337568D6BA3D22833D4D155215E1D8B153C8D7EA10D6A40D1A9B6791CE1FDC819B5A57444647A25E681DE45D3B8D22452802A40588DB7B01DD060C448859F361A859B0E51AAA0EB65CC32DA190AD07C308';
wwv_flow_imp.g_varchar2_table(151) := '86110C23983B46302CD08E8181E18E81110C030303231806060646300C0C0C0C8C60186A0E574E1F42ECDE133098BF279F3B8A4DDB0F42A5B73F2F3B2511BBB66DC3D6EDDB91946EDA6ED8A0CAC7815D3B10171787ADB19B71FE7A96703CF3DA39FCB56E';
wwv_flow_imp.g_varchar2_table(152) := '2DF61E3BEFF499DA829BB8915762FDCE97E6202533F71FA97F12A9FFC62DFB50648E55CCB9761E7FC7EE42AEDAD934B011D7AE264363FE29E55C22D20B4D0DA529CE42D275731D0CA5B87C39197AC75B188A702D2DDD7AAF3307F760EBAE63D0D5688D34';
wwv_flow_imp.g_varchar2_table(153) := '38BC7B2BFEFC2B1697D28B2A3EB3341F293732CD2F4183A4CB49D01818C130D414B91CD98005BFEFC4A5FDAB3177F9212853F762FE8A8D284E3D88E95FACB03B77F52F0BB1EB64120A3293F0F9B40F71F8BA1637CEEFC6D2555BA1D2E990939D4DBAB60B';
wwv_flow_imp.g_varchar2_table(154) := 'AE1F5D8B4F66FD04DECD1D3B7FFD063317EEB2BB4FE6C5231835EA25AC3A7043F85E9C9684891FBC8879EB4EDEF5FA27C6FF8AB92B625174F304BEF8722954CA24CCFE6139544597F1D9F4EFA02F73850ABF7CB70899C20FE9F878E4B3F86AE556E197DC';
wwv_flow_imp.g_varchar2_table(155) := '2BFBF1EC634F2391EE99AC4DC2DCE9DFA05824AC86C26C7C3D610426FFB45DF8BEF7CFB9F835EE04AE9F8AC5DCEFD6D618B92C9A360A7F1FBB41DE440EE64E780B7B2EE608BFE465DE40664189DDD9372F1DC1F275DBCCDF32F0C3ECB9C828154A8BEB57';
wwv_flow_imp.g_varchar2_table(156) := 'AF56339B9A81C1010777EC41CF81E3F0C4032A8C1DF71B344346E3D3F1ED10FFD73C948812602914DEC178F6A597D0C4DF03EDC37EC2CFAB5763F8437510D3AC31DAB46989423292370973C7DC857178F4FD1918D8D81F4FF46C839357EC47D12B498568';
wwv_flow_imp.g_varchar2_table(157) := 'DBB113640A53E844F2A50C3468D909D9BE8ABB5E7F8FDAED3169E28BA8AD3D8437276F80CAD81DF2C252B8BB4AA1D1EB9C089804EE9E5EF091036788D6D6FFAD0F50907201D91804A94B205A46FAE39B79AB31FFC3F608F0F6845414637A3DE9066A45B5';
wwv_flow_imp.g_varchar2_table(158) := '45039862CBEA34EE8FE94F3547E989E598B422A946EA93757213CE94B6C037935F15BEB7F497E3FBA5BFE2B0672612F38DD0E796E083E9F3D0A2AE2936CDDBDB83906B120E9E4E0097731645066FF8BB19B1E4F3493897CD338261B84D1BDBC31D1EBEEE';
wwv_flow_imp.g_varchar2_table(159) := 'A0A91C3E6EAEF056C821D767E3ECD57C94BA06222D3909070E1C44784C07482472A84AC990EC0F048484422A4F874CEE8A53FB764159908A029517DE1B39049CC407F5FCBC4D0F70AB85D6CD6AE1F2C1DD38949486464D7AA0CBC3FD10B0E32AB6684CB9';
wwv_flow_imp.g_varchar2_table(160) := '6D2D7A7543784036E69FD6DEF5FA874637060AAF60CCF82F30E08D85F057A5A23497C7D5EBD950F97AE1664A0A8EEEDF03B97F2B0C1AD8426827A9542E24BEEC5B1F87D2960F21FBD2196C8ECFC0005F031E7C6D14B8E46DF87E45097C6BD5416ED235EC';
wwv_flow_imp.g_varchar2_table(161) := '3CBE1712EF1678F4A1D6A817528AC9EB53856747376D8E92E4FD98F0EDDF7861DC4F35529FC2C27C84F8475BBFD70EF383A7F622947A0F4CF97C32AE2E5F888B472F11BB300917F2FCD0348C689079693876F8002485A928317821F7C24E9C554560EE9C';
wwv_flow_imp.g_varchar2_table(162) := 'D7AB6B2269F0D3D877F060FF7E78F8E1F771950C2C59D792713D2BBBAC5D9A70011905854C02EF73C8D56ADC48CB272AFD0DE4E9799C3FB10B7F9FD6E1BD493311947514E7D255E00D5AE80D46F012833591367ECB76B8B94741A32CC6C0975FC3A40953';
wwv_flow_imp.g_varchar2_table(163) := 'F0E58C0F1056270CDE1EC5D87CF0B8C96F736E13C67DB6006AB907F43A0D0CE6F076B54E0F83C1E6A0D0E9F530FE03A1FCBC3219A33F1A83CEAF7D85C75B07E2C8CEF5A8D5E511BCF3D65844949CC791CB39844825D0E65EC6BCEF7E134C07A54E4588F7';
wwv_flow_imp.g_varchar2_table(164) := '202E6B5DD0282218ED3A36C7911D6B90619020AF0018FCE6781C5BF333E2528AE1E12611F2A0F4061379EAF546E88C26CDB038E5003E2266D82BD37E41B768CF1AA94F5874535C4CDA8274B36DB77DF371A8EA8620C0AD3E42095BE865AE442BE1A03518';
wwv_flow_imp.g_varchar2_table(165) := 'A0D56BA02C2E45F3EE0FE1ED1123306AF49B681242F3D68C441B336997D5D260CEC52DC1B727F27072DB769CD9BA04FBC9DFB37F7F8C93780DCBA775C1EC8973206FF7183E7FF7694C7BAF3F54D11FE19D110FA17B9B06A4E31D82AC6E1B84E8CE63CCE4';
wwv_flow_imp.g_varchar2_table(166) := 'AF10D3E759BCF3FC434C42EF71F41DFA0CC67DF9194EACD6A2F3B0316816968D1FA6CEC4A1B59EF0AEDB17FDBA3407E887E0EA9E9F317FF258F8B8AB512CA98D395FF444F1998DF8FBC725387F68274AF27310D9E77F78FB8DB7307ACC0C4C3C138B6B44';
wwv_flow_imp.g_varchar2_table(167) := '6B79F8F5F168DEAE1EF9B4B7731ECAEC82CBB97F241D76E7B27920CA14BC6397E2EAD18678EDF917B17EE697983C712B388F5678B46F5B52AEB69402B170ECBB78E5C5ED88ECD8071777ED45BDEE2FE3D17E5DC86F5D91FCDE47D877D2133E5E75C9774F';
wwv_flow_imp.g_varchar2_table(168) := '8C7FEF69BCBD200D7E75C3F1F48BFFB3111A215199D96E5ABD682ECEE4FB60DB8FB3703CBA3DDE7CE191DBAE8F6BDD4E1835701FC68C7A0FD1C172A464FA63C1B78FE1DB991B0427BE81D711BBD01DEDFA0C463BF29DFAD0F65D302B125A3D4A352A0435';
wwv_flow_imp.g_varchar2_table(169) := 'EE81989D9BF1F19419D5CC45D2A763F40B4FE040963F7A0C1C8CE91FBF8A5F3F7C1399213DE029BD80E8B6BDB17ED16C74F9DF6268D7CF84BE491B42425AFCB67A14164DFD027E4D7A63D7CA7108EBFB0AF44557F0F2FBE311C6369CFEC75053A902A505';
wwv_flow_imp.g_varchar2_table(170) := '59C82D9511EDC31446AF56E6223D5783C8883A76E719755AE41714C0C8C91010E86F569F791492615B6BA0432619F95C890DEFE546FA9A1AA9D7D3E0552B0C7E1E6573D178830E7A5E06B985658C3A688D1C14B23B63F597972AA02302A5A399D62A3524';
wwv_flow_imp.g_varchar2_table(171) := 'C4DC0BF0F3815E55806B19C588880C835DC9891672E3663682C343C191B690C81556138237A8897C4A2023E5974A4D470DC40494BA281C2B0EAD8E279AA00C5A5529F9BF16A52A0D146E9EF0F5F6A8BAE65549AA40515E06F24A788486850875A0CF5190';
wwv_flow_imp.g_varchar2_table(172) := 'F21A49BB53CF8A546A697703748479E47213E969353A285CE402A1A6A6DC2CACD6DBC84D5362E2A243E05597F1F5279330E2330D9E6CD617D10D1A429E57821F7FFE0567525DD03FD0076EF53B20A45D044EEE4C11AE75F7F782CE25046FBD3304633F5B';
wwv_flow_imp.g_varchar2_table(173) := '028F66FDE1C2D29BEE0BB8FBD6221FD128E8198048271A3B15A88020C70ECDC1C7DFC9120844150F8FAC5FEE3339A9DC5E78257228FE813951B98B9BF071F7B22D632173F34574A4939C2DA90275C3CD642E5738D4C7152E0E2A581972319D08B3954948';
wwv_flow_imp.g_varchar2_table(174) := 'C55DF8787AD77CBDBCFD6B938FC8416F2EAF44EA40F61229E4A27637918B50418447D4AB9E0FE6E2DE2508EBFE3C8A3C23D0A171285C4B8AA0D3A560DFB61F30EDD33578E5E329E8EB5582F4C42CA8356771E0C46564976EC3AE1347B1EBE7B590B864E1';
wwv_flow_imp.g_varchar2_table(175) := 'E4F1544C9DF335F4B1CBF0FBD15C269D0C0CF731AA45305D5F988D5F5E6C800F9E1D8295675D3199D8D37D7AC5A0C420C163831FC4CFB326C2D0AA33EAD555A0F3C0AE441DCCC4C891FDB0E4D3E990F46C82369D5AA245233F7C4AAE8B183E1E23BB06B0';
wwv_flow_imp.g_varchar2_table(176) := '37C0C0701F832DD7C07C306CB986DBF0C1DCAB60CB35303030FCB74C240606060646300C0C0C8C6018181818C13030303030826160606004C3C0C0C00886818181E1F6700B9961461CDA7208517DBA20A892FDD0AE269C87D6AD2E62A26E355942871309';
wwv_flow_imp.g_varchar2_table(177) := 'D7D1B4497DB8102ABC7A6823B69CBC8180403FE4A6E7A2558F87D0A5553DF6161918EE1B0DE6461C3A3FD8150B775A962734E0CCF10348C930A56C6B8A6E62FFC1A3C2FF8BB2AF21AB502DFCFFE2F193B8995728EC87CC934F51462A8E5EB86ABD6D616A';
wwv_flow_imp.g_varchar2_table(178) := '128E9CBC64FD5E9C978B6B677661C6B8DFA1D4988E69353C8A33CF63CCE809B8A6E4C1D1B475A312470E1E83D2C85E2603C33DAFC1CC5BB201BF6FFE11B19BB702035AE3F73953B1F644068C721E13278DC277631740EF558ACDA706A24B900F24720E9B';
wwv_flow_imp.g_varchar2_table(179) := '974EC6FCE5E7C1A55D47D737A7A3ADFF21BCF9D319442952D0FB959FF1610F2546BC350FA1A112AC6F361CD35F0AC7B06746C25F2AC3A9E228D0EC7D8A989E8F20A6471B249FCEC184F1A3E0A349C18B0F3F01BD9B1C4AAE1D7E5B350D3ECCE86360B847';
wwv_flow_imp.g_varchar2_table(180) := '35183E133B56EE40C2C9021CDFB212BB3300853A037ADE15DD1F7D1A619E406EF64DD46ED4097DFA7447497611324F9FC496846BF879DB9F983DF529E41464222F87C36B233FC38E1F67E1E6EE341C5CFF1B92357E68D934021B564CC78ABF5623F2D9D9';
wwv_flow_imp.g_varchar2_table(181) := '58B2E577B40DAE03A578C97475090A4B4A40D72EBBB27319545DDEC68A359BD1C2651FFE3A98CCDE2803C3BDAAC19C885D8CC2F006E8DCBE05B8F418CC9BFB05E6BE3A0AB5320BF0C3879391F3E6184CFE740A524EEFC48C91D3D067605F34F477253466';
wwv_flow_imp.g_varchar2_table(182) := '40094FCD271D5D45073A455D34F20B8616C9E02552E88C0684D46D8876DD9A61B83114EEC882565B24F87BA4253A38AE846820C7E9214E2A01CF995639A7B9987209535F1818EE4182316552C72E8FC38B13566250F75A18D4B63E9E7C7A1C16694E2039';
wwv_flow_imp.g_varchar2_table(183) := '530A6D5013B48F3062D1EC7128F50D4793B65D10E4C3435FA711DE6CD01B1F3DF71274274EA2F5882FA070BD0E23672044C141EFC9A3DFB323F0EDB6299839231E21ADFBE383D7FF87B54FBF80812B0B90A0EB086FF1BA3B0609FCE50A50B74CFD5EC3E0';
wwv_flow_imp.g_varchar2_table(184) := 'BBF845F41FF00BBCFD7B617CE708F6461918FE45A8E2720DDD040D41A7D241EE669B3A326A794888F067A45E05EF1B8610CA04BA7C24A52A111E1506132FE8B1E0B3E948918440796A03A2FACCC7E857A26114EC335ED837862E22AC2ACAC5CD5C0DA223';
wwv_flow_imp.g_varchar2_table(185) := '4DCB2CEAD4C5B899598490D050B838D020AFD783332F8D68D4AB919C9A81F0C87A90B31525AA05B65C43D5C1966BB8255475C94CC120B12317C18163DE97A6767894EDA0DC0FD1517E764AD293839FC4DAAD7B11FCFC87786A50B4C8F9C359552837EF00';
wwv_flow_imp.g_varchar2_table(186) := '448B66B3E5AE5EA817E1E59C1545EBAE4A64AE88AA5F8FB10503C3BDEE83B9558446B7C4DBE4C3C0C0F0DF02F38A32303030826160606004C3C0C0C06045191F0CFF0F6CBFC9F0CFC1F2BE2B7AEF8E0BBEFFD7FA08AD3FAD7355DAEA5E7AEF96F77A27EB';
wwv_flow_imp.g_varchar2_table(187) := '634730128904797979D6FD83E983753A1DDB51E07E555FCDEFDBC3C34378CF150918FD9DE691D1BFFFC541C86030404FF7BFA6B974F709C1D0A9773A557DD70886365E6060205C5C6CFBB95EBE7CD98EED18EE1F58DE378D85A90C6AB55AE8903E3E3EFF';
wwv_flow_imp.g_varchar2_table(188) := 'C9B6A21BD0D33898AAB4D5BD024A2E414141777610ABCC4472C66E2A65118A942A26A1F791895495F3FECBE6F3FD56FFBB559F6A3A790DF87DCE68F47F62189E7B7420DE9DB60A9515B128E73AFEDAB29B493203C37FD10CAFCEC997E2BEC5BCD874ECDD';
wwv_flow_imp.g_varchar2_table(189) := 'BE1E9BE256C2AFE80AB2C9F1237F2CC0A02E5D316EFEDFC2797BD7FD8C817D7BE1B3157138B67926060F7E1F570B59633330FCD750AD48DE8B8937D0E7E1774DA98F92104CFD621C90B61B8FFC74087F6FDF8819CF0EC5D25003D6CEFD0D83DFF9189C54';
wwv_flow_imp.g_varchar2_table(190) := '89E0FA83F1E6E0BAA8EFC31A9B818169301520C0CF1B17534E5ABFC76EFA03FB4E9C41DD818351CBC30F0F746F8E8C1237CC9CFD36F6ADF9015B7726A244EE837A6175584B33303082A918DD1E7E02DAC3B33061C19FF865D6BB7865EA5AD46FDF0FDA9D';
wwv_flow_imp.g_varchar2_table(191) := 'F3B162FD1AFCBE25112DC22558FDDB260C7DE55514C7EFC0E5BC7C1CD9B30497B5ACB1191898895411BC9A62C5BA387CBB683192A411381CF715427DA458F4F954CC59FC379E1E331D0F3ED00CF5657958B23E1EAF7EBF1043BA844376ED38F2D3F2807A';
wwv_flow_imp.g_varchar2_table(192) := 'FEACC51918FE43A8E27A305D591CCC7D889A5A0FE6C4AEBF713A478167860C803BF97E7CDF669CBAAEC3E34F3E8A00575BBFB976F6080E9E4E841E1C1AB5EB850E3175A0294A23A6F66EA83809746A351A75EE8B8E8DEA22F1E45EEC397611BEA14DF1F8';
wwv_flow_imp.g_varchar2_table(193) := '435DE1B8814541DA4564F0B510136A1AB43479D770295F86165175EF485B55B41E4CC2FE2D3892AAC7934F3D0C5F7341932F9D806B684B84784AADE7DDBC740AFB8F9E8341CA43EE5E0F5DDBD4C1A17D87A0964AA0D7E8D0A1FF8330645CC2C9B3C9D04B';
wwv_flow_imp.g_varchar2_table(194) := '5CD0B9EF20340C76B77F5869364EA616A1754C14C06BB073E37ADC54F9E0B12706C05B5EF5FA54B81E8CAE101BFE5A8FB402235A741F802E3121E5DEA7B4201D57D2D468DE2492DCB404C78E5C4493B66DE16E525D0A592E12C36DE1ECCE1558BE27058A';
wwv_flow_imp.g_varchar2_table(195) := '9CA398B3683BF2937762F5BE4B8874CBC2AC994BECCEDDB8E60FA4ABE4A81BE882DFE64F44DC857CA45F3E82BD675210D5B02142EBD4415060202EC42DC6D73F6E419376ED90BE6F0DA6CF8DB5BBCF9543DBF0E6DBAF63CBC95CE17BD6A59318FDEE702C';
wwv_flow_imp.g_varchar2_table(196) := 'DD9678D7EB7FF5C87AFCB42901DEDA8B983577A5706CCFEF73F1C6D84F909C633F28C76DF80D07D335888A8C404478204EEC8DC5A91B8568503F0AB543EB1232D662F9CF3F41E51D8686411ACC9FFA09B2F422614E4BC6948F87E3EB550785EFDB967F81';
wwv_flow_imp.g_varchar2_table(197) := 'DD5708E9ABCFE18B79BFD6508D8AF0C5C491B858EC83364D43F0C7E71FE1EF23298461D5B872E10CCEA766D99D9D9972067FEFD86F565772F1C7F7FF67EFECA3633EB338FE99C96F5E3233C98819F19A9510118D97B2C29684A8D7432487B5B65A22B4BA';
wwv_flow_imp.g_varchar2_table(198) := '4A4AB1E849B0B468B70EA9D396B6BBC1D9AE9E2CA7DED2C391042D29126F131247225222881A62E46D32AFFB9B84E2B4876AD26CBB7EDF73F2C793DF9C67CEBDF779BEF73E77EE737F1BB9E92991735570EA6876D3F48391F07F4C30D9C7891ABC88D191';
wwv_flow_imp.g_varchar2_table(199) := '761217A5200B4AE4DD797DF97CDD521CDE7D1EFAACC6B72583C68E26CCA0A1B35F35EB77EF22383A90E63E6A04D1ABE36D2048EF64CD7E132FCC7F87FE413AFAF708E1E295CA87E6A9B437674CF4702C4A677D345321306C642CE7644DEF2FCF1C3D4278';
wwv_flow_imp.g_varchar2_table(200) := 'BF198C8B36604A5A43B9DD85CEF82CB1832BB03B3DEC70BFDFABB7CE17BD5B8F4AA1A265A7DFE12AF3C1A7DC8E4C70235719318AD1A14ED4854A2DC759514395CA07DD033BB4FCB69D88A85894E5F5278C6E03E3181A10C0E5C329A49F2B6F1479AEE6EC';
wwv_flow_imp.g_varchar2_table(201) := 'A6543D88F7A7C6D68DDB0B22D16D4DE544DA15AEBB0D382E5F61DAE264FA046BEB9EEB7D75988B32484B17A39CF273981D7A9A0955AC5EB2048B771B89602434101A2D2A9D67C1CBD02994D42D3B773568FDB1D55EA3F0F429F6671E20B0FB4071AF29B1';
wwv_flow_imp.g_varchar2_table(202) := '59EB5DB2466F402E5C47E6A5A4F44211470E0BDCAED6D0B5731BE45E1A8CDE77AFABC8750406E8C8DDB383CCFC8B74EF1DC3D0A8DE28ADC748B7D5CF15D2BB1B2D94E73999EB68FA1C834A8DDAC7738C51A055283C9DE7F9FDD04114977C83D323EFB726';
wwv_flow_imp.g_varchar2_table(203) := '527664D0A6CB10D482824BA7B2D957799E30990E3F8537C5674FA3915550EE684964782072B783C2DC5CEC8A0A9CA23E73734C1466EFC3ED174EFCC401B4D59B39B4EB52DD77B716C9E5DA899D2CDBF00D7357A6348A3C56F1286CD0B6FA7EEC6B50A176';
wwv_flow_imp.g_varchar2_table(204) := '55E356B7E5EDA48514A4A67031F702B5B9D998CC469E0BF3452E735279C722063F5520F8602EC8A24CD78B556F4E92084642C3E0EDB273FE6219C3826E70C3219097FD25A72D414C7E7516A6D7678A5E2F9ACE6121B46A6FA0E47435CEFAA083B42F76E1';
wwv_flow_imp.g_varchar2_table(205) := '17F40AF6CA1BF48B194F5CECC0EFE7F46F56C3963DFB593A6538C559FF2639E33BE64E1A4D179782D6ADEB3DA7273A70BAEED791DBEC0E1C0E6793CBAFF59291537C19223494965772EF165FADCD8E438C66947E063A8484D236C8C8F1F3B50C8B7F8309';
wwv_flow_imp.g_varchar2_table(206) := '7DEACB3632B61C64E4E45788EE1B7AEF1084D5A1267E4E021D45AEBA326F32676F3C4FD7AECF50A334D67DC273E1D27657CEB2D369CC4FDEC29BC99F11D6A27172A4ED437B52F8AF0F39571E4DA81F7C917A10823BA1130324CF2DAC6AF1BBE5DE4A5A07';
wwv_flow_imp.g_varchar2_table(207) := '76A6C6A8C18B5B04F68C60C2B8B1E2D352CEE76F106D2360B399EBE693084642833062CA14925626336D9B93D8594BE9F9CC4D5217AF65F64E81CEE17F22B24707F0FC89C857DAF97879221A950D65AB6EBCFB6238E6FC740E6CFE84BCA37BB15A6E1338';
wwv_flow_imp.g_varchar2_table(208) := '782A731316B222711973176472A3DCC6E4D94B080A168F4FE242BF0785522B6EEEFB095441A9C657AB6A72F9A35E8C2763C56AA64DB5F3FCC459DC4BC96AB5BE08AE5A715706307C5440DDFF0A0E89919ED37A9F480D3EAC79FF1D0E05B6A14A3C120D18';
wwv_flow_imp.g_varchar2_table(209) := '3711637325CB5F9F835E5E8526F039E246F57E28C1ED962B68A6AD27D9F4ED5B31BBFDD8B27A215F75892061726C83E5F16AF92C8BE2FA8BD1C74C9AFB7A512B74656D520C1FBE9756D7A85FA1F146DD4C43708F0178BA6B5F2DCC1205ABBACBF2A21DB4';
wwv_flow_imp.g_varchar2_table(210) := '02FE5D0713917380590B12A55F919E6634DA5B056C562A45AFA5F3BEEBAF5C0E315AB6E37BEF959C0FC0E9B0E3967921783D982FF1B481708A6BCC8D5BF4790AA1FE59951876AB7DF578FD0A74F5C8B70A386C54D8DCF8689E9CE0DC2E270EA7AB4E76C4';
wwv_flow_imp.g_varchar2_table(211) := 'E3A220ABD7914B94FA9E1E1E07BBDD864CEED1E94FD7D4E3DE2AE07658A9A8758BA4EDFDB375565961B148118C8486438C1E740F8EE582482E3FBEB4BC841FFB2D558E42F1C3CDA4F5FD8DDC2F1194F8FCCC9DE4210685DCEB073A7A12525528948D9F5B';
wwv_flow_imp.g_varchar2_table(212) := '12C488B081ECA0F3D14B2D33254890F0CBE18908A6BCF4240933669030FD2F2CFA641B8FCCD9DBCB484D33FDA4796F5DBD2A59428284A79D600A8FEDE3EC4D3549CB17A338BD8545ABF652EBB060A971E1B29AF9B6ACBE27C3F1BDE96CFE470AA99F9DA8';
wwv_flow_imp.g_varchar2_table(213) := '1B1765A5F3F9963D149794D58DAB4BCEF0F1079F72D953DE60CB236A580C99F977246B34313C79B507BB174A90F03F251841A5A0E2F625F20E1FE1D89162BA0DE9C8A6B7FEC9A15356CC050759BDC644DED7EB48FC2815D3BE2C2AFD9554946432E56FEB';
wwv_flow_imp.g_varchar2_table(214) := 'B97C6417A32267527ABB88B8D796A3545A983D7D0EC5576C182A6AA9ACAE95ACD1C450A994AC58F977F61EBD8C27D1BA7DE307CC9BBF809D3985927224343DC1E056E07608D4589DF887B4E3D4191356991E0D2A547A1D6ABB0353510113DEDAC0AAAD2B';
wwv_flow_imp.g_varchar2_table(215) := '09721B3894FE1F86CC5DC7C2E4F7E819D19E4B87F771AEE02AD72D56CEE6ECA0C06D247AC44B0C0D6F2159A389E19229183B2894CDEB57890E63175F66E4333A7614B25AA93B9884C6C113E5896BAB6A08EB338298F12FD04E51CC9A8CE3346FAEE2AAFD';
wwv_flow_imp.g_varchar2_table(216) := '1AC6AF4CD8E4BD503BAAB858940FBA222C376DF80774A028370BC203B9526846AEEB8E5F5008535F9D86AAC64227BD9C0CF359CC36D02A258334299C0E4E16DFA153686B7C8207F2D258339969BB510547111329A94742134730AD3A0691BD732DA3460E';
wwv_flow_imp.g_varchar2_table(217) := '2361D319E62F59CACBE343D9B86C1C6FACDB84A16F2BC64DFA2B6737CFA6D798241461BEF41E3E1DE3A54C5E4E789BCA1A1D7D07C4F3C77E32C68F8923EF960FC18676B46D71818F52B649D66872EB7BD1ADA3119D4603A539E416DB1915D58DDCAF8F21';
wwv_flow_imp.g_varchar2_table(218) := '65C42434067EF142BB9213DB79EDD3530CEBF01DA6B23FB031395ED2FAAF04858585ECDE93C1C0E83FD353249A9CF4EDE45DB3133974249DDA3C54D9F2E842BBA7008F2CB4FB0DE27185768D04CB7F051800BD96C4F1961563C60000000049454E44AE42';
wwv_flow_imp.g_varchar2_table(219) := '6082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(830778313341877427)
,p_file_name=>'reports_ir.png'
,p_mime_type=>'image/png'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/reports_classic_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000118000000A00806000000D76073200000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000093954944415478DAEC9D07989D55B5F77FA7F736677A9FC9944C9249';
wwv_flow_imp.g_varchar2_table(2) := 'EF090901426801A48814155054BCEAD58BD74FAF05BCA262E55EAF20088AF416484842129290DE93C9A44DCFF45ECFCC99D3EBB7DF77928822A19828E05979F2CCCC396FD97BEDBDFEEBBF76595B118FC7DB002B0949484212728E452100C6237E9A12AA';
wwv_flow_imp.g_varchar2_table(3) := '4848421272AE452DFE47A45FDC6E377EBF1F854291D04A42129290730630B2545555E17038502A95085693009A84242421E70E600C060345454509604948421272EE0146622DE17038013009494842CE3DC09C06998424242109392F00F3519473315EA4';
wwv_flow_imp.g_varchar2_table(4) := '56AB51A9FE4A15E29932AB0B0513C07B9EF49E908F7FFBFD4588F45135A4BFA7DC3A9D8EFAFA7A6A6AAA05D0A810B0223D91683482C96866FE0517A352422C164BF4CA73A8F784FC6BB49FFA5F59C1127391C065D8D5C7920BA7A208F543D40511F13F36';
wwv_flow_imp.g_varchar2_table(5) := 'C4C8C871F6ED743367E1B52813CE3A210979DFA2FC570798A6A6260A72937038E2D85395D853C4CF9418764784BC9C089EC1238C7A828970202109F97B19CC8799F24A65536B74E8756AA462C663110281106F2F711CA54A8B4605C15048FCFDB78141A3';
wwv_flow_imp.g_varchar2_table(6) := 'D1CAAC44A952A16184A7FFB8864D5B2BB0593484C47D2A458C1F7CCD865E932E83CB472A845428D1E975A84FAD698A848384C2D1BFA55571A9069D5056301890FE4A5844423E3898089B522B15723F8A47C344057F519F4F4038975E5FA3D1D052BD8B57';
wwv_flow_imp.g_varchar2_table(7) := '37EC17C6AF206FD202AE5AB600934641341C26268C4AA356128D4469ABDDCB915E25CB16CDC728BE8F8443026C22C2E8F4B202A291003535C7B0674E40AB52100E0DB1FCEA5276EF3EC4A61D4D58CC3A7EF21FD9A4A7793878DC2F0FF87E6428A94A4D60';
wwv_flow_imp.g_varchar2_table(8) := 'A88B975F5A416F481A3B8A5232E772AE5B3245860F096CC25185006AAD8CBD436D475979B0852BAFBA069B3A842FF0CEA09C9084BC93A8D42A3AEA0EB176F36EFC61058BAFF924996AF7F96530E7F279D20AE3FE8E6A6A86B4DCB9349B279E790DBB214C';
wwv_flow_imp.g_varchar2_table(9) := '774B23692593B106FB38D13CC8C2A5576208FA710D2A18EE6F66E5E6EDA497CC60FED44276AE7F85938331A69764F0E4E3BFA3F4AAAF536251130B758B67A979F0FEF9FCD7FDBB58BED8C0454B44F4E8ED1595708A7A7C74188C04282A83852933A7F2E2';
wwv_flow_imp.g_varchar2_table(10) := 'B34FE0987D2393F29D54EEDEC4D1FA6E8ACA6731CE1965D7DEC3E89C054CC80852DBD448D1D1BDF48DC459B2703A8A6884C4F06D42DE0F63D62AC2BCF9C62ADAA2252C2950D178AC92CD7B57BD1D603ECC630D6AAD9E88BB85C3474749CECD61A8FD30BB';
wwv_flow_imp.g_varchar2_table(11) := '4F78B948ED614B538019E39CBCF0DCB35C322F8BA1110FEB9EDF415BC8C881EA557457A753DFE562425909AD6D7D6874062C06BDA8F30884078465AA30E88779F0FB19E24D83E0EB160A6916EC28430ABAE470E2A320B1A80018BD99A9B366B377DB1A32';
wwv_flow_imp.g_varchar2_table(12) := 'A7CCA034DBC24B3BEBE86811BA6BEE676E968F9DC7FBC92BF0929D5286A7A38A471E6FE3335FFE061A659CBF194D252421EFC8246284E26AE62FBC94E137B6B3E5002CBA380BA546FD7680F9B07AE9D36B52F449192CBD6A39D9D919EC5FFF2833972D67';
wwv_flow_imp.g_varchar2_table(13) := '8AAA92EA4113F3E79473AC7103FE4886F0E4618607FB3064CEC0AC0EE0E9EFC29852C4B4C99318ED6EE78033059BC3C6CC7159541E38494F7F1DAAA81F657C9478C44334E6C3EF4F267BE297B19995C270C31F19208EC7622224F4130C0409044548343A';
wwv_flow_imp.g_varchar2_table(14) := '4877772F29E99974B506B0A696529C15A3B1AB93A6AE4CA282A1295571716D480E8E12D3CF09793F431F0AC160087A3971E204A5175E4569DB6ED6AFDD4B7E7EC6470760A47528B6A44C664CB3535E562C7FE64CC9C62F50B264FA72F21B9EE6F16737B3';
wwv_flow_imp.g_varchar2_table(15) := 'F8D21BC8881EE5B0C6CAB537DCC4C6AD1568538BB8F68AEB58FDE2F33CF9F4CB5C74D935CC1D9749437D1D974CBD9809D36EA0B1A9555E6C3736D0A92026D4603299195F924B44186BFC1C857FA7078CCF2B6315FFB57A23B9E34A4849B2A231A904485A';
wwv_flow_imp.g_varchar2_table(16) := '702BB414E626A3572B31599328B459C9CB4A23B2F43AA60996B379E741664DCA41479C04C624E4BD0E7DC40583416B60C28471BCB2713D1A8D8EEB3EFB49F4DDFBE57C30C3E21ADBE1C387292C2C94C73A3E9483482A15DBB6ED94D7AC446363018B5AAD';
wwv_flow_imp.g_varchar2_table(17) := '118C234A242E62400195A1481C834E45FDB1830CE160467919D18017A5B84E1EC751C48844E342016A7930582D7E5EB274293AAD4E9EB2FE5B8A0CC933511FA1C136A12797CBC5E6CD9BD1E90D828D85847E1468544A51F7185AED18888603014161B5A7';
wwv_flow_imp.g_varchar2_table(18) := 'D6F7C465BD38AC16162F599260300979DF4ED32FFAD3B6ADDB09077DC4146AB41AA54C0A3E32002355C2E7F3118D46CF1A9E48A6214D41ABC46FC1F0D96744A4E748BBC83F4E6B5CA4BA483A9272FBBC5FAF24B5BDD1684C584C423E10AB91ECF3AFE56D';
wwv_flow_imp.g_varchar2_table(19) := '5B054EFFFFB0199D5426090CDE4F18A2D66ADFD3733F4E1EFB74DB994CA60F7C7F4212F241E46FF5B9771C83F93076B444E74FE82A211FAD3EA74CA825210949C8F912F55BC30A69A0F3C33A06F38F0C2FFED9CFF857D55D423EC600130C06696C6CFC97';
wwv_flow_imp.g_varchar2_table(20) := '069884242421E70960B45A2D39393909804948421272EE01460A8F929393131A4948421272CE44F9D6183A31F390908424E4BC004C42129290847C4800E66FA4799218107F9B05FDED7D3C1FE2E456B108D1F759BC58ECC3599F7038F6B1A847423E9AA2';
wwv_flow_imp.g_varchar2_table(21) := 'BAEFBEFBBE2D7EEA7B7A7A484F4F7FDB546364A88E6F7EE3178C5BB084248392971EFA394FBEB281ED5B36D1ECD390AE1DE667F7FD8C7D472AD9B2651B5A87838D4FFF1FF1ACD9A4293AF8D9FD7F227FFA4C6C7A155B5FFE030FFFF125F61FD8C39EC355';
wwv_flow_imp.g_varchar2_table(22) := '144D9D8D45F34E4573B1FEB583E48DCF43751E1550577D189FD288CDA817C81262DBCA2779ECF9D56CD9F826A38A74CA0A53CE7ABFB7AF9A5FFEEC67EC391464D2B462F49A0F32551BA2F2C8113CAE5E6A4FFAC9CD71FCDDF51AED1BE08F2F56B2E36837';
wwv_flow_imp.g_varchar2_table(23) := 'FB4E0C515CE0C4A43BBB3FD9BEA992A737761057E8C8CFFCE05B06BC3D033CB7B18DA965C9EC7AF330AF1C0B316FBC8D556B2A8927A790627C7B392AF737D0EED19195ACFDD01847534D2BEDA36AD21C7F2E534B5D1BCD430A329CBAB3A0B49FADBB3A48';
wwv_flow_imp.g_varchar2_table(24) := 'CD76A0FD978A11A21CDEFC0C6BAB4699519ACBA12D2BDE3DA3DDA1DDDB188EB6B069570545CBE7D0EB8EF3C56FDF4B8176806F7DF717A82317903F752E9FBCF14A22C13056A703E7600D0F3EF80099562F45B36E25C73E8622DD7D2E2EBDE9D3CC29CD12';
wwv_flow_imp.g_varchar2_table(25) := '4551A31CA9E3D13F6DA173A08F8557DC46A6BF9A68F612CAAD7DBCB2E318466316EECE3A9E10A094543C8D09A971D66FDAC7A4C53771E3924C9E796E154D5D1D14CFBC8A1BE767F1A7A75EA57BC44FD9B85CDAEA8F52BCEC36969627F3F4438FE3D266F0';
wwv_flow_imp.g_varchar2_table(26) := 'F93B6FA5FBC456D6ED3E825F61E5739FBE81177F7B3FD10977F0C3AF2CA7BD721DAFED6BE7BFBEFF3DD4FDC779EE8D2A028B0AD8F8CCE3EC6F7473ED6D5FA2C4D2CD53AF6EA56F6494AB6EBC8DB6354F73A869886B3E6116001561C79A97D95ED9427ACE';
wwv_flow_imp.g_varchar2_table(27) := '442EBD7822F54D21965E98C7C64D55CC9894C2D34FBE802E7D1CC5191AF6EC394A76F9855C355DCF4F7FF00097DFFA39264C48C7D353CBEF1F7996B073025FFDFC8D1CD9FD3A3B2A6B88E852F9D25D9F21D9F02ECD2680F2C5D78E923665325F9CE9E0CD';
wwv_flow_imp.g_varchar2_table(28) := '7555D4F7F9890D8FF2E286168CE9A97CF68A7C76EDACE378DB28C6E464AE986CE1D9752D94CEC9452D8028E01EE1C995E29D2A0D33A7E5A08B0585C164A018E9A33F62243EDCCBFA832E965C5C407775176D5E25CB9795512000C26053D3DBD54B97BB80';
wwv_flow_imp.g_varchar2_table(29) := 'C6FA7EDAFC115CC3493477F8281A1EE2D1D71A8958ECDC794D09C70FD6B1A37A4450E9380BE6A5B0757335969C6446DA7A38D21962D92525B85BBBD8573F8CC96AE7F6E5C534D7B4B0A1A21F8B3389DBAE2AA2BDAE95553BBBC82DCAE5B2390ED6AEADC1';
wwv_flow_imp.g_varchar2_table(30) := 'A53072DDE5A5645885AE44D957ADABA5B1DF4F7A56269FBA288D95AF1DA72BA465F1D424F6EC6E479396CA75739D54D68D70F1C23C0E1E68A47334CCF8523859D5CCBAFDBDE494E530D129F17E05AEEE1E9E5DDB844600E61D571572606F1D952DA32845';
wwv_flow_imp.g_varchar2_table(31) := 'BDEEB83C9798F033BEA141566D6F157D52389FE9C52C9D6C67F59A63B48D44C8CA4CE1EAA505683F46F0D2B86737CFBCFA3AB6D99F93FB6063D7E8BB3098C8308FFF6135CB3E712DFB85612F5A7601355B5F6767C5712A0FECC66B2864D99C1C5E7DEA59';
wwv_flow_imp.g_varchar2_table(32) := '2A8E57B275FF49C64F9E4EF1C429D4AC7E98FDAE1C7EFAFF6E3DF3B8868A2DBCBA6633070483691C3250641FE44F5B9AF9EC35D37973CD49F2D37DECAC1940315CCFF1EE61DC2D0AD29DFDBC74A09BAB66A7F3C21BD57CFAB64FB0EDE517C0AAE7F52D87';
wwv_flow_imp.g_varchar2_table(33) := 'B8F18665EC595D417E9E9A67B71CE3FA8B26B17AF56E2EBB72114777EFA3B1EA001DE49219AA615BFD2081DE13B89C53298B0BA370A7916E118D3D7116E3F35239BE7B23645EC8A269B9181C19CC9E3551D4F7195E3F69E4962BCB78FE9975982C5EB6D4';
wwv_flow_imp.g_varchar2_table(34) := '05B96951365BB7F4337D760E467B32C1BE3886703BAB0FB470E3354B58F7C22B640920ADD8E162C10529AC78F2003959419EDF5ECD27AEBC888EB636269617B065F55626CC5D4860C443669A95A1F608958757933AE77A525C87D9DB34425BDD5ECC9396';
wwv_flow_imp.g_varchar2_table(35) := '60EBA8C2152FA0B4C07EF6960E78D85631C0B557956154291957924EAE35C663CF1D63C685E3F137B7D3E8895153D34EF18C718C54776213461D1300599265A0B73B4E577333AAEC3CD27CFDD48C4489B8BC989C4EFC3D5DB40E2AE9EA6C23929689B6A3';
wwv_flow_imp.g_varchar2_table(36) := '854AB79EF1263F6B8F0CB3687A3A2A8D969E9641BAFD01221899E05450DBE343ADD7D2D6D843F6E471D8DD7D1CEA0AD1DDD9853E279B126B8495AF3710B13A999E19166DDD4EF9A434E164941CAE6826A7BC18C34037F51ED12D7D3E3204CBAB3AD886D5';
wwv_flow_imp.g_varchar2_table(37) := 'AA63C3AE56962C2926DCEF66FFFE3AFAB576D243436C6D0A72C1A46411277A0578D60B309C40FBD126021A25BB8F75316B5A267B773733F5825242ADED9CF428683BD98323C32418489BA8870A5558C1FE3D3518325371583504873C8C0CC73878A44938';
wwv_flow_imp.g_varchar2_table(38) := 'CF5214DD9D540F45686CEC20736201B1965E14061D271BDCA4D9A2ACAC7471FDE20CF6ED1DC0147171A85FCDD249465EDFD9C18205F9E83E466B132D6959CC2AB453351065C1E4F14C9A3CEDEC6330BDF507E8EEEAA4EA9868B4BE06F65437A2B1389831';
wwv_flow_imp.g_varchar2_table(39) := '6F2E175F7603F7FDE7E7314643CC5C7623DFFBEE0FF8E177BE2C3C988EAEE31B18502593A91A658DE804670201959DCF7CE51EEEBDF7BFF9F22D4B8847D5CC2A5BCC8CD9D330A90D94CFB98840FD565ED9D6C9158B17A288870945752C9A7939338AED58';
wwv_flow_imp.g_varchar2_table(40) := '724B299F38999262336D7DC3948F5BC45C117EA50803F707E24C2D59C4C259C5142EBA8039D3E6912D42BA81BE21221E370A6B0AD9A95AE15972B96AFE62264E28431D530A707092913E363DEF70DA696EAF3F55DA61D6BEBE9A86BE114A662EA07CC685';
wwv_flow_imp.g_varchar2_table(41) := 'D8CD6EC1E0F45C346D0973674F11C66BC462B393220C4FCAE33BD2DF8B236F0293A7CCA6A82C8D5838824ACA238101AD5A4538A666CEE465CC9E9C8DB7B39DBAFA76626A1B069311BB338DD4641BF1E0285E8D89058BA6B070F1645C43ADE8CD13B97AE1';
wwv_flow_imp.g_varchar2_table(42) := '424A4A4A8463780F632A3AADE003619A07C69264B5D4B7B0FD60170A8B990565294C2BB7D337E42549E8ED926959E40A83522BD524590D386C3A54D128233E983A3993B9D392319C0A6335BAB16DF82A651C9DCECCD5F3F33144E3440351C20603D9295A';
wwv_flow_imp.g_varchar2_table(43) := 'A2A786F6268F33B176431DA6C24C26E61B59BFB989D474879C3378F6B434664F4FC6254055A3B3B27C41014EB382414F8098468424B9592C99994153433FD527DD725E9E0B67A533A9CC4EFF900FFFB05FB0A151A23A9D78775000974950F234D1F62904';
wwv_flow_imp.g_varchar2_table(44) := '5C41C1A46328AD26D21D6A6263034BA4273B985F9AC2B83C039D837E0A3233B8646A2A4A9D9EF913249D58198EE9985B62E399E78F90929F4969B29AB04AC7920B8B898F8E72A4CAC5683886221221A411F795A730738A838161AF68FF2496CEC8263FC7';
wwv_flow_imp.g_varchar2_table(45) := '442C1247A55210113466727E165327A69164D630381824A73083F26919C2716AF8B89DB4A5117D5DCA3D757AFCB2F7E4EEB3014C94F5ABD7B1F0F6EF70CF37BEC10FEF58C6EB2FBDCA48DCC89459F3983AAD5C8EE9158A10C7F76EE1E595AB78FEF9E7D9';
wwv_flow_imp.g_varchar2_table(46) := 'B8652B3F7B740D977FE3017EFE9DAB59F5F08F691C1C4B1D100F0CB0E9B55759F1F24B3CFBF26BD4757B5144A51205F086BC18ECD96419020C44F5941527E3159D47CA6513F2C650DBF350776CE7D1C71FE544739869C599787D521305F14783C2FBC645';
wwv_flow_imp.g_varchar2_table(47) := 'C7D208030CE00F060886820422503479223AB3A8B8B82639C92E53F188308860C84758CA9312E966E3E637090AA5940A10B1766DE1E70FFF815FFCF0276CA9F10BB028A76ECB1F79ECA15F23AC85DC241D7EBF302A29635C2C4C3412964F37F0F93D644D';
wwv_flow_imp.g_varchar2_table(48) := '9E8F76A082477EFB6B0E0B4A9D9A99C940FF5A1EFAD5831C39D92A1B6824AC2336DA4B6565A70C6C81DE465C8130C31D077973FF7162D6744A9362FCE137BFE3F1A7373365CA5469A456A828825FBC33127F0FDD5269E0CA9969AC597180356F56F1D06B';
wwv_flow_imp.g_varchar2_table(49) := '2DD8D29D14DBC23CF57A0D6F1E70315F846BD2317312458F2BA5CEA192739B2BA57F461DB3A624F1FADAC3FC7165ABF8D24C569A820DDB4EF0F21B5D688C1A342A29258692C2B254EC2224D20BD049751A393D325154928A4284D3934B9C14E42561D1C5';
wwv_flow_imp.g_varchar2_table(50) := '289F9E4571529C15ABAA78758B6010C2F00C02D8B40A29978F86AFDEB50067B09B551BEA19120CAB28DDC8884B1873D8C7332B4EB0E5908BB9C2D13436B9C94835A3F07A89D92CA41B033CBFAE9AA7573691333E0D9B088B74AA1819C9A6B10EAED7E172';
wwv_flow_imp.g_varchar2_table(51) := '0DF1D4DA2AAADA22CC2B7308E726BE114EADD01E119FD7B071CF0033C62733737606DD226C9C2998B9542E9560752D0D43646609F01F157D2D2498AAC32CEA11E3B935D5ACDBD5CFDC49A9E25AA57CFD58BA10A143114669B45256FDB111C488E89FD366';
wwv_flow_imp.g_varchar2_table(52) := '64D15953CF134F1DA3D7A5C4F031DC5911173621E51F22EAE157F7DFFBE77C30478E1C119D79CA5B42A4182D8D2D24E71462967A61C4474B4B270AE12DD24428256545936729FC231CAB3C81373AD6F1CDB6644C7A33A5253963DEB3BA1A636621A9763D';
wwv_flow_imp.g_varchar2_table(53) := '435D2DD434B412955EA131925F90273A8281B4640DED9D6E72B253F1B9BA70452C64A5E8E8E81C11B4542DBCA952840F36467A9AD853594FC994798C4BD7D12E002A47347C67E790E8E43A86057DCE72AAE818F293916413EC6590D4AC348EECD9C660D4';
wwv_flow_imp.g_varchar2_table(54) := 'C2C2F933F10CF4A2176C46111EC61733618A0F50D33A44F994C9631D7DB49FBDFB0F13D53B99BF60267AF159734D05B5A2D3CDBB6011FAD8302301BDA88F0823FA43382C0A018411013431612C5E9E5EF106CAF81055C763FCE8C1EF11E8ACA45A840B19';
wwv_flow_imp.g_varchar2_table(55) := 'F9658CCBB430E88E91952E8CA4EA30AD7DA32467A4919F5F88A7A3962EBF8ABC9C625244B8B07BC72EC139735930633C3D5DDD3852D2F0BB0788AAAD386DFAB34748C108275B06044DEFA3A93F404E7E2A13B24DF847BDEC3FD18BD999C4F4222B1D3D1E';
wwv_flow_imp.g_varchar2_table(56) := '52534C0C0B36A333E9F17982829928E5ACF07E61909D1E259ECE1EE2F62C96CDB272F8582F31BD9E923CBB00F310468B498A543951D5458F68A36902306CD240B2D4BE8205B5777B48CBB009BD46E8ECF5929669472580FFE0B16E01D616E64C48A2B767';
wwv_flow_imp.g_varchar2_table(57) := '145B925994CD2770D18826E06540388EB00883DA8785514E72B06B5B132A8389CC5CBB702C0EDA5BFA38D913C09EA4273B2349B0683FFB8EF79355904E59968EC3951DB8625A6688F29824F615F6F0FC9A1632C4FBB304D8956688BED31B10A06912CE26';
wwv_flow_imp.g_varchar2_table(58) := 'C0FEE33D981CE2D9A5027822513AE5725BF1B9BDC43502327D1EE12046C8CE4F21DD2CB9341D0E5D847D47BAD1D9EDCC2CB5D325EE4916BA1C1DF6A1128EC4E78F6035AA700B2628B195CE3E3F867890131D01D187BC1C6B8A71FF37E762B7E83E560013';
wwv_flow_imp.g_varchar2_table(59) := 'F6B9E8F52AC84E32505775FC6C009390F73F88EE61CDAA7574F40F5236FB222E9C5EFA4F2986C71B62C7A10EF47AE13F85279512810705B597B681E834636725054351F9A8DC883028954A7C1693CE935248D184E80352FEE308BDDDC3A8CC6601D67AC1';
wwv_flow_imp.g_varchar2_table(60) := '6715F2BD0A79EA3B2A1FE522652C8B096FA513EC47DC2ADE11257A669A5BB023E1C123E23D31E97771AF7CDFA932888E47402E83B84680B3523A9F575ABE209E2BED5691F2BC4A3E2C24CAE116C067B519518B7748F7481909D5E2855299A567C6C53D7A';
wwv_flow_imp.g_varchar2_table(61) := 'EDD873C2829F6B352A39539F74AF4CD705EB930CDEE1304959D105238ACBEF0D8BBAFFB54EE26F29EB993229A58C89921E6322EC413E5E58CA63AC3F759F5CA653F550A9C774A9508EE9527A4458844C1A71BFB4646064601877544566AA8559934458EC';
wwv_flow_imp.g_varchar2_table(62) := '347DAC4D22013009494842CE9B2456F22624210939FF0093C8E791908424E45CCB5FA46B08040209904948421272EE01464AD7E0F178120093908424E4DC038CD7EBA5A0A0E07D014C22AC4AC8475912FDF71F08308A53D38EEF57E1891C3209F9A8834C';
wwv_flow_imp.g_varchar2_table(63) := '42CE9F28130D9D908424FAE1796730EF240AA50AAD464D2414941719E9F56F5979181F5BD8A451ABDEF29160414A25D1F0D891A53AAD864858DC1B95CE4BD6FD05A249CF3CBD6FE16DCC49A114F7AA090543E735738C741E35F13F2F10D36875A78E5345';
wwv_flow_imp.g_varchar2_table(64) := '3EF03E1C39DBD27C694195465ED825493814E483A55351C88BDEA49F4A658C6030F2775377E97EAD5675A69CA160F43DEBF1F402B3F7921B462E777C6C915E241CFDABFA2BE4057191E8FBDB75233D42D2A9D497A4FEF58F0C621221D3DF694F1A1D6A45';
wwv_flow_imp.g_varchar2_table(65) := '8C40308C5AA33D3BC048E012F3F6F0CC8A3D5CF4C96B4933C18ED52F73B8B153263F53175FCED42C052F3DB796900092A8E80C73162FA2BFE118532EFA24B9A651563CBD8559975F4EB643CFF19D1BD876A006A5E83C1AB383E537DC4C96557DC698E30A';
wwv_flow_imp.g_varchar2_table(66) := 'F1BBF81945186D7C88ED9B1B99B96826A653493524109056A6128B108CC465F03A75B3F83B76E6EFD3B1753C1A21247DAE1BDB141F0A06E59DBEAA53081213F70DF476A332DBB10AF093CE756E3EBE93B55B0E12555AB8E4AA6B999837B6414F5EFD2E40';
wwv_flow_imp.g_varchar2_table(67) := '338AEA0CA0C8AB3F3D5DBCF0F42A4622C5DCF0C98538EDC6336622AF9215EF0A09C393CE8496567A4AAB50C7DE1D97F7AB48D785C5737B7BBB08794718709B98362DFF4C19A5D31E345AE90C69C5993AC4DFD529484B60FDACDFD642CB4088B4AC642E9D';
wwv_flow_imp.g_varchar2_table(68) := '9B25EB513E5A361241259FC52D014F445E3DABD58EFD1D15603034E446A933E0306BE595AEF16854D6E369F01973287159EF4D0D3D44B57A86877DE415A49062D38E85DBA2EE61D196DD7D7E5252AD2862A756B38A76D3AA95F2F324F091B04723E95338';
wwv_flow_imp.g_varchar2_table(69) := '2B6925ADB4614EAA6BCD890ED47607C5D926F91C71A5FAD42A62718DB45A564E4E7FEA1E95288F5AF5F6BFE5F68F223B2A69EBCBFB01D984BC7FD1EA74F4351EE4D8808E8B664EA4ABA1E22FD335A4A4A4FC05824B1DFBE4BED5FCF4A187B18E5FC8D482';
wwv_flow_imp.g_varchar2_table(70) := '245E7AFA05C65FB08CA9F9569E7BF15502E2FA9E3E0F975DBE94AC8C74720BF2E9D8BD86157BDA18A8DB4655A7894B974E47A78EB3FE959731E44F66E1ACC964646663D146A83A5CC18E7D87D03832F077D7E35139B028DC541EAF63D013253D49C3DEAD';
wwv_flow_imp.g_varchar2_table(71) := '5B69EAF5A00B0FB266F51B442C9964DAE2541C38C4AEBD7BF0AA1DA49BE21CD8B5973D878FC98C69FFF62D04CCE96439B46C5DB3928AA6218A8AF2E96DA965AFB8E7F0C96EF2B293F9E3AFBF4FF5A08DF9D38A0430EEE4C1875E62FE953792A3E863D586';
wwv_flow_imp.g_varchar2_table(72) := '1A165E3C93FA5D1B59BF43DA615B8CDADFCBBEBDFBD92DDEE3CCCA66FF8AC7786A6305E3269533617C117D0D8758FFE65EDCFE18466D8C96CE115293D4D4D4B7A3574745B9B653DB3E40DC3FC8BAD7373212B7E050B4F3837B7F893E390B8335859C2458';
wwv_flow_imp.g_varchar2_table(73) := 'B7620535BD214AC765D1527B5C94793727DA86C8CFCB151E227E5636A453C579EDD50A1A034696CD4DE3F0CE66C266334AAF9BDD953D682D7AEA8FB553D92A4021DB269C88872DBB5BA8E9F49399A267C54B07A9F3EAC8B7C6D8B0AD95B04E4F8643271B';
wwv_flow_imp.g_varchar2_table(74) := 'B85B80CF81239D54360C0BE0B0E11D1A463A01FCE0FE4EB28B3208F5F7B36E4F271ABB85D8400FBF78AE960993B3D1877D9C14CFB71AE2D4B68E0AF052D2D8E145AF8CB27547136DA3302EC348434D3747EB7AD827CAE94C4FC23738C0485849676337BB';
wwv_flow_imp.g_varchar2_table(75) := 'AB5DA4A618E868E967DFD16EBADC710A332DF4B4F5B1716F3B0301C8CBB030D83DC01BBBDA08AAF5A45B95ECD8D9484D5F58FE4E998098F3C35CD41A3A8EEEE767BFBA9F364511CB66E4F0EC334F9E05604488A251FA78E6F9F52CFFD4F51CD97D9C858B';
wwv_flow_imp.g_varchar2_table(76) := '667362F72EE2827DC43CBD54358F307D4A21C7F6ED65D8374A63FB282513CA99B36409DB9EF9055B3BF5FCF257DFC4283C9DB437A3BE6227474F8A8ED0DB8947914A96BA91EF3FFA3AD94951F6ECEBC71CAA666F9B16FBE8115ED85545D46526D5DCCE7D';
wwv_flow_imp.g_varchar2_table(77) := '8FBE465E9A8E351B76909C6267F3CA2DA4E51A79F0D1A771249BD8B5B986B202153F7AF4459CC618AB5F7C1DB34349455513A35D27D8553B4AB4B382BA01D151ABD7B1BED64BB4A59251B289F454437229B3CB0B38BC65159E9445DC76D53CF2C797B360';
wwv_flow_imp.g_varchar2_table(78) := '7E396D87D6F2E8AB87483307D8F4663D0E63070FBEB48F0CAD8B83C77CA45AC304D426D4410329261F7F7A71B59CF260C5D3ABC9294E61EB1B9D2CBAC0C91F1EDE4656AA971F3EF41C59D9E9D40AD0B00956B761E59B149694507BB41A8BCD4AD067A4AE';
wwv_flow_imp.g_varchar2_table(79) := '620555835AFA8FEDA23F6CA662FBF354BA34F455EC46E92CA734CF26338D77642F3E37EBF6F60846359D7182764E9F9649AE43C1D32F5750ED128CAAAF87A3BD31E27D7DD40EC589BB07681606DE5DDB2600CF44DC23F425406CF7C1764C161D3BB73791';
wwv_flow_imp.g_varchar2_table(80) := '5E9A4E9A5547FDD15AFEB06B881C438883751E8CAA30A30135E14058D6FD731B1AB1DB346CDFD549729A9E862637B3E7E46312ECECE94D1D38A23E1E59D74C6E9A56805D1F0D0D5D0C44D5B41EEF202898E6AEDD35D40D2B44BB2B686F7271AC2D40AAD6';
wwv_flow_imp.g_varchar2_table(81) := 'C3CAED9D984C4A04D6F0E69BD58C6804D0887B94022CABAB3A5019D4ECDAD14656BA9115EB6BD11934D4D70CD1D4DC49C3088C3677D1E4D730759C4D66DA0939C7A1A5C4AEA31AD1AE063921D9DC49659496CF7BE7415EB54683ABA59AE3FB2AD8B7BB82';
wwv_flow_imp.g_varchar2_table(82) := 'CA8ABD1C6BEF43A38A080FD248E75094BBFEED6EE1E53458520B98523E59FC2FC16ED6E3EB3D49D42FFCDA4888A60E8F1C9FCBF45B61A4B0780253A74E159E399390B864DECC2BB8FB8BB7600CA998346B11AEDA3758B9B39DA5F3E710F1FB0984145CBA';
wwv_flow_imp.g_varchar2_table(83) := 'EC36AE5B908F267B3AB7DF7E27E5A52A0E09639854BA84AFDE753BD9263BAE613FD3A65CC2973F7D19850B2EE433B7DC497ECC4BF5912ABCEE51A4C06260A4057F34833B6FB99D6B972E24E4819CB26902248B4FC58F6A0282FD8C692C4C67BBF07CF527';
wwv_flow_imp.g_varchar2_table(84) := '197FF1CDDCF1A52FA1893552D71DE78A25D7F1A5DBAF43ED55915756C6B4F2492499448717A0612FB980DBEFFC2253A7A489F026845AA9130FD6A15569F00B8ABE70C1B57CEE966BC9D0AB686FEFC21352A377A451365980417E0AC1815EDA3C0A6EBBFB';
wwv_flow_imp.g_varchar2_table(85) := '2E3E7BCB22AAEB0EA2D01773B7A8F7A5F367E2166C91B38C13C4659011E1A1008860382E87B25EB79BCE7E2F468B852FDF3C05C3888F51C10E23223419F4F8E571A7D0885F84790A79775E76A1933C8786A11E1F3E1141C53431BA874363215A58C1D205';
wwv_flow_imp.g_varchar2_table(86) := 'C5DC7C63193EE1547A3D51B97349A1D340F730E6DC6C6EBE7AAA608E51BAC31A2696A69061D5624AB7C9A938361D1DC2A653B04600505EA619AF0097DB6E98C25517A670BC711093CDC6DDB74EA3D01163C5A666B24B32995E9E4EA65D23EA10222E422B';
wwv_flow_imp.g_varchar2_table(87) := '87C3CE5D374EE58219364EB47B709A340C0C0608091DBB7A5D60B0F3E94F4CE3F6E5D9F4370FE1F3C78989F070C03D96A22331CC72EE459A814ECBCDA4202B45004D0C850853CDCA817706189522C69B6B5F65FC357772CF37EEE1ABD74CE1A51757E157';
wwv_flow_imp.g_varchar2_table(88) := '27F3C93BBEC89D9FBB9DE9C5E904FD6EB9535BED4E2C7A25FD1D0DFCF27F7E4BC96DDFE3DE2F4CE6FF7EF100BD5EB9DB8B18D883566FC06AB58B60DA4DEF701065442F6760F30A30492F2CC72440404A3D38734A1E5EAF8F4854188B5F8BCE6C23D07188';
wwv_flow_imp.g_varchar2_table(89) := 'BD07F6D2D8EA2627D5412428E5D11546100E8FED020E5B08FBBD0445481F0C880E279893353D958C71254C292BA0243B1585E8D08A505CBCCF2B0F5A87BD5D1CABAA2522E58399328B9E432FB17AC77E5E7FF6F7FCF4B1B53833D26839BA897D3B36108C';
wwv_flow_imp.g_varchar2_table(90) := '5A8497D6130B69C5F3BD429111F13E3F1E514E691D514AFE7811E61D65F31BABA8AF128CCC6AA2D7B59FED6F6C119E5C785BAD0645CC41B0F7089B3755317DE64CB4EE3EC100020C74D552DBD8495C6725493DC2B6CD3BD8B6ED1099E9592822E2BE6004';
wwv_flow_imp.g_varchar2_table(91) := '8FDF47F4DD6639A4B11D9385B2340D2FAFAEE2446D27FFF34425553D01D4685045C1E830909A61A52CCF4271B296C3FB5A31A438042B81616F48B0A8002D7D3E0C49464AC639284E379069D5CA6DA8D5C4A96AE861FF9E761173EB1164451E880D85A282';
wwv_flow_imp.g_varchar2_table(92) := '351AF1F4F672F8442B7DAE28B9529A824E171D43227651999890A2A26230CA25D39C9CA81A66CA940C113A79D871B0838AE383E408EF178FA85047A2B8032AEEF9FC549A8ED5B3F9403F9939294CB0C6D97260006FD0C7B6836D549DF4906988B0F3601F';
wwv_flow_imp.g_varchar2_table(93) := 'E34B92D1F9847E0C3AD125463870AC959756370AB66D202BC7CEF81C3305294639444A4C149D1F9188612828EC4E189332EAE5D7F7FEC73B854802E585CFEF1D08337BD145642659C8CA4C27EA13317A61215919A948693FE4D17E81541D8D274578D44E';
wwv_flow_imp.g_varchar2_table(94) := '7B4787E818519CA9655C73C522F20BC7A11031B42E3917A7558F2A16A0AEBA96B6CE76DA84A7C92C28212F3B8D8C742B718D9E9CFC2CD292ADE44F9ACDF8BC24A2C2F3E7E6A562169E375F309F149D8F4DDB0F316DD1352C9E314EBCDC405E4E3271E1B9';
wwv_flow_imp.g_varchar2_table(95) := '72F2D230DBECE4663B50AACDE4A6A7088336B1E0A225749ED843CBB08AC5175D4C9259474A463A16931A73721AF9525E991E970853C6E37066519265178C6D2FBD41139FB9E30E66949711E8A965FFD15E967FF2568A33CCE8AD49A4A79A511A2CE46439';
wwv_flow_imp.g_varchar2_table(96) := '451891445A660AD939690CF5B6D3DC584B778F866B6FFD1449F1360E9EE864FC9CD902E4F23008E3CF2B1927259EE1645B37B9134B9928189035E662446965F28C19CC9F5EC4C11D5B081AC7F1A9EB2F97134767E4086314AC27293D9D140110679BE191';
wwv_flow_imp.g_varchar2_table(97) := '403923DD82AB6B9083B52EB24B73593635199F681B5B9249E8C842737D378D8331A64FCE222349476DC3A0F01246727304D310ACB447844C538AAC1CA8ECC19C96CCA43CAB3CA8DBD6D6CF919A51C104155CB0A000BBC01DAD5187513897AC8254AC713F';
wwv_flow_imp.g_varchar2_table(98) := '5B0FF733696A3ED30BAD0CF6BA8553D2932CF4AD16E5B73B2C9417D8487598292A481221A69ABD873A885B1C5C3A2B8348384692002A69803C43B47D9E298657808EC7354ABB00F62B17A471B27E90AE2E1FB6CC642E9A9529E7A691F2F5246598182718';
wwv_flow_imp.g_varchar2_table(99) := '4FBE2DCEA6FD3DA2DE395C3A2F5D1E30EEF4A89835399D64B3260130E7335012CAD55B92C9B6EBE8EE1DFE73BA86CACA4ACA04DD3F3D0623B5815EA7231609C923FE4AB5460693BF988E95A627D55A3917C65F4B3828AE11FE42A7D31015CF90670FFE6A';
wwv_flow_imp.g_varchar2_table(100) := '9A7AACA5A5917F69A6472D584110B5F08A127B0A8A7042FA2C226051AD8ACB4994743A1DA74B27CFCC6894F2E77AF10E6986469A180986E2727E12291788569A228F44E46D1032C246C2A2BC6AF9270AE1CD155139F9B89C774420AF3421FAF6696AE43A';
wwv_flow_imp.g_varchar2_table(101) := '8C4DC14BF945A43C25A27C61697642CA011297F3A9487A0BBBDBF8DFC756089D79B065CFE0D3375E8EF12D69E5A5FC23D224D258DDFE9CEE392A18984A73FA1D61C1AC5467741A16DF69C47792CEA5193069062D24A56D7C079A2FCD9E0CB87CAC7CB309';
wwv_flow_imp.g_varchar2_table(102) := 'F3E9E4E0F19808CF62F2B475445428AE50CAB94CA48A4A7A92C66D342A859C83252ABE8F487A9072C388E6514B794DE45C2963B34D9E112F51B56034C93A0281B0FC2C293F8A34F3234D47ABE5191C853C4624B5AB9493467A66282A4D65ABD04BEC529E';
wwv_flow_imp.g_varchar2_table(103) := '0154E2F747E4BCB75A8D42EE0A925EA46C70D24C915A7C2ECFB4A9C6668F24FD4A1345511157B7F70947279C92540529178B56A74229853E4AC6A6F8C57BA4892369AC45F2A6525DC7EA02575F523C36059E4099F3B18A48E85E8BB43A42EA2F521F7F47';
wwv_flow_imp.g_varchar2_table(104) := '8049C807C06FA5E8E8D12043A3019CCE24199CFF19C70CC96B6034CAF3E2A0A4E967C97148099BFEF154E0F4B4FE18007D909E2A4D63BF2753496C233827A24EA8E01CE2B708216202C1931C3A99B5FDB39CE4E9EC6CE70BBC64D619FCE7A5AC96CA103A';
wwv_flow_imp.g_varchar2_table(105) := '4FF5FBCB7A262401301F3A908911FD38D7EF43105A24C29B8F20C0C82B5F130DF7813A7BC2DB2574F7D7E0F78FA8D747417F6700C66C3627F2C124242109393F00333A3A4A515151422309494842CE992813215242129290F30E30094948421292009884';
wwv_flow_imp.g_varchar2_table(106) := '2424211F1979F769EA589086DA6EF2CAF2E5A355BB1A6B39D9DE434CA166C2D459A49AC2541C388A271295D77D14141713F20C935F5286B436F5644D2DC9F925D80D4AF9E8D86AE9E858E2F281E55366CCC2FC8E2508D2D430405E7116AAF3A880B89487';
wwv_flow_imp.g_varchar2_table(107) := '46A93E936F25EC1B948F8E8D68ECCC9D370BE3BBBE3C4455C52186FC4E66CF29964F09FC60E588303A32C4A85F475696EDEFAE577FCF30CD3D5EA20A25C545A9249BDE5E9198B44C59A37E5F5E66D4358A2FAE252DE9DD8F3C1D19F410D4E8E4ED006D5D';
wwv_flow_imp.g_varchar2_table(108) := '23581D56D10F62B476FBC8CCB0A239538E103DC35132530C7F71BF7BC42BB78DDF1BC4EAB460D4FC7902425AF017572ACFE4CDF947487FD720755D614A8B9CA4D8351FB09DA344455B77F787C8CEB2BCEB62C1A1BE61C206336996D38612A5B97D949C1C';
wwv_flow_imp.g_varchar2_table(109) := 'FB87708D49908ADDFB51679430A5305DFEE42FF622A5A7A7BF6D1669B0E64D3EFDF97BC85D7815E3924D3CFEEB07E80C68080FB5B16ACB7EB42A3FAFBDB2097B8A8361978BE4EC6C763DF90BF60F24A1EFDFC3234F1C64F1A5F33008C35BF9C4C31C6E1D';
wwv_flow_imp.g_varchar2_table(110) := '11BFC770FB4264E51510191DA2BDBB17A3CD4EC437425CAD9797F08FF4B773F8681BB9F919B8FB7A18F6453089FBEAEB9BD0D993E5C3CD47C5FB3ABA3A511AADE85571460606E8EC1B40A7D7D2DDDA8AD26447A756D0D77A925E6F0C87D548C8E763A0AF';
wwv_flow_imp.g_varchar2_table(111) := '8BBED1B0F8DBC08B7FFA0D2D7E1BA5B9A904874EF2E04F7E814B9584AB6E3FEB77F570E10593080C7673B26300A7D321ED936078A89FF6DE41613076AAB7BCC0CF1E795E68308BF229A5A802C334B576A2D28A7A2863F8A42D0EA2EEA35EBFBC547DB8AF';
wwv_flow_imp.g_varchar2_table(112) := '97A1D1A028578C86BA9360B06288F5F2E0FF3D8ECAA097012627D34EC7C95A86235A6C261D018F87BE9E4E06FD71EC66C37B68E8182FAF3848A32B4E707890757BDAC92BCAC46150D0DE3E4C50A5C1A48DF1E44B8750262793AC89D2D8E1C16297F68B45';
wwv_flow_imp.g_varchar2_table(113) := '191AF4C99B1EE3D1187D035E141A15AE7E0F61959AD17EA163B782648B8A410120AE601C9B5132B6B8FCEC800004B36E0CCCEA0FD4B0B63AC89C620DFFF5A38DF8ECE9941947F8DDEA16E64F49A3B56D048D498FDA33C0E3AFB690916640A5D789B61DEB';
wwv_flow_imp.g_varchar2_table(114) := '83077656D338A4241610654BB613136DD7D61790F791AD5D7798DEB8897C878AC636375AA117ADD0F7E8889F6E517E854E8B5E4A70E5F3D3D4E57D4BDDBCA22F453189324B6FF10E7B681F0888BEA0431109D3249EA514EDA017D6EB7107E811F58FEB34';
wwv_flow_imp.g_varchar2_table(115) := 'F206CA5F3CBA8F4E5F9CAC7407690E019A1D2348EB0DA56D15815347F14A3BE8A5A37283DE00FDAE006AAD9ABEEE11C4AFA22DD5BCB6AE9276779891E130053936BC2E0F6D8341F9FD7101F852E2AE9E9120168B288F77943FBD5C43C1E42C62A31EBAC5';
wwv_flow_imp.g_varchar2_table(116) := '3D0E8B965DDB8ED21030529A6EF810814B8C75CFFE815D27DA38B27F3B86CC7272045EA8DFEDA60DBBABF8DCD76FE3F0B61D2C1D7F3D065B3AF3AFBA9A6C551F953F7F82416F31E959E9E4E666138EEAC9CDC8A1E89E7BF9E637BFC35E959DFB7FFC0049';
wwv_flow_imp.g_varchar2_table(117) := 'A768805634544E7A2E39B9C918930A51F6ECE52BBF7C852CA79AD4C2654CB735D09F7C0517A5B7F0D0862AF29326D357BF9B7FFFEFC7B9F0E28B89BBBB191A160DAE2EE4AB5F58C00F7FF61016E9CC625339F7DC3A997BEE7F94D42401546EBF68A030C6';
wwv_flow_imp.g_varchar2_table(118) := 'B2255C5A6E67E52A0184CA300B97DF8AB77E352F1DECC7160B71C3A7EFA6E3F861D1394A59BE6022B507B611CE59C457EEBC5E6626D5D5ADF4B71DE5B7BF7D8EA80087ACD2CB5836DDC7F71FD94C8E2D4EC9ACEBB07537634A4E17401B65B4B7953F3CF3';
wwv_flow_imp.g_varchar2_table(119) := '18EEA092EEAE085FFCEA72F6EDF1F3E5BBA7F0D463DBB8725906DFFAEFDF3273FE8558351E792F4FEF908E3B6E98C3897D8730D933281C97C1A1379FE5A537AA898514DCF2B9BB38BEE34FEC6A0FA3139DF6CEAF7F8FE9E3ECEFE62785E11AB8FAB249E4';
wwv_flow_imp.g_varchar2_table(120) := '5B946C7A6D371535DD74455D1C38E9172009575C5248B36088DA9456F6F78EC8E7266B6DC95C334BCB771E3ECEEC7227ADBD3E793F57541884D3A1C467B2B174A28D90D0DDC68DD56C6B8EA117F7DD76F30C061A1A39D01C14601065F9B553199F61A0B0';
wwv_flow_imp.g_varchar2_table(121) := 'D4C9966D43D435AA281B9742C435CC91DA88F0DC36D6AC3D42F7488C087A6EBB229D6EE1445E7CDD0B0A135FBE63AAD08F42CE4C276DAAED170668EFEC65DDA67AA2C279E49766D2DC38843ED6497B955F80B760052A33B72E4BE6E74F1CC5228C55AD4B';
wwv_flow_imp.g_varchar2_table(122) := 'E6EE4F64F1CCAAEAB1F4ABA26ECB6788BA3D748499734AF8C227C633DCD5CD23ABEA05B0A8281C9F85D2DD4743BF60B402B83E77630E8F3C7D58382F3D1A8D95E5D32D0C0614CC167AF00AF0DDB5B5816DB55E3C02782FBEAA8CA11637975D5146C58E3A';
wwv_flow_imp.g_varchar2_table(123) := '9272D2D9B5F308CD1E03734B8DF4B9E3B8C575175E3481AEA60102AE28D929A9F476F6F08757EB64A0CB1F3F8E1919A3FCCF9A6E324C3061FA44A6985D68F2B371B87B787465236A018AD3179573C9FC7CFE776D2B4BA72461F8B0AC2A890C72EC442777';
wwv_flow_imp.g_varchar2_table(124) := 'FCE047F4EF7E8EC3279B2932759E9D1D47DD2DECDD7488C13E1F07B66FA12310421DE8E38FBFF915BF79E439665F762333F26C34D537B067F72EF61D3AC688601A1A8B8DB4F010AE21234E9BFE2D7815A7AAF2307BF6ECE1685D8B68283F05A58B78E087';
wwv_flow_imp.g_varchar2_table(125) := '5F27D43E223A4E392DC7370A8FDB4079591123DDC38C0AE49EBEF846EEB8AC885E65013FFAF14FC83177F2E6A16A52D226F3D31F7D17A73F4A976014D94573B8EF9E9B316717F38D7BBE83B3AF992D6BD61350DB442836CA9B7BB6D03FAAE5E6DBBFC65D';
wwv_flow_imp.g_varchar2_table(126) := '572DA0BB2DC0E40B9671F192A972F17CFE0049CE8C5385D532BE348F6A013ACE79B7F2E307BE43EFC96D54360E336BDED5DCFFADCFE16A70537EE1855CBAE4028C51E1B1F76FC39F3283FBFEFB5E0AB214B83D5E42A363395982A311BCA22E25D396F2F5';
wwv_flow_imp.g_varchar2_table(127) := 'BB3F4B615A3AA9297606BA075126E5B3E892CB9850E0604834CCDEEA76EEFAFE8FF9F2CDD3D8B46333A3212B777FF53FB961BED04FDDD07BE4E2C81B42257138F404DD6E0E1EE8C2E4B40A46344C457F80E9730BC9D604A96DF68890C54CCDC9768E77F9';
wwv_flow_imp.g_varchar2_table(128) := '289F56C85DD78FC76631F28DCF4C13DE5ACF4D37CFA54430CBD67E1F7E9F94B254C9CD37CEE213B39268AD1BE4F0E12ECC495622FE117636B8E4F79A5392B147FDBC7EB887E90B4A307807D8523F42B6050E1F1F2435C3464F572F079B47C9174CF5DB5F';
wwv_flow_imp.g_varchar2_table(129) := '5C48B2DE23CA10F80B27E7161E5DDA651D0A86D19A8CE46559299B9AC384142527AA874813E1565B4717152DA3E299A97CE78BB3712A22348A0E5FDF1E2033DD4455430755A26E53668CE34BD78E973D6BCDD176B2C797F29DAFCD6582D947FDA89EFFBA';
wwv_flow_imp.g_varchar2_table(130) := '7B21A5A961B61F1FC0E6748A32CD255DC0A049B09685B372284ED733D03AC489B6205FFBD20296CFB133EA0B121654460AB3A583EF43C27128F546BEF685B94CCF93768E1B51C4A30C0B6C9F20CA3D7F4A32BEE120D5C73AC99F51CE77BE3A8D96E64E6A';
wwv_flow_imp.g_varchar2_table(131) := '7B42222C1FCF7FDC54C248D728FD233ED29D4639B5ABB411D462B790645061B098457F8E3012F810111811F669AC667943AAD6E24437D2CCEF7EFDCCD901E6E0D6D558264E67FEBC052C996861C59ACDC4AD397CF5BB3FE0BE1FFD885B2E9F85DF3DC2C4';
wwv_flow_imp.g_varchar2_table(132) := 'F917F3B57FFF0FFEFD0B3791668CF0CA1F7E8962EE4DDCB6D8C24F1F7A417298B204622AAEB9ED0EBEFEF5FFE05397CD101E3C86D3902502B598EC41F327CC8696836CD8DFC5A2D9E542A901C2318D7C8DD120C2327F3F5EBF4774F0007AE1592DBA6C39';
wwv_flow_imp.g_varchar2_table(133) := 'BF4754A1221A5360D7E7A25746D06624A356A8E49DCB718D8EB4EC7CA6CF9ACE4CE1A5E231017E068BB8676C6B795818844BD06449F28B4B38BEEF553A046DEDAED9CEFFFBD18378545A61907DF8DC83F2AE6295CA40B2214DDEF12D0147549451A2C5D2';
wwv_flow_imp.g_varchar2_table(134) := '2E65BDD52E42B041FA7B3B18151D48DA7C3E1CEC64A85784450343725A09A7B908ADB79E4DEBF691915B885974BC503828E8F8A0F0C44179CC41ADF00A701E91434E69D7B14A954AAAC120BAB952DA9DFA9EDA3B1C89E0164CAEBF67906D8786C949B3A3';
wwv_flow_imp.g_varchar2_table(135) := '1405CACCB0336D420A454E2D1E4F408464518C66A3A0EB49CC168CC3247A884D6B4229424EBDD2888884500A27A1554BBBCF15F20E67A9C32B143A52F41A61FE6349B9A59DDE1922B49B5A964A51F2A9F11911EEA61AC3ECAA7031A93C0387009BCA9620';
wwv_flow_imp.g_varchar2_table(136) := '65391679777E7EB69D191392C9302B717B45D8E0F1E3176C447D2A448A89104DCAF323FD8CA062D6AC020A7421C1749AE5EBDD3E0138229CC9CF7130AB2C8524BD12A3DA28CA191F4B8C29CA6B14A153418E9339E39DE23B51378DF1CC6E792947B04FB0';
wwv_flow_imp.g_varchar2_table(137) := '42CFB09BEA932E2282998D0A27EAF387E5B0D620DA5A1A778CCAF99D63F20EE1B1CC02825969E2C2A979E91F0ACBBBD103613F7D223CEBEDF489368C0B466B2455AF60DFAE2642420F69223C0A47055084C20C7B42727E69B5788694F3C82B9042DA91AE';
wwv_flow_imp.g_varchar2_table(138) := '127DD629651310F74B4A5588B6880A5DAB340616CE2FC0E476F1D2962EA962448282E1A93E4400A335131D71D1D0DC4F73FD09469506F2F2D3CF16228569E98C72CDAD5F64569185894E15BF7F6D1FC6940C119FFEB966CED4549A9F7E927B5B8F09108B';
wwv_flow_imp.g_varchar2_table(139) := '095A3C51283E892F7EEB56D214BD74DEFB1B6ADAAE6072AE95AC540BAF3CFABF6C14614DCC98CAC23982C24BEE2CAE256B9C43F452038B16CFC5305A2028B991B47C27669B451E50D4A494B33067373FF8FE7DE4150BC09B3901CF608F6CE45985299804';
wwv_flow_imp.g_varchar2_table(140) := '6BCACC9032B219C9762689C651E3CCCC67EE8C4B78E9F957D9D81CE7EA5B6FC31868C42878B7C2E110C025C046B083557BB7B178762919939670D3FC3AFEE7A7F723FA028B6FB89B4BA768697EE877FCE0876F70C115B73231C5476D9F5E068B4CC1380C';
wwv_flow_imp.g_varchar2_table(141) := '260DC949A2630B60CB99348592AE1778F8E187686D8B925B3C9DDC035BF9E90307D024CFC2E6709291264C5200665686938AFD87D08A581E9D4118AB8B0AE165E7CD99C9427B88871FB95F745C075FFAF7CF53B975BF9C9AC09A962CDA51FF1E5A5B457E';
wwv_flow_imp.g_varchar2_table(142) := '8A912D1B6BE4761C37673C8BA76592A591D844BBBC137A6E9E93787B0F8D1183005E959CF429AB208D921C031E11324859F8A43102A55E47BE600826BD8AAC2C117EDAD598F526ACBA3056E14D2329560C861426E4C659B9B75D4E5D71DDA23F8770D3CA';
wwv_flow_imp.g_varchar2_table(143) := '73B93CE6C32A9A66DAF41CAE4911A1A6602B972F1C148CB7551EF82D2B4C66F7FE0E1E7BFE08B945F9CCC91EABA3C470425AA3003A890568395ED1C290703817CFCB23333EC0BEF6080B6639D973B00D7BB25D94DD41DFA05F669FD9D9662609C6D1395C';
wwv_flow_imp.g_varchar2_table(144) := 'C5F683EDE41466502C9EEB09FF594BB3174FA0EEB52A1E7EBE970B1695512842F0DF3D5321E745BA6266061B431213D3909B6FC76E150623CA23E5578E88D0BF303DC8BA0D27E8AC1B66F9D4C994968758B9FAA8002C158B322DB85D210CC24E8A4A44C8';
wwv_flow_imp.g_varchar2_table(145) := 'DBED12A0A322C7229E65B6B0E9589FA85B1E0B1764D1F8AA78FF8B71165F309E6CAD879E881EBD294E6E8E0805D3D522ECF0A22F32D354DB4B5065E28A3919B885B35298CCC2117C88004661E1BADB96F1BB3FFC549081717CE5DB5709B2A1FC73BA8623';
wwv_flow_imp.g_varchar2_table(146) := '478E3065CA94BF7BAB80E460DFF688B18476E7444EE747797FE34F5122C23BA8DF6319C6669634BC7582222C3C984675F6F996F048130F3CFC2A366390915016DFFCFAED08E225E72551A9147FA32E3139FFC93BCD2A71EA3483F72B2E7780D736378C25';
wwv_flow_imp.g_varchar2_table(147) := '37905237A8C74E3690062143522A53C1FE34B29757C89E542A824F50708328ACC416A4F6930056A556C84E43CAE22F7D2E67F2E7CF7B60E4A4570AC598F715DF8584F717AE5D98645CCEE323AF83103A93FC5128141BFB5DCABD1389CB03A3325330E850';
wwv_flow_imp.g_varchar2_table(148) := 'C4A4678FE583D14AF963C43BA5778CBD2F2E97472AABC4DEA4C154A3B8467AB5F47E89EDF8021174824D213F47211F3523E5D39173C0883B3D01718F5123B3104929915347A148E5518A7BFCE26FA34E2D775E9F086FF47A2D6329124FB79D527E973463';
wwv_flow_imp.g_varchar2_table(149) := '153B759A429B08E9CDC2518E0C8CA0B339C84ED589FA47D1E855729874263F8E94B3C81F91EB35C63EC533E4DC38A7EA24DE1390DEAF559D393A47FA21E7BE09043856E7A264420646C128A50DE40641A99A4EF61037DAF8F69DD3E59C491F2A39D56FCF';
wwv_flow_imp.g_varchar2_table(150) := 'E0CEB906987F7519EC6AA1B96B989249E558F5FF1C0E2B75548F37F40E49A914A710FFBD7EFEBEDCD8FB7CC65F5FFF5EEEFF5BD7BCDB7DEFA75CEFAD0CCA5884A6B621EC694E92CDAA33807A6EF472FA362511BF4FCE5B2CCD408D25E409E3F244056B36';
wwv_flow_imp.g_varchar2_table(151) := 'C8A0F861B7D704C024242109396F9258C99B908424E4FC034C22AF4942129290732D7F910F666060E0CC405E42129290849C3380F1FBFD6464647CE4594C22EDC4C74F126DFA31009868342A1FEF910893129290849C2B49C44309F9C0F2415945828DFC';
wwv_flow_imp.g_varchar2_table(152) := '0B3298B3A29052299F3D2BD355A5F2CCE22FA9A3487D45F9961569F1D32BED62F29224F9DEF8A9DF2576F4568674FA99FF5C6AFC576B14E403BEC61678498BCBDECBDBA503C5A44554D158ECEF2AC769D59C8B3A2B4E6D85887F005D9EBE76ACBD78C753';
wwv_flow_imp.g_varchar2_table(153) := '243F28DB3D73B8DF39985818BB3F711CEC8724981DC302D118B15338A07EF706944E698CA0928ECA8BC70807A483D3BDC4156A9292925029228C0CBB0945C636D6198C4619848C06694F08F87D5EC4CDF22AD86838C8E8A87426B4B4AA538DC56A935791';
wwv_flow_imp.g_varchar2_table(154) := 'C6FF96D1C72378BD610C263DE73368539D3AB950D68752259F22D9DBDD45546520233D99683074569091143A3AD48F3FAC21C969E183A52751C82B52037EBF7CAAA3412FAD85FDFB2C463A7A556A87B1F2C4E5D5AD2A95F2ACBA948C55DADB25AD66554B';
wwv_flow_imp.g_varchar2_table(155) := '7962A26139B581DDA63B2F6DF0F7838BB442583A5D52DA1BA438672023AFF2558C9DB59C90F7AE3569F5B46B70504E9F62D5AB6507F20E67539F323EB5165FD721BEF085EF5378C1527293B43CF1CB9FB076FB218EECDF4945DB0849DA61FEF7670FD1D0';
wwv_flow_imp.g_varchar2_table(156) := 'D1C6C1831518C433DE78EC170C5BCB4909D6F2E3FB5F60E2A2F938CD1A5E7FEA619E5EB999930DD51CAB6BA6B07C264E934A5E52ADD1A86593920C5E3A7E521DEEE38D8D47C82F198741749E685C3AAD502D6FE2938EA0957A93462DDD1B45A3D5CA9D4B';
wwv_flow_imp.g_varchar2_table(157) := '3ADA5662115A9D9668243A6624023414B1A8BC8950231FF1AA9237C34909B3A42366F76CDFC070DC4286D38622ECE6C5DFFF86D53B2A39B8FD4D1A7AB5CC9C5E242F7D0F0B2F2E2D478FC5A4A5F74A01046347EBF6D4EFE2E7BFFC0DB52D4A264D29C166';
wwv_flow_imp.g_varchar2_table(158) := 'D6CAC62D958198C46EC6D8804A3E09512197512204527DE56D0F3A8328DF301B366D251418A5A53D44D1B87481AF617191563EBA552AB3527A98006595F2DD188E788736C68A9547F1989318976A80C008CFBD26F45D928A59AB40DA64ADD52A659D494B';
wwv_flow_imp.g_varchar2_table(159) := 'F62543D2EBD4F474F571B4D9C540CF283AB39EF56B0E73A00D664D4C920D4EDE2D1CE7D471AE635B0DA4A36AA53693F47EFAB4C5D30C50A11AFB296D939098ACE47022F131FD9D7EF769722401B554D738D231B6C8FAD5CAC7EE2A38E51465108ECB5E72';
wwv_flow_imp.g_varchar2_table(160) := '6C99BDB411B4EE441BBD7E353969C6B1AD02D2F27FA96C8AB1B2710A3425C5A94F6D3990CA2B7D276D49D068E535FBF2DF92A391EA10F47BD872B08BBC8214D4A2EF48EBFA550A122CE96CA190B0C1A33BD7F2FB279E67FBE11A264C9CC4A18D4F9E9DC1';
wwv_flow_imp.g_varchar2_table(161) := '487B48F6EC3940EE44073B771D64D62D171254DAF8F2B7BF41A1AE9F6F7CEB01F6DB2EA06CF67C3E71DDE5A261C224A7A753A8F804F7FDEE97AC37C4B8E296AF932F673F8BC87B422EB9FE93CC29C922A632A318ACE4FBBF5E87DB37C2EC8B6F263F524D';
wwv_flow_imp.g_varchar2_table(162) := '30FB3266393B7972D331D2928A196AADE0BBBF7992BCC9F328B0F8D9B9E71805D3AFE2CE6B4BF8D523CFD0E31A226FD2A5DCB1AC90077FFB0CA3A118B9A94E06BB4F92279E79F5D464FEF8C8B378D5497CFAF6CFD27B623D2B775411551AB8EBCECFB0E9';
wwv_flow_imp.g_varchar2_table(163) := 'F9DF132AFD0CD3BE7903D5FB5FE750AF8EFB7F740FAADE06566E6BC43DDCCD8A471FE578A7874B3F7117D333FBF8CD531B0904FDE2EFCFE0DABE96F6D138A5D92662611F2F3DFE3B0ED4F460B1E773FD75B339511DE4A66B8B78E185C32C989DC66F7EFB';
wwv_flow_imp.g_varchar2_table(164) := '04490513294C5170FC4423B69C19DCB03099277EFB0817DFF869D13099B4556DE791C75E2562CDE76B5FBE9DCA6D2FB1E548330A8D8D7FFBCAD7C8776A65503E9B677707228404237AF5D55A8E350E3312B5728322C42BAB6AA8ED0E327376313332823C';
wwv_flow_imp.g_varchar2_table(165) := 'B6B6057F28CA9CF9E3B1F6B5F1DC2151CF0539A81ABAD972D4455E211C6A4A63AA4DD4EDE028B75E598CA7B787151B9BE90D28B8F2CA09C43BBB79E3603F4999A9DCB6348367571CA5A52F48566E329FBDBE9C8AED35841D36FAC4339B07235CB4640299';
wwv_flow_imp.g_varchar2_table(166) := '0CF03F2F3731734111B75C5448D5A16A1E5BDFC1A2C50544874669E8F2336B4E310B4A343CF972153DEE3005A5F9CCCF8DD315B13153947D6375883C87525EB6FFFA9A436CADF173F945B9341CEFC11D5173DD95E3193CD9CCEA8A21CC069D9C67E5E448';
wwv_flow_imp.g_varchar2_table(167) := '8C3B6E994AE7D126769E1826A72887EBE75978E2951AFABC1172C6E5B23823C48B6B9B842263B49C1C6254A9E5FAE59328B00A87164BA0CCDBFA9B04C0C13E36BCB69B5BFEFD5E06F63CC9064142668F9BF9CE83BC0A95F0D6DE4EB66CA966DAB4F99CD8';
wwv_flow_imp.g_varchar2_table(168) := 'FA26FD614183FC7DFCEFFD3FE0BBF7FD124BD13CE6143BD9BB710D3F7BE027FCFCFF9EA2B5D743F6D48B19176BA7712089A50B8AE5C3DDA51DBE9AB89F971F7F849FFCF4A73CB9729708AD7AE88DD8F9FA176FA07E672D3AA39E4307B6B173DF61E202FA';
wwv_flow_imp.g_varchar2_table(169) := 'DA6BFA70894E1F7494B06C9A9D6D556EBE7DEFF770D76E61E3FEA3740C4585C1DDC1C8F193B4B5B5D21B35F1B99B96D0D83AC80DB7DE8AFBC86E9E7FF22946CD8564690468BDF20A0DCDAD142FB89A2B27A470E4C820D3162E63D1C289729D7BBBFB299E';
wwv_flow_imp.g_varchar2_table(170) := '380FA304AEA9C57CEAA6CBA8DDBA8276D374BEFFAD5BD9BEE6390ED59C24622BE2DF6EBD84CAAD758CBF7009575CBA9848FF28B57B3672B84FC77F7EF32EDC5D5574F7F7D15AE742A18ED052D38BABBF93114D0A375E7BA9006F030B17CDA0E9D04146B5';
wwv_flow_imp.g_varchar2_table(171) := '395C78F1A5E424A9681775796DFD6696DCF12D2E9FA0E185D7D651DFDCC1BCE537333B5943C5A1763911D3BB894684B4EDB5AD34FBF5DC7D7319E956358D478451D57B9835DEC2BACD5554758CE0D799B9F38A5CEA2BFB48111E7BE1F45402833EF44956';
wwv_flow_imp.g_varchar2_table(172) := 'E6CCCCE282490E0E1DEF625F552F11C1D8B4823EF4B6F40A0008505A9444DCE562D5E6168A26A4D15EDDC4E6E3BDF48AB0EABA1BA6A0F5B839DCD0C3F1560F3D0DED1CEF8B33395BC32B1B6BA8EB1EC15690C665B3A4A51131BA7A5C6495E7931773B3A7';
wwv_flow_imp.g_varchar2_table(173) := 'C1CB8C6233EBB6D4B24180BC2A2D53381001493D1E5C2E2F8302A42486D7DDE36778C8CBD06080F6410F175E5242DFD14606D52632B40210B735D1DC374AF1CC714C348589A5A5B338D7C0DE9D2759BFB79BC99353397AE0FFB3771E70725FD5BDFF4E6F';
wwv_flow_imp.g_varchar2_table(174) := '3B33DB7BD7EE6A57BD4B965C64B962635AC00163836981C00B8150432001028184E20412C0060C6E58EE4D9665C9EAD56ABB9276B5DAAA6DDA5E67A7D777EE7F76659944B209F6F32399E38F2CCDCCBFDC7BEEBDA7DC73CFEFB4B0AF759C413FDCF19E5A';
wwv_flow_imp.g_varchar2_table(175) := 'BC1D2324D25DAC5D9E4F747494E1808EAA92B464F2638A2E6A35C743418C399964663AC92E2815ABDFC89265AB2F2E60943FD55ABF0F8594E29B0E60D38FB1FDE071CC19F9FCD9ED1FE2D37FF545BEF5B90F289426D6BEE30E7EF82F3FE2C7DFF902730B';
wwv_flow_imp.g_varchar2_table(176) := 'D338BEED5E2632EB589A1BE0D7CF1DD6B04214966844AC9FBFF8CADF73D75DFFC6973F7E238998817965CBA8282F10B3D9CCFCE55712EDD8CB337BFBB9E1F2CBD025224412561655ADA222CF86353B97BC9C3CF2F3AC4C7983CC295A4E7559114E57BAB8';
wwv_flow_imp.g_varchar2_table(177) := '1B3AAA0B9752539249D1B225541455906D35E0F787B44591555CC5FCCA2C319D0BC582AA25B7201FB372978C261C76BBD6E7DCC23C9A9B5F26AC3E4CB5F3F37BEEA1C71B21BFB494DCE20AD2EC11BC613B4B2B96505E9A2FAE9B5DC349B198AD582C2622';
wwv_flow_imp.g_varchar2_table(178) := 'C120F68C1CF20A8AC5DD746959B771632C19AC4BC4840326E655ACA15AAC97CE934D0C8FF930CA025785EA4DF20CBB5DDCA5589898D942456511E5730A0987C6B1DAAB59555D4DB62C1043ECF5ED5B247449C029873B8DBC6285856B24E015F752B95936';
wwv_flow_imp.g_varchar2_table(179) := '1B8B6A32C445D05157904D79A1039B55DC1EF103CCE206AAF618B4CC67E5F6956118ECE7F97A0F972FCED3FA912D7DDFB0329F736D23EC3A362AEE8372458D54D764E3B2E8C872BA59342797F5CBF278EA91066C79B9943BD47E90016B7A1A0B2B9DE246';
wwv_flow_imp.g_varchar2_table(180) := '1A585E914B96CBAACD8D8458092BABF370295EA8BD30E1C5E2EA74A2A128E9E94E194F276E716712893809255FE3C98C686D435AFE73585DAC1481A71376ABFB33F2D2A929B0091F2C2C29CE205BE665514536A5197612C1B0729444F09BA8ABCDC62A2E';
wwv_flow_imp.g_varchar2_table(181) := 'B382F8A82E76E2484BE233EBA43F0B96CF6145959353C707C475F4FF9719F1294AEEF1E9C4450A0F4FCA7A8BE1F50C120E7BD8B173F7C55C24951A1F62EFEE235C73C71779EF95555C2703F1D3CDDB45CBBA29282EA5282B89D961B5EA38BAED094607CE';
wwv_flow_imp.g_varchar2_table(182) := '6893A1726E0D87C405B9E36FBFCB224EF1C5AFDFC389C573595CEAC2CC140FFFE227ECC9CB206ECB66C19C2C2C06B786458A2C444B7A2135852E31870B99532293509FD0CC2FB56960CF9B47CEF4F37CEB3B67C5157372FB8DE53CDF35ACD09FC5755016';
wwv_flow_imp.g_varchar2_table(183) := '9741DBAB50E77914205254345CDC60150B652DFB8F74D0D533C5FC2BEA60C4A7EDCFC465A124C4DF76C4A6D8BA750B4BE77D929AE5D752BBEB1FF9C6B7FE09DDD4008E796FE79DEB5CFCF49E07F8F65133EEE265CCC9B17266486DA2CA7B2D33134E0361';
wwv_flow_imp.g_varchar2_table(184) := '0A52BCE872B25EDCC8F7FFF124271B26B8E5C395845EFA19DFFCDB9D748F16F00EFB1C6DFF201C0D302CDA38738E1FFF641FD3B104C19113ECF08CB3A0EE26969B3BF9E50FBE857EDAC38DB77D90B683273580EEB8687A9DE9F56914B75830B9B2C83B4F';
wwv_flow_imp.g_varchar2_table(185) := 'F5F0F3FB06E99BB4F081779671425CBFE151AF588B364A72644422460D73D7EE306BC86B7D3B7B30A4A5B3DA69C62A0BDA95EE6661918DE1113B7579490CD8A8C74B57BF1F97C382A32897341198C3533E42910495B2907B3A421A507BF592225CCF9F65';
wwv_flow_imp.g_varchar2_table(186) := 'D19202EA74668E8EF76B18BF6ED17405B60863715352F8A284BC45DBA7A958544C6967E74C1BD3D8B0389787B774F0AFA782046C05D48A65B3F3D9767A4F46719694E04A13412882224DEE379B4CE2561533D8E4676C3242D5C21CFC911076E145DC6224';
wwv_flow_imp.g_varchar2_table(187) := '6A36688AB3B0321FAB2921968F57C3CFADC84FA3ABD7A759D90ADF2723DD46582CB31777FBE4B3836C974D5C2C2329E7E822E2454589ADB9AC5E5FCDCFEEFA06469F8E3BBF70338D2FDCFD4A36757D7D3D757575E7377915F2C5C48407477A066AAF4D59';
wwv_flow_imp.g_varchar2_table(188) := '1393F23961308B9477CC6C3EEAC4FD0932D83F48400909853D6275883671909BEBD60664627058DB5576CA040E4C4F32383C9ADC9D57E86ED959A2516572D9F44C4D8771B91CC4825E82090B4E9B4EBE0BC924D7CBC4D5E174A611F18E70A6A38FA2CA5A';
wwv_flow_imp.g_varchar2_table(189) := 'B21C3A0D19CCEDB4E0990E6A8B21289E98539E351D88683EB7DF17C0290BA4AFFD349E8483DAAA72AD0D068B5D345D88884C6CB3B86D8363D3E41716691BB089889FF6D63662163773AB2BB44DD5B17367E9190930B7AE164344DA1733226B4B4383B39A';
wwv_flow_imp.g_varchar2_table(190) := '92F82388C6D3797BF9F9EF5E24DDEA95761AF9FA3F7E19A3B7879E618F988D45A4DB4D04C209AD9FE303E2D24D04C8CCCD923EB8097B46980AE9C4C4CCC12D7D6F39D38CCE914B75793E53139362C5388884029AA6B7AB28D345761CD506A6C71766FBFE';
wwv_flow_imp.g_varchar2_table(191) := '2ECDE58CFABC22DCC264653A34E84BEFC4345D63614A4BD2B18BBA0F086F656DE20DC6856706464500C7451B65394D04456138C5C2683BDECDB0F0E32A85C71B5558270906073C78E4DE396519E8C341DABB65AE643929CA30897519118161D63646157E';
wwv_flow_imp.g_varchar2_table(192) := 'ADC92AC2CAA2676C48C67F3A4145693AFA4858F8AF977727DDBD60202C734BF86A37E219F5D03B1ED190F333A44D23E2E60C0C4FD133A6E7A6AB0A19E89DC01BD7919BE5C0244237A1D36B4A4381BD2BB0EE3EF97D5AC6768E583DA180083B113CCAA58A';
wwv_flow_imp.g_varchar2_table(193) := '8B20328A6288198D98C4526CEFF39225964E8ECC258F8CA553DE3DED8B68D8319E093F71935114809F90F0FC6A71E56A2B324581A55CA58B6DFC19C5126D6B69C1E82AA4B2349B88DF737101938C221935E0236D5F4BF74A8988782C76C1F90ABD16AD99';
wwv_flow_imp.g_varchar2_table(194) := '8572D4E2DF0A7068266CAD4E07ABEBD5F7EABC8851FE688F53E74614AA9182BC54011215CD50604762B1A8093C0BD2A45C5FA5F5D56F2AB4ADEDF64B9BA233BFABEF938040B3D7CD7C1F4F8220A9B3364AC3E9E4992A6AA3DAABCC6CD59FA471ADD7A213';
wwv_flow_imp.g_varchar2_table(195) := '0AF23231B361A5A2532A64A059412AC220F7AB2887FA9C48E892ED9B69B3864BA44BF24197088A7FBF878EBE31165D76150B2B0ACE9FAB5156956ADB6C5F8C26D30C866B5C8B84A9BE69F09FCAAD9277984C33C702A45D06E15912A672E67CCE25361A55';
wwv_flow_imp.g_varchar2_table(196) := '3B7D22605BCE4E687D50A16A15C08A6BFD4982271966DA109FED4B82994850221979D1CEF424235FBEC96926827A4A0A44C02BC423DD6C0040AFF53B1A4D32408BF0C83DD1196026D55775AD363633E789D43D7A0DF02909B4A9D3FAF24ABB99F9ACDE6B';
wwv_flow_imp.g_varchar2_table(197) := '98B96EF6B38A044EFB23D84471A877CD9ECFD130AF489EB950EFD7225B469DD64CD5B60BCFF43013F99A8D806951AC0BDBAC80A2F4C9EF0C337CD0EB93732C3B432CBE02F76B9EDDFA5FBEDB3B336F63326F63DA5ABAA48049D11FBED965B1CCE0182AA0';
wwv_flow_imp.g_varchar2_table(198) := '6665D5BD25CA4485AA0DFC9720477F30BAA0EE821B2FEA8283EECDE7ED6BB6E34D7CB712329A304DD11F16BE4EB1E08DDDEC0A85426F7D2B12AA1DD1D470A4E8FF1F01F30A066A8A5294A214BDC102C666B3E1F57A532E528A5294A237C745329BCD292B';
wwv_flow_imp.g_varchar2_table(199) := '2645294AD11B2F6082C1A0866A97A214A528456F149D375752A861294A518ADE340193A214A52845290193A214A5E84F865EF31C4CDCD3CDBFFCE8093EF8C5CF51E2D4F3FCFDBFE070FBB086A9B260C33B585F63E39E7F7F10D2DD44C35136DCF276BA0E';
wwv_flow_imp.g_varchar2_table(200) := '6E65F9BB3FCB5CF738BFF8F7E778FBC7EFA4D86DE4D0E64779617F13D63433266736B77FE293E45B2EF6E629B63D7F9AF5375F86E94D64C0B9EE36CC5945E4A4A984C7380DBB9EE5D9BDA788274C5C7DCB6D5CB5B4F492F7873D5DFCF29EFB091956F0D1';
wwv_flow_imp.g_varchar2_table(201) := '4FDE40BAFDBF53CD3146476727865890A14927AB5796FF91BD4AB07B7B13C7BA035A91769BDBCD9FDD5883DBFCDA11C2C9C161CE0CE959B338FBA2D744C301BA0603549566BEEA9DFB0F765158E4A2F5AC970D5795BD6ADC14F0D89827CCF8908FECD23C';
wwv_flow_imp.g_varchar2_table(202) := '0A334CA9D5F73F90CE1E7F81239339DCBA6105A70F6F7935E0547E7EFE7F0A539FD8FD140F6F790E7DC1229655E6F3C2735BB8F1C39FE6FA357378E837F7E33558D1195DDCFEC15B59B2702115E565447B4FF1AB27F7D051BF8B44D65236ACA9D28E76EF';
wwv_flow_imp.g_varchar2_table(203) := '7A71339597BF8D775CB79E05F3E6610B8FF2C20B5BD9B26307FA8C52823DC719D3E591C5082FED3B41D46027372DCA630F6DA475D087DEDBC7830F3C8ACF5440659E9E1736BDC00BDBB6329EC8A03253C7B34F3CCBB6BD87F07926D8F9FCD3785C459464';
wwv_flow_imp.g_varchar2_table(204) := '1978E2D7BF646F633FF3E6CFA5B7E930CF6CDEC2DE13ED545514F3EBEF7F91E343E95CB1BC8AA1A66DFCC7EFF6F091CF7C8E658506B6C8225DBD763E079F7D984736EF27BB6C3EB6602F4F3DBB996D7B0EE22E2AE3E58D77F3D4E1B32C5DB3827935E59C';
wwv_flow_imp.g_varchar2_table(205) := '39B485C79ED9C6C0488074979EC696518A0BAD1C7AF90C69D6284F6D7C94536787084DF5B2F1E127180C5A29300DF0E52F7F076B5E25D97925E459A7B8FF17BFE4C8D96916CFABA2E9E86E36BDB085979BFBA8AD9B8BE535B37AE3EC38D8C98AABEAB871';
wwv_flow_imp.g_varchar2_table(206) := '592E07B73412B0BB0979A6B57ACA7DDD43F822D0D1DAC7F643DD340F85A8294BD78EE7FB3D1E867D3A8C210F2FECEDE2E099718A4BB3884E8CF1F80B2D747B13840607F8F7A7CE525D9AC68E5DADBCDC324969898B93477AB0A55938D934C992F919ECDE';
wwv_flow_imp.g_varchar2_table(207) := '7586175F1EC096E1A4FF540BBFDCD24B5E5E1A4505198CF79C63E30BED4C63A32247C7CE3D1DEC3CDACB48C840658183D461893F3DEA3AB28FBBEEFE77A61CF3D9B06C0E870E1E7A0D0193F0F29BFB9FE75D1FF8738E6E3FC2951BD6D0B47B1B2DFDC3F4';
wwv_flow_imp.g_varchar2_table(208) := 'B49CE29CDFC9D5ABCAD8F6C4D39CEE68E560432FB50B97327FF91A1A9EFC09FB4672F8F1373F7E1E6BB6EDF82EB6EE3C48E3A9067ABD2EE6A40DF0A3C70E73CDAA62766DED26DF31C0BEB610564F13DB9B7AF0F759C84F1FE03F9E3BCEBA79193CBAF930';
wwv_flow_imp.g_varchar2_table(209) := '575CB98AED8F3E8D23D7C6FD8F6FE1B2B58BD8B7A9819A0A233F797C0797CD2FE0E9C7B6B1684535F52F37D0DF7E9C33536E323CA73878D6C744F77E1A4379E44DB5311C2EC0991825BD72090BAB0A39B97733B1A20DDCB0B6868CC24A2E5FB788F67D8F';
wwv_flow_imp.g_varchar2_table(210) := 'F2D08109AE5C9CC5938FEFC7E51CE3A13D3D5C39D7C6BE0393D4CE75A377A4139930E0328CB2F1C543AC59398FA71E789C92DA020EBC34CCBA2B7278F09EFD941604F8E9E3BBB87CCD123ADB3BA89A5BC4D627B751B36425A3E706C8CE743135A2E3D491';
wwv_flow_imp.g_varchar2_table(211) := '2708E52FC7D07D88D3C3319A452B4C65D642EB31FCD61A59D8EED71CECA6133D34B44FD1DA36445FCCCE8D6BF338B8FB2C1573F3693EDA49402CB43D875B7094E43174A28FB4FC5CE1B589D1BE211ABBE39A003C3866A24CE640EF9868A686D30C261C38';
wwv_flow_imp.g_varchar2_table(212) := '2C3A9C6926A6BD315CD618218B1D6F771F63618B888A08EE4C3B2363110AD2E39C3C17A2C81E626FBD57F86B673210271E88E130C4787257374B17E573704F27169781A7769D65F1FC1C8EEE3BC7FC25C5D84D2911F3A7466667168B2ADC744EEB58BBB0';
wwv_flow_imp.g_varchar2_table(213) := '86B9F3165F7A0F66E26C031D4D4D1CDC779496D67A8E769DC364B79099954151E562BEF6C54F92654C50BDEA1AEEFCD09D7CE2C3EF118BC1CC64D721A6C226D282D3EC6D197FC5B4D6B9B8F1CF6EE3A31FFD387F76FD3262513D6B97DCC04D375F479ACE';
wwv_flow_imp.g_varchar2_table(214) := 'CAA235D7E06DD9CAE33BFBB8F9AACBD1C5C304A326AEBBEA7D6C589287A37C09D75C7D2D0BEAEC34770FB378EE06DE71C34D14A5E7C8848FB07CFE35BCFBC655545F7D0D375FF70ECA4D317A3A7BF08E8F1330D9B09AFD4412A5DC76D33BB962CD721221';
wwv_flow_imp.g_varchar2_table(215) := '3D594515D4549568EDB38B9B34383630D3DA10870EEDE574EF00F3AE7C3BD7DC742B4EEB105DA3466E5A770BB7DCB41E5BDC424E51311565A5A43B6D8C74B79359B39A6BAEBD89854B8AC49588603229580BF56E23A1A88ECB57BD9D1BD7AFC0EC9BE074';
wwv_flow_imp.g_varchar2_table(216) := '53872CF434ECE25E16955551529C496C7A9C51B9FE96F75EC73BDFB586BEFE664CA2116E7FC73B58B96411114FE475B9483A9389D522FC330C61742E07E5790E2D41D3623160B5247155B2D3B378DFFA2AEACAD3088766F26C66C1C2F556DEBEB69A2B96';
wwv_flow_imp.g_varchar2_table(217) := 'E568B8312BD654620CFA69EDF2CA43CC949666909F6660A06782F188E115BCDFF31098E2168D4FD323C246C141B844F09415A793AE84938262C8CBE12A7105E75559683DE7A3AEAC88B7AD9D4351A699483815CDFC5324BBCC33579A5583452511E66C57';
wwv_flow_imp.g_varchar2_table(218) := 'DFA5044C9C179E789295777C99AF7FED6BFCFD87AEE2F1071FC59370B3E1E67771DDF51BC8CFB0138FFAE9EB68A6F14C2B0DC78F72E4E811FEE95FEF63DD5FFD33FFF2E56BB8F787DFA4D793CCCF8904C668693C45536323878F1CA373D82F5F1A21E667';
wwv_flow_imp.g_varchar2_table(219) := '5A7C7467CE1CB263A3B48FC75834AF108FCFAF720609CB9C3638F38976EDE289A79FA0A9C3C7BCB25CFC3ED57C3FDE5050CB848D86AC24823E31FF43048301FCD138855573C82ACCA728DB49715E129028168CE30FF808ABECDBC039F6EC3B2082076A97';
wwv_flow_imp.g_varchar2_table(220) := '5F41E4F493FCEA9167F8F5BF7E9FFBB69CA1AAA68AD63D0FF1D423BF22ACCFA3C86D2120CD8E85FC0463110D4241C142F8BC1E0AE6AD223E7098871FF8350D8707C8CCC96270E44536FEF6B71A06B1024E8F85D3884FB6B3676F07F317D49218E9622210';
wwv_flow_imp.g_varchar2_table(221) := '64B4F73807EB5B8839B229B179D978DFA36C7C6C27D5D573850131E2C1283EE95B24F1FA12EE620AE7A432975B6F5B4BC1501F9B8E8FC8E087796E670BDBF70D63B68B9089EB51B9EDE158E27C6588249E6D327B51815B69D09CF1387D5D5354CFCD253E';
wwv_flow_imp.g_varchar2_table(222) := '3C4DFF6494A1EE019EDA7A16576E2685E63813DE80C64395F0AD80ABFADB8718F49BA813F7707AC28BBC8AF6B60111D041198F748C53436C39D0495B4F888522E0A211BD36E7C2F1C4ABAA54A4E84F8BA2B2F6420AF459C6F2E907EFBA948B144767CD63';
wwv_flow_imp.g_varchar2_table(223) := 'D5EA15D8CD3AF24B2BC87339A99A379F82EC740DB85991C329BEBB4C407F24A2694583258D858BD671ED8A2A9C7973294F7760CF28C0ED3091999141D0E7D5AA0AC4F44631D7E733AFA6908C0C37398539E4E6A453515DCDB2556BC9CB7292959F454979';
wwv_flow_imp.g_varchar2_table(224) := '1185455964E79752579AC399F673ACBFE5CF5935BF9C4C99DCB93919F29B5C271AB0587E57C0E5B9D979E4676793915BC8DAABD613196EC3632810EBE76A0A44C8E4CAF5196285E516E531A7BC0095F45C5A5E86D591C50AB112FABB3A3166D7F0898FFC';
wwv_flow_imp.g_varchar2_table(225) := '39E5A573C916CBA7674CC77B3FF0012A0AE5FEC26CE98B9B6C697351513E79F945945715939B65A3BB6700CFF420631376712D3F404D2E0C4C26B8E26DEBA9AB2A275FEECF29AAA420D7CAC0588095D75CCEDCEA1A4AB31C98334B58BA72316B562C61E8';
wwv_flow_imp.g_varchar2_table(226) := '6C2BAEF255BCEBC6F51A0C619E6A73B62CE6925C1114E64B6F3C47E21A568E51A72A15C4C8C9B332E2154BB3C8212ED3382EB1944AC5A2315B8C1A78415CAE53E0D7E1504484755C1384369B59032C57A80B469B0997C3C0B1C611F2ABF3585E958E4F94';
wwv_flow_imp.g_varchar2_table(227) := '46467136534393E832D228CC75E0745831CBBD66AB41C62E5D048B8721B1122B2BDD62B9D809C83D960C2705F96EF2D2F41C6E1A63CEBC122AB22D228044A019D0DA92237C74DA539BC07F925123AB8C6F5E3E391999CC9B3BE715B886868606162F5E9C';
wwv_flow_imp.g_varchar2_table(228) := 'CA45FA632832CEFD0F3EC5B86792F28557F18EAB57F056286305D4B5FD60B726F093782A06113662E1A9CA0B1AF27F82A05845CAAD51182F46937E06976606B3479FD0706FD477718597239F9545643529AB27A6816629574B378397A2CE672A280365F7';
wwv_flow_imp.g_varchar2_table(229) := '28DC1985ADA29EA55C31F5A596DD1D8E6B024D2F6D52EFD64B9BACAA3A433426AE634214964E345F5CF3D0EA2AB3585093939A4FFF03282560DE049A05BF4A518AFEB7536A19BC194C4D71354529FACF022665BDA42845297A23E9FC495E85FB9AC4AC4D';
wwv_flow_imp.g_varchar2_table(230) := '099914A528456FB080B15AAD4C4C4CA4F06052F447D31B51D43E45FFC304CCF4F434656565298EA42845297AE3058CD238AA24434AF3A42845297AA328E50FFDCF7758522C48D15B6FC15C9474062C6623D170483BD569B6585EA950138FAAAAAE984DAF';
wwv_flow_imp.g_varchar2_table(231) := '3C461DCE52C5BED491E1585CAFD56C4EFE5B1564B7BCEAE0D9EC33FFEBF7EAB5F78643E1377589E8B5E3A3F1998271EA509A592BECA52816096B45B92EC91EE18F3ABDAA2822FD8927FEFBEDD069C5EDE284C3B13FBE5F7A55042B591B291E8DC938BDBA';
wwv_flow_imp.g_varchar2_table(232) := '61EAF09D9E389168E2127DD369E3158BFFBF1152AA809F419F90318F71F169A1D70E0B26297EC96B2F76BFBA5D9D767E33E8C24273C971D5270BF9CD92562F2B7E8979903CF47821B8A4C99CAC97FD7AEE9FE9A5CCC9E421CAC425E748B23AABAA31F746';
wwv_flow_imp.g_varchar2_table(233) := 'F043155A4BCA025536279C2C9478E9C5A3DE3CC1B66DA7597AD565A45BE1C4BEED9CEAE823AE33B264ED06AAB3E26CDABC133FC98A780B972F677AB08779ABAF25DB1A60D7963D54AD5C43BEDB42C789431C3ED14242551BB4BBB8FAFA9BC873268F84C7';
wwv_flow_imp.g_varchar2_table(234) := '54D5449D41AB351D97669912531C39D8C7FCE5F3B0CF141153A7435575C0442CA29530355BCC9AB053D527553E8DC59C7C9672F5D4028BAB5CA168E27C31B47028845E950F35240D37555FDA3F3D05163B5675DAD56466A4A791ADBB0E1335BAD970FD0D';
wwv_flow_imp.g_varchar2_table(235) := '146558B47BD41D4A50C6319C17A8EA3DB1D0045B9FD9C678B0841BDEB69474977D26E92FAE959455AF527FABC5AEF27A54FD64AD9A656CB67AA02C7E11003ECF94B4659C71AF8DDADAC2993626074A558134E8939F5F8FC0558B28E8F1F0E2D141A6C33A';
wwv_flow_imp.g_varchar2_table(236) := '962F2BA632CFA64D28AD72612C467FFF2881848D8A227BF25DD217ED24ADB68093550D03FE20BE28A4D9CDDAD8AA3E68152EC351ED64AFC56C387F9FD16848168797FB948054CF51552355595725B063A289942C4BDE93ACC8A89FFD5E7BB69EDEF63E4E';
wwv_flow_imp.g_varchar2_table(237) := 'F6C6B9F6CA126CA6E47B54EA802650E43D4A48FA3DD3BC746C08BFDCE3CC7072E5B27C8C2A4545B54DAE8DC83DFAD945AEDEAD4B9E425635A913F29D57EE6F1E8A5157952E8246AF55FC54424AA70982591E5FF03931D356B5142EF83E29B4D1DAAD9D66';
wwv_flow_imp.g_varchar2_table(238) := '8EA9F6C5989AF293267340B5578DEFC4C004071B47B432B4AA3FC5E5D9AC9C97A3E580CDF65D29289D56CD348E47EE37DBADA86472ADC2B274BDEDF4391A7BBC5A3B2AAB73592A6D9FAD0AAA14B7F17C7B124921AD0B73B2798CCACA2C54C6854A853119';
wwv_flow_imp.g_varchar2_table(239) := '8537324E2A2564760E783C41F92ECCD024D456BAB5E7CC8E9FE2A171961F4A50255E6BCE1989054679EAF1AD188B1772D3BA454CF577BC3A1749E5F15CB807639285D953BF992F7CE33BE42EBB8685256E1EF8C53DD8CBE753688FF0C8332F12D3C738D1';
wwv_flow_imp.g_varchar2_table(240) := 'D0C1B2154BB059AC149697D3F8EC6F78B13940F8EC1E36EF1BE3BAB75DA6E5333DF7D07D4C9A73A8AD28C4E670919591C6C0D9368E373663CDC82138D647C8E8C4A60BD279B683B3E7A628CC73D37AB281BEF100767CECD973109DBB804C7B9CCED6361A';
wwv_flow_imp.g_varchar2_table(241) := '4E9D22624D27C392908168E6644BBB303041E3B1A344D372C9719B69D8B79B33033ECA4A0B9818ECE34CD3295ACE4D505290C16F7EFA1DDAA6DCAC985FC154EF517EF483BB2958B40EDB441B4F6F6D65FDB52B196C3CCAFE8636724ACAD10726683D7386';
wwv_flow_imp.g_varchar2_table(242) := '13673AC82E28E0C8B3F7F2F3C776905B5AC3BC793504863AD87FE424E1B811B331C6F0B81FB7434FDFC0984CE838AD8D27E91E9CC210F7B16FEF4182C60CD212BD7CE77B3FC1E2CE16A6BB292FB47168FB76BA3C505E9CCD706F37A7E5BEB3A37E0AF373';
wwv_flow_imp.g_varchar2_table(243) := 'D05F72B465E1CB7BEF7FEC385E7B26D5EE303B44D02C5C52CC48E710C73BA6292A74D37CB88596310B8BE658397CF41C434128CAB113F5FB39DC304040847C4753074F1F9D14DEE4695ABFBF7794E32D13B2B01D380D318ED5F7331080E26C2B83C2CFE6';
wwv_flow_imp.g_varchar2_table(244) := 'B63146BC6132645CA33E1F237EB10CA7BD1C3C354A5A661AB64498332D23F47B224443018E9F1EC39A6625CD6A24E499E487F71C219E9D43B92DCAD1D649D2B3D3308A55D87C668481E92805B96974B777F3C2B17116CA223B7DA29393C30956D765D3D3';
wwv_flow_imp.g_varchar2_table(245) := '3E487DE734B9B90EC6873D24642E1AC301FAA76218C2410E360C0B6BD3D04F8EF0E4EE09AE58914BAB2CDCA6730199636904A6BC9C6E1BA5633040BEBCC73B3E4D4BFB28E7A6C44AF7C86FBD3E72F39CC4E4DF07EA0749D86C64D9A0BB6782D31DE3844C';
wwv_flow_imp.g_varchar2_table(246) := 'A288A6C7F8B7479AA9AC95F9691581266B291C8830ED9DE6D95D6771E5675053ECC2287D3F74721487F0D16DD3D3D6364453AF9F2C27DCFBF07122CE0C4D21A813E1667382673737127138294BD7F1CCF6B3A4E5BA090C8CD3EF1585150BF1F289218C4E';
wwv_flow_imp.g_varchar2_table(247) := '694F9A99C1BE314E369D63CBFE11E6CFCD60DA1F25CD02E74602B85C1606BA47A86F9FC6658BF3EB474E101609164B98A82CB271AAE11CEDA3618AF21C4C8D7968EB1CA36338484E96FDB52C116DCE6DBCFB170CC65C74D7EF249A53C7E0BE272E216054';
wwv_flow_imp.g_varchar2_table(248) := '9D594388871FDDCCF5EFBE89C6236D5CBE6E29A70E1EA178C112F2D2121C39DE4E4D5D05FD1DEDD8DDD2289F9EB9B5F359BBE10A9EFFF5BFB0AD33C6F77FFC75328D4A33EA38537F80619FB201A2185CE564C79AF9E28F7E472238C8B1935ECC134738D2';
wwv_flow_imp.g_varchar2_table(249) := '9F46A6EF38BF7EF1982CE60C726DDD7CF19FEF152DAA134B6A3B1EEF14DB371FA1A2C2CE77EFFA39BEF014FB7677B2A0D2C0DFFEF01E8253A33CFFF8F378FD031CEB1824268262D39E56C6DA8E301074D075FC091ED8DBC9D0C983446DA58C37EF65DA36';
wwv_flow_imp.g_varchar2_table(250) := '87754BAB38BEFD09865DABF9D4076E60DEB2652C5E5829F71DE027BFD92413B08F43474744909DE55BF73C4F7CA29326E99F253CC8A4CE469A2183A24C19B4DFDCC7F4F4248F3DB89992AA0CB66EEEE68A7599DCF3D3ED14667BF9CAF77F86C966118171';
wwv_flow_imp.g_varchar2_table(251) := '5C34BF8F1737EDA1ACAC90833B0F607365A28BA7D375E249B61D3F47DBA1BDD2C65C0EBC78AF08EC61DAF7EFC151B88C39C5CE4B1461D769B94083220C4EB54FE0C87271D9D21222C3FDFC766B2F89690FC73AFD14A4EB3548868EE6768EF504E938750E';
wwv_flow_imp.g_varchar2_table(252) := 'BD68DEC3FBCFD0D81FA05584C294C7CFA85FCFDA15C58407FAF9F923A70988B5381E81B3A7BBE4BE00671BCFA11321B16FCF495E6A9EA6BFF51C2EE94F777D1BFB3B26397EA29F5030C88186718AD2C37CF7812674D100FB8E9C231889D03D1D17619149';
wwv_flow_imp.g_varchar2_table(253) := '7062921DF563549598D8FEF2A0067C75F48C2C3A8B47EE69265316D502D1C82322A8238E746EB9720E4B4B4DEC7859DE678FF2C8F65E59FC1E4E760799E8E96350E722D4DBCB0BA7C6689436AA7ADDFB0E0F525C66677442267C789487F7888527CF9375';
wwv_flow_imp.g_varchar2_table(254) := '847FA49707F68D121D196750FA3CD2D5C9C6A3130C37F5D178CE4B4BEB00382CECD9D5CA4420CACB8707282A30F2B38D27990A86397A7C9CF27C33FB8E0EB348F89DEB306A636449B38925E1A2FDEC04575DB7881A9B8F7FDBD84C5C2C878327C6711BBD';
wwv_flow_imp.g_varchar2_table(255) := '3CBAA58B4028C85454474FF310CEA21CEA8AD334ABD1286BE7B408D8ACA25C4A338C9C3C3389CB1CE497CF75603344D875B41FAF4FF87B6494BC2C1D1B37B530E909896034B0A8282E56AC8FD5D5061E78A6975C67987B379F155E7B39D5E66562DC8BD1';
wwv_flow_imp.g_varchar2_table(256) := '22022666C13FD8CB3322B887BB86180D9BE86B6BE789862946DA060959DCD4953A92F5C62F62BDE8650D6FDAF232EFFFF4E728364DD02566516747E3C5377955E1FBE9732DD4EF3EC2A9FA167157F67266784ACC512F7BB76D61FBFE26DEFDE18F51976B';
wwv_flow_imp.g_varchar2_table(257) := '9389A212DF9226AFB6FFE2F7600DF9084FEAA4F39119C029954067D492E894EBA54CCE6030C6F2E537F2775FFA04264F94DAA56B186EDEC6A6FD3D5CB972A968351F5E19CCAB6FBC9DDB36CC2192BD902F7CF1CBCC2B0BB1FF5427D555EBF8C697FE9A22';
wwv_flow_imp.g_varchar2_table(258) := 'B34C9AD169162CDCC0973FFD1E8A975DC6A73EF9594A02631CD97758064F99EA41CE9C3DC174248B8FDDF997DCFEF62B991E8B53BDF472D6ADAE4BBA3CAA08BCE9954C655D22C4E9530D546EF8105FFADA17884C9F144D13E2BA0DEFE52B9FBD9DE86894';
wwv_flow_imp.g_varchar2_table(259) := '9A152B58BB7285B88F26CE9E388CB5F20A3EFF852FB2707E3A81A0B864319362266AC7C31F08B17AED3BF9EB4FDC4145A66821B1162645339B338B59BEE60AE6CA02F2F58B853514E0635FFA0A9FBCE3728ED4EF27662CE5AF3EFD59DE79C57246FB262F';
wwv_flow_imp.g_varchar2_table(260) := '1DE9D3A161BBAC5C59C56DD796131E9F62E3D67659E8432274C595B11AE89315361E92111197B1FDCC98081A1917B1484E9EE9E7DCA49E8FDDB68ACF7CA88EBABA2C962CCCC5695419D556B2E51F9E900EA70C767BD38896119F100BF6B4B4496F75F057';
wwv_flow_imp.g_varchar2_table(261) := '9F58CB7BAF2CE6F0A1169A461354A741CFB92026E1CDA82CFEB691106B5654F217EF5D44B153DC0751362E9B59DC8B041905E92C5D9827D65C8CD279957CFACE65C44353340F84B9FEEA3A6EBBA6522C37E53EA3B93FB32EBC72DB7ACE0C33E94DF6AD7B';
wwv_flow_imp.g_varchar2_table(262) := 'D44369551E679BCE72A83BC4FC6C135DE25E18A40D1EBF97AED1101669FF99CE29AEB876099FFD500D7DFDC30C7AF5BCEFA6857CEAFD559C15E13C113670EBDB1771FD8A4CE65D56C71D9795307066509EE5C360B1E00DFA68EEF751529CC7E73FBC9462';
wwv_flow_imp.g_varchar2_table(263) := '518046571A8B17E431A7204D4B289DDD93543E8A7293953B347C7684C1E1902819E1C9D42413713399361DD3C2D7DC9C34AAE6E6B2B82643DBFBD2CD0EA8B8F2C78E75B3F3C820EBAF994B4DB691B557D472F322B92E3D87BFBC6335653971B61DE8257B';
wwv_flow_imp.g_varchar2_table(264) := '4E199FFEE8626A734D04C3C293842C3471E314FAC1D9B6112AE756F2971F5BC99FDD5844C59C1CE655A4119A0AD22216DA2DEF5AC15FBEAF42783384276CE6FDB72C96F1CC636A34F89AB5C7134A18AAB51357DBB6225C650EAE97757B5101A3DCAFBD2F';
wwv_flow_imp.g_varchar2_table(265) := '3E43F1D5EFE48E3B3EC407D757F0D8139B88D80AF8E85F7F912F7CE96FB86E653581E929B28ACB5977C57AD62D9F873E34C2CF7EFA23B2DFFE7FF8DCFBCAF8F18F7EC2A486F5A123148D50BB7805575C71A5742C93296F040B6E05142342204C71CD52CC';
wwv_flow_imp.g_varchar2_table(266) := '43CDEC13D379F5D26A0D67259A30608EBAB0DA45908D9C114DD0CEE0E034D9E962EEC6D2E5B90182E27F6A1BD0894C12613F31BB59037B525B6D16978BA2AA5A562E5BC0828A0212510B5661BA5F6DC80A5342BE613A7BFAB5E950356F211D871EE36073';
wwv_flow_imp.g_varchar2_table(267) := '2787B73ECA377EF45BCCE96E863B8FD371A69E70C484D32AFE71DC218BD8AF4D98482089071394BFD3F34B098C8ADB767CBF869F625393C87B9AD3C74FD1DB3BA47631B1E8F3088F9CE0C52DF52C58BC147BD0A369AF89916EFA0627888BB074E8A7683A';
wwv_flow_imp.g_varchar2_table(268) := 'D94C53632B99E9E962D5D8B18ABFEF53FB2FAFE90CCB444F04F9CDC663B4062D5CBFB618BBB44D960599394E16566732BFC889596DF0CAA3AC0E3325A5192CAC705155A8781AA2EDEC283B7674D035E897C5308DC2A20A890550549EC7B23C039B769E23';
wwv_flow_imp.g_varchar2_table(269) := '265658694986B8586EE6E4C8D384373A99D0D50B0AE83CDCC994C9496DB103ABCBC6BCEA2C16943A71C9443725646C44D066E5677359858D2D2FF530194EEE59F9C59C37896B3132344657D788F8FE88796F147E2B035D6D58EAB48DDD6171813AC5D47F';
wwv_flow_imp.g_varchar2_table(270) := '7C731B66B1FAF232CCB8B355DFC405C977B0A04E5CE1B63E3A3C261657B9B43D8D3A69C3C27217D9E292A86C709708842E794673CB98B62FE6542E76EF388DCD633864DC8C3A23B6B89E9002DF92C510567B3B660356A7859A3999C22F0539218A352ADA';
wwv_flow_imp.g_varchar2_table(271) := '3B1E933998C4CD191FF7D1756E4CDC60BF66B5CFCA08B5FFA12C00256CEDE77922F35AEEA9AA2DA4C214E6E99DFDF8FC417A0644FBF74C124EE8927B20B24CDFF5AEC57CF2F6E55CB72C9F980C9C3966C46A33E09F146BA16F8411D118650576C684779D';
wwv_flow_imp.g_varchar2_table(272) := 'E2AA0E88AB6331E918126BBA59D6D3E06804B7DB22BC9B10ABF59C1808FD4CCBBC3D37ECD7F6A8D22C71DA3B4738DD322EDE82F45F2C00ABBC3FA0F6C15E6BD34FC64E6F4F9771F2F2F2B163D41F6FC0E0B071A27EC7C55C24153D10DF577CD4D5D7BF9B';
wwv_flow_imp.g_varchar2_table(273) := 'DAF27CCA0BB319EC1924BBA8584CFA52EC32E6CAC7D4C7431CDF7F80E38D4D349C3CC5E0B8345816D1076E7B370BE6CD61F8D4492C8573C94B170131DE2FA6F47EF1114FD2D0D24D76710579CAE72E716ADAAC665E95987F51B2AA96B3B22E8F316F94F2';
wwv_flow_imp.g_varchar2_table(274) := 'B22C74460773172CC4E2EDE2B167B653B9FC7A6E5C3B97E9A0B86455B94C8A95545A962B0BD84975998BA99091EAE27CB12012ACBB7E3D2D875FA2557CED75EBAF116DAC23BBA008BB29226E5A1E6559214EB4F451BB7031D9B92514DA426CDAF422CD72';
wwv_flow_imp.g_varchar2_table(275) := 'FD7B3EF831AE5A398F738D7B7971770BD7BFE7766A0BAC24AC99329856A6455895894FAD373B70A5BBA8A8AE627AA89DA3478FD2DB03EFBCFDFDE8C68EB26D6F23F9B50B59B9A45C06D326FDAC60BCBF87D6EE3EF1CB7358B06219FAF1567AFC66E62F5D';
wwv_flow_imp.g_varchar2_table(276) := 'CDE58BF2D9FC94C2EBCDE283B7BD8B78C04F617989585401D2720A29141F397EB15157A76845C316C9A23B78B09BE3E2262D10ABE1962B4A18EA49EEC1D4CC2BA234DD88D99DCEF29A340E1D57909726AEB8AC92AA6C1D5BF674896B96CED52B72E96C1F';
wwv_flow_imp.g_varchar2_table(277) := '23AB249B6C3B349E1CA47D12AEBA7C0E572D4C17EBAA9791B068D365452298E2E4E7B970BA94004E30A7369F793559444501ED3F392EEDCF637E899DA8CE4C79B19D9653FD9C1E89B1765529F3C5FC56D191094F98254B4AF0F70FB1B37E9275EBAA989B';
wwv_flow_imp.g_varchar2_table(278) := '2BDAD068A544DB9390BEC5C4621221D0DC3D41D8EEE2FD3755CBDC7432248BACBEC3474D6D81B890E958840F4515392C148BC014F5B3F7F810AEBC2C9657BB098AC0BA6C591E4D27BA69E889F0F6EBE6121D1B637FFDB858B87ADEB6A10A9B584B2E712F';
wwv_flow_imp.g_varchar2_table(279) := 'ED62D929259529969AAD205BDAA3638F581296CC7456D5666A2885954569621D45282FCFC02F165473B708AA81082BE6656B4247AD28DF7484C2423705F207FF34FB4F8C91579ACB8ACA348E1DEF67286AE686ABCAC9D64768EB9BD2F6ADE62E2894F91A';
wwv_flow_imp.g_varchar2_table(280) := 'C723F76689727099F5B2D8E3E27286D5062955553920FCDD7C6040845409375F59466078846DF51364E46772D5EA02C664CC0FB54C5320EBE85A9903A3A2E8769D9C66D9AA7272F461BA26A262C9E4B16E6126875E3E4BFB988E775E5B25C2254686F4DF';
wwv_flow_imp.g_varchar2_table(281) := '6A8C61B0D929CEB55E7CCEA18106895C70B3E5E927C508A9E3F6F7DF842D3CF40A5C437D7DBD98C475AF32BF2D3251939118915006D3CC2EFBABC3B1177EFFCAB90B5D3204CD4C885BFC4D15EA34C9F35E75A576B02F891562114DA52226C96B54F424AA';
wwv_flow_imp.g_varchar2_table(282) := '7D978C1CA9CFB1F3D120AD0D6276AA1DFCE475260D8F44BC3A7996582D623687D5EF6693664E1B66A2466AE75CB97031E993482D0CBAB816B1D2C274E22E280D391B994ADE104504F8F930B492D44A5169A1E4888A88283C9384163D51E67A78A2937FF9';
wwv_flow_imp.g_varchar2_table(283) := 'F9E3588CA2BD5C757CEA23B78A6678859F2A5A64D2DA18D7225ECA1851EC8E46225AA46836F41F13AB6D3654AE225D2A42131175AE17135427133F728990A28A088D4C0478667B87A6C19465A7CC75154950982BC9CFCC8C5F5C3B0AA5222D2AB2179377';
wwv_flow_imp.g_varchar2_table(284) := 'A9630906CDDFD5691AD7A861C624A34656B30AA126C75803A252910E759DB447AFB05D22494BD22AE3A6A22A61619655B47E5C4B1D4846338C33216235B6090DBD0E6D0CE3DAF30D33E3A84F3A18729FE2B7C2A3098793A15F155E57ED509E874E730793';
wwv_flow_imp.g_varchar2_table(285) := '9126852DA3F54D979C2B2699130A7B4645B8B4C85522D927C53BC55BF55CED6BB95727D79DEB9FC2EC48232FD37C3E0A9690F9A2C2383A758C4129D399D0BD6EE60459548B9EE99258376683F66CD5AFF07480515F948C0C9BB621AF58A6F56D963FE779';
wwv_flow_imp.g_varchar2_table(286) := 'A2D3223FA69988A1169ED68B332DEF1D1AF662CF7488C5AB225522648579D199B1543C5063148A24CEF74D4586B476286C9F4492CF01313D2DA6242F350853F96C9DF9AC59C26AAB429B0B3159673A6D7EC4756ADA27A3896ABDA87149B31979D7B5D55A';
wwv_flow_imp.g_varchar2_table(287) := '34EF5216B4D1684E4612351911D6B61B2E296052F4879F65097B271818F3515C5A82211125FE169D73D39DFFDF0567ED7417397BA74B9AE2AF5C77C167DD25EEFFFDFB2ED590DF9F98BA4B9C03D4FD37CE08BEE6F32ED106ED08424C5B855AC8FE526EE8';
wwv_flow_imp.g_varchar2_table(288) := '79C65EA2DFFAE4467B2C1A7F7D3CD1FDBE7ED6690B5529C778E2D2DB1F8919A1F79F9E75D1317B951DF0DAE3F93A86F88F3B6897A2D74D4AE29B1C19543A334523BC75C2E5FC9C49BCCE43BDBFBFA02EFC9CB8C4FDAFA7D470E2222F4EBCC1878F137F5C';
wwv_flow_imp.g_varchar2_table(289) := '1B8C3307C45E738F2BF13A1AA8F0A12F35F8BFFF8CFF82AFD10B0E40BEE61648E252CFBAC4E7D7339E7FE41C4E0998DF1BA83FD6825390926FD221D114BDC9639FA237C1AA4FB1E0424F21E51EA628456F249DB7609C4E271E8F27B5C85294A214BDF102';
wwv_flow_imp.g_varchar2_table(290) := 'C6EBF53267CE9C948049518A529472915294A214A5044C8A5294A2948049518A5294A2B742C024628C0E4E300B81343532487353234DA75BF0A922E5F1105DAD2DF2F9344D4DA719199F606878F07CF87C647050AE4BC66DFD5363B468D73571A6AD9DE0';
wwv_flow_imp.g_varchar2_table(291) := '257195220C0D8CF3E6477C13AF0EF527829C3E55CFC9331DBCDE2AD07D9D67A4FFE7FE13A8D31F4A0A9B666CDCFF06752B46D7D9319A3AC60946FFB05BE39108A313218D377D3D130C4F46DE04BEC7B5BEC692E520FFDB63A7520C5425CB3FECB6043E6F';
wwv_flow_imp.g_varchar2_table(292) := '108F2FFABAF8383E1ED0F086FED879A6DAF94604C303BE00E3AF6A7B9CE1311F6FFDE98884C882667A46A767E651E052B5A993E4E9DCC76D777E9E8AAB6EA134DDCAAFFEF9DB1C6E1FA4AFED04DB8EB7E1347AF9F5CF1F22100BD3D1D1417A61212FDDF3';
wwv_flow_imp.g_varchar2_table(293) := '4FB4C62A707B8EF3831FBFC0EA6BD6E230EB79FA373FE58503A7F14C0ED333304AD9DC055865414F78BC586D360D414E3B9A2DEF0D4F0FB277DF19CAAA4B89077DF8D5F17A938ED19131CC0E87261963E11053531E0C561BEA847234189041F463B15AF0';
wwv_flow_imp.g_varchar2_table(294) := '4C4C9CFF3E30A9724C74D82C46ED305CD0378D3792C06636B1F9A9FB198CB828CBCB20E6EDE7EE1FFC330D7DD3741CD9CDFEC600EB56D720373032E5C761B726818F422A0B3A80DD66A5F3E866BE7BD73D8C79D359B4642E567D84B189A99994876406AD';
wwv_flow_imp.g_varchar2_table(295) := '3AD5A9C08814485034E0C7AFD21E8C7A868746D05BD330C546F9ED838F90D0CB4419D5515A9CC1F4F808219D45BB4E8109F9BD53C2633D5693F1752DDE17B734B0B7D5C778EF0007CE4CB2B02E977838822710D5F8A089F04098A9605C3E2711D742FE10';
wwv_flow_imp.g_varchar2_table(296) := '3E912586C834C75ABCE8FCA3FCF0FE464A2BF229CAB624CBCBCEF4474DA6F1C9207AA311A33AB51A8A30E18F619F79562418C6A39EAD8ED0AB740DAD9C6CB234AC025E0A047C1C3D398ADD1EE7B9DD67292BCDD4FAAA25F74512E78F9C077C21ED39760D';
wwv_flow_imp.g_varchar2_table(297) := '56209E3CDA4F5C4B3D3972AC9DF68149F61E18A4B0D88DC1A8204666DA3611D46A6AABD6A863F6D3BE307A95B6E29BE2891DA23CE2AA7D26F23365AE4C0588C9BC53F706850793AA1F56A328D24E8E764C3235EE233D27039B21C6D86458E6AA513BB21F';
wwv_flow_imp.g_varchar2_table(298) := '0DC744488531AA92B817707F529E17D71934902795093D361D91E78579F0D16632F3D2B50C70752C5FB57342F1D06CD2D22E62C217AF3F825E7E0FCA73E37AC30C6FC3AFF03612E4E18D2749AB28C02DEDF1C8F7368B9E5DDB4FD211B6539D677BCB84CB';
wwv_flow_imp.g_varchar2_table(299) := 'DEE71EE2F117F673F0E54314D7AD6460D7C6D73A689760FBFE7ADE76EB55BCBC6B1F97DF793346673E1FFEC45F51661CE6CB7FF763DAE7E452B36811D75EBB9E48D448796529359FFE1C5FFAE68FD861B2F2D9AF7C8BDCB4E46B142CC0CAF56B59549E87';
wwv_flow_imp.g_varchar2_table(300) := '394DFE0CBFCC5FFFE409617684DA95EF65BEB999A982B773655E0F3FDB7C82B29C058CB61FE4ABDFB987A5976F2033314E736B0FE9456BF9CC8797F34F3FFC0561B174B28A2FE7B3EF9DCFD7BF7F8F9632EE329964B046C959F32E6E5E92C5EFEEDB2413';
wwv_flow_imp.g_varchar2_table(301) := 'C8CC3B6FFB08E34DCFB071DF59AC3245EEFCD8A738F1D226027DE95CB9A89296C35B19B0D6F1EDCF7F5826C614FB0EB689C5D6C92F7FFA4B063C61965DF541D6D74EF0EDBBB76037845973FDEDE81A0F1336B949CF30119C1AE1570FDF2D93DE278BC4CD';
wwv_flow_imp.g_varchar2_table(302) := '473E7E9D2C82201FFDD03CEEFFD53E6ED850C837FEE967542F5E45BE2B427FFF1831533177DC5CC7D6279F1501F2E7D4D515D17AF83979CE4E6973269FFACC2769D8751FDB9B4731C60C7CE66FFE96BAA2B4D71430FD031EF4EE02D6AE2A242A93B0BFB5';
wwv_flow_imp.g_varchar2_table(303) := '83FF78A69B2C8789054B6AB872BE91079E6CD3ACAEE597D5B12027C82F9F6C211236B372592E4683912347078889D03BF8722B0BE62C63F78B2770CC957BAB6CECDC52CF91EE00B6DC2CDEB5368FE75F68C51B8A337F6935ABE7E8F8E5A38D048366962E';
wwv_flow_imp.g_varchar2_table(304) := 'CA26183272EB4DC53CB5A99DCB9665F18BDF35E0C87450525A486EE730BBF67631D03DCE4DEFBB0C4B7F27FB271CDCB1BE8881F66E1EDEDD2F023DCAF235B5B8436390534AB9718497BBF44C76F4D115B3920807F9D9431322209C7C4E78BD6FCF694EF7';
wwv_flow_imp.g_varchar2_table(305) := '8648CBCCE4B61B72F98FFB1B08CA78A7E7E4F3CE056676ECEE22B2AE94057559341C6DE61911506619C31B2FCFE6407D3F3E91B2F397D5A0EFED677B779C95F3F2A90B7A79F8E9539C190A53585AC2FBAFB4F3A3074EA313A194575CCC27DF53AD09B386';
wwv_flow_imp.g_varchar2_table(306) := '838D6C3D3185C195C67BAF2DE7A5171BE91D89C9B8E6130879B8FBD1235864F67DF6CE45341E6BE5709B0FABC3C5EDEF28E5BE878E3112D663D7C91F4384606616775E53C253CF9D21104DB078652D756922F05C59CC314DF3AB0745592774AC59BF886B';
wwv_flow_imp.g_varchar2_table(307) := '2E2BE15F9FEB62FDFC0CEC6FC5C6476C9CFD7B9BF9F8D7BFCBC8BEFB6938719CE996D6D7B060FCE7B8FB5F7F47514D2DFB77BCCC55B75C4FDBCEA7786ACB0E0EEC3B44E98A1BB9BA2E8DC77EF70C9DBD676968EEA776E112727273697CFA57344E95F3B9';
wwv_flow_imp.g_varchar2_table(308) := '8FDF7C5EBA378B55B06DCF51DA5B4F73CE67A7DCEDA37E208DEF7CE9DD6C7FBA95952BF2D87FEC2413C3035885B9E3ED210AF20274454AF88B1B8B79E6B89FEF7DEB4B9CD8F128C37103034331FEE1EB9FA27EF349F28B8D9C1C80AFFDC575EC9149F2D9';
wwv_flow_imp.g_varchar2_table(309) := 'CF7C84F6BDBB696A38C294A58202632F2F778BF513F65177CD07B93A2F4ADB703A156569D4AE5A4B59AE9B96637B09BA16B3627EB1388F564ACB0A39B6F501BADD1BF8E65FBF8D471F78089DCD4CC856CB573EBC961D5B06B8E2863ADC99B944C713C426';
wwv_flow_imp.g_varchar2_table(310) := 'CE70D297C537BFFA0911C85BC8AB28E66C6394CB2E2F60E7F3CD6299C099310B5FFACCED4C0D0C909D9BCE7159BC6BAEBF1E7D5C4775652643ED1E4E751EE5ED9FFA36CBDC7D3C27BF873C1EAEBBED53548686E8F7E551579DF11A7A414FDD9C2C463BFB';
wwv_flow_imp.g_varchar2_table(311) := '79E9501FFD51D1D4B6087E4B369FFBF30A9EDFD9C944FF089D5E33F372616FF318D3C393942F9DCF07D7E7332DD65F67BF9E154B5DA4E7656395C5352813BCB575822B2FAFD0327C0FEE39C3B4D9456D5536BECE2E0EF6C6595E6165E7A9614262C165CC';
wwv_flow_imp.g_varchar2_table(312) := 'A9E613326601AF87F6EE182B976470F8F0200539269A4763FCD56DF3A93F38C88265795A66F0A20A1B27FBFDF4F78C51B6A08CB2749358A1D3F8E2264C113F237E13198620716B26E97A79E6B0913915160A8ADC4C4E04B8FD83ABF0779F634A2CA95D07';
wwv_flow_imp.g_varchar2_table(313) := 'FA58B4AC9886FAB398D26D0C8D4565412FE1CCCBE7A85A9CAF2514166718C54A0C73A26588F77E601DCB8A4DF8C4EA4A1865F9C703F44D88325CEC96B17588051C412756EF89492B5FFDD8520E1D90BE8B10180F99F8C2ED751CDE37C0E265858891CEA9';
wwv_flow_imp.g_varchar2_table(314) := 'C32D7407CCD4CD158B7164908E809B2F7D783EC66850CB927EEFADABB14D0C32301DE3C0816EAA1695D071BA8BA8C3CAE878908FBC6F11ED32916FB9750581B6213A7A87699FD0B1B8C4C40EE1ADD39AC092994D89C5CFB6C3435454E551569C4E7196F0';
wwv_flow_imp.g_varchar2_table(315) := 'EF543FC535C5B8CD6F8180894CF1F2C916965DB18EE8C400639E2845F92597DE833975600B8682628A0B4AA82B88F3CC4B7BD16794F0E92FFD2DDFFCCEF7F83FB75D4BC83BCDEA9B6FE59BFFF06DBEF3779FA634D3C88EC7FF15FFDC6BB969B18E1FDCBF';
wwv_flow_imp.g_varchar2_table(316) := 'F5BCDF19C2C6C7FEE6AB7CFB1FBFCB673EB05E4C4C28C9ACC1E6B469DB41354BD611EB38C0B3FBFAB9EEF2951A066E3461A62CBB962C9749B4455CD3AC2AF158610EE5B96B718A6B65B4887B15D351943E972CB196D26B2A713BDC38C4748C88844F9701';
wwv_flow_imp.g_varchar2_table(317) := 'A959B89895B585E27EE750939D8FD9E64019BA3119F8D9BC8FD2CA324E1EDB82474C745FFF09FEF107773122AE95559E63B0C84437295C593B95D97370499B55F6A8820F48681969090DBB57271A5FB934067D1254DB9F98145744DC229F4FAC0133A5B9';
wwv_flow_imp.g_varchar2_table(318) := '8B7033C0C11D87C584778BD9ADB2AAA38455867A8C1920D62486AFCAD0D5EBC298CCA55465676392361B5ECF7E45D8CB834F35B2F8FA15FCC3A757E2EF1CA4652482CB6ED440C134206F85B5EBB08936CE644575BA586C314CAACD8908A3637E2D4B5A27';
wwv_flow_imp.g_varchar2_table(319) := '4C0E09FFAF5D55C0A6478E632D2AA0C0AAD392B0E72FAE64559583DD2F757252AC854CB79DDC820C56CDCD106129E324CF32E8A38C8F7AF126C21A9E8ACF1BD5B27573D364E13A92D9E4EA7FD38138AB9697D17DA089668F99156576AD1B674FF7D13B1A';
wwv_flow_imp.g_varchar2_table(320) := '966BCD9A7BA9B27E7DB1083E7153143A4C3CA6328A6332CE4E8AD3C42535CBEFC1A8362E99190E562CC82343DA9B6E77E1B68A1B625699D1092DEB79368950258E5B85D7CADD6E3C7A96EEA1202E795F12A638A16584EB12C99D3ABDF8312A19D2644868';
wwv_flow_imp.g_varchar2_table(321) := 'D9DCF94EB7B878E2226A59C6498BBFACA6842B176752BFFF2C875ABD384CC9CCF8F1318FCC8D34119C5699AF0971F9C3329F4D6466DA593A3F4FC396719A9D140A5FEC794EDC4E074E533243DBE9B0935798C94A0544A5DA22E36275B9B9F68A4A74A363';
wwv_flow_imp.g_varchar2_table(322) := '3CB973404B544CC4F5BC65A7D84C3622236AFF35C0605F1B1E05B0A5F875F13BA2D49F38C7CD1FFE3C1B1664B15634FDBF3D7D980299E8CEB4B4F31006EE742727B6DDCFDFB71DD5408CABEAE673E6A49F4FFDFDDF514117DFF8EA5D9CDA70198B8A9D64';
wwv_flow_imp.g_varchar2_table(323) := 'DA13DCF7E3EFB129CB49DC9ECB9A65D564A75B64B6EB708B8FAF333945D35513F6CC213FC7813DD386C56A47C61B53CE22E6DB5EE2CB5FFD0A19D975BC5B4CF1A7FB07B5363873EC98E43AA7530DB11197D522134804832B876BAE5AC5B3CFEE607F7F88';
wwv_flow_imp.g_varchar2_table(324) := '0DEFBE15E354584B75D7DBAD22EEECE48B907BE6A51758B5E853942EBE96EB8ED4F3CD6F7C9D44C0C7821B3ECAB56BECFC545CA4AF1C8AB160ED3B995712E5F4A041DB5073655B451098B1DBEC24D222942DB982F2C187F8FEF7FE89D6E620B7FFCD429C';
wwv_flow_imp.g_varchar2_table(325) := 'BB7FC0D7BFB613BF61014E9713579A0230726982B2ADA54504968790B88ED67027BBEB83AC59F11E96A68DF3AB7FF92A7AB13CEEFCCC2738B1EBB0B6F76371DA89CD80A45F922C7696D56570FF6F0F91E38239CB2A585518E2AEC73BF1F6CB845E5ECDE5';
wwv_flow_imp.g_varchar2_table(326) := '553A7EF36C07275B7D542FAC64C5B20CEEDB749AC6434696CC4FA72861C3ED864CD1D2596599E4DB1BA56DC533A101239EC1095ABD06CACAB2B8F9EA7C76EDEBA0E1CC0825D5C5AC5F97CFFD4FB7F06F2775ACBEAC9CB9916EFEE38106A6E3760D33373F';
wwv_flow_imp.g_varchar2_table(327) := '5B39136255E53BC8CB75A19F6AA33D64657E611AE1B985D8665649568E9BC47888C9B8088D2CB1CA64213EB8B989C32260566E28A02223CEC65DBDE20A156A0B2B3BDD41C1FC125CE238379D1914C16CA6A6349D73FDD3DAFB72E57DB9394EB1C87C340F';
wwv_flow_imp.g_varchar2_table(328) := '25B87A653915F911363E266E8B58ACF32BF298EA0B31E18B6212199723D7EE38D48229338F85CB4BE91F3FC95DBF394C4E7E21EB1738D975426DB49AB57E247701748427A769EE8DCABBD2B9EE9A324E1C6EE5AE5F8F5259914165B1555C1FE1A95BDA51';
wwv_flow_imp.g_varchar2_table(329) := '5A44892DCED196410DDC6983B473B02F2E86B3893C113A0E251833ECCC5D58CABEBD67C5D21AA5A2AE944539119E3911C094308927A0C0C46DAC9E9B4DCCEB252AFF1683EB2D0A17A573E37B2FE35777FD1D567D3E9FFFDBB59CDAF6CB57E01A1A1A1A58';
wwv_flow_imp.g_varchar2_table(330) := 'BC78F1052E5232A3D37801D64B7C06F97F165F65F6BA5020209A249AC4CA90C967B35ACF6FD225A25111554924769508E8F7FB352C0C85F86EB3DA35E9AE5E19D7B0415EFD5C0D604849E6C4EC6F3146454A66E4642737EF1472BBC2AD982918A7E15E5C';
wwv_flow_imp.g_varchar2_table(331) := 'F0ACD9EA0201CF04019D954CB13A340843F5AC84C217D127AD8C4010ABDD7EDE9CF38C8FCAC03948772637CC62213FE3E297E764BA93ED4ACCBC67460B26B135D0F0607EF8CBE7C8480B726EC4CDD7BEF669D2F441C6A743B8DC4E8C9A164EB62D2AAEDA';
wwv_flow_imp.g_varchar2_table(332) := 'A437823BC3297D31A81D3E826239596D49CC1CCFE4183A8B4B2C3453B27F336D562F7AADD3D62A5AB16D5FA7584D21AD2A4096DBC668FF10DD93466A4451B844DBAB47847C41B1D66461BAAD5A7F7CD301820983F0C9A46100CDA200C442418E378D53B7';
wwv_flow_imp.g_varchar2_table(333) := 'A40897416B8276FDB8B8260AB4DB69331294674D06E364A52737D683DE00DE989E9C0C6B723359F8E7705A921832E7C72909B31A0D45C5D24C88AB3088ABA24003C3D296AB5C333519C060356B38266A0E793DE226190CDA26AC5214FE4054DB643569BC';
wwv_flow_imp.g_varchar2_table(334) := '8D6B90194AFC8F8C074893856C136B43ED336948FAF1E4DF5105619948E2CFA88D5D854267B2DB70D9F45A9F74661336935EDB980E05C53D321A348C2165F68D7A14A8B95DAB64A0D0187433C3A29F997F6A3E2B974D41742ACB2B1C4C0AAC2CB94759B6';
wwv_flow_imp.g_varchar2_table(335) := 'B3F3593140550E189DF0639579E63026B16166E7D56C7B9575140928DE26C811DE26025EF6378CB16C652986489869E179B6F0F85CE73906C30EFEE153CB655D99DE2A3B06EFC4383A7BBAE63D686378710193A2FF4EE8B5B3F9246DBD632C58B986A28C';
wwv_flow_imp.g_varchar2_table(336) := 'B7469D28E13030EC9DA97B9314B8B1484441AD6B8B4A4DF0E4227FE5F7F39FB5A8F1AB73FA8787A6C44A4827CDFCEA88B256AE63B6ACC7A59E35535F497BEF851833337FAB39E7199F226CB489DB6BBE00EA40A72DE01984A4E42DFAA4849ACD7ED6CD60';
wwv_flow_imp.g_varchar2_table(337) := '98BCAAC9177BDFF99F6794DFEC3392172701C0669E7FFE7D173E7FE6B91722BB5D88C732FBAAD967CC824AFDFE3D17B424A9EB6678382BD075FF457B6779ABFE1113853E193688623027BF17C5AF2255B9590A30CBF67B06C05B4B290193A214A5E82D3C';
wwv_flow_imp.g_varchar2_table(338) := '6897A214A528457FAC807923C0965294A214A5E8423A1F4572381C4C4C4CFCDE466B8A5294A214BD010226AC50C0B502EC292B2645294AD19B2060549992948049518A52F4860B98F3F1F914FDAFA1D4BE5B8ADE6C4A6DB8FC2FA6FF29C225A518FF4405';
wwv_flow_imp.g_varchar2_table(339) := '8C4E6F4856058C44B53C9BD77B80271E8F69A9F5EAB095AA16187F5D1340F7FFD501A13FF9819D3909AA72B6545E93FEFF892CD1CD5429FC6FB679E6F4B73A4FA64E681B5E67A3FF27084ADDCCA1C83FF15E60B658CE57255572E0A2B94866B399D623CF';
wwv_flow_imp.g_varchar2_table(340) := 'F1E3DF6CA5303F93B8B9908FFFC58729C9B2110A8566CAB2C630A804BF997B54895825948E3CF7284FED39CCC87488ECAC22DEF7D14FB0B2A6F0F74CF2B856A2D36C9E39D61C1DE29EBBF7F29E3BDF43B64337534234892D72BED4AB562D2FA2E18AA4E8';
wwv_flow_imp.g_varchar2_table(341) := '12836C8EF3CC932768E89771D2C5C8AD28E403D755E230CD9C1255655CC3C992BAB341C3B886DD14D74A85AAEC10EDEF9989327BBC54553FD4AB7B66BE562560CDB36559E5FA50C8CF818611162F2EC5128F254B9C26EBAD9EBF57FDADBE57291BDAB392';
wwv_flow_imp.g_varchar2_table(342) := '9285E8F4188FBC34C2658BD218F09828CE8A328D8305A56E796E442B5B1A8DC6B4766A0273463DAA6440C34C9B54D2696CA6FDDA949A397A1F8926E47E854783566E3871C1A95AADFCECABFA31F3D9A43F6F1DA9BCB6643F14DF6233A76EF5728F7EE604';
wwv_flow_imp.g_varchar2_table(343) := 'B04A472059B6359E38FFDCD967A977EA7EFF59A8B62779A2DA7F70EF19E21905AC5BE0D6CAE1CEF228B90692C995B363A5D6864EDD37FB8E708CC4FF07F3CE684C70E0D95F501FAEE533EF5AC9C3F7FEE4D5700D393939E70580D168A4EDF82E868CA57C';
wwv_flow_imp.g_varchar2_table(344) := 'FEE3EFA769F733841C59749DE9A6B83C8F433BF710B7E7D072E069EEBEF711EA1B3AC8ABAC2633CD4C76C57C1654B9A86F1DE7CB7FFF158C030DFCF38FEEA17F6A9A9663BB7968E3538C849CD45566F3E403FFCE7D0F6F4567B1D3DD364D797E94479F7C';
wwv_flow_imp.g_varchar2_table(345) := '91FCA22C36DEFD1F3CBFF714E5350BE86BD8C2F77E7C2F317711B5E5F95A7E4E8A2E36D0310E1CEBE78AEB1670CBEA7C8EED3DCD84D9459A7F82BB3736D270D6CFC2DA6C19CB2E7EFDC4693A062344BCD38C47CC58C3E31C6D0B101E1FE6DEA7CF70F8F4';
wwv_flow_imp.g_varchar2_table(346) := '28FD6787787A5F0FA5D5B90C9CE9E1B74FB7D2EBD1515768E4D1E71A797E5F179D1309B2135E7E78EF29CAEA8A28CBB6D2D5D2CBBD4F9D6677FD1039D9769A4F0F9191EBA4B5B1074FDCC2B9D62E1ED8DCCEA96E1FD5C5565E3E3ECE9C520753FE38270E';
wwv_flow_imp.g_varchar2_table(347) := 'B5B069DF10411112F32BDC6CDFDD46D4EE24D765E2F8E1361EDAD2C6890E2F73E7A4537FB0958D5B3B99C084333ACD83F2CE235D3E5154718EB7F8A8CAD7B3F5C0202E53987B7E7782E67E2F43FDA33CB9AD938ED12873F30D3CFA6C13CFEFEFA27B1216';
wwv_flow_imp.g_varchar2_table(348) := '943BD9FE5213BFDBDC49D060C71C9AE2B78F9DE6546F909ACA2CADDE7360629C5F3FDEC84B877A998ED928B205F8F7FBEA393318C03736C1834FB7D0EFD531BFD2C5FEDDA7B9FFB97626A316DC063FF73DD6C8D10E1FB5D5D99C6BE9E6BEA79BD9DF30CE';
wwv_flow_imp.g_varchar2_table(349) := 'BCB95974768C909397C6A9861E42093DBB779E16DEF763B5C1A6E79B79B9759A9A39999C6DEAE4814DADB48E47A9ADCCC09848BCA54246D5566FDDB787FB9F7992687A2D57AF5840F9DC25977691AC0E33270FBCC88FBEF73D5E6CF29199EBE0D481164D';
wwv_flow_imp.g_varchar2_table(350) := '127736F5D075EC209B0EB4F281DB6FA5BF711FDD633ECD345759AC76BB1D8BD58AD36E65A8FB14C3963C96CDCDC3A77372E5EA32F6BD788086BDCF70E49C838FFCF90D4C0E8D11089CE21FBEFA332A97ADA37ED3BDB4877329339DE3570F6DA4B1A5097D';
wwv_flow_imp.g_varchar2_table(351) := 'E90256D69589268AA5E4C8253725D0D0DDAC56130EB79B95F3D2191F1CE6899D3D5C76F55C3222933CF1522BCFED1DE0CAF5351458A2349D1E66782C4A70DA4F972CF89EDE21C8CFA11C1FBD512B0BB30C1CD8D7C1632F9DA5A62E9B1307FF2F7BD7FEDB';
wwv_flow_imp.g_varchar2_table(352) := 'D479869F631F1FDF6F71ECC4B9DAB9875CB884AA90018542AB95B6D3D0364D9DB4FD3A69FFC07E9AB41FA64D93D65D7FAD56B6B2B1AE05D10E3184282BED3A2A289734D040EE57274E62C7767C3BB68FCFDEEF3B09ACD51A408040D579A5C476E273CE77';
wwv_flow_imp.g_varchar2_table(353) := '7DDEE7FDDEF33DE726CE0F2D61703A8567763562F1460419A305BD9BFC68ACB241903338796E02DBFB5BE12DE731B790C1F8E80A671391E9041616D2585E2DA26F738026D91C819CCCA50F3229BAF67C010DE47CFAFBFC18BB394FD788E3D2CD38EC2E33';
wwv_flow_imp.g_varchar2_table(354) := '0445467445C6D6DE2A2C8E2F60686801E72F4C2358E78684124DE661245413AABD262C2FA730422064104AB8752B89782C81C99C80EDED1E2E11F1746F0586AECC612E9AC4B5990C0EECAE4784DA61F0DA043E9A28E0BB5F6F82BC10C55F4EDC40456325';
wwv_flow_imp.g_varchar2_table(355) := '62231378E7F22277BEB9149D9B26F7A1E74218B83486818965CC1645743330BB1CC7B75F6EC7ECD0344EBD3F8CF73FCBE23B2FB4C09058C1D1E3D761AAAA80128DE0ADF74670FAE379F4EF6A2690B342500B18BE15E761EDCC6402B1E52CAECF26D04375';
wwv_flow_imp.g_varchar2_table(356) := 'BD786E088AD70B6179016F9D1BC3070486D60A271CA63264058F3DBC627BDD423BF6E2C73FFC016CE63297D875B92C1B038C9C53B0E3C0B7F0935FBC8A1F1D6AC7F90F3E0628C6920838CC14DAE4537158FC8DE8DAD483B68E5AA84AE90EAD2486A1B057';
wwv_flow_imp.g_varchar2_table(357) := '4605E1C2819DCFA329406033328A496A34B3D3832C1D5FDBD883CEBE1DD8B289C0279B44811A4AA06B14526928F91C953280709D1D45358097F73C8B6A9F4BDB11ADDBDD880CA7E62CD89999C9C244DE101633FAA89D7B3ADD585A4CD3172CF43988A7B7';
wwv_flow_imp.g_varchar2_table(358) := 'FAB9C689614DCAD148EF05028B5D6DD50837B9D1D45983DE3A2FCAE91C4A3290653A3E8D1EAEFB521FF063E7A64AF83C660E6A4E9755D37A29102B3298D0D35685EDAD6E1814764E704D164964A1918AD5E534A62219A892196B6A997C7323D35C319B8D';
wwv_flow_imp.g_varchar2_table(359) := 'A80A51C8D0EAC091B70751150EA2DE21D2402E633596C6341D57369A20399DD8BF278C0C81C9A5EB09B46D6B4293C7806B83CB988B15C8C9D145D94E6C7A29950DD8DA4A75697422399FC4F4629EEFD466514D53D04F405C894AAF19E9951C85F65EB451';
wwv_flow_imp.g_varchar2_table(360) := '58DF556F462EAD50185286BFD60D9759E0DA302CDC6AAEF3A1A339088F0388AE96D147E7EEAAB5C1EE75A13DCC84A0CC9889ACC24B9F3BD8759B6D044C14E2CB2ADCD56E623325144533B674D5A027ECE07F676D64626D6464D72923E0ADC0B304C2C897';
wwv_flow_imp.g_varchar2_table(361) := '29742AC31170C1EBB660677F33ACC53C2E0FC6B142E533181E0FC2AC2FB0B3DF12F519DBD1AEACA90D64A3231B038C49022E7F740E875F7F8DA8E04D3CB5790BACE2007EF3EAAF70F2F487A8DDD68F6A7506BFFDFDAFF1EFF393E481EEEC1E66223D02A1';
wwv_flow_imp.g_varchar2_table(362) := '1AD7745604944B225617C6313193E3BB4063D343F036F7207AE3047EF7CB9FE3ED772EC053BB1B3FFBE92B3879F80F50831D70385414726978C80B4B8288A2CC8045672FF7B06208B154C4A97F0EE1B53F5FC08D9C152FEC6D41C856C01BC73FC5D98B31';
wwv_flow_imp.g_varchar2_table(363) := 'ECDBDD84B0A7489F07F0A7E3E3F0FAADB832308C23EF4E4331897C6D4C12B5C561B64EC086BBBB8A265DB303464399CD593404AC10A1E9373031263B31DEF4D20A856029082E0FBAEA4C147A5CC5F10F9760236F5BE92AE2EF276FE0EC27093079E39979';
wwv_flow_imp.g_varchar2_table(364) := '197E1F79EE3C93762813F81838F818090D3C160197AE44D0D2538DF47C067DDB6AD9DE6A884299184E1EBE0A2B0C34C192E48826265308FA1D50B3254C8DC6205809E4A8DC92C386D5C43C0EFFED266657687212404946898911637659E17ABCC56C1614';
wwv_flow_imp.g_varchar2_table(365) := '91413288BC1E2A0DDCC6760AC1938B3872EC0ACE5C4BA3BBBB92580BB5034DA6862A3B2F87CB2962743482A327AE41313BD05D6723076B80BDBA02AE428CDA710093510507F73541CCC7F1C6B1ABF8C77FE2E8ECF51378AA5CABB7A9A50AAD9E128574F4';
wwv_flow_imp.g_varchar2_table(366) := 'BF0B31B82B9DF0DA65FCF5DDEB145626E1749BA89D4DFCFEB4CE2E1FF30F04EA0AEAA8DCB36371B82B1C9008F8729A8AC763CF44AADA642796AA70608946A6BE7C0D863110B7BF1EADA17AB8DD3EF4EFFF06766EEBA618941ACC68C5DE6F1E444BC08C4F';
wwv_flow_imp.g_varchar2_table(367) := '87A6083D9950B288BDFB9F83CF69248AA7907374A3ABA3032EBB0DDEAA1A34D67BE16F68275477417437E0F983BBD0DCBA195D213F544B102F1E7A095D84F2752D1DE80E3712ABF91A88F542F2B5614F7F3F1A1A82A8A9F172EFA6DBC6D9A30C4DB4F958';
wwv_flow_imp.g_varchar2_table(368) := '1EB92C794B5142775B2517CF36D1089D9B4B9217A4BE7049B04822A66653F0D5FB504F717F3A4E6CC2CE04A1242E2B29E70BC896C839C805A48939A81467FB9C1286C756885856C0CAE41A0C2A569232CAF43E4B0E40A2FE5949C958A51F89D8419CC2E6';
wwv_flow_imp.g_varchar2_table(369) := 'C5441E32852D8D413BE629540AD4BB69B29B60B51B31319B454DB8821896C03DA0CC24EF04B6586B24E752427A55C6CC5201D5011B96A209CCC6640ADD454CCE6550DDE8859D29D5D1901889E4D0DEE1238F2F618CC20BBBDF8570B51D0602DA2891B5A6';
wwv_flow_imp.g_varchar2_table(370) := '2627573D14E8CC0999B13B15535119A1660F0D76164E0A88D33F98925F09145A8A650ADB0A68ED0C50B865C6D4440C34E351410C2642EC6F647C0923D305586D1242547EA5C004C915C489C9B888358DCEA5D110F6C342C86421701A9FCF21D416406DA5';
wwv_flow_imp.g_varchar2_table(371) := '1591A93864C941806BE161EC6C240D6FD0437531C24A7D1289E6100C7B08F4884D12E8C6527998AD162CCDAD2023DA0818AD742DAAF3F42A6A431EF4859D7CE1FB7167EB59642139FC680F35C0CE1420EDDE3B720D57AF5E456767E7E710C9601079C1D7';
wwv_flow_imp.g_varchar2_table(372) := 'B33E6C35DF480356BC2D2695C1D93367303C194173EF4EECDBB19962E492B6D82430812026F957240F286A0AFB0A8BB04CB7E18EDD3D2C123D3670F1F5A226C45454E86F445B9522790DEDBB452E2F68E4E8A894F57B1E363296694BA50BF8E4B3286703';
wwv_flow_imp.g_varchar2_table(373) := '5A768F892369E25B3CD3C1DB5EE1193F965D61E96C9E6991B4DB1258964265EFD6521786B55057588B6198F013CB38318124D62DEBC264ECD6049EF5604F5E5034912CA63F93A5D04AA6496CA7C968D2922228F06C92968A56D5B5CCC8BAD81293F4A4AB';
wwv_flow_imp.g_varchar2_table(374) := '5988294D4E27C8417989396B2977CEAC4D5A764A3B4EE165642105CB2E3211282E0E45545D2E6AE55997BF5CCF2AB1572E470A4D0A93959F6568581BB0BAB1B2AC3FA18069EBB032DD69B7B2261743E35C26C0F2B8CC7CCC2A3CB58EB5638D5A1B51D90A';
wwv_flow_imp.g_varchar2_table(375) := '6B9F59E8C9FB41055F24668597791F687DC266D4FA67F634025637766DFE3486B53A9AD7CB50D43270AC7CAC1F7BDAFDA824D0514AE5C79EB217F89310C0590CBFCD652380B99740DF6C96D6D2CF3468C8D3E9D3FF096031025B6817EFACF8DE953F7F51';
wwv_flow_imp.g_varchar2_table(376) := '050A1BBCBFDB715F767E6CF09D2F1EFF3FE7BDADC084871C07A8F778BE8DEA0E7C5ECD4AB84B7DEFA72FEEFD18A6D0F7A43A5EF1413B89DD13A3DB9365ECC646C63675D3ED890198F59BE0F4BD29BAE9A6DB430718B6529DCBE5743D18DDEE8FC33EC40D';
wwv_flow_imp.g_varchar2_table(377) := '93FAE6CBAF60B87E1B694451EF5CDDEEDB1EE698D1C7DF5798C1B0C789B8D9837074D34D37DD1E3683D1F56074D34DB7470630BAE9A69B6E8F026044BD1974D34DB747610C5CE2600FA2FE3FB634750DAFBF791A6CF3727DEF3378E5C59D30DEC34907CF';
wwv_flow_imp.g_varchar2_table(378) := '1CC3A9CBB7603499502C0878E97BDF474FA86AE383CA29BCF7AF5BD8B17B3BEC92BED8F760A6E2CAE529B8433568F64977FDEEE0E02CDCC12A34544A0F7CE56C2A8DB46244C06B4566258E81A912FAB704EEEB1C89E52454AB0D5EFBDD1F813A361241C1';
wwv_flow_imp.g_varchar2_table(379) := 'E24167BD0D7232818BC379EC7EAAFA81EB915E5CC6D1D353E8E8ACC50E3A9F491F54F764C9B9EBB8B268C4BEAD2D38F5E61FF15F0106003C6B820F76440D800000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(955698917258995333)
,p_file_name=>'reports_classic.png'
,p_mime_type=>'image/png'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/reports_usecases_jpg
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := 'FFD8FFE1001845786966000049492A00080000000000000000000000FFEC00114475636B79000100040000003C0000FFE1032D687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F003C3F787061636B657420626567696E3D22EFBBBF';
wwv_flow_imp.g_varchar2_table(2) := '222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F726520352E332D6330';
wwv_flow_imp.g_varchar2_table(3) := '31312036362E3134353636312C20323031322F30322F30362D31343A35363A32372020202020202020223E203C7264663A52444620786D6C6E733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E';
wwv_flow_imp.g_varchar2_table(4) := '7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D22687474703A2F';
wwv_flow_imp.g_varchar2_table(5) := '2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F75726365526566232220786D703A43726561746F7254';
wwv_flow_imp.g_varchar2_table(6) := '6F6F6C3D2241646F62652050686F746F73686F702043533620284D6163696E746F7368292220786D704D4D3A496E7374616E636549443D22786D702E6969643A32353530464437443935363031314532423535423841353841413439444338442220786D';
wwv_flow_imp.g_varchar2_table(7) := '704D4D3A446F63756D656E7449443D22786D702E6469643A3235353046443745393536303131453242353542384135384141343944433844223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E7374616E636549443D22786D702E';
wwv_flow_imp.g_varchar2_table(8) := '6969643A3235353046443742393536303131453242353542384135384141343944433844222073745265663A646F63756D656E7449443D22786D702E6469643A3235353046443743393536303131453242353542384135384141343944433844222F3E20';
wwv_flow_imp.g_varchar2_table(9) := '3C2F7264663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F787061636B657420656E643D2272223F3EFFEE000E41646F62650064C000000001FFDB0084000604040405040605050609060506090B08';
wwv_flow_imp.g_varchar2_table(10) := '0606080B0C0A0A0B0A0A0C100C0C0C0C0C0C100C0E0F100F0E0C1313141413131C1B1B1B1C1F1F1F1F1F1F1F1F1F1F010707070D0C0D181010181A1511151A1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F';
wwv_flow_imp.g_varchar2_table(11) := '1F1F1F1F1F1F1F1F1F1F1F1FFFC000110800A0011803011100021101031101FFC4007E00010003010101010100000000000000000001020304050607080101000000000000000000000000000000001000020102040207030B0304030003000001020311';
wwv_flow_imp.g_varchar2_table(12) := '04002112053113415191225214066132927181A1B1D14272A2235315E133546234160782B224F0C163110100000000000000000000000000000000FFDA000C03010002110311003F00FEA891D6342EC68AB99380CFCCAF81FE0380817283823E7C7B8701';
wwv_flow_imp.g_varchar2_table(13) := '3E657C0FF01C047994F03FC07013E657C0FF0001C03CCAF81FE03808F329C743D7F01C04F995F03FC0700F32BE07F80E023CC47AB572DF55295D06B4C005C462B48DC54D4D10F13809F32BE07F80E01E657C0FF01C03CCAF81FE03807995F03FC07011E6';
wwv_flow_imp.g_varchar2_table(14) := '53C0FF0001C04F998748715258E9A0075547114F6601E657C0FF0001C03CCAF81FE03807995F03FC0700F32BE07F80E01E657C0FF01C03CCAF81FE03807995F03FC0700F32BE07F80E01E657C0FF0001C03CCAF81FE03807995F03FC0700F32BE07F80E0';
wwv_flow_imp.g_varchar2_table(15) := '1E657C0FF01C03CCAF81FE03807995F03FC070106E90024A380332749C06CA4300C0D41CC1C073EE0696729EA5AE03E56F2D7D58F7F24B69EA1B782D1A5675B792D525658DB826AD42A4741C066F6BEB46A15F5159A32BB3002D01528725571A8548EB04';
wwv_flow_imp.g_varchar2_table(16) := '60227B3F5887E6DBFA8EDB98608A37865B65E49963AF325400D53995CC674A6034F2BEAC2926BF505BB484AF2B45BAC68A0302D515662596BD3D580816BEADF2C049BFDAC974B23B24AB6FCB8F4326940E8AC75956AB1CC035F66036DB23F544378B26E5';
wwv_flow_imp.g_varchar2_table(17) := 'BDDA5EDA00C1ADE2B610B9AAF70EBD678366701EC79A4F1AF68C03CD278D7B4601E693C6BDA300F349E35ED18079A4F1AF68C03CD278D7B4601E693C6BDA300F349E35ED18079A4F1AF68C03CD278D7B4600F2FF00F2070E14B4B2857A8A0255803DB80F';
wwv_flow_imp.g_varchar2_table(18) := '9AB7DBBD651C72472FA96094BDABC2263151D2761DC9D47BBDCA529F7AB539D301ABDB7AD6AE63F50592A81FA286D43127A048E5B3F690301BED317AA2DEE43EE9BE5ADFDB10FAE08EDC42C1980D3A5F51C95ABD198C07B3E693C6BDA300F349E35ED180';
wwv_flow_imp.g_varchar2_table(19) := '79A4F1AF68C03CD278D7B4601E693C6BDA300F349E35ED18079A4F1AF68C03CD278D7B4601E693C6BDA300F349E35ED18079A4F1AF68C03CD278D7B4602B25D272DFBEBEE9E91D580F560FEC47F857EAC052F0036CE0F034FAF01F37BBFA8459DCCF1831';
wwv_flow_imp.g_varchar2_table(20) := 'A72DF4853116CA80D6A3E5C027DDBD41259ECD77B56DD05E25DAB3DEAB523017BBA68CCC0A6458D74B70A533AE0307DC7D71E4A595765B6F34B76120855958496DA18EA66D6346A7006ACE80D749C06E379F55B5C044F4C2727526A99AEA25EEB351A894';
wwv_flow_imp.g_varchar2_table(21) := 'D5A917AF01949BBFAC6DA7BC127A7E2BBB5123F929EDE4404C7AF4C7AD3BEC49F78D380C075EDDB87A96E2F6DD6F3638AC2C8B3ADD48F3248EBDC25348514A6A1A49E9E8C07D018ADC7144CF2190E3809E4C1E05EC180811DB9340895EAA0C03976F5A69';
wwv_flow_imp.g_varchar2_table(22) := '4AF1A5070C04F261FDB5EC1807221FDB5EC1807221FDB5EC1807221FDB5EC1807221FDB5EC1807221FDB5EC180E50AB50348204B210A465EE9C07CB5D7AB4C2D1853112EC80AB447EF102951F2E03D1DC372F52C1BDCF6F69B14579B5C70C6D15C09A349';
wwv_flow_imp.g_varchar2_table(23) := '5A5A932A946E034E9095E2D5AE54C07126F7EB6714FF008CC49282B2B466643FA6C4A88C3E4A64AAEA2780523A701D773B8FAA220B7516C91DCC06DA13E4D64449BCCC85F98A5DCE9091855AE5D3ECC06726EDEAED7072FD3D0901CADE289D1A8BA090D1';
wwv_flow_imp.g_varchar2_table(24) := 'B640F7B2238FB33C074ED9BA6F935FAC3B86C71D959B0626EFCC44FA68069050007BD9FC980F7425B1150A8471AD074E02745B65DD4CCD06438F5601CBB7AD34A57AA83013C887F6D7B0601C887F6D7B0601C887F6D7B0601C887F6D7B0601C887F6D7B0';
wwv_flow_imp.g_varchar2_table(25) := '601C887F6D7B0602B2C30F2DFF004D7DD3D03AB01683FB11FE11F5602979FED9FE6FAF01E3EE7E97D92FAEA59AE43892420B8598A0AD00AD2BECC07626CDB68B4B7B4F2FAADEDD3970AB313DDA75D73C01F61DADFDEB5AD34E5AD87BA348E07A00A602DF';
wwv_flow_imp.g_varchar2_table(26) := 'C36DDE63CC795A4DA836B0C41A8A7B7FD03010BB2EDC8DA96D429A1028C450356B4CFDB8083B16D66368CDA028C7515D6DC74E9AF1EAC047F03B67F8B9777EFB7DCF74F1E8AE02CDB26DCDCBFF00E7239434A51D8777334E3EDC03F85DB820416D4508F1';
wwv_flow_imp.g_varchar2_table(27) := 'D0311DD9336CC1AE780A37A7F6963536809C8575B7006B4E3C301E8AEA550A132190CC602753F83E91806A7F07D2300D4FE0FA4601A9FC1F48C0353F83E9180E54AF3172AFEAC997CC701E337A37D3B24CB232C8CCAE19579E6955350295F6603D6B8DAA';
wwv_flow_imp.g_varchar2_table(28) := 'C2E6E39D3DB879A9C4B11970E00E0325D9369A8A5B027323BED5EAAF1C05E2D936E8A368E2B6D0AF4D403B660572E3ED38083B16D86358FCAFE9A5422876000200CA87A860265D976F94D64B6D5C29DE3969CC119E5439E0225D8B6C94B17B5A9600310E';
wwv_flow_imp.g_varchar2_table(29) := '4121451781E8C059766DBD51905B64E7531D46BAB4E92C0D7234E9180A1D876B254F941DDC97BC781CE9C7AF01DD0462085218A3D31C602A0D55A01C3339E02FA9FC1F48C0353F83E91806A7F07D2300D4FE0FA4601A9FC1F48C056467E5BF77EE9E91D5';
wwv_flow_imp.g_varchar2_table(30) := '80983FB11FE11F5602979FED9FE6FAC603E1BD4F79790EE175125BB4835D41E53B54155E9180E99F628F72D9BD3F35D2DFC375691B3C4F6674344EEA3370D9E54CB019C3E9B76E7B4DB8EF92C5AC13116D04C4485D2AC0D4E43BE46657860226F4943215';
wwv_flow_imp.g_varchar2_table(31) := 'B8B3BADD6CAF3CB8B78663568D3CBC6918631541AB2A035046AEBE8C07349E8E11EDDCBB3BEDEE324086791BBF218A85E42AA4A9AB92D4E804F0C07449E928E390C3677BBCC321A471C824D48BA23A2B48722EB40134D7EDC07D3D85E496D69636B2C375';
wwv_flow_imp.g_varchar2_table(32) := '3C9CA891EE1E3CCB6900B4999A1EBC06D1EEDAEA7C9DCA802BDE8E95CE990AE0222DE0C840F2574B53425A3A01F4E0317F5004D7AAC6EA91D04A7975D24FC873F9B01AA6F35708F6773131242EA4E345D5C413808FE701345B2BA243153FA445282B5CCF';
wwv_flow_imp.g_varchar2_table(33) := '4F460106F4648DD9EC2EA26442E51A3E34A774104D58D701793757494466CAE5B570754057300E79FB70111EF1AD94792BA0ADA68C63EB343515CA9C4E03D0C071804BD07132C9FF00A9C07E777B7BB8C93C3125A3B1E646A48864A8A30073180F77D4BE';
wwv_flow_imp.g_varchar2_table(34) := '9CB3BCDD679256DC633746DD83DA685AC96C43C6AB2905D53500CC9EE922B80E5D9FD336B6F25E7959B7585EFE2F2CF3688E3680A319072994563A5694CC1C0445E925E4C2C97DBEC26094729048AAE8AC03328E2194D7BC7D980E98BD3EAD31912FB7C4';
wwv_flow_imp.g_varchar2_table(35) := '8F4D4C4F2958EB21009E05B5295AD301DBE99B53B3433C28373B98F409156F0890A9534D11D3A5B56A6CF01EA8DECF7BFF0082EFB82A7F4B8FC99E780BB6EEC154F91BA258901420A80003539E5C72C049DD888B986CEE78D1502558F0CE80FB7012774A';
wwv_flow_imp.g_varchar2_table(36) := '348AD6B71FA62B511D41E190A1E39E0217762DA88B3B9014A29D4943DF34A815E03A70143BD6674595D3AA9A1611D052A45454E798C06A3719999556CA7CC3962C0281A05474FDEE8C0629BC5C348A8DB75C2542EA345342DF21E8E9C05A3DDE576817C9';
wwv_flow_imp.g_varchar2_table(37) := '4EA666D2F51947D45FD98043BB2DCC8F00B69E26084B3489A541A70AF59C07741FD88FF08FAB014BCFF6CFF37D780D758EA3D8701C97D666EB495B89EDDD010AD11A7BD4E20820F0E9C0651EDF32491C86FAE5CC6412A69A185284150BC0F1C07A1AC751';
wwv_flow_imp.g_varchar2_table(38) := 'EC3806B1D47B0E01AC751EC3806B1D47B0E01AC751EC3806B1D47B0E01AC751EC3806B1D47B0E01AC751EC3806B1D47B0E01AC751EC3806B1D47B0E01AC751EC380E543FA8A7FF00EB27D4701D5AC751EC380E3B8B3924791D2EE788C850855A155D1C74';
wwv_flow_imp.g_varchar2_table(39) := '823EF74E0328F6C99248DFF90BB6286ACADA4AB675A30083E4CB01E8EB1D47B0E01AC751EC3806B1D47B0E01AC751EC3806B1D47B0E01AC751EC3806B1D47B0E01AC751EC3806B1D47B0E01AC751EC3806B1D47B0E01AC751EC380A4AE396F91F74F41EA';
wwv_flow_imp.g_varchar2_table(40) := 'C04C1FD88FF08FAB014BCFF6CFF37D6301F19EA2F51B59DF5CC46E19191E802B52834A903E9C06D7171BCDD6C5B3DE5A6F5FC71920939D24B0F3C485D57416232529439E03259BD530C51AC9EA9B2671A092D6BC63615539354B302B80CF99EAA2B73C9F';
wwv_flow_imp.g_varchar2_table(41) := '555A2C8E865EFDAF30454554EE8AA774495A839E780D2E7FE40776B89F6BF52C245CB174DBAE222EAAAB1D1638CF14AB02CC687AA980D2CAE37F79965BBF52DB4B6F1491398E0B7E592AE4A95909D791AE5C3319F1A00E487FE5B6B035B0F5459ABC4E65';
wwv_flow_imp.g_varchar2_table(42) := '91E581EE1847A82E92CECBEF1EF7B09D2B90180E8BF3EA4960E40F51436B3A5CF36DE6E57F76130F2D23902E91DE9999CD3A9475921E9FA76F2DF6CDBD6DAFF7C6DCD9CB3C1797002BB220546562005A8756F9BB701E99F50ECA34D6ED06A240AD7EE9A1';
wwv_flow_imp.g_varchar2_table(43) := 'E8C05CEF9B502355C2A860AC84D4060E350A75E5802EF9B4B090ADCA31894BB815A80BC72F9F0148BD41B54A5744A4862A158AB0075D74F103A8E02CFBF6D08FA1AE9435694CCD0F1A1A0CB01237CDAD9E2449B599943C651598156340D5032151800DF3';
wwv_flow_imp.g_varchar2_table(44) := '6926102E90B4E690A8AD58D6990F9701615D7971E6C94F84E03E0AF7D592A4B124774EAECE8A4AB71248078E03DBDF4EF316EF74F67BE4566F2A44B6F15C46F2246147EA28881546D550DAABABEEF0C0729B9F53F322D1EAAB328350903598258853A685';
wwv_flow_imp.g_varchar2_table(45) := '5869CFDEFF00F2A19DD0F51DC88EEB6DF52C3CE83CC56264FD377B8602D95D682A2320AF0A9C07D541BF6D3CB447BD479574A3B50A92F4F0D32278D301AAEF5B5B26B1729A3504A9A8EF1A9033EBA602137BDA5E179D6E90C294D4F5C854D38FCA3005DF';
wwv_flow_imp.g_varchar2_table(46) := '36975665BA421002C6BC012403F4602177ED9D982ADD2163C1456A73A70A7B70163BD6D4A9ADAE502EBE554D7DFA13A7E5A038081BE6D45D13CC2EA9104918351A9482D5048CF252701237ADA8C6D20BA4D0B4D4D5E1A8161F40C05577EDA19B4ADD2162';
wwv_flow_imp.g_varchar2_table(47) := '010A2B5A134E14C04B6F7B4A45CE6BA458EA575134CC0048EC380E9B5BAB7BA856681F5C6DC1B31C3D873C05E5FED3FE13F560220FEC47F847D580A5E7FB67F9BEB180896C2C6672F2DB45239E2CE8AC4D3DA4603977267B710882EADECE25054C7328D2';
wwv_flow_imp.g_varchar2_table(48) := 'C32A5335A505701C62F1C5E4AA771B568E3E6372CA8D4A34864E073080D4FB30145BABB472AFBA58805759FD3A57577B57BF4CE980D1EE2EE340CFB9D9AC81854F2FBB52A4D0F7AA2BA94F1C04A5CCEEB0AAEE366CD20A16095E63A0AB95EF70C0623719';
wwv_flow_imp.g_varchar2_table(49) := '0300FBA6DFFA9DE460BC40CC93DFA7D380DBCDC88A86E372B30737918A8154295522ADF74E75EAC06F1DB6ECF6C9AAE2DA76AD564309D254A815A06E35A9CB01716BBC6B6669EDDC51820E4915341A4B1D4781EAC04C76BBB1A19E6B7760C0F762205029';
wwv_flow_imp.g_varchar2_table(50) := 'A1CD89D41A8460335B4DF73D7736CF565E3091DDFBC3DEECC0596D379E5307B8B76928396E6134A86AE635757560205AEF851AB75023943A4A444D243C18D4E78098EDB7D589835CDBB4BA688C216001A8CC8D5D55CB01D3676F3A066BA68E4949A2BA26';
wwv_flow_imp.g_varchar2_table(51) := '8A271D3C4F4E780AAFF701AD3F564CCFE1380E07BBF4DC6EAD22DBA3120AB9847127235A603A25DEF668B7092CA5BC863BC8D55E447A2D037BA0B12054F556B4C05DF75DA111D9AF2DF4C71B4AC032922340599A80D68003806D7B9ED7BA5AC775B75CC3';
wwv_flow_imp.g_varchar2_table(52) := '736F2A892378E86AA4900D2B5198C07672CFFA7E1C041814F1543C3EE8E8E1D980728752F57BBD59E01C95A96A2EA200274E741C06027967FD3970EEE002200D405078D74F4F0C004640A0D341C3BB80810802802D3AB4E027964E7DDF87FAE02390BC74';
wwv_flow_imp.g_varchar2_table(53) := 'A57F0F5E580B0561C081F37F5C05650FCB7EF0F74F47B3E5C04C1FD88FF08FAB014BCFF6CFF37D780C67DD6CA076496E23465C886272C044971B74D1C724AF6F223A19222FA4829501996BD1DE5AFCB80812EDAF20A3DB3495318A6926B4155EC6196024';
wwv_flow_imp.g_varchar2_table(54) := '1DB5A410836CD23282B18D258AD4A82075541180AC736D53504725AC9CC4E600A51B5264BAB2E2380AE012CFB5C11C724B25AC518EE44CC51477B2D2B5EBF660297936CB656CD35DB5AC16E9A5199F4AA8D468ABF3F46034920DB25239896CE4E96150A6';
wwv_flow_imp.g_varchar2_table(55) := 'BC157FFD0C06D6D7304CAC2DA58A458C94611B060ACB9153A4E44756036FD4F67D3807EA7B3E9C03F53D9F4E01FA9ECFA700FD4F67D3807EA7B3E9C03F53D9F4E0395455C0EB964FFD4E03E26EBD37EAF966882C31AC4AE9A8F357DD56153D8301F43BB7';
wwv_flow_imp.g_varchar2_table(56) := 'A6AD6FB74378FB6595CC853489EE356BCD74D72047BA48AF1C0715B7A32CA0BC1796FB358DBCB2C2D15D2F78D55C157514A2D5949EF1EB3D6701D7B47A7E6DA44EFB75A59D9B4C208D923D7A4A43DD14CE802A1C875D49380F51E4DEC51523B77EED4B96';
wwv_flow_imp.g_varchar2_table(57) := '603567514A70E14C051A5F501B652B0DAADC92430323940282872504E75CB0172FBE6B2025B682BDD6D4F50DA47114CC6AFA301996F51D090B6B5AD42D5E94EAAF5FB70166977D5E5E886DDC53F50B3B29AE7C28A701D566F7AD1137891A49ABBA2262C3';
wwv_flow_imp.g_varchar2_table(58) := '4D07490B9D6B80DEA300A8C02A300A8C02A3015948E53FE13F560220FEC47F847D580A5E7FB67F9BEB180F8EF5158FA95EFAE4595BBBC2CFA919796410557C47AC603B0FA7E5B9D936B82FEC85C491DBBC379199DA1EE4A14C88DCB3460C5065D6301CE3';
wwv_flow_imp.g_varchar2_table(59) := 'D0DB23432C67D3D02A6A49162F32FA5D9472EA00F74AA7BB80D6D3D256B6E2C251B5AC975B689BCA4D25C55D4990CAA18A855219D8F46580CA3F40FA7F546EDE9F81194BA9D370E68BA6AB5EBD458838097F466D491ABAEC10D646124D1B5D3515C3EA14';
wwv_flow_imp.g_varchar2_table(60) := '272CA8387C980BC1E91DBADA39A387608443394E7235C31D66DCB342C4B57833B6039DBFEBFD896478136157B5A55079A70BA9ABAE9F7816D66B9E03D4B0D861DAAF5EFB6DDA228AEAE630974E9315191C9554F768280D6980F516EF76E5A96B15572C41';
wwv_flow_imp.g_varchar2_table(61) := '512834141435A75F1C0552EB7B28FAEC515D69A293021AAD43D195173C05BCCEEFE6427924301651CDE68A807DE25699D3019BDE6FA1AA36F431806A39C0B923853BB4CF01A79BDD8C11BAD88E6B579B19940D39E5434CF2C051AEB7CE502B611F35B564';
wwv_flow_imp.g_varchar2_table(62) := '661A5687BB5EEE751D580D2D2EF7479C477364218F4D5A559038D5D40505701614D60D2B496434FF00C4E03E76E7D5F2C05008E162E5469351EF11D5F2E036DE37EF5359EE935B59FA79EFAD1394D15E23A00C181322E9620EA5A65D198C0565F51FA98D';
wwv_flow_imp.g_varchar2_table(63) := 'BDE345E989966B5109891E4888B8E6B957588A9AD631463A875FCE197FCABD508815FD237324A19E3668E680216440DAC55B50476C94F1F6603EA6D5F9F6B0CD2406079515DE1703521600956A6555E0701AE84F08ECC034278476601A13C23B300D09E1';
wwv_flow_imp.g_varchar2_table(64) := '1D980684F08ECC034278476601A13C23B300D09E11D980684F08ECC034278476602B2A2729FBA3DD3D1ECC020FEC47F847D580ADD296B770295A5454D0659E033F3BFE81F1A7DB80E5BD8ED2F542DCC3AD40228250B507A0E961D580C24DB76A91999ED6';
wwv_flow_imp.g_varchar2_table(65) := 'A58007F5E990EAA3E5F36025B6FDB5847FA0472CD5489803C49A1EF67C7004B0DBA34748E028240AB25261DE0A750AF7B8D7A701036CDAB92F09B5D51494D68D36A074B6A1C5FAF00FE376AE4183CB7E9369D4BCFE3A4923EFFB701DD15CAC51AC6A9DD5';
wwv_flow_imp.g_varchar2_table(66) := '14159109A7CA4E02FE74F807C69F6E01E74F807C69F6E01E74F807C69F6E01E74F807C69F6E01E74F807C69F6E01E74F807C69F6E01E74F807C69F6E01E74F807C69F6E0291D6B1B11EFC8EC0020E441E919603C493D03B0C92AC8DE609470E073452AA6';
wwv_flow_imp.g_varchar2_table(67) := 'A07D180F5EEB67B1BA98CD2C72730F4AC8E9F774FDD61D180ACDB258CAC19D66A850A29338C8003A1BD980B0DA2D04824D336B0A141E6BD281340CB55386028762DBCF1498939EAE7495FF00DB012BB2592A488A260B2952E04AF5EEFB75573E9C006C76';
wwv_flow_imp.g_varchar2_table(68) := '02331E898AB36B6ACAE4934238EAAD33E18088762B18A6599166E628650C6563DD6AD5736E19E021B60DBDA9559FA41FD6933045287BDD1D180B3ECB66E88879E1503280267048635353AAB800D92C5799A5261CCA6A1CD723BA4114AB659AE0264D9ACA';
wwv_flow_imp.g_varchar2_table(69) := '42ACEB29654080F35C64381C980AFB7015FE0ECAA0AF3D4F0244AC6A285686AC7AF012763B1E5AC604CAAAE64CA67A92450D4EAAD30151B06DC1C3689AA1428FD69380E8F7B01D914296D67C88D5F42290BA9B51E9399249380D60FEC47F847D580CEFFF';
wwv_flow_imp.g_varchar2_table(70) := '00D9CBF8701F317BB97AD23BCB85B5DAACEEAD848C2DDDEE042740F758E4C6A7A45050FB3019FF0027EBA7B4771B4D8C376B2AE881AE4BABC3DED6358034B7BB438045BAFAE647D2DB2D94081803235D97C811AB4A8515A8AE939602C9B9FAD8CD246FB4';
wwv_flow_imp.g_varchar2_table(71) := '592C3498C571E673AA83C9063A1F7CF1EF6438E0337DDFD781CAC7B1593A0074C8F7A118902A2A8AAE06A395031A75E03E8567AAA92A03100B2F1A1A662BECC04F38750ECC039C3A876601CE1D43B300E70EA1D980738750ECC039C3A876601CE1D43B30';
wwv_flow_imp.g_varchar2_table(72) := '0E70EA1D980738750ECC039C3A876602F6E752A919132CB4A7C8701F9EDEEF1399A1892298B19235A8D60D750078603EAB75F45CD75BADCEED67BBDDD8DF5C8863EE393124510219562A85AB56BAB8D7D980C62F436E71B3C9FF0027DC9E7752A676316A';
wwv_flow_imp.g_varchar2_table(73) := 'AD494340813BB5E1A687A70171E8592583937FBDDF5E00F6D2091DC23D6D75919A0514679351CB3A0AD7003E8DDDDD02CFEA6BF9352324E072D15C952A180400A15E3DD3F2E02BFF000ADE02B85F54EE2A4A858A9CAA25299D34E7C3A7EDA87D66018060';
wwv_flow_imp.g_varchar2_table(74) := '1806018060180602B2FF0069FF0009FAB01107F623FC23EAC052F5435AC8A781143F21380F0AFF0072DBED66950DA96E5B693FA8454800F5FB701CF7FBEDB5AD9D95DC7B45C5D437504D7133424B725610B91A13A8B97A28180E483D69B2CB1213B36E49';
wwv_flow_imp.g_varchar2_table(75) := '2D42CB118243A09A7DE0749E2387DB80F5760DDB61DF24BC8ED209E396C1D62B98E7578995D9755284F5603D8FE36CBF6FF337DB807F1B65FB7F99BEDC03F8DB2FDBFCCDF6E01FC6D97EDFE66FB700FE36CBF6FF00337DB807F1B65FB7F99BEDC03F8DB2';
wwv_flow_imp.g_varchar2_table(76) := 'FDBFCCDF6E01FC6D97EDFE66FB700FE36CBF6FF337DB807F1B65FB7F99BEDC03F8DB2FDBFCCDF6E01FC6D97EDFE66FB7019C28919555EEA2CB253A7A09E9AE038E5F53EDB169D665A31001080FBDC387CB80E7BDF5C7A76C778B8DAAF6E9EDA6B548DE69';
wwv_flow_imp.g_varchar2_table(77) := 'E442201CE04A2F369A751038603B767F516CFBCCB731EDB77E64D9955B82A0E9567048152067967D580F4F49F11FA3ECC0349F11FA3ECC0349F11FA3ECC0349F11FA3ECC0349F11FA3ECC0349F11FA3ECC0349F11FA3ECC0349F11FA3ECC0349F11FA3EC';
wwv_flow_imp.g_varchar2_table(78) := 'C0349F11FA3ECC0349F11FA3ECC0349F11FA3ECC052553CB7EF1F74F5757C980983FB11FE11F5602979FED9FE6FAC603E7F79F457F257734FE7E4844A7572C20201A01C6A3AB01BDC58C1B66D367646EAEC7968C4692DB292CD422A58282BD1D380AC975';
wwv_flow_imp.g_varchar2_table(79) := '0BAC416FEF9394A0B3885AAF504D5AB1F4F553013CF845B32F9EBC52CBCE59B9546E252868999AF41CF011E6E05E6A1BEBE694803288D5683564346915A74E02C278A196391AFEF641CBA85E51652ACBA833054E22B80A433ABBE95DC2FB59462DAE1E82';
wwv_flow_imp.g_varchar2_table(80) := 'A4023B9406B98C04A5C5B4B39297B7DAA53A146860B19056BC50019F1D580F4576AB80854EE37058851AC94A8D24934EED3BD5CF015FE22E796106E5720E757AA134241E95E8A6580BCDB64F2C8585FDC46A4D4221500660D3DD270159769BA640A9B95C';
wwv_flow_imp.g_varchar2_table(81) := '46D9EA61A0D4135E95ECC058ED9398563F3D3EA562DCDAAEA35E839529F36023F8AB8E5843B8DC9218B6BAA06A1032C969414EAC01B6BB82B1AFF2170345751052AF5AF1EEFB7A3AB016B2DBA7B6944925F4F73DD2A5252BA4926BAB2519E02CB4D60134';
wwv_flow_imp.g_varchar2_table(82) := '065907E5380F90B9F45EFB34D1B7F21008D1D491DFA95520F5750C07D45ED8DD4F3B949E05B77A168E4856424A8A0352467F2D7019C363B9C2498AEAD632E6AFA200B5CC9CE8DD66B80D122DEC42EAF7D034A42F2DC454A106AD51AB3A8CB0048B7C0815';
wwv_flow_imp.g_varchar2_table(83) := 'AF6DCB02497111CC50654D5D75C0043BDEB3AAFA128CC6B48A8CAA54D34F78D4D7AF013C9DE00205F42D456085A2CCB1234B3518701C694C06423F516824DE5A892BDD5E5B15A75D75035C05CDBEF461506FE23286625847A4152320736CC3675C059E3D';
wwv_flow_imp.g_varchar2_table(84) := 'E894097B02811A89098CB1320F798778647ABA3008E2DE44BAA4BE81A3D40E81150E9AE62BABABA701E8EB4F10EDC035A78876E01AD3C43B700D69E21DB80ACAE9CA7EF0F74F4FB30083FB11FE11F5602979FED9FE6FAF01C577BED95B48E923484A1D2D';
wwv_flow_imp.g_varchar2_table(85) := 'A5350AE469F4E032B8F53ED56E964F2CCCA97E19E272940A8B40CF213EE282EAB53D246039FF00E75E9033BC2379B72F18667EF0D2A14E96AB7BB91F6E03397D7FE948D2C65FE491EDB709248A0B941588342017E63D2894A8F7B01A37AEBD20AAE4EF36';
wwv_flow_imp.g_varchar2_table(86) := 'E4200580604E601190153AAB41D672E38083EB7F4E24EB0CD7BE5D648E196DE6997971CA278DA541133535368424A8CC74E01FF3DF4851586F301535AB6A145D2093A8FDDA533AE035DBFD63E98DC26860B3DD60967B8731C310203B3AAB315D24035D28';
wwv_flow_imp.g_varchar2_table(87) := '4FC980F6B4B78BE8180696F17D0300D2DE2FA0601A5BC5F40C034B78BE8180696F17D0300D2DE2FA0601A5BC5F40C072AD4383C48964A7C2701F2577EB2BB89A354B98F533202A501F788047475E03BF72BCF5B43BEDCFF1E36FB9DB42C0B0DACD2F2A54';
wwv_flow_imp.g_varchar2_table(88) := '27396476018E63255A60393F9DFF00B11E38655DA2C626CC496F35D04666660114D03E92AA189E35CB01D3757FEB986EE4961B7B2B983CB5BE8B51284FD73A8DCD18F78D28A230723D2460221DD3FEC49228DC6D7B6972A5A6885D3EA46D6A156BA48EF2';
wwv_flow_imp.g_varchar2_table(89) := '6B3EC2299E02CB7DFF00649095DAB6F0CCDFA95B97A2A834EED16A6A3EBF65301EFED326E72EDF13EE90476F7E7573A185B9918A310BA58815AAD0E03B28300A0C028300A0C028300A0C028300A0C05650394FF84FD580883FB11FE11F5602979FED9FE6';
wwv_flow_imp.g_varchar2_table(90) := 'FAC603E5B7DF4C6FD797B3C9697291C3236A405D9699007200F5603ADF6B16BB4EDB6779359B5CDB47447BA40EBCC028CCBAF3F7491D1C70148ADF6D456323ED2008E885214147140A4E7EE80294C0592159905B73F6B628497856252BC417C8B655033C';
wwv_flow_imp.g_varchar2_table(91) := '042D8D946D2CB6EDB5A1926D50958431E63302BA886A96283A3E6C02788B18D0DD6D7DD556B72F129A2852069AB528BAA829D07015976EB1323CEA76922E4812B3C2A75945029EF67424E02FCAB48D11A19F6C86E9246613089028908EED28469609A871';
wwv_flow_imp.g_varchar2_table(92) := 'AD301D0772BB0C95DD2C454AD0508D55C9866FD7C301D8F0EFE191A3B98082AA24468DA8187BC568D5CFA8E02445BF01256E2DC960BCBFD3601486EF7DECEABF4E02C22DEB54559E0D208E7011B02C031AE9EF1A55701020DE95DE97313C655F97AE33A8';
wwv_flow_imp.g_varchar2_table(93) := '313DCA9522A00E380A18BD435CAE2D86605396FEEF49F7B8F5603B6D56E56DE3172CAF381FA8F182AA4FB0126980D701C895E62E55FD5932FF00C4E03CA6F4DFA4DA4576B680BAB065ACADEF0351957AF01E85D58ED5773B25C410CB701416048E605390';
wwv_flow_imp.g_varchar2_table(94) := '3977A8698094DAF6B8A3765B58523722491B200E907BC4D3A89C0521DA7659618A486D2DE4848D5148B46055B3AAB006A0E03A6D6CAD6D4B0B6B78E22D4D612809EAAD0603A2AFE11DBFD300ABF8476FF4C02AFE11DBFD300ABF8476FF004C02AFE11DBF';
wwv_flow_imp.g_varchar2_table(95) := 'D300ABF8476FF4C02AFE11DBFD300ABF8476FF004C02AFE11DBFD300ABF8476FF4C05252FCB7EE8F74F4FB3E4C04C1FD88FF0008FAB015BA00DBBD5828A7BC7302980C7CCDCF527C327D980CE5265A73628A4D3C3546E69DAB80A72A3AD7CBC152755794';
wwv_flow_imp.g_varchar2_table(96) := 'DC7AFDDC004510248B78013504889AA6BC7EEF4D7012A8894D1042B43A8522719D295F77AB01530C242836D010A28A394D90EA1DDC04B451347CB6B780A56BA794F4AFC38018E32BA4C1015AEAD3CA7A6AEBF778E023CBC04926DA02492493131CCF1FBB';
wwv_flow_imp.g_varchar2_table(97) := '80DC5C5C0140129F864FB3013E66E3FD1F0C9F6601E66E3FD1F0C9F6601E66E3FD1F0C9F6601E66E3FD1F0C9F6601E66E3FD1F0C9F6601E66E3FD1F0C9F660210574661999E4D54A8A12A72CF3C07E7F7B6DEA096589136A95943C6A5B96D900C0135380';
wwv_flow_imp.g_varchar2_table(98) := 'F737FF00486D5B86F535ECD617534F32C2B24D04C22522024A2F153F7981CFD9D380E58FD21651DC473C36DB9F264B692DA6B469C18D9671A5D983B12AE817A295CB0109E86DB579770D6FB9B3248C7CB2DD72D40D26AC523648D839639745682830171E';
wwv_flow_imp.g_varchar2_table(99) := '86DAC2A4C6DB7232CB2BCD3279C6A83CC2EA8E430AA6668A320B9603DFDA606DAA28F6DB6B4B86B412C844F349CCD2B233499124B6905A8ABD0301BBEEB7CAE146D73B0E960D1D3E96C05FF91BBE548E36F9B52692B1D63AB86E34EF53BBEDC0563DD6F1';
wwv_flow_imp.g_varchar2_table(100) := '9806DB6745257BC4C74A37134D55EEF48C06D05E5DC972627B278A305873CB21534268680EAEF5301D7806018060180ACBFDA7FC27EAC0441FD88FF08FAB0196E0696729EA5AE03E4EEA0F598BDB992CF7DB3F2D34FAE182E6DF51862341A159586AA52B';
wwv_flow_imp.g_varchar2_table(101) := '9F1278E027CBFABCC757DFAD79EACCE812D82C47B85551D6A58A6A2189AD7E6C052583D7251962F505829602921B3EF29A67A46A20D5BAFA301D3B57FCAA0BD5FE5373B3BDB1E4B6AE545C9979D51A7A482B4AE03D8F36BE35ED18079B5F1AF68C03CDAF';
wwv_flow_imp.g_varchar2_table(102) := '8D7B4601E6D7C6BDA300F36BE35ED18079B5F1AF68C03CDAF8D7B4601E6D7C6BDA300F36BE35ED18079B5F1AF68C03CDAF8D7B4601E6D7C6BDA301B5B386547AD473653507D8701E6CFEAB8A1D35B590862A3271906A75D3AF011BBFABADF68DC66B7BFB';
wwv_flow_imp.g_varchar2_table(103) := '4B84B38E38DD2F630D2AB170E4AE95155D223352701837AE6CCCA562B0BC746B1FE4619991911D295E5927DD7151507A33E180CA0FFB2362921B76E45F19A7A8E5456F34A01197BEA34956E28DC08CF01DBB4FACB6ADCB705DBE286F22B9632AD6682548';
wwv_flow_imp.g_varchar2_table(104) := 'F54214BAF308D27DFCBAF01F41A0759ED380681D67B4E01A0759ED380681D67B4E01A0759ED380681D67B4E01A0759ED380681D67B4E01A0759ED380681D67B4E0292A0E5BE67DD3D27AB01307F623FC23EAC052F0036CE0E608151F3E03E7376DFD6CEE';
wwv_flow_imp.g_varchar2_table(105) := '268C244BCB7D203475E806B51F2E02D26EBBB4965B55DD8EDB15D47748CF74154545002AAB564D1AB3EF9D54A5299E030877CF543BC91B7A50A904BC7219A15431FDD5FBC799ECA60347DD3D50D05BDCA7A7638C5277BAB4796369A881392B1B2D1753EA';
wwv_flow_imp.g_varchar2_table(106) := '6AF1A69F93006DEFD46819CFA5199443CD5449E12E643C22A500A8E935A60396E378F5BC52D9BA7A6619ADA48B9978A9227363915A50625A901B5288E8DC336F660361BEFA9BCC90DE93716F440089A02DA8C8A1FE658D8B7FE34E9C07D5797B7FDB4F84';
wwv_flow_imp.g_varchar2_table(107) := '601E5EDFF6D3E1180797B7FDA4F84601E5EDFF006D3E1180797B7FDB4F84601E5EDE95E5A53F08C03CBDBFEDA7C2300E45B7EDA7C2300F2F6FFB49F08C073C6AA1D540A2F364141F21C07CCCDFF5DF3A6491B7270A8EAFA446330A41A5757B301EC6E373';
wwv_flow_imp.g_varchar2_table(108) := '6E97FA0DDCF13178C4B0246648CA9CBA558006B9D30184D7291218C6E3768A8F2A17E56B24D41A0250FBBEEA9C075D9DB4D736E678372B868A60346B44056845680AA9072233C06AFB5DDB70DCAE168D51411F0EAF770169B6DBA941A6E13C67539AA08C';
wwv_flow_imp.g_varchar2_table(109) := '7758D42E6A7DDE00F1C05576ABA0A54EE3704690109D1504106B5D39F0E9C044BB4DD49C372B94C9077747141427DDFBDD38091B5DE6A466DCA7AA31E0100652C1A8C34D09A0A57007DAEED9AA3729D407D4A008F215AE93DDCC602E36EB8A256FE72511';
wwv_flow_imp.g_varchar2_table(110) := 'D49EE0D4CE726345FBBD180AA6D978AB203B8CEDAC0D2488EAA41AD4777A786780AFF1379A34FF00297008C83523AD3DB55FA70173B6DC73438BF9D52A19A3EE106800A54A934CBE9C054ED7765CB7F25702A49D20474A13503DDE8C0745BDB4B6F6B224';
wwv_flow_imp.g_varchar2_table(111) := 'B70F72C6A799269AF0A53BA00E8C06D07F623FC23EAC052F3FDB3FCDF58C0793B97A3B67DC6E64B8B8E7079482E1242AB5000E1F3602D75B5595BDA5958C7632DCC16E8C919493494000F79B52B1D580E716E279139BB35C28A2455338A2A9A02D40F9E9';
wwv_flow_imp.g_varchar2_table(112) := '007B70174B2460237DAA6A29693519F577B4D28097AF7820C06716DD0C929693679A2F78ABF3EA4506541AF2AF50C040B2490A8976ABA34D29A9A714A26424C9F8E03616910728BB54DA21779626328A332500A77C901F48C8E5D780C4D8C6F2348FB3DC';
wwv_flow_imp.g_varchar2_table(113) := '095DDAAC27CAB9B6AC9F813ECC06B3DB24E924F36D33B48D42F1898664AE6C00702A294C05AD6D539C53F8DB88229C3472CC66AE4EA09A8D64D3DA3860335B10239227DAA6017BE0473D55CFB80025958774EAC03CBA2C9AD766B8254E942651D02A32D6';
wwv_flow_imp.g_varchar2_table(114) := '401D15C049B68E28B969B45C48B2047914CAA730B4D1567FBA3AB2AE02C76F8634B948B6C9D9728AA66A19549D65812F5C88E9CF0190B5411385D9675E6C643A8980A2B1019410F9574D72C07B1B646B1DB155B77B61AD8F2DDB59CCFBD5AB71EAC04A44';
wwv_flow_imp.g_varchar2_table(115) := 'CE18ABE87495886A57D9C0E02FC9BAFF0023F20C039375FE47E4180726EBFC8FC8300E4DD7F91F90601C9BAFF23F20C039375FE47E4180726EBFC8FC8300E4DD7F91F90601C9BAFF0023F20C039375FE47E4180726EBFC8FC8300E4DD7F91F90601C9BAF';
wwv_flow_imp.g_varchar2_table(116) := 'F23F20C039375FE47E4180726EBFC8FC8300682E594837191143DC180D9142A851C14003E6C07FFFD9';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(955699176830995340)
,p_file_name=>'reports_usecases.jpg'
,p_mime_type=>'image/jpeg'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/reports_filter_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000118000000A008020000005802E4770000001974455874536F6674776172650041646F626520496D616765526561647971C9653C0000032469545874584D4C3A636F6D2E61646F62652E786D700000000000';
wwv_flow_imp.g_varchar2_table(2) := '3C3F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A786D70746B3D2241';
wwv_flow_imp.g_varchar2_table(3) := '646F626520584D5020436F726520352E332D633031312036362E3134353636312C20323031322F30322F30362D31343A35363A32372020202020202020223E203C7264663A52444620786D6C6E733A7264663D22687474703A2F2F7777772E77332E6F72';
wwv_flow_imp.g_varchar2_table(4) := '672F313939392F30322F32322D7264662D73796E7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F22';
wwv_flow_imp.g_varchar2_table(5) := '20786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F7572';
wwv_flow_imp.g_varchar2_table(6) := '6365526566232220786D703A43726561746F72546F6F6C3D2241646F62652050686F746F73686F702043533620284D6163696E746F7368292220786D704D4D3A496E7374616E636549443D22786D702E6969643A35434337383538334139323531314532';
wwv_flow_imp.g_varchar2_table(7) := '413139304335423441443645363134392220786D704D4D3A446F63756D656E7449443D22786D702E6469643A3543433738353834413932353131453241313930433542344144364536313439223E203C786D704D4D3A4465726976656446726F6D207374';
wwv_flow_imp.g_varchar2_table(8) := '5265663A696E7374616E636549443D22786D702E6969643A3543433738353831413932353131453241313930433542344144364536313439222073745265663A646F63756D656E7449443D22786D702E6469643A35434337383538324139323531314532';
wwv_flow_imp.g_varchar2_table(9) := '41313930433542344144364536313439222F3E203C2F7264663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F787061636B657420656E643D2272223F3EEAC81354000058694944415478DAECBD7770';
wwv_flow_imp.g_varchar2_table(10) := 'DCD795EFD9397723E70C1060CE41142989946459B6A5912D3987999177A7CAEB71CD4C4DCD96EB79FED9A9FDF7D5D4ECDBB1C7339EA7796BCB922D4BB24465310731800904089044CEA991BA81CE713FDD876C361B2008821409D27DA5027FFD0BF777EF';
wwv_flow_imp.g_varchar2_table(11) := '39E77BC2FDDD7B8F321A8D2AD2255DD2E5CE8A2A4D827449973B2F1AF9271C0E8F8E8EF257A54A432B5DD2E5D6251289E4E7E7EBF5FA1B2CD2D0D090C3E1D068346902A54BBA2CA4040281FEFEFE4464741539A150C86AB56666660683C1348DD2656916';
wwv_flow_imp.g_varchar2_table(12) := '75BCDCDF36801CC188D1681C1F1F4F75EDF0E8F0EBB8034469B55AA5529966DBC229BBF09B21322EC155D26B34774E67A9F0A1E71744462C5D2ED7F4F4F47DC412D4C697CBC8C880E6802599EC9AE4B652E02E3E9EDBED4E074B0B299012CA42DF054A83';
wwv_flow_imp.g_varchar2_table(13) := 'CD6683C2DCCF5F64C2EFF7DF099D612715EA743AD4DFC38D25A8E4F178C6C6C610627A7ABF869A21355C83DA4447B876730C3624406FB7DBA7A6A6CC66733A5E5AA0A38C7DCFCDCD15B390CCE0D93F7D3EDFF0F0706969A9682BAFD78B7B30DBAC253F38';
wwv_flow_imp.g_varchar2_table(14) := '7F9DE8669885434E850FF7670C3A3E333303B9CACACAEE6F4B262626464646C4EADC14483417C0151414141717A741B2C042C429DC1502A6D033C5225DBE7C1938592C16BC94C2C2C29C9C9CF91FBC659D9D9D9DB00C24A3261F6ED70EAD118E17CCF86C';
wwv_flow_imp.g_varchar2_table(15) := '8F5AC8F2799FC4D2E0D1D192E8B532379050ABDCF470B3E4AE5B24288BD79144D318FD6F661F705184CE1CF0A03C9E302F09077B81E6C5603048550B7FE4C105929448BC24A9157A1F17F748247AABF0959F2A955AACBA102CA194E6A4DEEC93D11B4B02';
wwv_flow_imp.g_varchar2_table(16) := '6C73C448290FFFE10F7F686969D9B56BD7534F3D9552E9F4E4D8A5D6CED29ABAD2FCEC5B12A2A3AD2DA7A43ACBAC7928790C6B856EFC6BCBB009697D5E4F240ACFC209160B79138C8C5C2B1C0B2470F670D270C489BB0018B60B740954E60CC33879EDBD';
wwv_flow_imp.g_varchar2_table(17) := '91871B48D2C1D940329A4D3ACDD5B1072CB346AB0D87824AA55AA3510503418552A551AB82E188CD6A09077C2EAFDF64B1AAAF812776BF468BD950C54B381482515A2D116C483062B15AB817273C11C726F87553D72E0567525E7FFDF5B6B6B6EDDBB77F';
wwv_flow_imp.g_varchar2_table(18) := 'F2C9279C7FFAE9A7139742DEC9A3C73F2B2CAB53C710191E1C1CCE2F2AD52A03DDDD03D905251966BD73D2EE096A8A0AB207FBBAD47ADBD8C8C8C0846B555D557E4ED6C30BA4A8D962BB72E144FDB99682B2E5BB9E78241CF4AA756665D8138E7B64293C';
wwv_flow_imp.g_varchar2_table(19) := '4800C96432E1F25DBA74091711270DFBE6743AABABABF3F2F28056767636BC0433808A708807F16DB847303627E31E4A6D355BD713C9379E39FAC1BE63069DB662D5D6EFBCF08580DF67B4DA14E190C7E73398AD6A45381851D84CCABDEFBF53B872CBAA';
wwv_flow_imp.g_varchar2_table(20) := 'CAA2439FBC73ECD445835EB3E9892F3FFBD8463F6EB6D51AF6F902E8329359A3567A3C5EBDD1A48A2AD41A75D38943C35ED5EEC71FF579BDC93099D3EAA45AA4E4D6373636FEE33FFE634646061CFDF8E38F9381A4D2E833CC065F48599497D5DED2507F';
wwv_flow_imp.g_varchar2_table(21) := 'B6B1B46EEDCEEDEBED831D97BB87766EAC3B7EEC48F98A2D53235DBDC3E3B5B5AB8C06FD847DE0C2F9A98D5B77E6651A1EA62038A12FD55AA3DBDE71EAD8B9B255AB077B3B0F1CF076B45C58B1E9D15D8F3F1AF6B951A3D1B90ACFE2790F0E0E36373757';
wwv_flow_imp.g_varchar2_table(22) := '5555D9EDF6C9C9C9F3E7CF0F0C0C10ACBADD6E4C131AF1D9679FE55D6FBCF1465757D773CF3DB762C50AB094AC9BFF448094B0BDD1F8F7838EE6B3F5E75B5656E4744FF9CAB375BFF9CFDF3CFB8D97A6EDAD474E0DFEFDDFFFF5746FC36FDF3DB66BD7D6';
wwv_flow_imp.g_varchar2_table(23) := 'DFBCF2EF8F7CE3EFD6FDF81B8D678E37B74FE5E8034E95C9EC1DFAFF7EFFC98BDF7A7EA4F7D2C1632DDFFDDFFE8F6599FEFFFEDFFFC78E3FFBCBCD2BB3FFF0BBB75A9BCE7B2CD5EB376ECB3669DCDE40B2619C4D70D53CAE5D4D4DCD7FFEE77F36353561';
wwv_flow_imp.g_varchar2_table(24) := '9AD6AE5D7BC3635AF3E34F7DD91C18D9B7EFD3D6EE91E56B3616E6640C0D8C641714588C1AA7D391955FB56679556777E7B6A7BEB4ACA6DCE5F16EDAB6A32CC732E5703D7C3C968F39D018FFC11F5455D654CD8CF7FEAFD73E5A53BBACE3E285114F44A3';
wwv_flow_imp.g_varchar2_table(25) := '8C49807862C9104A7C56E2AFD56ACDCACAEAEDED25705ABF7E3D8E07EE008EC7A953A74A4B4BCDF102C07EF9CB5FA2DA920D5AF44FA3484FAFF73A4E37A3C962D6697C4A5D9125FAFB5FFFCF21A7E7F0BE8F2E778F8D8FDB0FBEFFEAAF7FFF87D109FB99';
wwv_flow_imp.g_varchar2_table(26) := 'B38D1B1F7972FB96D5DC6F315B75AA88D29AA7730FFFEEF7AF4D7BFDEFBEF56ACBA8E21B2F7CF9E4DBFFF27FFD8F5F3FF3CD3F9FE9AAFF7FFEF5574173E137BEF6D59D5BD616641BDD1E7F8A2B2E3F6F0AA49400EB2FFFF22FE1EE071F7C505959D9D3D3';
wwv_flow_imp.g_varchar2_table(27) := '838EBCEEB3FA5D979B1B034A6D564E6E5555F1B4D361B6658D0F0FB45CEEF47BBD93CE699D36E6B9D654549ED8FB517B678F566FE6A170248AF3FA50BA76B12F743E97B968F9EAF565273F3B965DBEEA6BCF3F3E303AB06CDDFA6C7DD41708CD16FA0463';
wwv_flow_imp.g_varchar2_table(28) := '70D5C00636A7AEAE0ECC6088C04C4545058A0C4FEF85175EC8C9C99989971FFFF8C7EFBDF75E717131CE5E0299B383E087B224933AD6F7B81C4F4D4E6EFEC2F3FFF74F7FEC9F9ECAAA5AA15484B63CFAE8E6D5B55EF758D49CB97AFD3A7F28FCF4B3CF64';
wwv_flow_imp.g_varchar2_table(29) := 'A87C278E9D89C5452EF7B3DFFBABFFF32F9F77BBDCF9952BF0B81FDFBD4BE5EC796FEFBE82354FBEB0FB91831FBE1BB414AE58B166F3C6C7766F5BD574AEA17B645AAF535FD595B39878DD37911FE00477BCB0B0108D88535E5E5E9E222E478F1EADAFAF';
wwv_flow_imp.g_varchar2_table(30) := 'FFC94F7E82431F475270A0BFCFE5572DAFABC2B9E9EB6AD75A730AB26D63A3631195DA60D09A8C66BD5E171B1DEEE9D09AB2326D56AD561D0A0694C4D21AF54383222C46474707A1CB551F2FAACCCAB08E8FD9F596CCDC0CC3E884D3603006BDEE707C7C';
wwv_flow_imp.g_varchar2_table(31) := '0852E3B97133341C1E1EE62FC7D4006FF47A3D35802883C1201CC29DF3F97C5CE51E39E0248F7003BE9F84BF3A9D6E686888BF369B6D811F851FD042408889C65697949424BE847272C6E90846953956B3D313341A34CD8D8D756BD7473CE35DFD139BB7';
wwv_flow_imp.g_varchar2_table(32) := '3D1A9EB1D73734AFDFB22D34333638EAAAABAD743A27151A8355ABF446D4EA68B0B573B0AA54F3EB57DE5EB6E9C967BEB82B5717F874DFC1AA35DB0A32B4E353AEFC6CF3E52B5D7985653999FA6028865B9CC9A9A9299CEAA2A22297CB055FF0B15381C4';
wwv_flow_imp.g_varchar2_table(33) := '6574617F7FFF9C40A2C03F8BC502DBD2A3DE2940428E933EEF28556A9578D3F181E948426D716E7C7C1CFFCD68348E8C8C0009015222DC9AFD9928F10576CE102801240CDA430F24A7D349B888354E00892E9B2C568D22E2F605CDA6D8FC125B46A66372';
wwv_flow_imp.g_varchar2_table(34) := '42A1D665655826C6C7951A7D4E966D7C6C4CA33719B48AC929A7C59AA108057C618541A78E44151936DBE4D8B0DB172D292E76CD8C1307E5E5E57A66A6022105DADE1B88F0B8D33115084664903DF1251D930390507C092069525C3B196C9DB333002C8D';
wwv_flow_imp.g_varchar2_table(35) := '9CD90C4E90EE1A06A291B8C7C54F589B0C8CC407BE84879D3C209EE260CFC6D5CD4EFEE98CDA254795424FAFFB6AC83D3313FB1CE7F1C8F05A60D8133F1F0C0D79DDB1DFC1694FFC09D7CCB4DCEF8A83D1ED7229551AAB55671F1B065790757464586EF0';
wwv_flow_imp.g_varchar2_table(36) := 'C7FF8E8D8D5F5382D1F9071BE6F88E8469C266A5E7AD2EA4C057429785ACE31257CDED7613F0242691C840C5A2DF4E9D284502AA87FE3B52B2E0DEDD9E4623218FE7AA53105D309E6F31FC8DD1C4ECC06CDC95FB3E5FFD41295AAD1669BEA5DE9110081F';
wwv_flow_imp.g_varchar2_table(37) := '0CE987CE387878DB80F04E26ADE216E255E2283EF493511241230ED57DD41AB876C2B25B582499950C961E7A0D7717BF238985598828C8F42BB1F6308388F4CEDF4E85C0F2A1771FE8A6C9642246B2DBED68AE39E7312679D79FD749097C886CA1F97C40';
wwv_flow_imp.g_varchar2_table(38) := '125F450688D220596049994E7F4BD14F7CC3C5F2DF1524DFC76505F7D8B5CB8C97FBD8D98436148CCCE1DA09C2D24B27EEFD4045BADC56447ADF55861843590396BC9CFC2A7200FAE8E8687A9D79BAA4CB021D018FC7535A5A7AFD4C02E24EA753A61BA7';
wwv_flow_imp.g_varchar2_table(39) := 'C9942EE9B290C10F594E960AA4744997745974B91E14E1D7A57C407C08D48656AB4DD8588911EF4A07C54B4E4B4FBAA45A24AFD78BCF87703C64064AB619934F3D2E97EBAE741014A174A8CA62B1A405285D6EB0488140C0603098CDE68769CA964CD0A2';
wwv_flow_imp.g_varchar2_table(40) := '6B0089BF883EA0BAF30ECAD79BBB32789D2E0F1B90889CAEAE4E8B3B42C99FEA913F147062971C5997FB00EDFF24ED9436D31140257E6C622E9CECAA715B75CE3323315DFED4632451B4DDDDDD050505B2744CCAC4C444F2E84442921EC47D0941D1C0C0';
wwv_flow_imp.g_varchar2_table(41) := '002D97E9ED89EF66296395B24FCD3CBD4B8FD0A4CB4D81845F77E0C0814F3FFDB4B8B878E3C68D959595E3E3E31C0F0F0F4F4D4DA1C2ABAAAA5A5A5AFAFBFB39FFF2CB2F2F4291DFFBC186E49FF87557AE5CF9E77FFEE7975E7AE9C89123748D1EE1A19D';
wwv_flow_imp.g_varchar2_table(42) := '3C7972E7CE9DFC448F8C8D8D01B68A8A8AF9E753A781942EF359A4C9C9498FC7430CBD77EF5ED9CB06CD6D341A4F9F3EEDF3F9F8B97EFDFAC1C1C19999197439D05AE2F2341B0CF46EE5CA9574931EAD5DBBF6C2850B58602074F8F061BA8F2A01482E97';
wwv_flow_imp.g_varchar2_table(43) := 'EB1FFEE11F6466571A48E972DB409205989B366DFAE10F7F886001A4FAFA7A83C1804542C29036FE72DBD6AD5B6515A0CC1D7C808084FDC465A58F18587A813AC0C75BBD7A7551511136B6B1B171F7EEDD369BEDE2C58B1201A62D52BADC46282E328154';
wwv_flow_imp.g_varchar2_table(44) := 'C95C3BF023D31F7084868686D0CA4D4D4D4F3EF92461039112FA5B36F524D496ADD89672DF703EF1DC30A48047B6E3C9CCCC6C6F6FCFCACAA22F76BB9D2E637EE9452010900E3A1C0E19DC9B7F61824CED95CDB1D2255D6E001292919595C1997028A0D6';
wwv_flow_imp.g_varchar2_table(45) := '68A3E1B052AD552822D737488984142A8D9C8946E2E378D72A11357DED40716D89D4EC9FD1A49B536E50CEAA61F6FDD79B3D5725C9EF8A8F9D4414D3332EA3C12040022A36AB45A3950FA94477EA1BDF75FD6438E457CEFDA2F8BAD788C2EB0B00A53490';
wwv_flow_imp.g_varchar2_table(46) := 'D225D5B58B4F02D04C4CB9261D6E955AA54C16D9F8B61DA9F043A4AE8BDACD5DA0B9247D81085FC082C584A385F1512995AAC40BE3D3842305B9364DECFCD5F76B356A8F2F601F9C54AA6E188F8BDEA485F12D6D95D49C7C672010B49AF59916FD43BD45';
wwv_flow_imp.g_varchar2_table(47) := '42BADC418CA45246C71C1E7FD468D2E8AEEF8B7CDD24C4CF5CDF2F397EE1C6ED9313A316379C4FB9596EBB5AF9D5E559D1E4FAA582EBF75F7B3CC5EC5D6F211EA9DAE50B783D3E654C03C4B690CBC8B07A3C5EADC39D97A5BFDE558D6A78DC3D1DD066D8';
wwv_flow_imp.g_varchar2_table(48) := 'E2DF9D93A3A0446715D73B08DC2251E5D48C3B1A7F2B37EBB41A93C932E69832E97955FA3B52BACC05A47038A221F23199CD46ADD5A2F0FA153ABD221A518846F6F9152A15B2A8F0F91491B0C26651F8820ABFFFAA7047A2B14B8871201055A9AF09A52A';
wwv_flow_imp.g_varchar2_table(49) := 'E6068A9D88887C5EF3D70C0685D71BD5E9957ABD024FC9E78DBD287A55DC1526A3C2EDC1BF8A3D2B7B81C4F7A58F1DE397E9743CAB90E88C26519FC71B30A8FC45C536B14BFE40C0EB0B86639B81792311DA73CD33E519A5D26236E6E618780B50E252C0';
wwv_flow_imp.g_varchar2_table(50) := 'AF0806636D53C637B8A0F1B19AA30A935911082AA6C61DC5595AB3C51CFF74AB72389D0A8D5261D08742E1876F83BE74B93B4092A128F9FFF8B1736515D57DBD5D6AB50611F3793D5999569DC1168984D55A7D6E6ECEA913A7B3B2AC3575EB54AAA846AB';
wwv_flow_imp.g_varchar2_table(51) := 'D6A914131333C8624EAE756626C0530683CAED0A982D3ABF3FB682DD68D420A0EA98E04623D14877D7486E7E816BC273FAE431AB2D73DBF66D08AAD9A2F1F922D34EEF6747CEAEDDB0C96231520FE2AE56630D004FD06CD13A1DEE81BE9EEA65B59C341A';
wwv_flow_imp.g_varchar2_table(52) := 'B41E6F44AB51CDB83D65B9D690D76131667A7D6EAB56A9511BED43D3D68C1B46DE624BB270F0741AD78CFF4CFD09A54A5B5058905F506CB51AF406F5B4236032E942E1188C7DFE48735347765EA141ADCACDD04C4D8DE617160F0FF617E5E6B70F7B0C1A';
wwv_flow_imp.g_varchar2_table(53) := 'A5223D68972E3705525C3AAC36AD7DD0BEE7EDDF3FFBDC572727C6FDC1505F4F7B6666D6F35FF972CB958E33A73EFBE97FFB6947CF30075FFAD2172F37370DF4776566E51616C5F6FE1C1AE8CDCDCB3318CC3E5F6C0E2C66C460344E8E8F71909D9B37ED';
wwv_flow_imp.g_varchar2_table(54) := '74188C266274AD56DBD976E52B5FFDD6E596C6A292B282C29CC68606B7CB855D0805FD2E977BB0BF1753A352A926C727366C7EC4ED767575B49657568C0E0F3A1D54333533E3C08410AE4C8CDBAB6BEA2A96D5A954DA5038FAFFFEFCDFB2B2B2BEF5CDAF';
wwv_flow_imp.g_varchar2_table(55) := '630055AAB9C7AF4D66DDA9A387F57AC39A5535478F9EBAD272B1ACBCD43E3AA6D5E96B97AF3C577FA2A0B0D868325C6C6CD8FDCCF3D69C6CECECF90B17EBEBFFE737BFF1524171B94AE527FA9A6BFC235DFEA48BEA86D83AE679451ACF9F2EABACBCD4D2';
wwv_flow_imp.g_varchar2_table(56) := 'E8743A76EFD8B876FD668FDB1D89EF7BA8D5E93C6EAF2A9E3743ABD138A626B41AFDC8D000B80A05031DAD97FD3EC4DBCF99EECE368BC5DADC783EE64D596D179BCE5F6C3C77A5A5893768B57ABC2CA351170E05433CE60F0DF4F7BBDDEEFAE3478D466B';
wwv_flow_imp.g_varchar2_table(57) := '3010A8ACAEBBD2D2A2546A3A3B5BCF9FAD3F76787FCC2B8B464E1D3F4E93F20A8ACE9E3C190C86EA4F1CD5EBF43E8FC7E3F6C5F7EF535E9FD4A354DC4CD625260BF17C3002DCEDA3430E87ABED4ACBE4B8FDE8C1BD43837D17CE9F9E9C746465E5C4D27B';
wwv_flow_imp.g_varchar2_table(58) := '5CB7D357EB532A146914A5CB1C72256A3BB6C75A3838361D56E8AC13A3033575B517CE9D0309DB37D635B50F611072B2B332B2F3E3C152A8A4A4A8E16C7D7696CD62CB89072A6A8C466666F6D0505F6DDDAAAECE36D7CC7445D5326470DAE9345B2DC4E5';
wwv_flow_imp.g_varchar2_table(59) := '88EDB87D044465E7E4238BBD3D9D55CB6A01E3C963874A4A2B6C19197DBDDD8585C5B68CCCE969278ED6E484834BD5B52BF2F3F3BC5EFFCAD5EB262727BB3BAE60C17014B55A1D76C96C36032A20E40F2AAA8A2C21CF14F57BBD3EAD56E50D1B3B87A60B';
wwv_flow_imp.g_varchar2_table(60) := 'AC8A2C2B2FC12E1A016A241C18730494864CAD5A71A6FEB8D1642B292D19B38F06FCFEFC82C2E1A1016C110D2E282CB48F8EB85C336B373EA208F94BB2549353530545C5DC909D9DDF31E2D5A9155986985DCD480F7FA7CB6C20454201BB336CB0E56667';
wwv_flow_imp.g_varchar2_table(61) := 'A989FECDE6D807A32947D466561AB50A6F28361EA0D2C4C60088CE33CD0A6F3816F12BE34A5EAD5204030AA341E1F6C60603346A453014BBAAD5A1FBE3C3D31A05C1391E572010FB69322866DCB19089037F3CD6D76A62AF23F4D768155A95C2391DEDE9';
wwv_flow_imp.g_varchar2_table(62) := 'EAA8A8AAC9CD5085150A8F3F768F89DA12E376F1D10B7F2036DEE074067C6E67568655AD8E0D746013BD81B037A432285C39365D3290EC538188D69A9F67D269632D8C8F89C72AA4A9D4138E8FAC1026C58655940A9757E198709874CAF8EA928852A5C4';
wwv_flow_imp.g_varchar2_table(63) := 'B1541A6C7ECF4C9621A8D3E9D3404A97B986BF55CA7024EC9876FB03B1B93F93CEABE73D9EB8D846AF7DD889FF3BE514145E3F7DC388767CAB959461F1EB19399377F14D1AD3964B327AA6D56A2A6B6BBDDE5067BF17B14EDEC52C79B73139D668D48188';
wwv_flow_imp.g_varchar2_table(64) := 'BE67784619BB9593918C0C8BDFEFD5EB52275EE022CEC4FC405544D215299347BE95896648E5B17EA8F5C34E2FEA2436561E6F95498343E8CB3169D3BE5DBACC61919C4E2762138AA826A73DEA3B5A69135DE407D83B0CF554F29155796D281F3316CDCB';
wwv_flow_imp.g_varchar2_table(65) := 'B604FC3E83C16832995C2E17E1984AA31B9F72DF6AF5C7F52EC84E8E095501AD88AD2C269DC5A4E5202B2B2B2D40E972834542622626262D6653B659191F959A67764F8ACC29664D118ADC1C4BB367FA446F344E37AB739E4946D1A49FD74E6A63F6C435';
wwv_flow_imp.g_varchar2_table(66) := '3DED0F04CC668B206DCA396D321A324D291D54CC350123B9B67072DB947A65241A1C1F9FB158CC69E949975420592CF842FE58AE9EA8EA469152CE3A50CC75F59677DEEC92F236EB54CEFBBA1B6A8B44A31919197A7D6C720346C966B5C6B288CBD8E42D';
wwv_flow_imp.g_varchar2_table(67) := 'DA305FDBE2B993F5369B2D2D3DE992EADAA54BBAA4CB1D05176912A44BBAA481942EE9B2946224B7DB3D3E3E2E3BECA44BBAA4CB2D4B3018B45AAD893496572DD2E8E828584A67A348977459608946A32323238945E25791832DCA8A9725BE7A3C5DD265';
wwv_flow_imp.g_varchar2_table(68) := '899470383C343494EADA29E29BADCAEED8691AA54BBADCB2C4BE1525599D399231A769B4C40BFC931D9D121A30C13883C1F0C025C3A43B384489D45D92A155BC247A217D912D7E25E9B5E48437994C12DBDFAF2D6F531263A683A207AFE8F5FA9696964B';
wwv_flow_imp.g_varchar2_table(69) := '972EAD5CB992E3C2C242A44AAD56235E4D4D4D050505B8E80FCA1EEE923104087DFAE9A73B76ECC8C9C9F1FBFDA803CE0F0C0C7089EE48CA027AC75FFA25DBE2363636D2F79A9A9A25E243A52DD2035650811A8DA6B7B7F7F8F1E34895DD6EDFB973677B';
wwv_flow_imp.g_varchar2_table(70) := '7B7B7CB6A1F2DCB973DFFCE637113E4F7CAEF1035180475757D72F7EF18BCACA4A3A42E0816AE8E9E9A11753535356AB55F6F4BD72E50A3D25BEC70A959494ECDBB7EF91471E59B162C5FD4A33395F32E6CF1548A27B64C28E1498FD206E20BE14C25C24';
wwv_flow_imp.g_varchar2_table(71) := 'A9B4B4D4E572555757A3B95B5B5B11C1BFFFFBBFC734892D7A5014A2386C67CF9EDDBA752B5001366D6D6D12C7CB0E6A8213CC0E92C36D5CF2F97C5CCACFCFC770DDC79ECE9D8CF91EBC956EBB5CEE8B172FA9B598E9A84E67ADABAD50853DE148DA06DE';
wwv_flow_imp.g_varchar2_table(72) := '7641CE5043CB962DE3EFE0E0607676367E116237313101961EA01123800430B0B14F3CF1C4D8D8D8E4E42458E2A4C562C110151717777474A02F366CD840588822C6467112FD8B11037B4BA7A757E7DAF5F7F74B4ECCCFA96510C5E7F3B777749414E90B';
wwv_flow_imp.g_varchar2_table(73) := '331C617F777FC79569EDB3ABD63E110CA4130DDDB67707601259B52528471691420E9033A3D1785FF4F4FCFB3CDFEC11E98EA800453C4508FDE2AFECF8ABBC56382301928C95D16B54734646C6FC6F5C44931658A03F04AFAAAA1297EA4E5D3B7A65B3D9';
wwv_flow_imp.g_varchar2_table(74) := 'A42E548B240E92BF52958CB4C0DA2987DBA4F3CC38A62E9CA80F87DD6B0BAFA82325BEE02ED51DF453F61CA67EAFD79B7C92D7D14F34F44319F2D135494B9352CACACA14F1413C18B1108739BE738651F25FC976E7B219B56C4CCB7999E9021961223F11';
wwv_flow_imp.g_varchar2_table(75) := '65CE23CAB3C312E88C25A106613DECE00CCE1837634F040912EAA48C82C8105C59BC2C820E82B49BDD4093A49B4210C121BDA05F33333373DEAC88EF3ACC6DB283375DA02FF4882ECB200714E3CC6C0AA8FFE99FFE49115F6ACE9BA0E0ED7E90A55E3CD7';
wwv_flow_imp.g_varchar2_table(76) := 'FDFBF7D3A5BCBC3CC9E725260E6D215CE1C5FCBC74A5ABB64C611F69F8E2B75EB9DC36FACD17024AED7A4BFE166534B0682B47573FFDF4D33D7BF6646666666565896EA693CDCDCD42AF049E1FA60249CF9C39F3FAEBAF8399A2A222E483D0BCAFAF8FB0';
wwv_flow_imp.g_varchar2_table(77) := '4132C4491AB585F00EBE7CF0C10758039E8562B84FB0EFF0E1C304FA788FAFBEFA2AEE56454505A4E6E0F2E5CB005862DDE45788E42006FBF6EDE3E7C8C888647FA4061E0121F2086D9B1D12C320849507DF7AEB2D34327C146C80D8C0ADCAFCD9EE844A';
wwv_flow_imp.g_varchar2_table(78) := 'AFBDF61A2D814A0821F5F3C8E8E8E8A54B970A0B0B13C68A36D0F703070E1C3D7A54F411BDE3A9F1F1716A8014BC0B61A6F190BAA1A181060BA1C02752976A9116572010CD3A7EFC38212F07C09AF7C946FBBC126D04BA782B97C6A6A2CB0A0BB7EE30F6';
wwv_flow_imp.g_varchar2_table(79) := '1E7A22DFD6A7B6EC3F70E6B1C2358B7FB5285478860AE12DEFBFFF3E1DA6AB10A2A5A585E31FFDE847094FE0612AD0BCB1B171E5CA95C8C43BEFBC032309D0E1372C00182FBDF412DCF55FDDBCF316F520EB9F7DF6D9B7BFFD6D384825EBD6AD43AAEAEB';
wwv_flow_imp.g_varchar2_table(80) := 'EBD7AF5FDFDADA0A25A1E71B6FBC817C73154184D4BCFAC5175FE4126294B02A3C85D8F1080407968F3EFA28F7D31EDA86CB80100F0F0F83F69D3B7712ED248F28C21D01B0E0E7A38F3EE20CF11E5DB893E138A4A2B7B797AE7DFDEB5FB7DBED1F7EF821';
wwv_flow_imp.g_varchar2_table(81) := '1695B6D15FDE457CB569D3A6846D9475D0172F5E44190160840AB9E5980E1292414954038AC6E97472A6BBBBFB073FF8013F939DA03B75EDE466004AA4F8E4934FCAD03ED640204E4F20222F5EB56A55696969657586C19675FAE0D9D2BCECEE09CF44D3';
wwv_flow_imp.g_varchar2_table(82) := 'EEB2352FE8D5A14030BA6820D100026E30C37B89B9651E21DDE6ED7011334B871F4AEF0E0529613786A2B3B393EE0324780FD7C58D5960AF51DB8004918274D480302D5FBE1C907012DDC4CFDADA5A87C371E5CA1548CA31DC1479E267F22B78BCA4A424';
wwv_flow_imp.g_varchar2_table(83) := '3B3B1B5E80705840AB906660C323000C53C6255A8804270FB571C0DB6122D50254FE026FFEF276EE5F347D4412A08F6043BC3B4E022A0CEC8A152B78A9C88F0892001EF4D2858E8E0EF411F7D306E416C04001B403371311D5D4D48897783747EDE4C333';
wwv_flow_imp.g_varchar2_table(84) := 'AF8764F0152B24F122AF413F891F4FCBB00F30C9100DDB72767A23FFCD1151444CEAECB2CCF20245C0E75CF41E0FF1010C1F7A0EFD815F211FEFE81B27ABABAB690958C2823F7C2882E650F5E38F3F4656509F488038751C70068C2D50978B02CAC9C941';
wwv_flow_imp.g_varchar2_table(85) := '74C4710045881A728C3781F4405BC8C825A26A448ABF301A98F1F6148B87EAC4E640795A82D542F1C30B6EE3381135F02CB7A5C043C20F4C04F28381A506B8098CEF04458A6B933F200E7E8A2425A2256000B1E48D74900364438CAA8C1C9AE205670ADD';
wwv_flow_imp.g_varchar2_table(86) := '04F6D6AE5D2B5FE75019D067EBD6ADBA78A166E8505959998040EAA81D07B73B6A27B5C8120CC02359EE201FB40BC4364B30D30EFAC0790C3774844012864954BA10F7E3969F20603C5549EE23D131F12D4A62A1212D79F852260BCD25208EED46181F6E';
wwv_flow_imp.g_varchar2_table(87) := '91D102C993CD4FE0B14087361137CBC04C22C286AAFC0542BC821BB01532E4209F7D6162CAC02027015E62D447FC281E94F89EAA8087265E24174E34696F298E819022FE5D11A54C47A85C62843B1925A6369A24A61B252B6A17E220AE32459BC6C82B04';
wwv_flow_imp.g_varchar2_table(88) := 'CC721E8C71271D84C2F221811E89E7C94F998D054CB893636E069C3700090BB8082029AEE5F9A3DEE46E27EF95952CF4B4F5AE0B169D9C3310E28D747E8161F78355E6A479B25E936CED0BA90789476A172EB232FE369BB0376B520A47902E9A37BB6D3C';
wwv_flow_imp.g_varchar2_table(89) := '2B627DB3FA174122A4426624A678B9B3A924311E37CFE912279A911899005A32D4819649051216899E60D7EED7848B74499707EE2304811351D30D3112E8C4BC02B5703A8156BAA4CB020A8EA27C59BA0148182CBCC6C437A974499774B9E5C0A08C074A';
wwv_flow_imp.g_varchar2_table(90) := '1CAE490467050505C9334AD3255DD265FE3238389888A95489402AF17D2D5DD2255D6E5952A63B5D9F2284399279E963636367CF9EADACAC3C72E4486F6F2FC6ABBDBDBDBFBFBFB5B5D564320D0F0FE7E4E45CB870A1B1B151BE6324463626272715F1EF';
wwv_flow_imp.g_varchar2_table(91) := 'E532812AB1A471CE76C83732EA4FECC3B2B8629FF47E58DF3734EEAE2ECA8826EDB6EF0B848F350DEBB56AAB49178E446FCCBFAC90338150A4DFEE9A9CF60F4F78D02C6E5FC8A0D3C4532D29DAFA1D569356AD56C99D916B3BEBFB83618D5A1508869393';
wwv_flow_imp.g_varchar2_table(92) := '34C742CF70441E94CF74899B5DDE2075064311A7CB6FD46B12B74522D1694F30FE4DFDFA20E7C2C7A90868F7EEDD2BB319EC767B5E5E1E274F9E3C29933C8E1E3D9A919171FAF4E9F2F2F213274E747474C08839E9ECF7FB3FFDF4538D4643E8DCD4D4C4';
wwv_flow_imp.g_varchar2_table(93) := 'B31CF7F5F59D3B778E30FAF0E1C3369B8DF3999999BCE8D4A9531E8F879AE7DC6D8A57EFDBB78FDBE45307F508EB7985CC37959F972F5FC6FD11B1492E6D6D6D8AF8C77D8870E5CA15F97471E7AB6C68CFA143872014028CD022BA740AAF4C2876CB4297';
wwv_flow_imp.g_varchar2_table(94) := 'E94B2010F8E8A38F4A4B4B5B5A5AC0020732F58C2E439F1B5CBBE4D2DDDDFDC1071F00A4AEAE2EBCC08B172F4A04B569D3A69FFFFCE73B77EEACADAD3D76EC189D948918252525656565100B68C9D6C7D01D34721E8AAC5CB9125A34343450C9AA55AB20';
wwv_flow_imp.g_varchar2_table(95) := '2850845E708EE3919191BFF99BBF59349910C7C34D43ABCAB38C7A35A2FF59F3C8FA9A6CB73734EEF485A3D19E9199C22CD3F0B8E77CC7785EA6E189F5C551EEBF30A4D3AA0D3AF5D48CFF2BDBCBFBEDEE4BBD9388FEBAEAEC813177301CA92BCD18737A';
wwv_flow_imp.g_varchar2_table(96) := '07C7DC7DF6D864DCC171D7E6DAFCC6EE89AA7C4B7686E178F3485D0937F80AB34DC3531E8B5EF3C4FAA2FDE706FD8170A655E7F58733CDBA8919BFD9A0A929B6514928121D9EF414679B68C0955E47DB90734D453667F43A555E86D1EEF0F6D95DDB96E7';
wwv_flow_imp.g_varchar2_table(97) := 'D3FE4FCEF43FB5A1644DF582D40AF4847A8004FAE7E7E757545420DC48BF4EA78329880E12F3E1871F565757C302141CC013F67343723D684CA4CAE17000A7F1F171388B94C3943D7BF66CD9B2E5C08103DC7FF0E0415E8154503FCE0C3523E5F2E53DB9';
wwv_flow_imp.g_varchar2_table(98) := 'C86D884D7373335094D9D9E84A70FEC4134F20303C8590D0E66F7DEB5BB3514DCD5CA25AC4A6395E4032A2BF7CF9F2C71E7BEC4EE0441B7EFBDBDF22B7BCFD97BFFCE58E1D3B7A7A7A8A8B8BD108B77C16919649123CFB9BDFFCE691471EC1E45CBA7469';
wwv_flow_imp.g_varchar2_table(99) := 'EDDAB52977AA66BF15D84102CC11B4A01B5FFCE217212E07BC1B080AFED028109A9FD00ECA42E2FDFBF7030F5E4C0D1C2C5BB6ECBFFEEBBFEAEAEA6807A64C56445333D502A4CECE4E991649AFEE44DFE09F06435184AFBCC07AA06170736D2EE09998F6';
wwv_flow_imp.g_varchar2_table(100) := '15E798C0C90B3B2A39EE1C9E5E5F9373AE75CCE90E8C39BCDDC3D3188ADE5197D3ED37E935DAD86C7D6579BEB9A96B323FCBB86159EEBB9FF5E467984AF32C9F9EEECFB6EA950AE52767FA362FCBB559747BCF0EA0677FBDB7EDC98D25230E4F53C7C4B4';
wwv_flow_imp.g_varchar2_table(101) := '3BE0F1854C06CD8665396F1FED464BD9CCBACA426B6BBF13548F4C79B1455916DD88C3DBDC33D536E8DCBA3C8FDA0A328DE57996A6EE89F6017095D53FE6EA199D59519ED5313CBDF0B157400200BEFCE52FF313C587CCAD5FBF1E6B805958BD7A35820B';
wwv_flow_imp.g_varchar2_table(102) := '8FD0BE39F1421F51AE086B4A3D284A44DFEBF522193C0E1361252CE3E7C71F7F8CEA3C73E60C588271E0A1A8A808E1C340F1AED94D42C268924C2E019F605BE481C75F79E5159AFADE7BEF99CDE6DDBB77A7CCBCA62FF2FD1713CA7B315940085BFAF6DB';
wwv_flow_imp.g_varchar2_table(103) := '6F036CC4E94E56FB0200BAFFE8A38FC6B85C5E8E8EA09188F7023FF3801CF95C8B3C631B72737311F8393F87A6BA760837B079F1C5173147C0E0F1C71FC778C9541194046CA3DBE88C5862B2488447B8072BC4831C6FDCB8916EEFDAB50BC6E04EC018AE';
wwv_flow_imp.g_varchar2_table(104) := '729E675187B40028D23110B579F36658225A4DE61D2F8E4C385DF629CFEB073A0627DC4539A6F3EDE3F87215F9D6485431ED091862AE99D2E50F1D6D1A2EC836395D81CB7D8E925C736D49C6F0A45BAFD360AFBA476670B5AC661D26A52CCFB2EFEC4069';
wwv_flow_imp.g_varchar2_table(105) := 'BEA52CCF6CD66BA91D8B0112C61CBECE4127560B7791D7E56799FAC7DD548ED7979769341B749F9EE91F1CF394E499D755E7E025E2523EB3B914B303C0745A151E63E790333FD3086ECF5CB117E4C4501A0885279C7E0C63AE2DE64E3ADD415E5D53625D';
wwv_flow_imp.g_varchar2_table(106) := '5EB6A0E465B01695B475EB560EA0398282F0C111280FA9E10828FAEE77BF8B1941A09F7BEEB9A9A9A96DDBB6210729AA1DE662BEF073600A5E10C8C183900FB53217DBE974FEF0873FC4CBC0A6BDFCF2CBC806BE89CC6D4D69126A1BF4A22539C0F5C0BE';
wwv_flow_imp.g_varchar2_table(107) := 'D13644826A699B4833CD03CC3C9E3C3ECCEB802B460C8C217508C98A152BE80252B166CD1AE4474CD9E224E4F8F1E33863CF3EFB2C320C44BFF4A52F61F7E882384AB77C1CBAC952DC4F3EF9E4F9E79FC73FA483748456A5B876573FC8D25B99A635A7A7';
wwv_flow_imp.g_varchar2_table(108) := '2E73E778BD3806720F94A596D9CEAE14995271B3D0287129314763D12AE742FB7863D704029D9F6144B56310B46A65301CD5C4F2A6450948663C81AEE19955955981405801668C3A9033E30D821063CC22A9005B2CB59946054EB030483CE8C11021E544';
wwv_flow_imp.g_varchar2_table(109) := '389C2428EA1B7355155871D870EAB80180E56618B8CA835CED1F77E5580D855946822ECC1D0E1E57793B9115EF2206D3EBD499663DE0C14E7229108E4D65D2C47B8DEF4753B19C6D03D35FDA5ABAA13677E11E0B0C86CEDA7859340101898CD6DE8C650B';
wwv_flow_imp.g_varchar2_table(110) := '2F3271492AA179480B9C75B95C323147961E204BB3078765D62CDD91DBEEEEA8801809595984B82EAE9BF22CB4A247426DDA8C52C0A8C8D7A45420A54763D2255D16386A970CA4F426FAE9922E77A1A8E6F4190E1E3C88CF3AFB120EDE2D279EA6BF47DD';
wwv_flow_imp.g_varchar2_table(111) := '1B7588C7C201AE3FDEC41DFA6338D8D4D6DADA7ABFFA221B06E104223C0FE824B5D4C1063CC8FDFBF7D31FF105654CB3B9B9796262E2ECD9B31F7CF00191E2D8D8D8C99327B16832999C180E5E1296C18953A74EC91209823C3C636C5F4343436565E5C3';
wwv_flow_imp.g_varchar2_table(112) := 'B79CE1FE1642DE37DE78A3A6A6A6A5A5A5BEBEBEB6B656BE01DEF6B06734FACA2BAF1033C0A0D75F7F3D2F5EEE715F901644ABB1B191BE2054080CB83A76EC18E224BBC682317E2287F414392C2A2A5A0A2C48196C4805526FBC7CE31BDFC8C9C9F9E8A3';
wwv_flow_imp.g_varchar2_table(113) := '8F88FC8E1C39228BE3BBBBBBABAAAA304AFE7879EFBDF756AF5E0D47011BCFB6B5B59D3F7F1ECC106B0145BA0D5D00D2C8C80841E743B9C0EE3E16F862B7DB21F2860D1B3A3A3A20EFE25271C256580F7FD7AC5923ABDFAAABABEFB553A4526157912E34';
wwv_flow_imp.g_varchar2_table(114) := '2F0DC8CECE06369CA1499D9D9DC895C3E120D0DFB3678FAC174232B973A90129755491E00995F0EEBBEFC22A494E819290D17459B9CEC34005C3C5F1E9D3A7E1C1CE9D3B011276891ECA1228BA2D6B71D7AE5D2B4BA3D2A27F971D09B51A162261972E5D';
wwv_flow_imp.g_varchar2_table(115) := '020077B2D04B56E9353535B5B7B7E36EDCAF1ED186E2E262A468D9B265F42823230331C33CE20D7120AB151F7BEC31D4C7D214A73946EDE00A8ED9A38F3ECA195CB555AB56C9C02508014E9C3C74E810E7FFFCCFFF1C50D143FA8F2B8869E236D9083233';
wwv_flow_imp.g_varchar2_table(116) := '33F3C2850B982FB40B8E6F6248345DEE6211E28B3BB472E5CA45D70383E00E8E06EA7FFBF6EDF7651D24D840C0F05C70E4D0DD434343B24D247285BEC0100172FA28BB1725F609BBEF61EA9D0E7F4B6EBFF45879BAFC898FF72403499370F8163E1E909B';
wwv_flow_imp.g_varchar2_table(117) := '9B9BA663BAA4BDEB397611D2683498D1740ED9744997855B24B034477E24D9CF21BDD43C5DD2652105B024CFA7D3245064369B095E1FB8D49789CEDCD67A9E744933E2CE8124DBA1DDB065B12CA2C21C71593EED01AD94B52B8922D3251308545CDBA595';
wwv_flow_imp.g_varchar2_table(118) := '93B2C55C0A41E7A4ACEC072D23338BA67BFCA59A782FA2A1D82E6A11A9497C57BD4EAD882AFC81B052153BA38C2FBB50AB941A6DEC7EBF2FA8502AF55A35177CFEABBB48CB3D1C727FBC722DFF7035B61A2F7A752B4B59B717EF54724BEEA9C8A67C7E95';
wwv_flow_imp.g_varchar2_table(119) := '5DE9921927344F66E26C3ACB2E76C913AB2589B0D493CCE5449E3C457CE2F9ECEDBEE66CD2352A5DFFAB882FDD9BDD98C4E33C255BBACB0E72B3F775BB5D42C9B4013A95327FFC967B2A265289CE1660A1400A11AE7F90E54DF285DB6EB7373535959595';
wwv_flow_imp.g_varchar2_table(120) := '1D3D7AB4B3B393A6B4B5B5F5F4F4B4B7B7DB6C36C9C6D3DCDC7CEEDC39F9D6A488AF8AE5F1F1F171D9DF4C4231C189CC90502715D9BD92225B42DF3233C73C45A7D38E4D793F3AD53B38E6AA2ECED02240918856A3D668D51AB56A62DAEFF1876C16BD2C';
wwv_flow_imp.g_varchar2_table(121) := '8FA5151A8D3A1289B60F387CFE7076A6899F339EC0D8948F7B74DA58ABD41AFEAA95576FD6750F39C3E1A8CD6A0246F8C39AD8AA58A556A7894F61D67152A351C53AA45482CF50F81E254DA39DF0E8C0810379797943F1C201843D7BF62C7C2C2C2C3C79';
wwv_flow_imp.g_varchar2_table(122) := 'F2A4D1686C6C6C2C2D2DE5F8F2E5CB346CF65A3A490FB17FFF7E457C7A81AC8445D0FBFAFAE06F7575F5F1E3C791A42B57AEC053F8CE4F0000BF04A8294D72BBDD54D5DBDB0B06E433092F959DEE04CC222448148288EF7343A4AED1205DB1D55CF17DEE';
wwv_flow_imp.g_varchar2_table(123) := 'B9473661146959F44E913C8E8C5DB870213F3F1F19BE78F12207870E1DA2011CCC5FADBCBAA1A181B681BA7DFBF6C98A43DA065565FA8EAC179E7B137D1EEBEFEFFFF0C30F8B8B8B79B7CBE54AAC90ADABABFBB77FFBB78D1B37D6D6D6D21A680A900E1E';
wwv_flow_imp.g_varchar2_table(124) := '3C08E7641517D0827CB2E5EAD8D8189C80372B57AEA44D7486F7AD5AB58AE3D1D151C99800C9060606FEEEEFFE4E74DEED924915DB82397AF8C27051B629CB663CD9321A5FE36098F106B32DFA51A7AFA9736265794679816D68DCF5F4E6D2132DC3ED43';
wwv_flow_imp.g_varchar2_table(125) := '33CB0A2DE3D3FE5C9B6170DC33E90A8C4C7A00C05F3DB7E272CFD4B4271089AD7D50F48FB99697663A3DA1C6CEF19A226B6E96ABADDFB1B936A777D4E50F86D756659F6F9F28CD354DB8FC269DC6A0558F3ABCBB36146798B598C4CF1B459229E8FCF9F3';
wwv_flow_imp.g_varchar2_table(126) := '939393B2D806FAAF58B182939F7DF6996415807DDFF9CE773EFEF863580E9C9C4E27ECA8A9A949243696AA90D43367CE4C4C4C801F6E1E191981C5D48376FBDDEF7EB761C386F7DF7FFFF9E79F97053CBC08FE025A44B0A0A020B17176A2494802AFAEAA';
wwv_flow_imp.g_varchar2_table(127) := 'AA0278C04960C325AADDB163072007C970F9F0E1C3929C33790F7BEE4453D7D7D7CB67D90BF14263788ABF3C9EFCBADB02126F812C08F0CCCC0CA0FA8FFFF80F688560D30B7A3D4F2023ADA2EF400039474DBCFEFAEB92B800C5B46EDDBA94A581375824';
wwv_flow_imp.g_varchar2_table(128) := 'D9FC165547E7398016E5E5E5B2486BDBB66DB4E0CD37DF5CBD7AF5B265CB401767C4474479B4B4B4503BF8696D6D9533B9B9B9AFBCF28AE45403C4F2ADBAABAB0B4CD3255885C5EBE8E8D8B2650B205CDCAE94AAB81138D73EF1B5C7AB7333F49F9CE9F7';
wwv_flow_imp.g_varchar2_table(129) := '05C293AED8060C20CA17087903E1E21CD3A55E87D313000F7D767759AEF9C085910C8B76C61BB299B45916EDD1A6912F6E2E29CAB51E691C3C7861C41B08F58EBA37D5E69EEF98F0F88315F996778EF7AC28CD70B8039D83D345D9C6A21CD39E937D9956';
wwv_flow_imp.g_varchar2_table(130) := 'DD9B477BBEB8A944A3527D58DF1F8A440BB20C0539967B305423898620F89A356BA0E733CF3C03A2F809A71177041D3D086DA139E0919DD92555113F11475893D0C4701C8D8B7020617007408201E4464C0A3AAEA8A8A8BBBB1B7E253223217CE3F18260';
wwv_flow_imp.g_varchar2_table(131) := '24EA912681EAA79E7A0AE8D22AF029E91E1044840AB5CB2B8E1C39B276ED5AC983C46D422B51A9A876DEFBC1071FD01D90CF7B6936EA60F9F2E5348686CDB6810B1C5813CD4EDFA91349DBB367CFF7BEF73DD9B09F328F51923419891C39B4845E3CFDF4';
wwv_flow_imp.g_varchar2_table(132) := 'D35092C72B2B2BA5D9098B940A24A880A979EEB9E7402D77D3316E051E5C423DECDEBD9BE7250982388EBC40A61B51D061D4F3E4934FCADEF6282708277B4943779490A47BE12F54E6AF3878B242761164E201835E373EE5D973BCB77F7426C3A25F5399';
wwv_flow_imp.g_varchar2_table(133) := 'E570F9D5F18D299CEE109E585EA6011B6231689795669EBC6CEF197115E6988C3A4DAE4D0F967AECAEB23CB3DB172ACCB68C4EBA673CC1E565195505D6B36DE32683664D65B64E8383AA865040144771722666B242E1E884D3976D33786291556CDF088B';
wwv_flow_imp.g_varchar2_table(134) := '49BB6D653E3746EE491A4FC9DE85BE5BBF7EBD6C09CF015282C4381C0ED90E1F0A7CFDEB5F4755E190BCF4D24B3866F0226542AA6C4282D3028BB98D7BEAE205D915AE711E952A5358B8FAA31FFD884B3CC2EB663709B57BECD83160CC01CE8800129402';
wwv_flow_imp.g_varchar2_table(135) := '48584F558887248745354B0A0C09CE91221E44F050CD68582EA1B2B99FC7717F8090AC285D848408C26912AA9F66A0FD114E994E8D1A9ADFB59367B13F108DB70BC8A90A638B85944C76C940BABE65B124260003DC24590364E717E8027BA811D1A75249';
wwv_flow_imp.g_varchar2_table(136) := '17A5884FE0C7580303EE4CF8B2E210A3BDE02E78938853DE244BD36109AF87B25CA2669940241B0F2DC222F15043FBF889167B699E096F0DCB30135FD36A31681CEE60A699704985B8FB8261AEB60F4E13C9D495D882E108089972F9815065BE65C4E935';
wwv_flow_imp.g_varchar2_table(137) := 'EBE2DA273E98A0D5A87A465DB8885AB52A188A980D1AEAC409A44E6C5A61B6B130CBD83FE62EC832129E594D5ADAEDF285BEF178653C00BB47B998682E1C81C2481E04974DDB4589CAF88D0418C178911C0A092E24D70347808AA484C3CE0027A947A259';
wwv_flow_imp.g_varchar2_table(138) := '611F8F23097059021E61E86CDB2BC1556282B26CC38093C201D5D25A1A09F7A94764261984080C6D964D9144706976223ABAC3C43CD205543C6FC12E8164543F5EE8FC79CA12CF4A3364331F48A4884F4890E51E9CC442DCB0D43C0124A11437C9288738';
wwv_flow_imp.g_varchar2_table(139) := '9132D2C29D8219B92AC338E276CB2B85013C22032F09872D31F6222375329A94C80D2AD35B174D26149A56A78E4622188A9884C5145C7C9848AD5244A2B2DA9CF7A316743A354D098762BC89C4567A4324256203BA82F15DB2303DB1A64414541809F35F';
wwv_flow_imp.g_varchar2_table(140) := 'F42AB6144AB546C52B627B67C5F2F944633FC3FC8C99206EE0C01FB8A7DFDF44C18970D33D190413BF209177349989C2B539AB82B9922C482A94392E89A136D9FA83BF024BF99C7F337D213B192432DB4A1B64829C0C9D490B5346CC648B08D1DD025A19';
wwv_flow_imp.g_varchar2_table(141) := '104B00E90ED593F45D86BE645DBD8C4E2F90CE4207C93848F312D4A686F980247D1690248F5126864AE955023CB3E12B06917B1602F77B5C5471E1882E5EB101AAD806774BA43B32C55374DCA213E488108BEB01E364CEE83D669C84F5095D2CE3CB3269';
wwv_flow_imp.g_varchar2_table(142) := '60094A51F2A78264206966B307AE9C3E7D1A3737253F2E449F98989011BC4440A698B57509E65B76574B1977BFEF14B9430CC4BE2C2996048AE4F388ECC388CB2E1B332DEE4BBAE8576AC0159F9A9A92FC59F732C7A144F3E28B8A90C88678090F76F623';
wwv_flow_imp.g_varchar2_table(143) := 'F2D16CA9012C75B0C1EBF51E3C7810C0D02B6256A2403CC2E6E666C2A473E7CEBDFFFEFBEBD6AD9B9C9CACAFAF978979E8B0CECE4E5C5B6E20B43D75EA94B0F9CC9933F8C7F8A34478A5A5A52933FCD2E50E6D11A1FF1FFEF007D4616363634343435555';
wwv_flow_imp.g_varchar2_table(144) := '15CCBA5D174846A55E79E5154991F4E69B6F12F44A76E77B277F71C1387FFE7C4BBCC80A5994C2891327AE5CB922C3D620E7E4C9934450E8F7A5B34236E53B522A90DADBDB5172DFFBDEF7C0CF279F7C422769BD8CC0747777D3078EE91B0A8CAB757575';
wwv_flow_imp.g_varchar2_table(145) := '0491FBF7EFA7C3ADADAD208D3892AA819FAC9925FAC46994ED33D3B3F8EE6241F461537171317A0D81C322E126DC2E85256445D971B069D3266414CB505353732F3925731A50C1A86314848C751D3D7A9433F8448850575717C2291F8E411466332F2F2F';
wwv_flow_imp.g_varchar2_table(146) := '31E8B77480A44AE915D683BF1F7FFC319D110F0DE46CDEBC19CC80078044AFC01B3DE112C8418BC00370021BAC562BEC948D2C64FB079EE2593A9F16FDBB589021A40DEB816B80CE92BD4817E1EA888F20B319B06C20F37EF94B322E823A40F3CA981806';
wwv_flow_imp.g_varchar2_table(147) := '96881D2B845C213FFC440E77EEDC89ED45892F41A6A40E36C8D6CFB0874643E2CF3EFB6CF5EAD5369B4DB6AD91F57C870E1DC2F27EFFFBDFC70FE4294229C023AB1AA90D1E733F061A8D8281125BC753F76C68F84FA1E00288E602003065E3C68D8BFBF6';
wwv_flow_imp.g_varchar2_table(148) := '4F3D88A90C52E38CC8AE01F79853F2294CBE50C93272220590434B0451920E79E5CA95DC20E32BB795AEF3DE0C36CC316A9708F512499412C391721EB501DEB0420B317FF2D49DCC4C4D979B794489B9988B1E6D4B4C351636CD3324FB79F76581DE94A4';
wwv_flow_imp.g_varchar2_table(149) := '38590AA981E71EB54B7C3490CF05C93637E5983B7958716D3DC642ACB6C49469E9BFBB45D8247FE5ABC39DD49360F47DE1D4C2E7882D1D71924F4CD7476E120338A822D983E29655A4B7804C977491CFDCA90BFB121FB3D3A6235DD2E5B68CD20DCB28B0';
wwv_flow_imp.g_varchar2_table(150) := 'AD595959773D1140BAA4CB435CA6A6A65273C8CE390D315DD2255DE689D6E65E219BC821CB716767675E5EDEE9D3A7BBBABA3233333BE3A5BFBFBFA8A8687474D46AB5F2F3FCF9F3B2CD4372EC943CB8B7903233337387A9D4DBFA1C071A066D265D8639';
wwv_flow_imp.g_varchar2_table(151) := 'B60C331C894F2A55CD31A433ED09C4169627C7B8A1C884D3E70D84A75CFE6824960756A755CF7862816F7C31AC6264D2E3F587CC06ADD4ECF387B59A25B189395C387BF66C7171B1DD6E1F1919C9C9C951C4478D39A988A79184416EB71BF6A135333232';
wwv_flow_imp.g_varchar2_table(152) := '6E96A88BA8F8C48913E289B4B6B6CA6E8C2E970BD623060E87E3F2E5CB7EBF9F9A7B7B7B25A3DCCD9A1489440E1D3A34343424435637DBA780F6108DCFAE8736233C77280CB30B8D8714B9B9B93D3D3D74B0B4B4F4B3CF3EE3FC027765ECE8E89049AE47';
wwv_flow_imp.g_varchar2_table(153) := '8F1EADAEAE966DEE656AC5AD73C8F6F5F5BDF7DE7BD9D9D92D2D2D1E8F4756C842C49A9A9A7FFDD77F5DB9722515EDDDBB173E994CA663C78E151616F20E5875EEDC39F9E264341A61F0AA55ABE0EB8A152BA0E9850B1778F1EAD5ABA1E0D8D818F7D008';
wwv_flow_imp.g_varchar2_table(154) := '0807A77FF2939FDC09A54E5EB217641B9BBB273B87A6CD06CDD1A6E1B5D539657966872BE00B84804A301CF5076299BF322C3AB737D836E07C766B9963C63F3EEDDB589BDBDAEFE0C15038BABE267B62DA6735EADA07A747A7DC7FF668E5AACAACF3ED63';
wwv_flow_imp.g_varchar2_table(155) := '36A3AEA973025C8D39BD8150F4B13585FDF658CB7B46679EDE58020E9D9EC098D357579AB9A23CF39E01092987C7921C169FBCB6B65611CF4E070BBEF7BDEF1D3C7850D64DC275E40031BAD9DEEBE3E3E33002EE70D0DCDCFCB39FFD4C114F22FCE69B6F';
wwv_flow_imp.g_varchar2_table(156) := 'FEE0073F3873E60C28DDB2658B24A245189E7CF2C99B35E9C08103C4DF050505880D8201AE1003DE0E421E7DF451A48866500960FBCE77BE335B8E9172A7D3C979500DD82413715555956445999898D8B973E722365444B97FFCF1C7348C1AE8E9AF7EF5';
wwv_flow_imp.g_varchar2_table(157) := '2BB40FD493EDB56FF93872BE69D326EE4441BCF6DA6B15151510042C08C1934BAA4542DCE92A3C00182827E8B26CD93254D4238F3CB27EFDFA575E7965E3C68D74EFD2A54B8F3DF618E779900E83D4B6B636C4ABBDBD1D727306EE72F3F2E5CB25293A14';
wwv_flow_imp.g_varchar2_table(158) := 'A4723804CF868787316EB09647A84D06D3175D06C666BEB2BDA27DD0F9FAC176EC0950C9B1195A7A26DBFA9D630E9FD5A4EBB3BBB2AD7A5F30D4353CEDF206351A5543C7F8E084BBCF3EB36D45BE7DCAD73FE6CECBD48F4D79A73DA1F60167C7A0F39BBB';
wwv_flow_imp.g_varchar2_table(159) := 'AAB901EC4DBB839333FE69776064CA8B2F9C135BD4E4BCDCE768ED77D696661CBA30343EE3BFD43BD5DAE77C765B9951AFB9674092F16EF42BDCC1AAC00E99BA85046FD8B0015585D8711E2E405E6080182104B3EB81E9D807F8C55561100C4509220648';
wwv_flow_imp.g_varchar2_table(160) := '3FE8424572099EAE59B306485033BA72CE0DA851A92FBEF8A2A4D0ACAFAF87B3D42C99883102D4B96FDFBEB56BD726D29F26FB48DC895E468A38E036EE4158E9D1EF7FFF7BB1ABFC95E5A1B74B281169A49F67B101BFFDED6FFFFAAFFF1AA05AE2E5968F';
wwv_flow_imp.g_varchar2_table(161) := 'CBA22C0C09DAE4FDF7DF7FE18517784A1608DF221B050A00A23FF3CC33E8959292120EF0F1907E68877981B8C160B0B2B21262C98641D017DBC501EFDBBC7933F4FAC217BE0039800AFA03F8C95233B007D7D137BC88FB4139664DF2A243D33B192A6CEA';
wwv_flow_imp.g_varchar2_table(162) := '9A3CD23494174F6FCCCFAA429B2CF833E8D43BD71416669970E7969765F2174854E45B2A0AAC989748386233E9D754E7F4DB5D5AB5B230DB34E30DAEADCA9E74F98B73CDA353DE6C9BA12CDF6A7778622BE76DB1A49A2683A620D3807D4388D7D5E49417';
wwv_flow_imp.g_varchar2_table(163) := 'C4B3A04615D40C20575664DD4BD76ECF9E3D283BD00253110B9C05840F8DFED4534FE5E7E7E375C34D5934496BD1BEF805732AE0A6A6A63FFEF18FDBB76F8717F0148EC35C60037E50BA6840D9921B1F8F0A810448007537E3D7E1C387D1920043D67452';
wwv_flow_imp.g_varchar2_table(164) := 'A84776C3A6D006993743CD5492EC13E238F12EC946C1EB642A10060DFC2033324F9A9FB3EDC0420AA24833704D210B022C134191DB85C420187CC960FBD65B6FEDDEBD1B74D04EA45AD620CF9743369151146CC89A567100E8BF78089C977D55B027604C';
wwv_flow_imp.g_varchar2_table(165) := 'F09068932C674217F208DE45F23C0E59BFE98E17982D3B3CD11408B4E854BB944F4EF79FBD62DFB9B6906E800A8C46CCA007425E7F1878E0DA4515D1D84A24F9E81C5B4CA1C003C48BE386BCCCD8CDF17546B16DBA22D1E8D0B8A720CBD835345D926706';
wwv_flow_imp.g_varchar2_table(166) := '393C0EEA9CAE80CB172CCD35134D452251622DA9D96CD48E39BCFE6098206A736D6E45A1F59E0109BAA1B36007C4042AB2863CB1AA05B143A0D15CE208CC335D1A3E8AAF0217B03609AB25DCE12A7203B37805EA1524CCDF2A4C07F5C8EB10415E8D50E1';
wwv_flow_imp.g_varchar2_table(167) := '14D1124942437B908DD9736250019CA73B345B1213271656D32A9A0792B9BAB8D90CD297E978A1258061817E9DE2DA5C0A24071CA2626487053AA278F872C846E26B60BDF1ADE7741A7530BE8F0FA8003CC02936F8A18C8147195F9A1E914545B159CFB1';
wwv_flow_imp.g_varchar2_table(168) := '9D18C0923ABE7E36BE559D42EC582014D169628BCC033114C5B6B3E341AD46150886636B615554AE023CB2031EE7A980E049AB562D91718874B967A376736CA2FFE016557C802E119FE892A4F996418BD930C70D5203A84801862E69C40FBC255F32E935';
wwv_flow_imp.g_varchar2_table(169) := '69C1FA132F732B515C6749519A52641AD1FC352E914D8F43E188DB7B8B195CB14D0566EDFB1308451283E34B9F7F0448B87977659818E7ED3E76041F12057FB331FAA5CF88D4C106829C23478EC84E748459F2B182B8162FB6A5A5E5DD77DF25DC847392';
wwv_flow_imp.g_varchar2_table(170) := '474D6615E164E31053030E2EF74B64D5D8D84840096F20D0E7BAA471DA1D38D736966D3334754EF07778C23332E1E91D99F9C3E1AEE56599A150A4A163826807F38213383AE5199DF44ECD0426A77DA7AFD8097E6C265D73F7A441A7C15BBBD43D65326A';
wwv_flow_imp.g_varchar2_table(171) := '9B3AC603C108E1D6C098BB38D7BC34E7AC137810FE12D21040436AC2D145E790FDF5AF7F4DC0E0F3F9DE7EFB6DC2E0C43E02F7B29C3B77EEE2C58B2805848A6844A7D3D1414491D0081192D556870F1FE6B6356BD6D054D9F5E5FEB2E016DF91FAFBFB89';
wwv_flow_imp.g_varchar2_table(172) := 'A864ADD1FEFDFB69F1EF7EF73B1A4D7C06BA08B32E5DBA44AFE8E7B163C7BEFBDDEFBA5CAE7DFBF65557578F8F8FF7F4F42C5FBE1C047EF8E1870488E08A3E4308F8C4F9CFC9EC1C6F1ED1EBD4EF9DE8B118B43DA3335818A3563D30EE2ECA310D8D7B1C';
wwv_flow_imp.g_varchar2_table(173) := '2EFFB8D377A471E87FFFCA0A7F20F2BB83EDA00B9BD3D6EF28C933675AF4EF9FEACDB11AA65CFE518737188C5CEA7794E69A3FACEF5D53950DA5EC53DE826CE3120492EC1B8CA83DF6D8636FBCF186ECF0B8B8617444C16EB7EFDCB913771F21BEF73964';
wwv_flow_imp.g_varchar2_table(174) := '29E8E8BFF88BBFE0E0CA952B7BF7EE45292078EBD7AFEFEAEA025A5555554008058D423F7AF428D2B87AF5EAA5EEDAC992249A7BF2E4493AC3CF8181812D5BB6D4D5D5C9403E100218A5A5A50086EE5DB87061E5CA95858585C08F1B0A0A0A642355141B';
wwv_flow_imp.g_varchar2_table(175) := 'D0AAACACE4594CD6E737D240B8B2A12697286559B12D128D3EBEB668F7C692A26CD3636B0A511A99165D4DB12DCBAAC752F5D967B6AF2AD85C9787752A2BB0ACA9CCE12AC6A7AEC466D0AA979764BEF878552018CECF346EAECD0B84C286D8F6DF4B740D';
wwv_flow_imp.g_varchar2_table(176) := '152C80D4D0FCCC9933B009CDBDE8AAE01DA28904C3D9FBB55A0E30A3B5E90B8892A9157843A01A0B89996A6B6B43D84C26D38E1D3B102DC4697199A73FD732C7A81D6D05488F3FFE38603874E890ECD009BA2627276585ECF1E3C771FFBEFDED6FD36151';
wwv_flow_imp.g_varchar2_table(177) := '18F8759832E91EB60836E372243E6E68349AD93BB8DFADF2CEB1AE33ADE3EB6AB22FF7386A4A6DC5D9A6F8AEA83EB3516B336AFBC65CC79A8677AC2EF4FA4360A2BAD8E60F84B1572683361C8900C2BC0CE3F9B6B1D23C4B59BEC5ED0B8E3BFD339E00AE';
wwv_flow_imp.g_varchar2_table(178) := '20F19546ABFED1732BF5BA253A1D1E3302A91B1A1A60CAE6CD9B17FD2D4EC69771CEF13576EFDE7D5FB2FDBADDEE03070E2048481A82243BEFCAB71A040FA883F053A74EA194EBEBEBD1E938784B6DD46E31C3DFDCAC886FDFBC14E4A96FD48583170A47';
wwv_flow_imp.g_varchar2_table(179) := '917E40121B07572A0D7A35A606A8002AAD5A0518040FFC8C71C810DBBB3012DFEA11579007B9D917880DA073F38C27986DD37B7CA1D87EF9D5396A757A61EF122ADDDDDDE06D29B4E4A6396417FEB56B8940484A7981252D5E7F3A6589A048316B3BC7EB';
wwv_flow_imp.g_varchar2_table(180) := '2B6443A1D0BD5FAF9F2EE9F28016D99E361548E0C7EBF5CA2EE9691AA54BBADCB2C89E25092C5DCF216B341A09931697AA285DD2E54F104873E490954FAB920840AFD7F333317B35B9C81CBEE4ECA2897DB6121B3B2DD03F945DF913B94316D71949F31A';
wwv_flow_imp.g_varchar2_table(181) := '0EC5E62768B56A9F2F742D876C3C29653C5B843A362336EAF3DD850D9C625BCE6BD589597CF3DFACD7C6A6ED7D1E1B354BE230D9721EC5C771720ED9D9E5669B7589429515782210B2D395E48698F3BD3763D6EC74B4736EC0268D9C5D4FA2F13C25697E';
wwv_flow_imp.g_varchar2_table(182) := '169D1620A5484E17994B2DD22F8DBCE5FE70C9C411B14F3C2B6D4B2169EA0759BA2199126B6B6BCF9C39E3F178366DDAD4D7D7373535452D5BB76E1D1A1ACACDCDEDEAEA6A6F6F5FBD7A75F2C083CBE5E29E857F62A7ADB283FBA2B7D857AB557DC333A5';
wwv_flow_imp.g_varchar2_table(183) := 'F966AD463336E5CACBB25C4D984CE5E1A0D71F468CA71D2E643F3FDB123B150C6B63A4894A5EE66BED88E7795709296213C4FDFE605C894412B5C50FC271A10CB9BDA1AC0C73D255F92B752AAFFD8CCCB8FDD6D8A25DB522125A08F0165E2439524747C7';
wwv_flow_imp.g_varchar2_table(184) := '860D1B4C26537F7F7F7E7E3E8C1B1818686B6B2B2B2B436EE0176C72381C66B379D9B26592226436AFB9132ED7D4D4C8AAE7F2F272D9D3B4B9B999032A1F1E1EA6724407CF7FF9F2E5168B654EE75FD66B1C397284036AC3BB495E28915C2445524AB63C';
wwv_flow_imp.g_varchar2_table(185) := '697C228B9E4C154F5C5D34A8249F0535575454F4F4F420D508F0C993274B4A4A90DBF99D2F495074E2C489AAAAAA8C8C8CB367CF3EFEF8E3B2626ADDBA75C9F99DE60612C005369F7EFAE90F7EF083A6A6261E686969018ED4959797F7EFFFFEEF959595';
wwv_flow_imp.g_varchar2_table(186) := 'CF3DF71C37C85A115E00C3781992C771227BDFF8F8F89A356B601280E4128C415857AC58016F2626266822DC826430EFC73FFEF1A2778CD06A35173A277B465D977A1D9916ED232BF22767FCBE40D81F8AF803C1DE51CF17B794BE73BC1B38FDD55756B8';
wwv_flow_imp.g_varchar2_table(187) := '3C814CABEE68537F8E4D5F986DEC1A9A31E8D457069C8FAD29B09AB4DDC313B2985CA5526E5F95BFEF4C6F6E860153976DD5B70FC62CF8CAF24C835ED33938CD53FE5EA7C5A809C514957268DC130C45F2330DE505967EBB5BAF53770DCFD41459695859';
wwv_flow_imp.g_varchar2_table(188) := '9E991A36D5E566590D77714B0CD966F5C2850BD4B976EDDAF7DE7B4F56197FF6D9678D8D8D2FBDF4120792FD329186ACA8A868761207C966373232022B1132A4E4673FFB190270E9D2A537DF7CF33BDFF90E0CE545C80D4A134CA2559F7AEA297837BB2F';
wwv_flow_imp.g_varchar2_table(189) := '3CB57FFF7E5C1DA078EEDC395024C95AC027AFD8B2658B2CBA412A0E1C38F0E28B2FD2A4043C2403052F05AB34899623363418F93975EA145A4052FD2DC2B6D30070BB67CF9E679E790670A25C780B0A8266D04244711EA6D092C1C1C1C9C949E8836DE0';
wwv_flow_imp.g_varchar2_table(190) := '718889A873C083B42A654EE90D9BE8F30E7A75F0E041208452A17B929E803E3FF2C82390E3E73FFFF9E6CD9BABABAB2F5EBCF8E8A38FD24AD9A9B82D5E80787777376F024E54F5EAABAF4A6A83C47CC4DEDEDE86860680CA6D3C854EADABAB03698B9EE7';
wwv_flow_imp.g_varchar2_table(191) := '4A9B5BFBA61A3A26B72CCF69E97520F16D03CEE1498FD5A8691B985E5E96A1512BBC8148A6597BB16B1297AC28D772B46964D4E16DE898681F9A3ED234529E679E720700D599B6F19E11D7FEF3834FAC2BD2E9D4275AEC23939EF3ED13071B86B72DCF1B';
wwv_flow_imp.g_varchar2_table(192) := '73F8BA875D26BDE6F495315F30ECF387BA4667CEB58E9F6D1B37EAD53A8DCAE909BC7BA26F623A70BC7914D8B87DA1FC0C43301C39D2340A68CB0A6C771148F008D6821078845CCA422F682B1326D7AF5F0F2A64FDB2E4B49415B288F8EC9C20925D9C7A';
wwv_flow_imp.g_varchar2_table(193) := 'D0D0FC85353267128EECD8B1435628F120484309C26BCEC05978976C4F64B92E2DF9D6B7BE050C408E5839C4E6F0E1C3741C68E1C280344E228B34BEB8B8383987AC24ED7BE79D77B018C83AADE2FCA14387641220752E2EA7238DA4A9D40018300020F3';
wwv_flow_imp.g_varchar2_table(194) := '95575EF9DBBFFD5B10251935E7610AAF9325B4E2D4EDDEBDFBADB7DEFADAD7BE0649317140E016396465A1FFAE5DBBB021A88D175E7801237BFAF469B0515F5F0F93B051B4096D4723A88833DC0615601B4E208079FAE9A7793170A242EA11571E0AC20F';
wwv_flow_imp.g_varchar2_table(195) := 'D80CC45106E8517ECA0C31C096B269E5ED00493D3CEE8EAFA440FFA92C269DD5A845EE2B0BACFE6038DB6630EAD4385C4F6F2A6EEC9AAA2AB49617663866BC13D37E9B516B35E9CA0BCCDF7F6645D7A043A356D5966478FCA13595D94F6D2EF17883F999';
wwv_flow_imp.g_varchar2_table(196) := 'C6A26CE3E8946F5545264626188EAD7AC2F465597498AF1DAB0B2C06CD98D35753625B5F9DB3B23CCB66D671736196B1A2C0B27579AECDA455AA946683D6119B17ABAD29C9B85B4012FD8DC5001EA045666DAF5AB54AE66421FD40024E89E5171ECB1E03';
wwv_flow_imp.g_varchar2_table(197) := '8299E4AA10A6F3E7CFBFF1C61BD4030B4011EC802FF8F654028F5097323D14FC4800CC8BB867F62C0A788DBC1E3F7E1CE19125EEB2E5A8CC6392197DD449AB649D36D62979CF544088E30368257B2A210348A33D4F3EF9A4E4E3925C808B53B560983752';
wwv_flow_imp.g_varchar2_table(198) := '1B9D455C210E2FC5CC2AE6CD04C51B6912C60019A6A998FD6DDBB6A14A203B0774270548A97B7F434463BC48BA4CC92E8A7F292B64F19241B32C636E6D6D854C804AFC45C911C2792A81856835AC8DB8A1894CA028188004EA2431162DC0A6A13316B771';
wwv_flow_imp.g_varchar2_table(199) := 'BBAC443A7C611873D13BEA5A5991E10F44A63D81A21C93AC8098F6064D3A35202146EA189AA9C8379B8CDA9EE119B3519363330CD8DDF878A002EBA1D38264C5E0B8273FCB8079E1381289829FEE9119DC331C36BBD35B966F997107CAE20BDAB51A9546';
wwv_flow_imp.g_varchar2_table(200) := 'ADECB5BBB32D3A9D562DAB0683A1F098D39F6BD313B971D5E50B395D81694F70D7BAC2CDCBF37088EEA245423A0993104DD45C22AF2BBC43442026D20CBF50E43002B4AC5CB972CE48834750A008077E07BC8365C8997C0891B96D5488A381A68377C803';
wwv_flow_imp.g_varchar2_table(201) := '8A523258CE560A12D323A9C055A6BDE274803D044E240139063C341BEEF353F2A0269C285A8B24D04EFC55841E91A001B25FBEE4E45C748429DD916620BA4014EF17B995596FF354CB258419C3C0B348BEEC2F0226E93EEDA779B7D8445F6C99E465490C';
wwv_flow_imp.g_varchar2_table(202) := '6E2486EF64284F727DCA19698D6CD42AC93912894D13C9461306479C10C5B51D9CE5A9456F002F6B5A673C3850512216F0A0896D04A5F4C4A7D5C516C9AA685254A5564EBB837AAD0A89C725C310016A7F30628C2F8625A002453493DA70D2FC81302765';
wwv_flow_imp.g_varchar2_table(203) := '5D2D955B8C5A6A23288A25598DAF9FF5FA635EA8E4ABE5A5FED844A4AB321147978AC7E58C34269ED2367521E09D8FDA097764F80B8E24F6059071BC94F19E9BA5B84B246F4D8CDA496EC544BAD5947AE6D9BD3E798C4B54A4989AC4B6F7E255CAB3291C';
wwv_flow_imp.g_varchar2_table(204) := '4F7427312C96C85A2BA3500BDC657E9E114E198A9457CBC14246ED123960A5FD29CFDE0248923157F210A6842E9C970910F3588F440EDD7B969F0FD98D09FD7C1451C4E6CBC5D3302F7AE42CB6A1CAA252672A65ABBDC8DDA786D0594675EFE4EB5F4ABE';
wwv_flow_imp.g_varchar2_table(205) := 'E17BFF4126B13D8328DFE491E5A59CE5F11639642521398E20412A163601C7846EA32426B127EB9E44C19252B538B5736AA0BBDC9F706401F73C549F0293BF23E19B417F1CAA457C8E133322D359D0B2385D84AFF71E4B2260892CE8723CFBEB65CA679C';
wwv_flow_imp.g_varchar2_table(206) := 'A5565247ED645349C22CC88A1FD9DCDC8C178EBFCB4F4E7EF8E18738B2C458200D1F5A7A8EF70C34A9014FB7A1A101ED4888D5DEDE2E1111F1152E69FA43F85D2CC819BE3BE12FD1CBD9B3672F5DBA44CCB9B81CB2FC7DEDB5D7E017F1001512D6278601';
wwv_flow_imp.g_varchar2_table(207) := 'EE91FCC53FD73435352130B2661491E3E4C58B17913A1A865C7112D92B2E2E96EDFBF09B96C244B694D4979A142B4F3805935E7EF96582BF43870E391C0EC22C284B3C4AC750847418A8103B82B7AF7EF5ABD475E0C0818A8A0A22B9DEDE5E2C1DF66ADF';
wwv_flow_imp.g_varchar2_table(208) := 'BE7D608CFBB90AC660FC8A152B96A62279402D92A4CD86115BB66C79F3CD37A1F322567CC97404457C05DAEEDDBB8F1F3F8ED65BB66CD93D16475400C2D6DADA4AA42483196FBDF5D6C4C404C17D4747073D45118F8E8E0230D9BD1501034BB33F89DEDF';
wwv_flow_imp.g_varchar2_table(209) := '923A13047ED0C473E7CE9D397306149596965EBE7C79EDDAB5353535E889AAAA2A804467203786A8315E2A2B2BE55B1B370024982A433D001212AC5BB74E769D4D97BBE89D633ACACACA5052B003F1723A9D8BF09C25944709A2406119BAFFDE4BA74441';
wwv_flow_imp.g_varchar2_table(210) := '8178415A400B3105EE8FC8920C82777676D248246DFBF6ED5CB5DBED4B708DC21C3964D10D274F9EA4D1800AB3232BC9213A5A41F401183B76ECD89FFDD99FC9442F3006E4E8B04C6B90E16C8C35000387B242F61E279D7FE80B6C82E090FAC2850B6871';
wwv_flow_imp.g_varchar2_table(211) := 'EC12EA7C111496B939687DDC72DCF5279E7802A6DF634ED186A1A1217C362234FC1A3A825BC45FC93B4C63743A1DCE8E7CCCC50E63C1B874DFC5E93672C826DBDFC4D00A05ED452DAB56AD5A88BE91A7D23964EFBA2297D99F42D550BC2C3A876CF2E0F8';
wwv_flow_imp.g_varchar2_table(212) := 'BDE7D4C273C84A3BEF4BA2DBDB18B513A870767EFB4E67EAEAEAC4315838F36E2BD74BBADCDA91887F7FBB730ADFAD7AEE6E5F1E08714A91FCEBA92FB145F46721D3DED26B96D2255D52AC8826E1A7626AEEE41372BAA4CB9F9A779DFC05F57A0E5942BD';
wwv_flow_imp.g_varchar2_table(213) := '85648C49977449172933333373E4904DEFD6902EE9B2F092326C3847D0E6F7FBC7C6C638B87CF9F299336714F1754467CF9E6D696951C4E74028E2BB134A1AB6E407EFE514BB441999F41CB9303431ED9B7DC9E5992F969B9AF1F37FB2A5F6F8420F0A17';
wwv_flow_imp.g_varchar2_table(214) := '71C21B1B1B15F109593D3D3DC254D891E00EE1AE30B1A3A3E3C489131E8FE766555DBA74696A6A8A83CECE4E9F2F464697CB259C1D1D1DA59EC9C94938EB70388E1E3D3A3C3C3C4FABCE9D3B47AB785CEAB95999B331D4FF79A45F8032B45F11DF07B3B5';
wwv_flow_imp.g_varchar2_table(215) := 'B55511DF1E59CE2CA4389D4E1911156AF7F7F7777777CF79E71CC998BBBABAF6ECD9535B5B7BECD8314879FEFC7980E476BBA98E33DC595353F3E69B6FF6F5F5E10D4ADE0AA3D1C8D5FAFA7A5ECC2313131334373B3BFBC89123C2EC53A74EB5B5B569B5';
wwv_flow_imp.g_varchar2_table(216) := '5A1833383828FB7A72B07FFFFE8D1B37DE09A5DEF9AC7B60DC3D32E131EB63B98AEC53DEB36DF66957A030C7D43332D3677735B48FEBB5EAD129CFC89477EFD9FE49A7CFE50DB5C5535C3A5C7E7F30DC353C7DA471F87CFB7865A1B5DFEEBED4339961D1';
wwv_flow_imp.g_varchar2_table(217) := 'EF3BDBAF522A256DD9122CD013A9455EF9DBDEDEBE69D3264EBEFAEAAB80AAA2A2E257BFFAD5B265CBDE79E79DBABABABD7BF7DAE365CEEDD7AF5CB902D75022F0EBE0C1836BD7AE35994C081C357CE10B5FF8977FF997BCBC3CF0535A5A7A315E601C82';
wwv_flow_imp.g_varchar2_table(218) := '316762B893274F2267323B8C8649EA47E41811A412B8AF52A978DD6BAFBD565656367BAB7E9A2169647916D9A012D9531F782360348F632A5F84F7C51B6573049A44CD204AB2E02D24BDDDAF7FFD6B591C44EF6429311DB1D96C191919B7487DC9318483';
wwv_flow_imp.g_varchar2_table(219) := '4F393939DC01596521E1E6CD9BB76CD9F2CFFFFCCFDBB66D8355E0E791471E41B5C8B733FE4A8761E4C0C0001DD6E974AFBFFEBA24E595F5B3183A7A8289C3D07133AFE3647979F9E2F219264A73CF54341409842366830673F8E6116AD6CE7802B5A599';
wwv_flow_imp.g_varchar2_table(220) := '134EDFBEB383BED8328B28C8C17671438649D737E63AD962CFCD3064DB0C93D3BEE3CDA3C393EE95E599000F2757A751BDBAB74DA35183B165C5194BF3F317F47FFEF9E7FFF8C73F4A4A49E4436603207CC83AB12E428C2192D474F01B56F2175EA46CA6';
wwv_flow_imp.g_varchar2_table(221) := '0BA39F7AEA2934DDFBEFBF0F43E1200FC2296E9675001C343434A013456EA819758E2CCECEBAB76FDFBEEF7FFFFB400EAB75FAF4E9CACA4AC9C3C05370FCC2850BDCC04949DE9ABC25837CA5A4FDF402C01F387000E141E4E80B0A1D0B20B9C4D1DAC5C5';
wwv_flow_imp.g_varchar2_table(222) := 'C5B74B28C40C2905035555551B366CF8C52F7EF1D39FFE142021B40B191100D532B56DF7EEDDE8A96F7EF39B34037D01046E01246E42196CDFBE1DF5C39BBEF295AF805DBC382001F3D070D0178B846AA1AB20158041948978E118843CF3CC336213A9F3';
wwv_flow_imp.g_varchar2_table(223) := 'B9E79E930D89400B4FF14AD84C5356AD5AC519EEE1D93BCC216B9FF27C716B9946AD1A7678ED935EAD56F5EDDD35268336DBAAF7FAC30E8FFFCB8F941BF51AA356EDF607CBF32C91686CD792589EF34C634196C9E10E00B42CABBEB2C06AD069322D3AE2';
wwv_flow_imp.g_varchar2_table(224) := 'C56038FAD51D1506AD26DBA6572D492021191F7EF821664792B4C29D828202542CF487E0308E9320A4B9B9196AEFDAB50BB622E2E8C494ADBD61E2C71F7F0CDFA90A21460660873866708767010032804C23CD2FBDF492ACF99BD3A4200C68492AE141EA';
wwv_flow_imp.g_varchar2_table(225) := '41C2F03EC0396220DB7B64C70B578B8A8A92F393D3063C179AAA88CF15C2C7438456AE5C49AB50B5B2230860C032C807CCDB2A50037F0AD843017C2BA48EBF6060F5EAD50BB14888AB40059D85B9A677D061FDFAF5B32D52EADEDFF4930E4008592B2E53';
wwv_flow_imp.g_varchar2_table(226) := '21E90F4A08DA0100FAC9C3C046261DD332592501396012EA0A3BCE5F8C0FB490CA13ABC1E4068802D7653B0B9A82D6BC935C371FD7F7119A0124EC8CD315C03D33C773BF021E4C0A618FD1A021001A9DF2728FCD145BFBAD50C69288E1BFD98CB1E5E26E';
wwv_flow_imp.g_varchar2_table(227) := 'EFD57BCA0BAC03636E6CD48AF24CB73F84697A764BD9D2DC441F69C650A0EFE034AC914DE59172682BDB0089C645F5C21AB415D27CB30C0E0816FA152E1006A30A65791F556116646D0552287BF1604FF8394FF65580841421125402A46903328304E355';
wwv_flow_imp.g_varchar2_table(228) := 'E2C6D30C8C1502B66EDDBA143B4FE5B271CAD0D0104F011E644F969D4B1A5CE48D662C6E545956615333D4E0D538C3E89405AE48809E6081EEA350B0D8740AE2482EDD872D87ECE4B4DFE90EE8B52A9003547C8110D626BEF03BA2D1A8629BCB05639B72';
wwv_flow_imp.g_varchar2_table(229) := '7155A554002D4D3CEBAB46ADF405C28160C410DBBA441D8A2D808D62C1620B6935B165B0E1786ADAFC2CA35A959ED9942E730F633C543964F1BEF83FF1D36A5AA871B3DE3C7D49864597169474B9AD32F79C2519399DB3A4E7072DE5AF197752EEEFA416';
wwv_flow_imp.g_varchar2_table(230) := '42869B0D9A2F91ACC4F397D4C106A889A77BE2C409CE60B6BABBBB09938897709A71103FFAE823196FC0A8E1FECA780B7EE44CBC400B4231DC77BC44191CC7A5C6897F103DC6255EA0EAA79F7E0A834E9D3A05CDF1F867EF2FBD40F01046137B10BABCF7';
wwv_flow_imp.g_varchar2_table(231) := 'DE7B0427F725191E41F8912347882F640B2ADA201FAF08BFA7A6A6902224B3B1B1F1CA952B555555927DEC4E06A8EE96DE992F87ACACA37AF9E59701D2B163C7F8099F800AB0E9EAEA42FFF11750B5B7B71F3870E0CB5FFE32B0D9BF7F7F5959191DEEE9';
wwv_flow_imp.g_varchar2_table(232) := 'E9292C2C5CBF7E7D6B6B2B8F77747410F512E43DFFFCF384B369E9BF8B45A7D3A1DDD06804BE6FBFFD3671F0A2AB825348F08E1D3B30083077F6B8F63D28A74F9FFEFAD7BFAED16850D0EFBEFB2EC04646B76FDFDED2D2929797575D5D4DAC8F20A1D665';
wwv_flow_imp.g_varchar2_table(233) := '0F57E094D8C76A89BA7626930935004EC00FBDC2FE60A056AD5A4567D001AB57AF6E6A6AA20F6BD6ACA157972E5DA28774551298F338F703B3B367CF723F5CC1167127C84C8BFEDD2DE8B5DADA5AF9D2AAD56A6513C24514845276BD9355CCF0EEBE7427';
wwv_flow_imp.g_varchar2_table(234) := 'B6636E6B2B12D5D0D080748D8C8C609A388337845C9D3B778E33353535E80B8C12FA7A09FA38738CDAC9D76E1A2D2B64C1466565A50C8002336C1958C2103FF3CC339823B3D9CC0D186260039CA00837F0F7E2C58B95F182A582D3F745CF3DDC05B14373';
wwv_flow_imp.g_varchar2_table(235) := 'C30BA8BD79F3E6454F3806429243B6B9B979D7AE5DC99F4AEF590127870F1FC6CED0121901973D0FE5FB2FC2C3CF93274F6236CF9F3F8FFB732716F82E46A7773AFC8DCF86DB8A0B9796E674B9C705670FB768890CF3DCE9F0F73DDE68265DD225519608';
wwv_flow_imp.g_varchar2_table(236) := '8A14375B219BBCC370BAA44BBA2CC4222563E9FF176000A45EC7A5D3363C320000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(955699469265995347)
,p_file_name=>'reports_filter.png'
,p_mime_type=>'image/png'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/fs_sprite_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000B40000002808060000005769D00A0000001974455874536F6674776172650041646F626520496D616765526561647971C9653C0000036869545874584D4C3A636F6D2E61646F62652E786D700000000000';
wwv_flow_imp.g_varchar2_table(2) := '3C3F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A786D70746B3D2241';
wwv_flow_imp.g_varchar2_table(3) := '646F626520584D5020436F726520352E332D633031312036362E3134353636312C20323031322F30322F30362D31343A35363A32372020202020202020223E203C7264663A52444620786D6C6E733A7264663D22687474703A2F2F7777772E77332E6F72';
wwv_flow_imp.g_varchar2_table(4) := '672F313939392F30322F32322D7264662D73796E7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61626F75743D222220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E30';
wwv_flow_imp.g_varchar2_table(5) := '2F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F75726365526566232220786D6C6E733A786D703D22687474703A2F2F6E732E61646F62652E636F6D2F7861';
wwv_flow_imp.g_varchar2_table(6) := '702F312E302F2220786D704D4D3A4F726967696E616C446F63756D656E7449443D22786D702E6469643A30373830313137343037323036383131384331344143304137434136303342432220786D704D4D3A446F63756D656E7449443D22786D702E6469';
wwv_flow_imp.g_varchar2_table(7) := '643A44303535334234313331424631314532414431454242463539373637453739442220786D704D4D3A496E7374616E636549443D22786D702E6969643A44303535334234303331424631314532414431454242463539373637453739442220786D703A';
wwv_flow_imp.g_varchar2_table(8) := '43726561746F72546F6F6C3D2241646F62652050686F746F73686F702043533620284D6163696E746F736829223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E7374616E636549443D22786D702E6969643A3034383031313734';
wwv_flow_imp.g_varchar2_table(9) := '303732303638313138433134464245464243364638354433222073745265663A646F63756D656E7449443D22786D702E6469643A3037383031313734303732303638313138433134414330413743413630334243222F3E203C2F7264663A446573637269';
wwv_flow_imp.g_varchar2_table(10) := '7074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F787061636B657420656E643D2272223F3E200782EB0000084C4944415478DAEC5A6B4C5447149E656177611502526A4D246854222A62B4D6F7AB82420B41ADA2048D01';
wwv_flow_imp.g_varchar2_table(11) := 'B555DBC6DAA6363EF0879AD66A4B6D0CB52A360AF5458B4803A956226DD1A83136512B4DA80A6850AB945674792DD0EFE0ACB95D61F7EE5D88AFF3252777EE99B967CF9DF9E6CC99B9AB6B6969110CC6B3020FEE0206139AC17842E1C95DF06442A7D3B9';
wwv_flow_imp.g_varchar2_table(12) := '6D43994E76B4BDA78ED0E8002FBC40E3534A86305CC6427EC23B5C71D2361C970488C989D93AC801D83BAFD2074FE9C310489054FF05F90DF22BEC589FC7C9D7D99342D7DE0FE8F5FA95CDCDCD8751FFFB13D679337019A55449326E85AF97501F83F2E4';
wwv_flow_imp.g_varchar2_table(13) := 'B8B838EBC58B176F5CBE7C39CD913D1F1F9F4F6B6B6BEB516CB2BD3AC420CB0D4ABDB7B7B7D162B17CA8C2477F0F0F8FB7D07F01B8B5B76D44DDDFA8DB067FABD590242B2B6B032E1F28FCB207F9B939292969959A08DD11F63A93D0EED86B3742A3C3E9';
wwv_flow_imp.g_varchar2_table(14) := '65E3617C28AEC7F060A546027AE1F2BE241D7554731B79BC4146C0CF9CAD0A9E9E9E63AC56EB7D14BD2441F46969692F2C5BB6CC88DF8AC6FD0488252F2FCF273F3FDFCF997F20B35E413882013E0C97BE9FA12652DF24DB3A7D5F93C9F4765D5D9DDF82';
wwv_flow_imp.g_varchar2_table(15) := '050B02323333ABEAEBEB5B6D1881B973E776DBB973A78EDAA0ED276A56C1A6A6A6156161617A5F5FDF47069B06F4EEDDBB864B972E114157A919938EB66787FE902B72223F519B42229F05425126092FFE1AC4AC21EFD2151414F445B1519283C8784FCA';
wwv_flow_imp.g_varchar2_table(16) := '7DA96B04F9FA505B67F640669A105EE5E5E511683F14321864FE01BE75877E22752422A021232323242626E63B8D69D844292EEF31CC66F34490D997C8BC63C78E6BB9B9B97DC1E3AE245426DDA2458B02A80DDA4E524940BDBFBFBF200276EDDAF57F42';
wwv_flow_imp.g_varchar2_table(17) := '3AAA431B835A1FDBB38760218A4F148B8A6B152ED953BE3E64096431CDDF0EE0E7340AAA8AFB78A9D3B42924E25815120AA2848238A7513E052235A974AA213A3A3A73E6CC99B1D9D9D9F7A52DE512AC475D00C8972527911AE88383835370BD2EA3628C';
wwv_flow_imp.g_varchar2_table(18) := '82CC4690A64F7272F2B7B8BFA8D69E5C25A83FBC157A5BD9AAD6B7EEDDBB8F479A53BF67CF9E3B88C494B215E6E4E450B41353A74EDD0C5FEF190C86D9640F6DC7E17A44C524A6E82EF05C9B1195EA49D4A22D7BB76EDD12BBBED925AAABABC5F469D345';
wwv_flow_imp.g_varchar2_table(19) := '95B54A0B012938E540E2206F42BE763352D3AA3E4606434224A4D89D538E1649BEE60759486B1A3216A4198A8E388ACEFC43A563456BD6AC893B74E890C9FAA0E76D69871E51C1843AEAD522573219059907C39FC9F0AD564966E84B5CD8803C4C33ECC8';
wwv_flow_imp.g_varchar2_table(20) := 'D25F914A9C5163A8B2B292A2D4BF0D0D0D75F02711CFED879DCDD2868574A8A395AF056D7DD5D86C449711F1DACA2D6DFA4617084D6D6B6A6A446969A988888810D7AF5F171B376E14965A8B98376F9E080F0F1757CBCAB41090C6F5942C47CB48FD951B';
wwv_flow_imp.g_varchar2_table(21) := 'A43E2A53CB71F2FEB4D4694A39DAC58001035E4A4D4D0D75E599418306A5AF5CB932444642BD2D2A928EEA34E6E743020303676CDAB429C8CBCBCBAC203391E91D17CD4D5488239DE31CCEC3E321EBE0937EF9F2E574E2F20B0952A3FEA453B4F5501751';
wwv_flow_imp.g_varchar2_table(22) := '1B3BA48DB26D515191485D9B2AB66EDD2A3096A2BCA25CC4C7C78BF1E3C6BB6CAF8D287D5B061DA3BC6A45954C7B95B6ABDC89D03A25F9B0449A419ED0848484660CCC0D179DFB73F1E2C597B76FDF6EBE79F366B35C9ECDA4A33A2D6F8B891075E1C205';
wwv_flow_imp.g_varchar2_table(23) := '3306A5F2F8F1E303468F1EBD0BEAEF215F50C476C1540326C1465BCA8188BA444E9874D989B694C3694E3D62C408736161610D6D009133F7429A71087686C9885F3E65CA9419204E29368AF5D4566D8AD0116D946D87BF3C5C1C387040ECDBB7AF551715';
wwv_flow_imp.g_varchar2_table(24) := '1525625F8FD564CF0EFD20C992D4D96EA61CF132989C96F71364FA91AB25427BC801A46326F3DAB56BFB9594940C4D4A4ACA0399C9E133AE7A0702EFC0D216227323139549A7E1455BE4D162F0D2A54B7B6CD9B22510645E23C96CCB795D39F06C92C4AD';
wwv_flow_imp.g_varchar2_table(25) := '519C6A083B9DAA3D436C6C2CFDB611FD1400327F4E3933FA6F360995494775D446B67D2C84EED9B3A7D8B66D9B080A0AA2954460F5D06CCF6E53482BE31D3AB3875C75711CDAB2770E922FE59CD4698AD0941AE866CD9AD56DFDFAF57D01CA7157507EE8';
wwv_flow_imp.g_varchar2_table(26) := '8683FF600378243D3DBD355FA532E934D8B1821C2F22E251A43F2FF3EF7332AA064AF269FD0A6A6DA7AC0AF3E7CF3F86C8179D9191510DE90522F7C76A619129C62CCAED51AC1E397264404A4A4A814A02B61E197A7B7BB7B929441DB5697081D0ADF688';
wwv_flow_imp.g_varchar2_table(27) := 'CCBB77EF16D8C40A3F3F3FCDF6EC0240AE24B2BB6426FCA8483D84A3C8EC94D0A1A1A17E205EF0A449932A70BB1C52DA11E78418949C0D1B36446290755476F579ACE49EF25CF73D0C2E2D6744E037A4D836B18D883A2635F6424242CC656565164504B6';
wwv_flow_imp.g_varchar2_table(28) := 'A51FC2EE64834E567C9CD903310E1F3C78307ACE9C39FEC5C5C503F19EF5B681459926C8C051A346F9D372DFA54B97C36A7CB4D4D6A6EDDDBFEF5DD1FE8790466C34BF54DB876DD92B3E7942B33DBB4DE149F94DA1233E095639B97F34476EEF24A0AEAE';
wwv_flow_imp.g_varchar2_table(29) := '6EBFC964A21DEACF9D70FEFD8ACCCF4FB9FAE0BA75EB0E6242DC00A9AD8E48BF7AF5EA1E90994EB7D1478FEE5FB8706175454585C551BBDEBD7BFB60890E888C8C4C50E16637F8F7F1DEBD7B83205567CF9EA53377316CD8B02E898989DD20B7E1E3478E';
wwv_flow_imp.g_varchar2_table(30) := '06C82E121B1D905928265FBD7DF4EE2C7B0E7C759C2B76F297429D831F308AC7F4B5C7091651B6E224A5B0CA0DC97695938B3E670738694779E166C50645CDEA47E7B1AF427A491D2DC385903C67E9CCD3F4E7A4A7E2BF1C8CC70BFEB79D36F0FFA119CF';
wwv_flow_imp.g_varchar2_table(31) := '1498D08C676B65E39483C1119AC1604233184C68068309CD604233184C68068309CD6030A1190C26348309CD6030A1190C263483C184663098D00C263483C184663098D00C06139AC16042339E0BFC27C000B7209D01095C2F7C0000000049454E44AE42';
wwv_flow_imp.g_varchar2_table(32) := '6082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(955699682873995497)
,p_file_name=>'fs-sprite.png'
,p_mime_type=>'image/png'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(12430784284705512)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>187812336
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(13947108935223895)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>37166093866919
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(13975951795184690)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>37167665069019
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(13976364537184691)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>37167665069019
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(13999377062030563)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>155465231
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(112276131531594407)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>37166093866919
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(133823041743078072)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'N')).to_clob
,p_version_scn=>37166093866919
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(135645393567183969)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>37166093866919
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(188560935043212323)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>37166093866919
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(619209070027409182)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>37166093866910
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1133642468959211297)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>37166093866919
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1780023908554096911)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'N')).to_clob
,p_version_scn=>37166093866919
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1846724062443379011)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>37166093866919
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1932611239229324918)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>37166093866919
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
wwv_flow_imp_shared.create_icon_bar_item(
 p_id=>wwv_flow_imp.id(3211949458065939727)
,p_icon_sequence=>10
,p_icon_subtext=>'Administration'
,p_icon_target=>'f?p=&APP_ID.:settings:&SESSION.::&DEBUG.:::'
,p_nav_entry_is_feedback_yn=>'N'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_imp_shared.create_icon_bar_item(
 p_id=>wwv_flow_imp.id(3211949673995944355)
,p_icon_sequence=>20
,p_icon_subtext=>'Help'
,p_icon_target=>'f?p=&APP_ID.:help:&SESSION.::&DEBUG.::::'
,p_nav_entry_is_feedback_yn=>'N'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_imp_shared.create_icon_bar_item(
 p_id=>wwv_flow_imp.id(6284505617873162470)
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
 p_id=>wwv_flow_imp.id(1567853163814321906)
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
,p_version_scn=>37166093866919
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
prompt --application/shared_components/user_interface/lovs/distinct_status_values
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2676000181001247383)
,p_lov_name=>'DISTINCT STATUS VALUES'
,p_lov_query=>'select distinct status d, status r from EBA_DEMO_IR_PROJECTS order by 1'
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089078416
);
end;
/
prompt --application/shared_components/user_interface/lovs/number_of_rows_per_page
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2692345580930936200)
,p_lov_name=>'NUMBER OF ROWS PER PAGE'
,p_lov_query=>'.'||wwv_flow_imp.id(2692345580930936200)||'.'
,p_location=>'STATIC'
,p_version_scn=>1089078416
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2692346978789936208)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'1'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2692345771067936205)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'5'
,p_lov_return_value=>'5'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2692345963502936208)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'10'
,p_lov_return_value=>'10'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2692346175151936208)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'15'
,p_lov_return_value=>'15'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2692346369883936208)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'20'
,p_lov_return_value=>'20'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2692346581393936208)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'100'
,p_lov_return_value=>'100'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2692346782513936208)
,p_lov_disp_sequence=>60
,p_lov_disp_value=>'500'
,p_lov_return_value=>'500'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2692347165372936208)
,p_lov_disp_sequence=>80
,p_lov_disp_value=>'1,000'
,p_lov_return_value=>'1000'
);
end;
/
prompt --application/shared_components/user_interface/lovs/projects
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(1332489083381576535)
,p_lov_name=>'PROJECTS'
,p_lov_query=>'select distinct project d, project r from EBA_DEMO_IR_PROJECTS order by 1'
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089078416
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
 p_id=>wwv_flow_imp.id(6284507407406162482)
,p_name=>' Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(615295275839903515)
,p_short_name=>'Cards'
,p_link=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:::'
,p_page_id=>41
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(657053110056778597)
,p_short_name=>'Faceted Search'
,p_link=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::'
,p_page_id=>42
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1043829352207628024)
,p_parent_id=>wwv_flow_imp.id(1311754865366836159)
,p_short_name=>'Linking to Interactive Grids'
,p_link=>'f?p=&APP_ID.:37:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>37
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1043859559614169580)
,p_parent_id=>wwv_flow_imp.id(1311754865366836159)
,p_short_name=>'Drill Down Reporting using Interactive Grid'
,p_link=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:::'
,p_page_id=>40
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1235919778909560699)
,p_parent_id=>wwv_flow_imp.id(1311754865366836159)
,p_short_name=>'Non-Tabular Templates'
,p_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::'
,p_page_id=>13
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1311754865366836159)
,p_short_name=>'Use Cases'
,p_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
,p_page_id=>9
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1311760260781850128)
,p_parent_id=>wwv_flow_imp.id(1311754865366836159)
,p_short_name=>'Interactive Report'
,p_link=>'f?p=&APP_ID.:11:&SESSION.'
,p_page_id=>11
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1312006786538900891)
,p_parent_id=>wwv_flow_imp.id(1311754865366836159)
,p_short_name=>'Custom Buttons'
,p_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_page_id=>12
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1312119958240896480)
,p_parent_id=>wwv_flow_imp.id(1311754865366836159)
,p_short_name=>'Linking to Interactive Reports'
,p_link=>'f?p=&APP_ID.:18:&SESSION.'
,p_page_id=>18
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1312135565151059473)
,p_parent_id=>wwv_flow_imp.id(1332416786387310149)
,p_short_name=>'CASE Statement'
,p_link=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::'
,p_page_id=>19
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1312144181931093758)
,p_parent_id=>wwv_flow_imp.id(1597534281993431161)
,p_short_name=>'Top N Queries'
,p_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_page_id=>20
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1312147287691101519)
,p_parent_id=>wwv_flow_imp.id(1332416786387310149)
,p_short_name=>'Inline Views'
,p_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:::'
,p_page_id=>22
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1312151267538131069)
,p_parent_id=>wwv_flow_imp.id(1332416786387310149)
,p_short_name=>'Group By Clause'
,p_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_page_id=>23
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1312159685516196253)
,p_parent_id=>wwv_flow_imp.id(1597534281993431161)
,p_short_name=>'LEAD and LAG'
,p_link=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:::'
,p_page_id=>24
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1312162979704210571)
,p_parent_id=>wwv_flow_imp.id(1332416786387310149)
,p_short_name=>'Pivot Syntax'
,p_link=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:::'
,p_page_id=>25
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1312214275455509825)
,p_parent_id=>wwv_flow_imp.id(1332416786387310149)
,p_short_name=>'Connect By'
,p_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
,p_page_id=>26
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1312217961554526223)
,p_parent_id=>wwv_flow_imp.id(1332416786387310149)
,p_short_name=>'String Functions'
,p_link=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:::'
,p_page_id=>27
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1312221583837561234)
,p_parent_id=>wwv_flow_imp.id(1332416786387310149)
,p_short_name=>'Regular Expressions'
,p_link=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
,p_page_id=>28
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1312266766474206077)
,p_parent_id=>wwv_flow_imp.id(1332416786387310149)
,p_short_name=>'Soundex'
,p_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::'
,p_page_id=>29
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1312333571518492642)
,p_parent_id=>wwv_flow_imp.id(1597534281993431161)
,p_short_name=>'LISTAGG'
,p_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
,p_page_id=>30
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1312368268312704254)
,p_parent_id=>wwv_flow_imp.id(1597534281993431161)
,p_short_name=>'RANK and DENSE_RANK'
,p_link=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:::'
,p_page_id=>31
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1312371977871711953)
,p_parent_id=>wwv_flow_imp.id(1597534281993431161)
,p_short_name=>'RATIO_TO_REPORT'
,p_link=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:::'
,p_page_id=>33
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1312375977127723266)
,p_parent_id=>wwv_flow_imp.id(1597534281993431161)
,p_short_name=>'ROW_NUMBER'
,p_link=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:::'
,p_page_id=>32
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1312379769805734258)
,p_parent_id=>wwv_flow_imp.id(1332416786387310149)
,p_short_name=>'Pipelined Functions'
,p_link=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:::'
,p_page_id=>35
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1331071874032305199)
,p_parent_id=>wwv_flow_imp.id(1311754865366836159)
,p_short_name=>'Report from Collection'
,p_link=>'f?p=&APP_ID.:38:&SESSION.'
,p_page_id=>38
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1332416786387310149)
,p_short_name=>'SQL Examples'
,p_link=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:::'
,p_page_id=>39
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1332484773474528565)
,p_parent_id=>wwv_flow_imp.id(1311754865366836159)
,p_short_name=>'Bind Variables'
,p_link=>'f?p=&APP_ID.:15:&SESSION.'
,p_page_id=>15
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1597534281993431161)
,p_short_name=>'Analytic Function Examples'
,p_link=>'f?p=&APP_ID.:21:&SESSION.'
,p_page_id=>21
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1874389398432750252)
,p_parent_id=>wwv_flow_imp.id(1874395707593766589)
,p_short_name=>'Application Theme Style'
,p_link=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:::'
,p_page_id=>34
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1874395707593766589)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:36:&SESSION.'
,p_page_id=>36
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1954778922210992850)
,p_short_name=>'Interactive Grid'
,p_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
,p_page_id=>17
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2672175461310187355)
,p_short_name=>'Classic Report'
,p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2672282577416201969)
,p_parent_id=>wwv_flow_imp.id(1874395707593766589)
,p_short_name=>'Manage Sample Data'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2676206574033282693)
,p_parent_id=>wwv_flow_imp.id(1311754865366836159)
,p_short_name=>'Filtering using Classic Report'
,p_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2678496162998627058)
,p_parent_id=>wwv_flow_imp.id(1311754865366836159)
,p_short_name=>'Drill Down Reporting using Interactive Report'
,p_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2678880162507773944)
,p_parent_id=>wwv_flow_imp.id(1311754865366836159)
,p_short_name=>'Highlighting using Interactive Reports'
,p_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3055539682530469292)
,p_parent_id=>wwv_flow_imp.id(1311754865366836159)
,p_short_name=>'Format Masks using Interactive Reports'
,p_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3164959362458847871)
,p_short_name=>'Home'
,p_link=>'f?p=&FLOW_ID.:10:&SESSION.'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3253701777026438789)
,p_short_name=>'Help'
,p_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::'
,p_page_id=>14
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6284507819254162485)
,p_short_name=>'Interactive Report'
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
 p_id=>wwv_flow_imp.id(3178317087006000690)
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
 p_id=>wwv_flow_imp.id(154974421031047285)
,p_plug_template_id=>wwv_flow_imp.id(3178317087006000690)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(154974560435047285)
,p_plug_template_id=>wwv_flow_imp.id(3178317087006000690)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(154974684770047284)
,p_plug_template_id=>wwv_flow_imp.id(3178317087006000690)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(154974711541047284)
,p_plug_template_id=>wwv_flow_imp.id(3178317087006000690)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(154974847974047284)
,p_plug_template_id=>wwv_flow_imp.id(3178317087006000690)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(154974953414047284)
,p_plug_template_id=>wwv_flow_imp.id(3178317087006000690)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(154975100600047284)
,p_plug_template_id=>wwv_flow_imp.id(3178317087006000690)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(154975166348047284)
,p_plug_template_id=>wwv_flow_imp.id(3178317087006000690)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(154975247549047284)
,p_plug_template_id=>wwv_flow_imp.id(3178317087006000690)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(154975379886047284)
,p_plug_template_id=>wwv_flow_imp.id(3178317087006000690)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(154975424593047284)
,p_plug_template_id=>wwv_flow_imp.id(3178317087006000690)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(154975582454047284)
,p_plug_template_id=>wwv_flow_imp.id(3178317087006000690)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(154975645612047284)
,p_plug_template_id=>wwv_flow_imp.id(3178317087006000690)
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
prompt --application/shared_components/user_interface/templates/report/sample_reporting_active_filters
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(2111995201228670338)
,p_row_template_name=>'[Sample Reporting] Active Filters'
,p_internal_name=>'[SAMPLE_REPORTING]_ACTIVE_FILTERS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <div class="t-Form-labelContainer">',
'        <label for="ACTIVE_FILTERS" id="ACTIVE_FILTER_#FILTER_GROUP#_LABEL" class="t-Form-label">#FILTER_GROUP#</label>',
'    </div>',
'    <div class="t-Form-inputContainer">',
'        <fieldset tabindex="-1" id="ACTIVE_FILTER_#FILTER_GROUP#"',
'            aria-labelledby="ACTIVE_FILTER_#FILTER_GROUP#_LABEL" class="checkbox_group">',
'            <input class="filterLink" type="checkbox" id="ACTIVE_FILTER_#FILTER_SEQUENCE#"',
'                data-group="#FILTER_GROUP#" data-sequence="#FILTER_SEQUENCE#"',
'                checked value="#FILTER_SEQUENCE#">',
'            <label for="ACTIVE_FILTER_#FILTER_SEQUENCE#">#FILTER_DISPLAY#</label>',
'         </fieldset>',
'    </div>'))
,p_row_template_condition1=>'#ROW_NUM# = 1 AND #TOTAL_ROWS# = 1'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <div class="t-Form-labelContainer">',
'        <label for="ACTIVE_FILTERS" id="ACTIVE_FILTER_#FILTER_GROUP#_LABEL" class="t-Form-label">#FILTER_GROUP#</label>',
'    </div>',
'    <div class="t-Form-inputContainer">',
'        <fieldset tabindex="-1" id="ACTIVE_FILTER_#FILTER_GROUP#"',
'            aria-labelledby="ACTIVE_FILTER_#FILTER_GROUP#_LABEL" class="checkbox_group">',
'            <input class="filterLink" type="checkbox" id="ACTIVE_FILTER_#FILTER_SEQUENCE#"',
'                data-group="#FILTER_GROUP#" data-sequence="#FILTER_SEQUENCE#"',
'                checked value="#FILTER_SEQUENCE#">',
'            <label for="ACTIVE_FILTER_#FILTER_SEQUENCE#">#FILTER_DISPLAY#</label>',
'            <br>'))
,p_row_template_condition2=>'#ROW_NUM# = 1 AND #TOTAL_ROWS# > 1'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'            <input class="filterLink" type="checkbox" id="ACTIVE_FILTER_#FILTER_SEQUENCE#"',
'                data-group="#FILTER_GROUP#" data-sequence="#FILTER_SEQUENCE#"',
'                checked value="#FILTER_SEQUENCE#">',
'            <label for="ACTIVE_FILTER_#FILTER_SEQUENCE#">#FILTER_DISPLAY#</label>',
'            <br>'))
,p_row_template_condition3=>'#ROW_NUM# > 1 AND #ROW_NUM# < #TOTAL_ROWS#'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'            <input class="filterLink" type="checkbox" id="ACTIVE_FILTER_#FILTER_SEQUENCE#"',
'                data-group="#FILTER_GROUP#" data-sequence="#FILTER_SEQUENCE#"',
'                checked value="#FILTER_SEQUENCE#">',
'            <label for="ACTIVE_FILTER_#FILTER_SEQUENCE#">#FILTER_DISPLAY#</label>',
'        </fieldset>',
'    </div>'))
,p_row_template_before_rows=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked">'
,p_row_template_after_rows=>'</div>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_theme_id=>42
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/sample_reports_comment_bubbles
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(2112104467523753364)
,p_row_template_name=>'[Sample Reports] Comment Bubbles'
,p_internal_name=>'[SAMPLE_REPORTS]_COMMENT_BUBBLES'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="#1#">',
'<div>',
'	<em>#2#</em>',
'	#3##4##5##6##7#',
'</div>',
'<span>',
'	#8# (#9#) #10#',
'</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="commentBubbles">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="uPaginationTable">',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>42
,p_theme_class_id=>7
,p_translate_this_template=>'N'
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
 p_id=>wwv_flow_imp.id(1584679146648003007)
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
,p_default_header_template=>wwv_flow_imp.id(1584644208963002876)
,p_default_footer_template=>wwv_flow_imp.id(1584644208963002876)
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
 p_id=>wwv_flow_imp.id(42428410118028129)
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
 p_id=>wwv_flow_imp.id(42432441884028132)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(42434455747028133)
,p_theme_id=>42
,p_name=>'ICON_STYLE'
,p_display_name=>'Icon Style'
,p_display_sequence=>35
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(42437686566028135)
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
 p_id=>wwv_flow_imp.id(42446103181028141)
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
 p_id=>wwv_flow_imp.id(42455910902028148)
,p_theme_id=>42
,p_name=>'RESULT_SEPARATOR'
,p_display_name=>'Result Separator'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_null_text=>'Show'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(42460003393028151)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982817363816345944)
,p_theme_id=>142
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982817637735345944)
,p_theme_id=>142
,p_name=>'DISPLAY_TYPE'
,p_display_name=>'Display Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982819504771345947)
,p_theme_id=>142
,p_name=>'REGION_STYLE'
,p_display_name=>'Region Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982819902688345948)
,p_theme_id=>142
,p_name=>'REGION_PADDING'
,p_display_name=>'Region Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982821585763345951)
,p_theme_id=>142
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Extend to Fit Contents'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982822176347345951)
,p_theme_id=>142
,p_name=>'REGION_HEADER'
,p_display_name=>'Region Header'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982822476210345952)
,p_theme_id=>142
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982823530114345952)
,p_theme_id=>142
,p_name=>'REGION_TYPE'
,p_display_name=>'Region Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Normal - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982824511933345954)
,p_theme_id=>142
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982825225034345955)
,p_theme_id=>142
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982825506701345956)
,p_theme_id=>142
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982827653166345959)
,p_theme_id=>142
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982828041857345959)
,p_theme_id=>142
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982828301375345959)
,p_theme_id=>142
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982829721149345965)
,p_theme_id=>142
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982830616250345965)
,p_theme_id=>142
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982832139949345969)
,p_theme_id=>142
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982833213030345970)
,p_theme_id=>142
,p_name=>'ICON_STYLE'
,p_display_name=>'Icon Style'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982835088163345974)
,p_theme_id=>142
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982836324065345976)
,p_theme_id=>142
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982837022122345977)
,p_theme_id=>142
,p_name=>'BREADCRUMB_DIVIDER'
,p_display_name=>'Breadcrumb Divider'
,p_display_sequence=>1
,p_template_types=>'BREADCRUMB'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982838319733345980)
,p_theme_id=>142
,p_name=>'BUTTON_TYPE'
,p_display_name=>'Button Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982838630430345980)
,p_theme_id=>142
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982838913665345980)
,p_theme_id=>142
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982839349450345980)
,p_theme_id=>142
,p_name=>'BUTTON_SIZE'
,p_display_name=>'Button Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Size'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982839595855345982)
,p_theme_id=>142
,p_name=>'BUTTON_STYLE'
,p_display_name=>'Button Style'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Style'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982840113383345982)
,p_theme_id=>142
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982840963197345982)
,p_theme_id=>142
,p_name=>'BUTTON_WIDTH'
,p_display_name=>'Button Width'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Width'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982841474644345982)
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
 p_id=>wwv_flow_imp.id(982841939178345983)
,p_theme_id=>142
,p_name=>'FORM_LABEL_POSITION'
,p_display_name=>'Form Label Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982842184304345983)
,p_theme_id=>142
,p_name=>'FORM_ITEMS_SIZE'
,p_display_name=>'Form Items Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Size'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(982842483985345983)
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
 p_id=>wwv_flow_imp.id(982842850662345983)
,p_theme_id=>142
,p_name=>'FORM_ITEM_PADDING'
,p_display_name=>'Form Item Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Padding'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1047051425756744295)
,p_theme_id=>142
,p_name=>'NAVIGATION_COLOR_SCHEME'
,p_display_name=>'Navigation Color Scheme'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1069803561448827035)
,p_theme_id=>142
,p_name=>'CURRENT_PAGE'
,p_display_name=>'Current Page'
,p_display_sequence=>1
,p_template_types=>'BREADCRUMB'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1229016969005399039)
,p_theme_id=>142
,p_name=>'REGION_ACCENT'
,p_display_name=>'Region Accent'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1229022696019399051)
,p_theme_id=>142
,p_name=>'LIST_STYLE'
,p_display_name=>'List Style'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1265938951351620795)
,p_theme_id=>142
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1265941298664620799)
,p_theme_id=>142
,p_name=>'DISPLAY'
,p_display_name=>'Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1265960358722620827)
,p_theme_id=>142
,p_name=>'FORM_ITEM_WIDTH'
,p_display_name=>'Form Item Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1352777759183649024)
,p_theme_id=>142
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1356308440149006412)
,p_theme_id=>142
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1532557319190095711)
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
 p_id=>wwv_flow_imp.id(2561073180048795042)
,p_name=>'ADMINISTRATION'
,p_message_text=>'Administration'
,p_version_scn=>37166093866984
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(2561077281780795584)
,p_name=>'HELP'
,p_message_text=>'Help'
,p_version_scn=>37166093866984
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(2561081384550796324)
,p_name=>'LOGOUT'
,p_message_text=>'Logout'
,p_version_scn=>37166093866984
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(2688804066219569423)
,p_name=>'USER'
,p_message_text=>'User'
,p_version_scn=>37166093866984
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
 p_id=>wwv_flow_imp.id(2563966883098205133)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_version_scn=>1089078417
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/apex_auth
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(6284506106555162472)
,p_name=>'APEX Auth'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_logout_url=>'f?p=&APP_ID.:1'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>187822509
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_display_source
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(1331832466565799258)
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
 p_id=>wwv_flow_imp.id(621285053689024611)
,p_plugin_id=>wwv_flow_imp.id(1331832466565799258)
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
 p_id=>wwv_flow_imp.id(621285427194024612)
,p_plugin_id=>wwv_flow_imp.id(1331832466565799258)
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
 p_id=>wwv_flow_imp.id(1673189699362788981)
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
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Interactive Report'
,p_alias=>'INTERACTIVE-REPORT'
,p_step_title=>'Interactive Report'
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
 p_id=>wwv_flow_imp.id(1311999083506830113)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This interactive report was created using the Create Page Wizard. The SQL used to create this report displays in the show/hide region at the bottom of the page. Interactive reports feature built-in search capability in that your search term is use'
||'d to search across the row.  In addition to the default interactive report functionality, this report has a <strong>Detail</strong> view which you can toggle to by clicking the <strong>Detail View</strong> icon.  You can sort and filter columns by cl'
||'icking on column headings, click the <strong>Actions</strong> drop down menu to control the columns to display on the report and the order in which they are displayed.  You can also save custom reports, chart data, and perform many other actions.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2563838984072187174)
,p_plug_name=>'Projects'
,p_region_name=>'projects_report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	ROWID,',
'       ID,',
'       PROJECT,',
'       TASK_NAME,',
'       START_DATE,',
'       END_DATE,',
'       STATUS,',
'       ASSIGNED_TO,',
'       COST,',
'       BUDGET,',
'       budget - cost available_budget',
'from EBA_DEMO_IR_PROJECTS'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2563839057531187174)
,p_name=>'Projects'
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
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2:P2_ROWID:#ROWID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_detail_view_enabled_yn=>'Y'
,p_detail_view_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'table.apexir_WORKSHEET_CUSTOM { border: none !important; -moz-box-shadow: none; box-shadow: none; -webkit-box-shadow: none; }',
'.apexir_WORKSHEET_DATA td {border-bottom: none !important;}',
'table.reportDetail td {',
'	border: none !important;',
'	font: 11px/16px Arial, sans-serif;',
'	}',
'	table.reportDetail td.separator {',
'		background: #CCC;',
'		height: 2px !important;',
'padding: 0;',
'		line-height: 2px !important;',
'overflow: hidden;',
'		}',
'table.reportDetail td h1 {margin: 8px 0 !important}',
'table.reportDetail td img {margin-top: 8px; border: 4px solid #CCC; -moz-border-radius: 4px; -webkit-border-radius: 4px;}',
'</style>',
'<table class="reportDetail">'))
,p_detail_view_for_each_row=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><td colspan="4" class="separator"></td></tr>',
'<tr>',
'<td><strong><u>#PROJECT#</u></strong></td><td><i>#TASK_NAME#</i></td>',
'</tr>',
'<tr><td align="left"><strong>#STATUS_LABEL#:</strong></td><td>#STATUS#</td>',
'</tr>',
'<tr><td align="left"><strong>#ASSIGNED_TO_LABEL#:</strong></td><td>#ASSIGNED_TO#</td>',
'</tr>',
'<tr>',
'<td style="padding-bottom: 0px;"><strong>#START_DATE_LABEL#</strong></td>',
'<td style="padding-bottom: 0px;"><strong>#END_DATE_LABEL#</strong></td>',
'<td style="padding-bottom: 0px;"><strong>#BUDGET_LABEL#</strong></td>',
'<td style="padding-bottom: 0px;"><strong>#COST_LABEL#</strong></td>',
'</tr>',
'<tr>',
'<td style="padding-top: 0px;">#START_DATE#</td>',
'<td style="padding-top: 0px;">#END_DATE#</td>',
'<td style="padding-top: 0px;">#BUDGET#</td>',
'<td style="padding-top: 0px;">#COST#</td>',
'</tr>'))
,p_detail_view_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><td colspan="4" class="separator"></td></tr>',
'</table>'))
,p_owner=>'DPEAKE'
,p_internal_uid=>1908983501483820764
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2563839284480187179)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2563839362118187181)
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
 p_id=>wwv_flow_imp.id(2563839487043187181)
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
 p_id=>wwv_flow_imp.id(2563839588413187181)
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
 p_id=>wwv_flow_imp.id(2563839662923187181)
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
 p_id=>wwv_flow_imp.id(2563839763923187181)
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
 p_id=>wwv_flow_imp.id(2563839878007187181)
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
 p_id=>wwv_flow_imp.id(2563839973744187181)
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
 p_id=>wwv_flow_imp.id(2563840056573187182)
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
 p_id=>wwv_flow_imp.id(2563882259615189499)
,p_db_column_name=>'ROWID'
,p_display_order=>10
,p_column_identifier=>'J'
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
 p_id=>wwv_flow_imp.id(2678918579856865157)
,p_db_column_name=>'AVAILABLE_BUDGET'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Available Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2199383918684724096)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Pivot Example'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'21844430'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_view_mode=>'REPORT'
,p_report_columns=>'ID:PROJECT:TASK_NAME:START_DATE:END_DATE:STATUS:ASSIGNED_TO:COST:BUDGET:ROWID:AVAILABLE_BUDGET'
,p_sort_column_1=>'START_DATE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'END_DATE'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'PROJECT'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_sum_columns_on_break=>'COST:BUDGET'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(2199384303228724101)
,p_report_id=>wwv_flow_imp.id(2199383918684724096)
,p_pivot_columns=>'ASSIGNED_TO'
,p_row_columns=>'PROJECT'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(2199384688131724102)
,p_pivot_id=>wwv_flow_imp.id(2199384303228724101)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'COST'
,p_db_column_name=>'PFC1'
,p_column_label=>'Total Cost'
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'N'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(2199385088125724102)
,p_pivot_id=>wwv_flow_imp.id(2199384303228724101)
,p_display_seq=>2
,p_function_name=>'SUM'
,p_column_name=>'BUDGET'
,p_db_column_name=>'PFC2'
,p_column_label=>'Total Budget'
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2564001470959211763)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'19091460'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_view_mode=>'REPORT'
,p_report_columns=>'ID:PROJECT:TASK_NAME:START_DATE:END_DATE:STATUS:ASSIGNED_TO:COST:BUDGET:ROWID:AVAILABLE_BUDGET'
,p_sort_column_1=>'START_DATE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'END_DATE'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'PROJECT'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_sum_columns_on_break=>'COST:BUDGET'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2564080959625265271)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Budget Review'
,p_report_seq=>10
,p_report_type=>'CHART'
,p_report_alias=>'19092255'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_view_mode=>'REPORT'
,p_report_columns=>'PROJECT:TASK_NAME:STATUS:COST:BUDGET::APXWS_CC_001'
,p_break_on=>'PROJECT'
,p_break_enabled_on=>'PROJECT'
,p_sum_columns_on_break=>'APXWS_CC_001:COST:BUDGET'
,p_chart_type=>'bar'
,p_chart_label_column=>'PROJECT'
,p_chart_label_title=>'Project'
,p_chart_value_column=>'APXWS_CC_001'
,p_chart_aggregate=>'SUM'
,p_chart_value_title=>'Budget v Cost'
,p_chart_sorting=>'LABEL_ASC'
,p_chart_orientation=>'horizontal'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(2678938365227879848)
,p_report_id=>wwv_flow_imp.id(2564080959625265271)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'I - H'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_column_type=>'NUMBER'
,p_column_label=>'Budget v Cost'
,p_report_label=>'Budget v Cost'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(2678938468426879848)
,p_report_id=>wwv_flow_imp.id(2564080959625265271)
,p_group_by_columns=>'STATUS'
,p_function_01=>'SUM'
,p_function_column_01=>'COST'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_format_mask_01=>'FML999G999G999G999G990D00'
,p_function_sum_01=>'Y'
,p_function_02=>'SUM'
,p_function_column_02=>'BUDGET'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_format_mask_02=>'FML999G999G999G999G990D00'
,p_function_sum_02=>'Y'
,p_function_03=>'SUM'
,p_function_column_03=>'APXWS_CC_001'
,p_function_db_column_name_03=>'APXWS_GBFC_03'
,p_function_format_mask_03=>'FML999G999G999G999G990D00'
,p_function_sum_03=>'Y'
,p_sort_column_01=>'STATUS'
,p_sort_direction_01=>'ASC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2678937782411875298)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Highlighted Over Budget'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'20240823'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_view_mode=>'REPORT'
,p_report_columns=>'PROJECT:TASK_NAME:START_DATE:END_DATE:STATUS:ASSIGNED_TO:COST:BUDGET:AVAILABLE_BUDGET:'
,p_sort_column_1=>'START_DATE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'END_DATE'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'PROJECT'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_sum_columns_on_break=>'COST:BUDGET'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(2678937978130875298)
,p_report_id=>wwv_flow_imp.id(2678937782411875298)
,p_name=>'Over Budget'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'AVAILABLE_BUDGET'
,p_operator=>'<'
,p_expr=>'0'
,p_condition_sql=>' (case when ("AVAILABLE_BUDGET" < to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# < #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#FFFF99'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1331834477983809234)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(2563838984072187174)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'projects_report')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6284507913880162486)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2657444965804027318)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2563838984072187174)
,p_button_name=>'RESET_DATA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,1,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(214486884213956915)
,p_name=>'Refresh on Edit'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2563838984072187174)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(214486942871956916)
,p_event_id=>wwv_flow_imp.id(214486884213956915)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2563838984072187174)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Maintain Project'
,p_alias=>'MAINTAIN-PROJECT'
,p_page_mode=>'MODAL'
,p_step_title=>'Maintain Project'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'500'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1579488383238979075)
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
 p_id=>wwv_flow_imp.id(2563966071737205131)
,p_plug_name=>'Maintain Project'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Region--noBorder:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2563966457816205132)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1579488383238979075)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P2_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2563966388344205132)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1579488383238979075)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P2_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2563966283842205132)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1579488383238979075)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P2_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2563966681176205132)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1579488383238979075)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2563967771146205135)
,p_name=>'P2_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2563966071737205131)
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
 p_id=>wwv_flow_imp.id(2563967972346205141)
,p_name=>'P2_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2563966071737205131)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2563968166889205143)
,p_name=>'P2_PROJECT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2563966071737205131)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project'
,p_source=>'PROJECT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct project d, project r',
'from eba_demo_ir_projects',
'order by 1'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2563968379497205143)
,p_name=>'P2_TASK_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2563966071737205131)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Task Name'
,p_source=>'TASK_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2563968576356205144)
,p_name=>'P2_START_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2563966071737205131)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
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
 p_id=>wwv_flow_imp.id(2563968771171205144)
,p_name=>'P2_END_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2563966071737205131)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
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
 p_id=>wwv_flow_imp.id(2563968979161205145)
,p_name=>'P2_STATUS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2563966071737205131)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Open;Open,Closed;Closed'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2563969156642205145)
,p_name=>'P2_ASSIGNED_TO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2563966071737205131)
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
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2563969366703205145)
,p_name=>'P2_COST'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2563966071737205131)
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
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2563969563280205145)
,p_name=>'P2_BUDGET'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2563966071737205131)
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
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(241455251867748957)
,p_name=>'Cancel Modal'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2563966681176205132)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241455283941748958)
,p_event_id=>wwv_flow_imp.id(241455251867748957)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2563970867051205147)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_DEMO_IR_PROJECTS'
,p_attribute_02=>'EBA_DEMO_IR_PROJECTS'
,p_attribute_03=>'P2_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_internal_uid=>2551540757188499645
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2563971074575205148)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_DEMO_IR_PROJECTS'
,p_attribute_02=>'EBA_DEMO_IR_PROJECTS'
,p_attribute_03=>'P2_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>2551540964712499646
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2563971279429205148)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2563966457816205132)
,p_internal_uid=>2551541169566499646
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1637831612908770050)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Modal'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1625401503046064548
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_tab_set=>'TS1'
,p_name=>'Classic Report'
,p_alias=>'CLASSIC-REPORT'
,p_step_title=>'Classic Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1311999785977859169)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This classic report is a standard report region created using the Create Page Wizard.  The SQL used to create this report displays in the show/hide region at the bottom of the page.  A <strong>Button Bar</strong> region on this page, contains a pa'
||'ge item named <strong>P3_STATUS</strong> (which displays as a select list HTML control).  The value of the <strong>P3_STATUS</strong> page item is referenced in the SQL query using standard bind variable syntax.</p>',
'<p>This page utilizes a dynamic action to refresh the report without reloading the page. This is enabled by adding the referenced page item to the "Page Items to Submit" field of the report and adding an "on change" dynamic action to the <strong>P3_S'
||'TATUS</strong> page item.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2672173865672187346)
,p_name=>'Classic Report'
,p_region_name=>'classic_report'
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Region--noBorder:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rowid,',
'       ID,',
'       PROJECT,',
'       TASK_NAME,',
'       START_DATE,',
'       END_DATE,',
'       STATUS,',
'       ASSIGNED_TO,',
'       COST,',
'       BUDGET',
'from EBA_DEMO_IR_PROJECTS',
'where (nvl(:P3_STATUS,''0'') = ''0'' or :P3_STATUS = status)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P3_STATUS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
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
 p_id=>wwv_flow_imp.id(2675794158229221902)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>10
,p_column_heading=>'ROWID'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2672174285735187354)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2672174383816187354)
,p_query_column_id=>3
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>2
,p_column_heading=>'Project'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2672174473744187354)
,p_query_column_id=>4
,p_column_alias=>'TASK_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Task'
,p_column_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2:P2_ROWID:#ROWID#'
,p_column_linktext=>'#TASK_NAME#'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2672174563637187354)
,p_query_column_id=>5
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Start Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2672174684668187354)
,p_query_column_id=>6
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'End Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2672174757211187354)
,p_query_column_id=>7
,p_column_alias=>'STATUS'
,p_column_display_sequence=>6
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2672174857533187354)
,p_query_column_id=>8
,p_column_alias=>'ASSIGNED_TO'
,p_column_display_sequence=>7
,p_column_heading=>'Assigned To'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2672174959102187354)
,p_query_column_id=>9
,p_column_alias=>'COST'
,p_column_display_sequence=>8
,p_column_heading=>'Cost'
,p_column_format=>'999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2672175063122187354)
,p_query_column_id=>10
,p_column_alias=>'BUDGET'
,p_column_display_sequence=>9
,p_column_heading=>'Budget'
,p_column_format=>'999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1331834963318815988)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(2672173865672187346)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'classic_report')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2672175156515187354)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2675679758444212483)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2675729770565216012)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2675679758444212483)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset Report'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2675951272558235527)
,p_name=>'P3_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2675679758444212483)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DISTINCT STATUS VALUES'
,p_lov=>'select distinct status d, status r from EBA_DEMO_IR_PROJECTS order by 1'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Status Codes -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2138934649762209356)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2138934744625209357)
,p_event_id=>wwv_flow_imp.id(2138934649762209356)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2672173865672187346)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(214486658689956913)
,p_name=>'Refresh on Edit'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2672173865672187346)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(214486798810956914)
,p_event_id=>wwv_flow_imp.id(214486658689956913)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2672173865672187346)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Manage Sample Data'
,p_alias=>'MANAGE-SAMPLE-DATA'
,p_step_title=>'Manage Sample Data'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2672282263268201968)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2672309476631205300)
,p_plug_name=>'Manage Sample Application'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--defaultIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_source=>'<p>Click the Reset Data button to reset data used by the projects table to its initial defaults.</p>'
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
 p_id=>wwv_flow_imp.id(2188581733381988577)
,p_plug_name=>'Buttons'
,p_parent_plug_id=>wwv_flow_imp.id(2672309476631205300)
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2675349679606171356)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2188581733381988577)
,p_button_name=>'RESET_DATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset Data'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3285446385122705450)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2188581733381988577)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2677468373755472420)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,1::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 14-DEC-2011 13:59 by MIKE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2677340485745466428)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reset Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  eba_demo_ir_data;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2675349679606171356)
,p_process_success_message=>'The sample data used for this application has been reset.'
,p_internal_uid=>2664910375882760926
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_tab_set=>'TS1'
,p_name=>'Filtering'
,p_alias=>'FILTERING'
,p_step_title=>'Filtering'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'ul.sSearchResultsReport span.title span.highlight {',
'  background-color: #FFEA87;',
'  text-decoration: underline',
'  }',
'ul.sSearchResultsReport span.highlight {',
'  background-color: #FFEA87;',
'  }',
'</style>'))
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312001476889875519)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This classic report is a standard report region created using the create page wizard.  The SQL used to create the report is displayed in the show/hide region at the bottom of the page.  A <strong>Filter Side Bar</strong> region was also created on'
||' this page with a number of page items that can be used to control report results.  The value of the page items is referenced in the SQL query using standard bind variable syntax.</p>',
'',
'<p>Rather than including a "Go" button, the Search and Assigned To page items have their "Submit when Enter pressed" attribute set to yes.  There is also a dynamic action that will submit the page when the Status is changed.  For the Rows selector, "'
||'Page Action when Value Changed" is set to "Redirect and Set Value".  That action is available because the item is a select list.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2676205376159282689)
,p_plug_name=>'Filter'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_02'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2676206161965282691)
,p_plug_name=>'Filtering'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2676342175769293246)
,p_name=>'Filtered Data'
,p_region_name=>'filter_side_bar'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Region--noBorder:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rowid,',
'       ID,',
'       PROJECT,',
'       TASK_NAME,',
'       START_DATE,',
'       END_DATE,',
'       STATUS,',
'       ASSIGNED_TO,',
'       COST,',
'       BUDGET',
'from EBA_DEMO_IR_PROJECTS',
'where (nvl(:P5_STATUS,''0'') = ''0'' or instr(:P5_STATUS||'':'',status||'':'') > 0) and',
'     --',
'     (:P5_SEARCH is null or ',
'     instr(upper(project) || ''//''||',
'     upper(TASK_NAME) || ''//''||',
'     upper(ASSIGNED_TO) || ''//''||',
'     upper(STATUS),upper(:P5_SEARCH) ) > 0) and',
'     --',
'     (:P5_ASSIGNEE is null or instr(upper(assigned_to),upper(:P5_ASSIGNEE))>0)'))
,p_translate_title=>'N'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_item=>'P5_ROWS'
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
 p_id=>wwv_flow_imp.id(2676342382220293247)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>10
,p_column_heading=>'ROWID'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2676342456159293247)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2676342585083293247)
,p_query_column_id=>3
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>2
,p_column_heading=>'Project'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2676342671456293247)
,p_query_column_id=>4
,p_column_alias=>'TASK_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Task Name'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2676342756209293247)
,p_query_column_id=>5
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Start Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2676342858911293247)
,p_query_column_id=>6
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'End Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2676342965256293247)
,p_query_column_id=>7
,p_column_alias=>'STATUS'
,p_column_display_sequence=>6
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2676343061270293247)
,p_query_column_id=>8
,p_column_alias=>'ASSIGNED_TO'
,p_column_display_sequence=>7
,p_column_heading=>'Assigned To'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2676343180710293247)
,p_query_column_id=>9
,p_column_alias=>'COST'
,p_column_display_sequence=>8
,p_column_heading=>'Cost'
,p_column_format=>'999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2676343258209293247)
,p_query_column_id=>10
,p_column_alias=>'BUDGET'
,p_column_display_sequence=>9
,p_column_heading=>'Budget'
,p_column_format=>'999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1331835482499822323)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(2676342175769293246)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'filter_side_bar')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2676728782180332929)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2676206161965282691)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP,5::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2676206787237282695)
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 14-DEC-2011 09:16 by SHAKEEB'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2676205574057282689)
,p_name=>'P5_ASSIGNEE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2676205376159282689)
,p_prompt=>'Assigned To'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cMaxlength=>4000
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'Y',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2676205772839282690)
,p_name=>'P5_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2676205376159282689)
,p_prompt=>'Search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cMaxlength=>4000
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'Y',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2676430265164299593)
,p_name=>'P5_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2676205376159282689)
,p_prompt=>'Status'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare r varchar2(500) := null;',
'begin',
'for c1 in (select distinct status from EBA_DEMO_IR_PROJECTS) loop',
'   r := r||c1.status||'':'';',
'end loop;',
'return rtrim(r,'':'');',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'DISTINCT STATUS VALUES'
,p_lov=>'select distinct status d, status r from EBA_DEMO_IR_PROJECTS order by 1'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2692281984609927805)
,p_name=>'P5_ROWS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2676205376159282689)
,p_item_default=>'15'
,p_prompt=>'Rows'
,p_source=>'15'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'NUMBER OF ROWS PER PAGE'
,p_lov=>'.'||wwv_flow_imp.id(2692345580930936200)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'REDIRECT_SET_VALUE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2677868062767526005)
,p_name=>'submit report on status filter change'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2677868371682526006)
,p_event_id=>wwv_flow_imp.id(2677868062767526005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Drill Down IR'
,p_alias=>'DRILL-DOWN-IR'
,p_step_title=>'Drill Down Interactive Report'
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
 p_id=>wwv_flow_imp.id(1312013162353946983)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This interactive report was created using the create page wizard.  The SQL used to create the report is displayed in the show/hide region at the bottom of the page. Many columns of this report provide drill down capabilities.  To make a report col'
||'umn "hot" you edit the <strong>Column Link</strong> attributes which are on the <strong>Report Attributes</strong> tab of the interactive report region.  You can link report columns to other pages in the Oracle APEX application and control the sessio'
||'n state to be passed.  You can also link to custom URLs.  Your column link can access any of the values of a given report row using the <strong>#MY_COLUMN#</strong> syntax.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2188581824744988578)
,p_plug_name=>'Container'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1331835972363827037)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(2188581824744988578)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'projects_report')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2678627479875666402)
,p_plug_name=>'Projects'
,p_region_name=>'projects_report'
,p_parent_plug_id=>wwv_flow_imp.id(2188581824744988578)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'       PROJECT,',
'       count(*) tasks,',
'       min(START_DATE) first_start_date,',
'       max(END_DATE) last_end_date,',
'       sum(decode(STATUS,''Open'',1,0)) open,',
'       sum(decode(STATUS,''Closed'',1,0)) closed,',
'       sum(decode(STATUS,''Pending'',1,0)) pending,',
'       sum(decode(STATUS,''On-Hold'',1,0)) on_hold,   ',
'       count(distinct ASSIGNED_TO) assignees,',
'       sum(COST) total_cost,',
'       sum(BUDGET) total_budget,',
'       sum(BUDGET) - sum(COST) cost_vs_budget',
'from EBA_DEMO_IR_PROJECTS',
'group by project'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2678627569893666402)
,p_name=>'Projects'
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
,p_internal_uid=>2023772013846299992
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2678627777985666404)
,p_db_column_name=>'PROJECT'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Project'
,p_column_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,RR,CR:IR_PROJECT:#PROJECT#'
,p_column_linktext=>'#PROJECT#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2678627874834666404)
,p_db_column_name=>'TASKS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Tasks'
,p_column_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,RR,CR:IR_PROJECT:#PROJECT#'
,p_column_linktext=>'#TASKS#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2678627964389666404)
,p_db_column_name=>'FIRST_START_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'First Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2678628083502666404)
,p_db_column_name=>'LAST_END_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Last End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2678628157659666405)
,p_db_column_name=>'OPEN'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Open'
,p_column_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,RR,CR:IR_PROJECT,IR_STATUS:#PROJECT#,Open'
,p_column_linktext=>'#OPEN#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2678628256430666405)
,p_db_column_name=>'CLOSED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Closed'
,p_column_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,RR,CR:IR_PROJECT,IR_STATUS:#PROJECT#,Closed'
,p_column_linktext=>'#CLOSED#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2678628381465666405)
,p_db_column_name=>'PENDING'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Pending'
,p_column_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,RR,CR:IR_PROJECT,IR_STATUS:#PROJECT#,Pending'
,p_column_linktext=>'#PENDING#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2678628479133666405)
,p_db_column_name=>'ON_HOLD'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'On Hold'
,p_column_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,RR,CR:IR_PROJECT,IR_STATUS:#PROJECT#,On-Hold'
,p_column_linktext=>'#ON_HOLD#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2678628573898666405)
,p_db_column_name=>'ASSIGNEES'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Assignees'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2678628662346666405)
,p_db_column_name=>'TOTAL_COST'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Total Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2678628770408666405)
,p_db_column_name=>'TOTAL_BUDGET'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Total Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2678628862105666406)
,p_db_column_name=>'COST_VS_BUDGET'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Cost vs Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2678636280567666676)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'20237808'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PROJECT:TASKS:OPEN:CLOSED:PENDING:ON_HOLD:TOTAL_COST:TOTAL_BUDGET:COST_VS_BUDGET'
,p_sum_columns_on_break=>'TOTAL_COST:TOTAL_BUDGET:COST_VS_BUDGET'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2678495872794627057)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2678817486763715767)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2678627479875666402)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_tab_set=>'TS1'
,p_name=>'Highlighting'
,p_alias=>'HIGHLIGHTING'
,p_step_title=>'Highlighting'
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
 p_id=>wwv_flow_imp.id(1312114458949667249)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This page demonstrates interactive report column highlighting features.  Developers cannot set interactive report highlighting by editing the page, it must be set by running the page.  Both developers and end users can set column highlighting.  To'
||' set highlighting, click the <strong>Actions</strong> pull down menu, then select <strong>Highlight</strong>.  When a column matches a specific condition, you can highlight at the row or column level.  The example below highlights the report <strong>'
||'Total Cost</strong> column in yellow when the value is greater then 5,000.  Developers can save report highlighting by clicking the <strong>Actions</strong> menu, then <strong>Save Report</strong>, and then <strong>Save as Default Report Settings</st'
||'rong>.  Developers can include or exclude each end-user feature of an interactive report by editing the interactive report settings.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2188581977611988579)
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
 p_id=>wwv_flow_imp.id(1331836563521831054)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(2188581977611988579)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'projects_report')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2678877884902773930)
,p_plug_name=>'Projects'
,p_region_name=>'projects_report'
,p_parent_plug_id=>wwv_flow_imp.id(2188581977611988579)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'       PROJECT,',
'       count(*) tasks,',
'       min(START_DATE) first_start_date,',
'       max(END_DATE) last_end_date,',
'       sum(decode(STATUS,''Open'',1,0)) open,',
'       sum(decode(STATUS,''Closed'',1,0)) closed,',
'       sum(decode(STATUS,''Pending'',1,0)) pending,',
'       sum(decode(STATUS,''On-Hold'',1,0)) on_hold,   ',
'       count(distinct ASSIGNED_TO) assignees,',
'       sum(COST) total_cost,',
'       sum(BUDGET) total_budget,',
'       sum(BUDGET) - sum(COST) cost_vs_budget',
'from EBA_DEMO_IR_PROJECTS',
'group by project'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2678878086458773936)
,p_name=>'Projects'
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
,p_internal_uid=>2024022530411407526
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2678878182018773938)
,p_db_column_name=>'PROJECT'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Project'
,p_column_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,RIR,CIR:IR_PROJECT:#PROJECT#'
,p_column_linktext=>'#PROJECT#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2678878263540773938)
,p_db_column_name=>'TASKS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Tasks'
,p_column_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,RIR,CIR:IR_PROJECT:#PROJECT#'
,p_column_linktext=>'#TASKS#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2678878361865773939)
,p_db_column_name=>'FIRST_START_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'First Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2678878488194773939)
,p_db_column_name=>'LAST_END_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Last End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2678878582540773939)
,p_db_column_name=>'OPEN'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Open'
,p_column_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,RIR,CIR:IR_PROJECT,IR_STATUS:#PROJECT#,Open'
,p_column_linktext=>'#OPEN#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2678878669413773939)
,p_db_column_name=>'CLOSED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Closed'
,p_column_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,RIR,CIR:IR_PROJECT,IR_STATUS:#PROJECT#,Closed'
,p_column_linktext=>'#CLOSED#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2678878788181773939)
,p_db_column_name=>'PENDING'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Pending'
,p_column_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,RIR,CIR:IR_PROJECT,IR_STATUS:#PROJECT#,Pending'
,p_column_linktext=>'#PENDING#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2678878876465773939)
,p_db_column_name=>'ON_HOLD'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'On Hold'
,p_column_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,RIR,CIR:IR_PROJECT,IR_STATUS:#PROJECT#,On-Hold'
,p_column_linktext=>'#ON_HOLD#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2678878981010773939)
,p_db_column_name=>'ASSIGNEES'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Assignees'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2678879057851773939)
,p_db_column_name=>'TOTAL_COST'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Total Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2678879163090773940)
,p_db_column_name=>'TOTAL_BUDGET'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Total Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2678879275297773940)
,p_db_column_name=>'COST_VS_BUDGET'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Cost vs Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2678879381406773940)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'20240239'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PROJECT:TASKS:OPEN:CLOSED:PENDING:ON_HOLD:TOTAL_COST:TOTAL_BUDGET:COST_VS_BUDGET'
,p_sum_columns_on_break=>'TOTAL_COST:TOTAL_BUDGET:COST_VS_BUDGET'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(2678901066041813845)
,p_report_id=>wwv_flow_imp.id(2678879381406773940)
,p_name=>'Over Budget'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'COST_VS_BUDGET'
,p_operator=>'<'
,p_expr=>'0'
,p_condition_sql=>' (case when ("COST_VS_BUDGET" < to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# < #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#FF7755'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(2678901179689813845)
,p_report_id=>wwv_flow_imp.id(2678879381406773940)
,p_name=>'Expensive Projects'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'TOTAL_COST'
,p_operator=>'>'
,p_expr=>'5000'
,p_condition_sql=>' (case when ("TOTAL_COST" > to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFFF99'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2678879782970773942)
,p_plug_name=>'Highlighting'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2678879575878773941)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2678877884902773930)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_tab_set=>'TS1'
,p_name=>'Format Masks'
,p_alias=>'FORMAT-MASKS'
,p_step_title=>'Format Masks'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312113275955624780)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This report uses the <strong>SINCE</strong> and <strong>DD-MON-YYYY</strong> date format masks.  It uses a <strong>999G999G999G999G999G990D00</strong> numeric format mask, the <strong>G</strong> represents the thousands separator and the <strong>D'
||'</strong> is the decimal separator.  The inline basic bar graph uses the <strong>PCT_GRAPH:CFDEF0:144485:150</strong> format masks.  To edit format masks, edit the report attributes, then edit a specific report column, and set the <strong>Number / Da'
||'te Format</strong> attribute.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2188582276711988582)
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
 p_id=>wwv_flow_imp.id(1331837386369835704)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(2188582276711988582)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'format_mask')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3055641160157488258)
,p_plug_name=>'Format Mask Example Report'
,p_region_name=>'format_mask'
,p_parent_plug_id=>wwv_flow_imp.id(2188582276711988582)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	',
'       PROJECT,',
'       START_DATE,',
'       END_DATE,',
'       STATUS,',
'       BUDGET,',
'       round(100*p.budget/tb.max_budget) graph',
'from EBA_DEMO_IR_PROJECTS p,',
'     (select max(budget) max_budget from EBA_DEMO_IR_PROJECTS) tb',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3055641286709488258)
,p_name=>'Format Mask Example Report'
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
,p_internal_uid=>2400785730662121848
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3055641474072488262)
,p_db_column_name=>'PROJECT'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Project'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3055641558687488265)
,p_db_column_name=>'START_DATE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'SINCE mask'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3055641658417488265)
,p_db_column_name=>'END_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'DD-MON-YYYY mask'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3055641756779488265)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3055642088383488266)
,p_db_column_name=>'BUDGET'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'999G999G999G999G999G990D00 mask'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3055803484922533269)
,p_db_column_name=>'GRAPH'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'PCT_GRAPH mask'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'PCT_GRAPH:CFDEF0:144485:150'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3055653471931491661)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'24007980'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PROJECT:START_DATE:END_DATE:STATUS:BUDGET:GRAPH:MAX_BUDGET:'
,p_sort_column_1=>'BUDGET'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PROJECT'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'COST'
,p_sort_direction_3=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3055539370345469291)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_tab_set=>'TS1'
,p_name=>'Use Cases'
,p_alias=>'USE-CASES'
,p_step_title=>'Use Cases'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1311754685163836159)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1311761461787866620)
,p_plug_name=>'Report Use Cases'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--basic:t-Cards--displayIcons:t-Cards--cols:t-Cards--desc-4ln:t-Cards--animColorFill'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_column=>false
,p_list_id=>wwv_flow_imp.id(1311899585662635546)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Sample Reporting'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
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
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1236684859938204156)
,p_plug_name=>'About this sample application'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This application highlights the reporting capabilities of Oracle APEX.  Use this application to better understand the native and declarative reporting functionality of APEX and how to write simple and advanced SQL.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1637831685846770051)
,p_plug_name=>'Oracle APEX Communities and Resources'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.SAMPLEAPPFOOTER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2135741721511156844)
,p_plug_name=>'&APP_NAME.'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'<p>Demonstration of reports and reporting techniques in Oracle APEX</p>'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3164959080763847870)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3164974572626882045)
,p_plug_name=>'Report Examples'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--4cols:t-Cards--desc-2ln:t-Cards--animColorFill'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(3164972187330880232)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_tab_set=>'TS1'
,p_name=>'Interactive Report'
,p_alias=>'INTERACTIVE-REPORT2'
,p_step_title=>'Interactive Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'.apexir_WORKSHEET_ICONS {border: none !important; -moz-box-shadow: none !important; -box-shadow: none !important; -webkit-box-shadow: none !important;}',
'.apexir_WORKSHEET_ICONS td {border-bottom: none !important}',
'.apexir_WORKSHEET_ICONS td img {border: 4px solid #CCC; -moz-border-radius: 4px; -webkit-border-radius: 4px;}',
'.apexir_WORKSHEET_CUSTOM td {',
'border-right: none !important;}',
'.reportDetail td.separator { border-top: 1px solid #DDD !important;}',
'</style>'))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(606314491403560945)
,p_plug_name=>'Drill Down Donut Chart Based on user''s Interactive Report Filters'
,p_region_name=>'dynamic_pie_chart'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(606314662356560946)
,p_region_id=>wwv_flow_imp.id(606314491403560945)
,p_chart_type=>'donut'
,p_height=>'400'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(606314715890560947)
,p_chart_id=>wwv_flow_imp.id(606314662356560946)
,p_seq=>10
,p_name=>'Tasks'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 project, to_number(c002) cost',
'from apex_collections',
'where collection_name = ''IR_RESULT_FROM_PAGE_11''',
'order by 2 desc, 1'))
,p_items_value_column_name=>'COST'
,p_items_label_column_name=>'PROJECT'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(606315042897560950)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(606314491403560945)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 project, to_number(c002) cost',
'from apex_collections',
'where collection_name = ''IR_RESULT_FROM_PAGE_11''',
'order by 2 desc, 1'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1311760082004850128)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1311931570788482864)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This example shows how to call the <strong>APEX_IR</strong> runtime API to get the SQL statement that corresponds to the current user''s interactive report filters and use this to dynamically update a chart.  Filter your report by status or any cri'
||'teria, and the pie chart will update to match.  The SQL for the base interactive report and the user''s current report filters and bind variables is exposed at the bottom of the page.  The "get chart data from IR result" dynamic action on this page pr'
||'ovides an example of how to call the interactive report API''s.</p>',
'',
'<p>As the interactive report is filtered or refreshed, a dynamic action is fired that creates a collection based on the current state of the interactive report.  It then refreshes the pie chart with the updated collection.  The result is having a pie'
||' chart that refreshes to match the filters of the report in real time.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2158942939682579867)
,p_plug_name=>'Interactive Report Source'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1311759667151850127)
,p_plug_name=>'Interactive Report Query Based on Current User''s Session'
,p_parent_plug_id=>wwv_flow_imp.id(2158942939682579867)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_report apex_ir.t_report;',
'  l_region_id   number;',
'begin',
'  select max(region_id) into l_region_id ',
'  from APEX_APPLICATION_PAGE_REGIONS ',
'  where application_id = :APP_ID and ',
'        page_id = :APP_PAGE_ID and ',
'        static_id = ''IR_EXAMPLE'';',
'',
'  l_report := apex_ir.get_report (',
'    p_page_id        => :app_page_id,',
'    p_region_id      => l_region_id);',
'  ',
'  sys.htp.p(''<p /><p />'');',
'  sys.htp.p(''<pre>'');  ',
'  sys.htp.p(apex_escape.html(l_report.sql_query));',
'  sys.htp.p(''</pre>'');',
'  sys.htp.p(''<p /><p />'');',
'  for i in 1..l_report.binds.count',
'  loop',
'      if i = 1 then',
'        sys.htp.p(''<b>Binds Interactive Report Uses To Run</b><p />'');',
'      end if;',
'      sys.htp.p(i||''. '');',
'      sys.htp.p(l_report.binds(i).name||'' = ''||apex_escape.html(l_report.binds(i).value));',
'      sys.htp.p(''<br />'');',
'  end loop;',
'  ',
'',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1311762862151881223)
,p_plug_name=>'Interactive Report'
,p_region_name=>'IR_EXAMPLE'
,p_parent_plug_id=>wwv_flow_imp.id(2158942939682579867)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	',
'       ID,',
'       PROJECT,',
'       TASK_NAME,',
'       START_DATE,',
'       END_DATE,',
'       STATUS,',
'       ASSIGNED_TO,',
'       COST,',
'       BUDGET,',
'       budget - cost available_budget',
'from EBA_DEMO_IR_PROJECTS'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1311762967410881223)
,p_name=>'Interactive Report'
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
,p_internal_uid=>656907411363514813
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1311763287009881226)
,p_db_column_name=>'ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Selected Project'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1311763387893881227)
,p_db_column_name=>'PROJECT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Project'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1311763459353881227)
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
 p_id=>wwv_flow_imp.id(1311763582938881227)
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
 p_id=>wwv_flow_imp.id(1311763683602881227)
,p_db_column_name=>'END_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1311763788114881227)
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
 p_id=>wwv_flow_imp.id(1311763867302881227)
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
 p_id=>wwv_flow_imp.id(1311763973809881227)
,p_db_column_name=>'COST'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1311764073021881227)
,p_db_column_name=>'BUDGET'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1311764162304881227)
,p_db_column_name=>'AVAILABLE_BUDGET'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Available Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1311764262844881453)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6569088'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'ID:PROJECT:TASK_NAME:START_DATE:END_DATE:STATUS:ASSIGNED_TO:COST:BUDGET:AVAILABLE_BUDGET'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(1332184385451151302)
,p_report_id=>wwv_flow_imp.id(1311764262844881453)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'AVAILABLE_BUDGET'
,p_operator=>'>'
,p_expr=>'0'
,p_condition_sql=>'"AVAILABLE_BUDGET" > to_number(#APXWS_EXPR#)'
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(1332184461106151302)
,p_report_id=>wwv_flow_imp.id(1311764262844881453)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'COST'
,p_operator=>'>'
,p_expr=>'100'
,p_condition_sql=>'"COST" > to_number(#APXWS_EXPR#)'
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(1332184587103151302)
,p_report_id=>wwv_flow_imp.id(1311764262844881453)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'STATUS'
,p_operator=>'='
,p_expr=>'Closed'
,p_condition_sql=>'"STATUS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Closed''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1331838882690852560)
,p_plug_name=>'Developer Supplied Query'
,p_parent_plug_id=>wwv_flow_imp.id(2158942939682579867)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'IR_EXAMPLE')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1311930967887472484)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1311762862151881223)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:11,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1312198163366387633)
,p_name=>'get chart data from IR result'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1311762862151881223)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1312198461386387638)
,p_event_id=>wwv_flow_imp.id(1312198163366387633)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_report     apex_ir.t_report;',
'  q            varchar2(32767);',
'  l_name_list  apex_application_global.vc_arr2;',
'  l_value_list apex_application_global.vc_arr2;',
'  c_collection_name constant varchar2(100) := ''IR_RESULT_FROM_PAGE_11'';',
'  l_region_id  number;',
'begin',
'  -- obtain region ID from interactive report page',
'  select max(region_id) into l_region_id ',
'  from APEX_APPLICATION_PAGE_REGIONS ',
'  where application_id = :APP_ID and page_id = 11 and static_id = ''IR_EXAMPLE'';',
'',
'  -- get SQL query from APEX_IR API',
'  l_report := apex_ir.get_report (',
'    p_page_id        => 11,',
'    p_region_id      => l_region_id);',
' ',
'  q := ''select s.project, sum(s.cost) from (''||l_report.sql_query||'') s group by project'';',
'  ',
'  for i in 1..l_report.binds.count',
'  loop',
'      l_name_list(l_name_list.count+1) := l_report.binds(i).name;',
'      l_value_list(l_value_list.count+1) := l_report.binds(i).value;',
'  end loop;',
'  ',
'  if apex_collection.collection_exists( p_collection_name => c_collection_name ) then',
'      apex_collection.delete_collection( p_collection_name => c_collection_name );',
'  end if;',
'  ',
'  apex_collection.create_collection_from_query_b(',
'        p_collection_name => c_collection_name,',
'        p_query           => q,',
'        p_names           => l_name_list,',
'        p_values          => l_value_list,',
'        p_max_row_count   => null);',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1312199175719390855)
,p_event_id=>wwv_flow_imp.id(1312198163366387633)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(606314491403560945)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_tab_set=>'TS1'
,p_name=>'Custom Buttons'
,p_alias=>'CUSTOM-BUTTONS'
,p_step_title=>'Custom Buttons'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'.apexir_WORKSHEET_ICONS {border: none !important; -moz-box-shadow: none !important; -box-shadow: none !important; -webkit-box-shadow: none !important;}',
'.apexir_WORKSHEET_ICONS td {border-bottom: none !important}',
'.apexir_WORKSHEET_ICONS td img {border: 4px solid #CCC; -moz-border-radius: 4px; -webkit-border-radius: 4px;}',
'.apexir_WORKSHEET_CUSTOM td {',
'border-right: none !important;}',
'.reportDetail td.separator { border-top: 1px solid #DDD !important;}',
'</style>'))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312003880615900875)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This example shows how to format report link columns to look like buttons using theme 25.  You include placeholder columns in your select statement and then use the Column Link definition to provide a class and style, along with target details.  E'
||'dit any of the columns used as buttons to view the class and styles used.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312006575282900890)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2188582353582988583)
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
 p_id=>wwv_flow_imp.id(1312004086590900877)
,p_plug_name=>'Interactive Report'
,p_region_name=>'IR_EXAMPLE'
,p_parent_plug_id=>wwv_flow_imp.id(2188582353582988583)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	',
'       PROJECT,',
'       count(distinct TASK_NAME) tasks,',
'       min(START_DATE) first_start_date,',
'       max(END_DATE) last_end_date,',
'       count(distinct ASSIGNED_TO) assignees,',
'       sum(cost) total_COST,',
'       sum(BUDGET) total_budget,',
'       1 Action,',
'       2 Edit,',
'       3 Copy',
'from EBA_DEMO_IR_PROJECTS',
'group by project'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1312004257218900882)
,p_name=>'Interactive Report'
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
,p_internal_uid=>657148701171534472
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312004464018900884)
,p_db_column_name=>'PROJECT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Project'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312008466232920646)
,p_db_column_name=>'FIRST_START_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'First Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312008568976920647)
,p_db_column_name=>'LAST_END_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Last End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312008664950920647)
,p_db_column_name=>'ASSIGNEES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Assignees'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312008764926920647)
,p_db_column_name=>'TOTAL_COST'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Total Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312008881342920647)
,p_db_column_name=>'TOTAL_BUDGET'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Total Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312009387354926005)
,p_db_column_name=>'TASKS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Tasks'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312009675277931616)
,p_db_column_name=>'ACTION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Action'
,p_column_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:1,RIR:IR_PROJECT:#PROJECT#'
,p_column_linktext=>'View Project'
,p_column_link_attr=>'class="t-Button t-Button--hot"'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312190685055310513)
,p_db_column_name=>'EDIT'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Edit'
,p_column_link=>'#'
,p_column_linktext=>'<span class="t-Icon fa fa-pencil"></span><span class="visuallyhidden">Edit</span>'
,p_column_link_attr=>'class="t-Button" title="Copy"'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312191771456332001)
,p_db_column_name=>'COPY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Copy'
,p_column_link=>'#'
,p_column_linktext=>'<span class="t-Icon fa fa-copy"></span><span class="visuallyhidden">Copy</span>'
,p_column_link_attr=>'class="t-Button t-Button--warning" title="Copy"'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1312005372259900885)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6571499'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EDIT:PROJECT:FIRST_START_DATE:LAST_END_DATE:ASSIGNEES:TOTAL_COST:TOTAL_BUDGET:TASKS:COPY:ACTION:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1331842174674901904)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(2188582353582988583)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'IR_EXAMPLE')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1312005759598900887)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1312004086590900877)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:12,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_tab_set=>'TS1'
,p_name=>'Non-Tabular Templates'
,p_alias=>'NON-TABULAR-TEMPLATES'
,p_step_title=>'Non-Tabular Templates'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1235919472526560697)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312116365323754231)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This classic report is a standard report region created using the create page wizard. The SQL used to create the report is displayed in the show/hide region at the bottom of the page. This report demonstrates a <strong>Comment Bubbles</strong> rep'
||'ort template, rather than a strictly tabular output.</p><p>Report templates define the layout for a specific row. The columns are positioned in the row using column position or column name syntax.  In this example, column name is used; the aliases gi'
||'ven to columns must match the names specified in the template. You can also create custom report templates using column position, so the first column selected by the report is <strong>#1#</strong>, the second is <strong>#2#</strong>, etc.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3165112577621627352)
,p_name=>'Comment Bubbles'
,p_region_name=>'comment_bubbles'
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null class,',
'    ''fa fa-user'' icon_modifier,',
'    null user_icon,',
'    ''Project: ''||PROJECT comment_text,',
'    ''<br>Task: ''||apex_escape.html(TASK_NAME) attribute_1,',
'    ''<br>Status: ''||apex_escape.html(Status) attribute_2,',
'    null attribute_3,',
'    null attribute_4,',
'    ASSIGNED_TO user_name,',
'    apex_util.get_since(START_DATE) as comment_date,',
'    null actions',
'from EBA_DEMO_IR_PROJECTS',
'where (nvl(:P13_STATUS,''0'') = ''0'' or :P13_STATUS = status)'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2613168815517880001
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_item=>'P13_ROWS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_imp.id(1309474881362118532)
,p_query_column_id=>1
,p_column_alias=>'CLASS'
,p_column_display_sequence=>1
,p_column_heading=>'Class'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2135743620230156863)
,p_query_column_id=>2
,p_column_alias=>'ICON_MODIFIER'
,p_column_display_sequence=>10
,p_column_heading=>'Icon modifier'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2135743700152156864)
,p_query_column_id=>3
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>11
,p_column_heading=>'User icon'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2135742853586156855)
,p_query_column_id=>4
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>2
,p_column_heading=>'Comment text'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2135742888989156856)
,p_query_column_id=>5
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>3
,p_column_heading=>'Attribute 1'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2135742987946156857)
,p_query_column_id=>6
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>4
,p_column_heading=>'Attribute 2'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2135743175578156858)
,p_query_column_id=>7
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>5
,p_column_heading=>'Attribute 3'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2135743235134156859)
,p_query_column_id=>8
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>6
,p_column_heading=>'Attribute 4'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2135743294387156860)
,p_query_column_id=>9
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>7
,p_column_heading=>'User name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2135743452508156861)
,p_query_column_id=>10
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Comment date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2135743527962156862)
,p_query_column_id=>11
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>9
,p_column_heading=>'Actions'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1331843087817910955)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(3165112577621627352)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'comment_bubbles')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3165113966413627358)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3165114188134627358)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3165113966413627358)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP,13::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2135743874918156865)
,p_name=>'P13_ROWS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3165112577621627352)
,p_use_cache_before_default=>'NO'
,p_source=>'5'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3165114372283627359)
,p_name=>'P13_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3165113966413627358)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DISTINCT STATUS VALUES'
,p_lov=>'select distinct status d, status r from EBA_DEMO_IR_PROJECTS order by 1'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Status Codes -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'REDIRECT_SET_VALUE')).to_clob
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
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
 p_id=>wwv_flow_imp.id(2061261481460834169)
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
 p_id=>wwv_flow_imp.id(2061261622387834170)
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
 p_id=>wwv_flow_imp.id(2061261728002834171)
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
 p_id=>wwv_flow_imp.id(2061261861142834172)
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
 p_id=>wwv_flow_imp.id(3252732179292430550)
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
 p_id=>wwv_flow_imp.id(3252732572296430551)
,p_plug_name=>'Quick Start'
,p_parent_plug_id=>wwv_flow_imp.id(3252732179292430550)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<H2>Getting Started</h2>',
'<p>Run the application as a developer; at the bottom of the page will be buttons for viewing the page in the Application Builder. Click on the "Edit Page X" button to see how the pages are defined.</p>',
'<p>If you have questions, ask them on the <a href="https://forums.oracle.com/forums/forum.jspa?forumID=137">OTN Forum</a>.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3252732778805430551)
,p_plug_name=>'Features'
,p_parent_plug_id=>wwv_flow_imp.id(3252732179292430550)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2>Features</h2>',
'<p />',
'<ul>',
'<li>Interactive Reports</li>',
'<ul>',
'<li>column filtering</li>',
'<li>column sorting</li>',
'<li>row high lighting</li>',
'<li>drill down reporting</li>',
'<li>saved reports</li>',
'<li>report column selection</li>',
'<li>row and detail views</li>',
'<li>column formatting</li>',
'</ul>',
'',
'<li>Interactive Grids</li>',
'<ul>',
'<li>column filtering</li>',
'<li>column sorting</li>',
'<li>drill down reporting</li>',
'<li>saved reports</li>',
'<li>report column selection</li>',
'<li>column formatting</li>',
'</ul>',
'',
'<li>Classic Reports</li>',
'',
'<ul>',
'<li>row linking</li>',
'<li>column formatting</li>',
'<li>column sorting</li>',
'<li>referencing field values in report SQL using bind variables</li>',
'</ul>',
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
 p_id=>wwv_flow_imp.id(3252732961636430552)
,p_plug_name=>'About this Application'
,p_parent_plug_id=>wwv_flow_imp.id(3252732179292430550)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2>About this Application</h2>',
'<p>This application highlights the reporting engines of Oracle APEX.</p><p>',
'',
'Use this application to better understand the native and declarative reporting functionality of Oracle APEX.</p>',
'',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3253702777850448546)
,p_plug_name=>'Help'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_display_condition_type=>'NEVER'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_tab_set=>'TS1'
,p_name=>'Bind Variables'
,p_alias=>'BIND-VARIABLES'
,p_step_title=>'Bind Variables'
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
 p_id=>wwv_flow_imp.id(1332483963102528564)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This page demonstrates an interactive report that is based on SQL using a bind variable.  Adjust the project to control the value of the <strong>:P15_PROJECT</strong> bind variable.  Note that bind variables are typically prefixed with a colon.  T'
||'he where clause of the query will show all rows if the value of the Oracle APEX page item <strong>P15_PROJECT</strong> is "0" (the Null Return Value of <strong>P15_PROJECT</strong>, which would be set for "- All Projects -", is set to "0").  See the '
||'full syntax below the full where clause of this query is <strong>NVL(:P15_PROJECT,''0'') = ''0'' or project = :P15_PROJECT</strong>.  Bind variables make SQL more efficient and secure.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1332484584544528565)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1332486465326542921)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2188582164741988581)
,p_plug_name=>'Container'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1332481688410528556)
,p_plug_name=>'Projects'
,p_region_name=>'projects_report'
,p_parent_plug_id=>wwv_flow_imp.id(2188582164741988581)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'       PROJECT,',
'       count(*) tasks,',
'       min(START_DATE) first_start_date,',
'       max(END_DATE) last_end_date,',
'       sum(decode(STATUS,''Open'',1,0)) open,',
'       sum(decode(STATUS,''Closed'',1,0)) closed,',
'       sum(decode(STATUS,''Pending'',1,0)) pending,',
'       sum(decode(STATUS,''On-Hold'',1,0)) on_hold,   ',
'       count(distinct ASSIGNED_TO) assignees,',
'       sum(COST) total_cost,',
'       sum(BUDGET) total_budget,',
'       sum(BUDGET) - sum(COST) cost_vs_budget',
'from EBA_DEMO_IR_PROJECTS',
'where NVL(:P15_PROJECT,''0'') = ''0'' or project = :P15_PROJECT',
'group by project'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1332481875492528557)
,p_name=>'Projects'
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
,p_internal_uid=>677626319445162147
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1332481984338528560)
,p_db_column_name=>'PROJECT'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Project'
,p_column_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,RIR,CIR:IR_PROJECT:#PROJECT#'
,p_column_linktext=>'#PROJECT#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1332482085464528561)
,p_db_column_name=>'TASKS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Tasks'
,p_column_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,RIR,CIR:IR_PROJECT:#PROJECT#'
,p_column_linktext=>'#TASKS#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1332482178495528561)
,p_db_column_name=>'FIRST_START_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'First Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1332482259292528561)
,p_db_column_name=>'LAST_END_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Last End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1332482372587528561)
,p_db_column_name=>'OPEN'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Open'
,p_column_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,RIR,CIR:IR_PROJECT,IR_STATUS:#PROJECT#,Open'
,p_column_linktext=>'#OPEN#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1332482466076528561)
,p_db_column_name=>'CLOSED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Closed'
,p_column_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,RIR,CIR:IR_PROJECT,IR_STATUS:#PROJECT#,Closed'
,p_column_linktext=>'#CLOSED#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1332482574684528561)
,p_db_column_name=>'PENDING'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Pending'
,p_column_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,RIR,CIR:IR_PROJECT,IR_STATUS:#PROJECT#,Pending'
,p_column_linktext=>'#PENDING#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1332482666400528561)
,p_db_column_name=>'ON_HOLD'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'On Hold'
,p_column_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,RIR,CIR:IR_PROJECT,IR_STATUS:#PROJECT#,On-Hold'
,p_column_linktext=>'#ON_HOLD#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1332482765420528561)
,p_db_column_name=>'ASSIGNEES'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Assignees'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1332482867106528562)
,p_db_column_name=>'TOTAL_COST'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Total Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1332482986256528562)
,p_db_column_name=>'TOTAL_BUDGET'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Total Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1332483072262528562)
,p_db_column_name=>'COST_VS_BUDGET'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Cost vs Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1332483166313528562)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6776277'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'PROJECT:TASKS:OPEN:CLOSED:PENDING:ON_HOLD:TOTAL_COST:TOTAL_BUDGET:COST_VS_BUDGET'
,p_sort_column_1=>'TASKS'
,p_sort_direction_1=>'DESC'
,p_sum_columns_on_break=>'TOTAL_COST:TOTAL_BUDGET:COST_VS_BUDGET'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1332484164216528565)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(2188582164741988581)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'projects_report')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1332483558829528563)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1332481688410528556)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:RP,15,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1332486859490547059)
,p_name=>'P15_PROJECT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1332486465326542921)
,p_prompt=>'Project'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECTS'
,p_lov=>'select distinct project d, project r from EBA_DEMO_IR_PROJECTS order by 1'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Projects -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_field_template=>2318601014859922299
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
,p_name=>'Interactive Grid'
,p_alias=>'INTERACTIVE-GRID'
,p_step_title=>'Interactive Grid'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3251825988630438039)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This interactive grid was created using the Create Page Wizard. The SQL used to create this report displays in the show/hide region at the bottom of the page. Interactive grids feature built-in search capability in that your search term is used to'
||' search across the row. They also allow for the addition of new rows (click the <strong>Add Row</strong> button), deletion of existing rows (select rows, click the top row actions icon, select <strong>Delete Rows</strong>), and editing of cell data i'
||'n any/all rows (double-click in any cell, change content, click the <strong>Save</strong> button).  You can sort and filter columns by clicking on column headings, click the <strong>Actions</strong> drop down menu to control the columns to display on'
||' the report and the order in which they are displayed.  You can also save custom reports, chart data, and perform many other actions.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4503665889195795100)
,p_plug_name=>'Projects'
,p_region_name=>'projects_report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	ROWID,',
'       ID,',
'       PROJECT,',
'       TASK_NAME,',
'       START_DATE,',
'       END_DATE,',
'       STATUS,',
'       ASSIGNED_TO,',
'       COST,',
'       BUDGET,',
'       budget - cost available_budget',
'from EBA_DEMO_IR_PROJECTS'))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1667088897747612872)
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
 p_id=>wwv_flow_imp.id(1667088982426612873)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(1667089121710612874)
,p_name=>'PROJECT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Project'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1667089205853612875)
,p_name=>'TASK_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Task name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(1667089317611612876)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Start date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1667089444935612877)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'End date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1667089534294612878)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1667089634905612879)
,p_name=>'ASSIGNED_TO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ASSIGNED_TO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Assigned to'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1667089693374612880)
,p_name=>'COST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COST'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cost'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(1667089809973612881)
,p_name=>'BUDGET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BUDGET'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Budget'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(1667089920714612882)
,p_name=>'AVAILABLE_BUDGET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AVAILABLE_BUDGET'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Available Budget'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1667090027991612883)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1667090137303612884)
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
 p_id=>wwv_flow_imp.id(1667088869865612871)
,p_internal_uid=>1652147890627228028
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>true
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
 p_id=>wwv_flow_imp.id(1954779979782994015)
,p_interactive_grid_id=>wwv_flow_imp.id(1667088869865612871)
,p_static_id=>'14124'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1954780103281994016)
,p_report_id=>wwv_flow_imp.id(1954779979782994015)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1954780674040994023)
,p_view_id=>wwv_flow_imp.id(1954780103281994016)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1667088897747612872)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1954781151437994031)
,p_view_id=>wwv_flow_imp.id(1954780103281994016)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1667088982426612873)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1954781664474994034)
,p_view_id=>wwv_flow_imp.id(1954780103281994016)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1667089121710612874)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>221
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1954782134976994036)
,p_view_id=>wwv_flow_imp.id(1954780103281994016)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1667089205853612875)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1954782588573994038)
,p_view_id=>wwv_flow_imp.id(1954780103281994016)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1667089317611612876)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>133
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1954783106202994039)
,p_view_id=>wwv_flow_imp.id(1954780103281994016)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1667089444935612877)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>132
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1954783645675994042)
,p_view_id=>wwv_flow_imp.id(1954780103281994016)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1667089534294612878)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1954784148224994044)
,p_view_id=>wwv_flow_imp.id(1954780103281994016)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1667089634905612879)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1954784618641994046)
,p_view_id=>wwv_flow_imp.id(1954780103281994016)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1667089693374612880)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1954785100771994049)
,p_view_id=>wwv_flow_imp.id(1954780103281994016)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1667089809973612881)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1954785669306994052)
,p_view_id=>wwv_flow_imp.id(1954780103281994016)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1667089920714612882)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>128
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1954794562607039913)
,p_view_id=>wwv_flow_imp.id(1954780103281994016)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(1667090027991612883)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(2986234903631532237)
,p_interactive_grid_id=>wwv_flow_imp.id(1667088869865612871)
,p_name=>'Costings'
,p_static_id=>'Costings'
,p_type=>'ALTERNATIVE'
,p_default_view=>'GRID'
,p_authorization_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2986235027130532238)
,p_report_id=>wwv_flow_imp.id(2986234903631532237)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2986235597889532245)
,p_view_id=>wwv_flow_imp.id(2986235027130532238)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1667088897747612872)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2986236075286532253)
,p_view_id=>wwv_flow_imp.id(2986235027130532238)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1667088982426612873)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2986236588323532256)
,p_view_id=>wwv_flow_imp.id(2986235027130532238)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1667089121710612874)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>366
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2986237058825532258)
,p_view_id=>wwv_flow_imp.id(2986235027130532238)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1667089205853612875)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>489
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2986237512422532260)
,p_view_id=>wwv_flow_imp.id(2986235027130532238)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1667089317611612876)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>133
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2986238030051532261)
,p_view_id=>wwv_flow_imp.id(2986235027130532238)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1667089444935612877)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>132
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2986238569524532264)
,p_view_id=>wwv_flow_imp.id(2986235027130532238)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1667089534294612878)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2986239072073532266)
,p_view_id=>wwv_flow_imp.id(2986235027130532238)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1667089634905612879)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2986239542490532268)
,p_view_id=>wwv_flow_imp.id(2986235027130532238)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1667089693374612880)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2986240024620532271)
,p_view_id=>wwv_flow_imp.id(2986235027130532238)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1667089809973612881)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2986240593155532274)
,p_view_id=>wwv_flow_imp.id(2986235027130532238)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1667089920714612882)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>128
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2986249486455578135)
,p_view_id=>wwv_flow_imp.id(2986235027130532238)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(1667090027991612883)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3271771570755776995)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(4503665889195795100)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'projects_report')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8224334819003770412)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1954777529551992839)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4503665889195795100)
,p_button_name=>'RESET_DATA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP,1,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1667090211451612885)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4503665889195795100)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Projects - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1654660101588907383
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_imp_page.create_page(
 p_id=>18
,p_tab_set=>'TS1'
,p_name=>'Linking to Interactive Reports'
,p_alias=>'LINKING-TO-INTERACTIVE-REPORTS'
,p_step_title=>'Linking to Interactive Reports'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312119772289896479)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>60
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312126358348927181)
,p_plug_name=>'Report Linking Examples'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(1312124974607927177)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>4072361143931175087
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1332309674069176386)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This page demonstrates how to create URLs that link to interactive report pages.  Click on the example links below and note the URL syntax used.  Use <strong>RR</strong> to reset an interactive report, use <strong>CR</strong> to clear an interacti'
||'ve report settings.  Use <strong>IR_&lt;your_report_column&gt;</strong> syntax to filter a report for an exact match.  Use <strong>IRC_&lt;your_report_column&gt;</strong> for a contains match, use <strong>IRGT_</strong> and <strong>IRLT_</strong> for'
||' greater than and less than filters. Pagination can be reset using <strong>RP</strong>.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2188582038426988580)
,p_plug_name=>'Container'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312122587374902515)
,p_plug_name=>'Interactive Report'
,p_region_name=>'IR_EXAMPLE'
,p_parent_plug_id=>wwv_flow_imp.id(2188582038426988580)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	',
'       PROJECT,',
'       TASK_NAME,',
'       START_DATE,',
'       END_DATE,',
'       STATUS,',
'       ASSIGNED_TO,',
'       COST,',
'       BUDGET,',
'       budget - cost available_budget',
'from EBA_DEMO_IR_PROJECTS'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1312122680212902515)
,p_name=>'Interactive Report'
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
,p_internal_uid=>657267124165536105
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312123060358902519)
,p_db_column_name=>'PROJECT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Project'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312123164325902521)
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
 p_id=>wwv_flow_imp.id(1312123268134902521)
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
 p_id=>wwv_flow_imp.id(1312123373037902521)
,p_db_column_name=>'END_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312123466345902521)
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
 p_id=>wwv_flow_imp.id(1312123585351902521)
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
 p_id=>wwv_flow_imp.id(1312123659011902521)
,p_db_column_name=>'COST'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312123763670902521)
,p_db_column_name=>'BUDGET'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312123874701902521)
,p_db_column_name=>'AVAILABLE_BUDGET'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Available Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(658338590170430722)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'status'
,p_report_seq=>10
,p_report_alias=>'status'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'PROJECT:TASK_NAME:START_DATE:END_DATE:STATUS:ASSIGNED_TO:COST:BUDGET:AVAILABLE_BUDGET'
,p_break_on=>'STATUS'
,p_break_enabled_on=>'STATUS'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1312123988066902666)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6572685'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'PROJECT:TASK_NAME:START_DATE:END_DATE:STATUS:ASSIGNED_TO:COST:BUDGET:AVAILABLE_BUDGET'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312153359052149766)
,p_plug_name=>'Interactive Report Query Based on Current User''s Session'
,p_parent_plug_id=>wwv_flow_imp.id(2188582038426988580)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_report apex_ir.t_report;',
'  l_region_id   number;',
'begin',
'  select max(region_id) into l_region_id ',
'  from APEX_APPLICATION_PAGE_REGIONS ',
'  where application_id = :APP_ID and ',
'        page_id = :APP_PAGE_ID and ',
'        static_id = ''IR_EXAMPLE'';',
'',
'  l_report := apex_ir.get_report (',
'    p_page_id        => :app_page_id,',
'    p_region_id      => l_region_id);',
'  ',
'  sys.htp.p(''<pre>'');  ',
'  sys.htp.p(apex_escape.html(l_report.sql_query));',
'  sys.htp.p(''</pre>'');',
'  sys.htp.p(''<p /><p />'');',
'  for i in 1..l_report.binds.count',
'  loop',
'      if i = 1 then',
'        sys.htp.p(''<b>Binds Interactive Report Uses To Run</b><p />'');',
'      end if;',
'      sys.htp.p(i||''. '');',
'      sys.htp.p(l_report.binds(i).name||'' = ''||apex_escape.html(l_report.binds(i).value));',
'      sys.htp.p(''<br />'');',
'  end loop;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1331845057624924959)
,p_plug_name=>'Developer Supplied Query'
,p_parent_plug_id=>wwv_flow_imp.id(2188582038426988580)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'IR_EXAMPLE')).to_clob
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_imp_page.create_page(
 p_id=>19
,p_tab_set=>'TS1'
,p_name=>'CASE Statement'
,p_alias=>'CASE-STATEMENT'
,p_step_title=>'CASE Statement'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312135358584059471)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312156088058177134)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The Oracle CASE statement is used to perform IF-THEN-ELSE logic in queries. It evaluates a single expression and compares it against several potential values, or evaluates multiple Boolean expressions and chooses the first one that is TRUE.  The i'
||'nteractive report below contains 2 CASE statements.  The first include an edit link only for projects that are not Closed.  Interactive Reports contain the ability to provide an edit link but when used, the link displays for all the records.  To cond'
||'itionally display, you need to use a method like this.  To include a link, which contains html, you must change the column display type to ''Standard Report Columns''.  It is also advisable to remove all the IR options so that the column cannot be hidd'
||'en, filtered on, used in a an aggregate, etc. as those functions are not appropriate for a link.  Note that when a link is not provided, ''&#38;nbsp;'' is returned so that the "Show Null Values as" value, set in the Report Attributes, will not display.'
||'</p>',
'',
'<p>The second CASE statement provide the Current Estimate for each project.  If the project is On-Hold, the estimate is 0.  If the project is Closed, the COST is used (instead of the budgeted value).  For all other project statuses, the budgeted valu'
||'e is used.  The report then contains a sum on Budget, Cost and Current Estimate (which display after the last record) using the interactive report aggregate function.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2188582490037988585)
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
 p_id=>wwv_flow_imp.id(1312135666877066891)
,p_plug_name=>'Case Statements'
,p_region_name=>'QUERY'
,p_parent_plug_id=>wwv_flow_imp.id(2188582490037988585)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	',
'       case when status != ''Closed''',
'            then ''<a href="''||apex_util.prepare_url(''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::2:P2_ROWID:''||ROWID) || ''"><img src="#IMAGE_PREFIX#menu/pencil2_16x16.gif" alt="edit"></a>'' ',
'            else ''&nbsp;''',
'            end edit_link,',
'       PROJECT,',
'       TASK_NAME,',
'       STATUS,',
'       ASSIGNED_TO,',
'       BUDGET,',
'       COST,',
'       case when status = ''On-Hold'' then 0',
'            when status = ''Closed''  then cost',
'            else budget',
'            end estimated_cost',
'from EBA_DEMO_IR_PROJECTS'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1312135786116066891)
,p_name=>'Case Statements'
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
,p_internal_uid=>657280230068700481
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312135964828066893)
,p_db_column_name=>'PROJECT'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Project'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312136086790066893)
,p_db_column_name=>'TASK_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Task Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312136370686066893)
,p_db_column_name=>'STATUS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312136456538066893)
,p_db_column_name=>'ASSIGNED_TO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Assigned To'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312136575387066894)
,p_db_column_name=>'COST'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312136656839066894)
,p_db_column_name=>'BUDGET'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312462575635350881)
,p_db_column_name=>'EDIT_LINK'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Edit'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312463673884382074)
,p_db_column_name=>'ESTIMATED_COST'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Current Estimate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1312136867570067072)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6572814'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDIT_LINK:PROJECT:TASK_NAME:STATUS:ASSIGNED_TO:BUDGET:COST:ESTIMATED_COST'
,p_sort_column_1=>'PROJECT'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'TASK_NAME'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_sum_columns_on_break=>'ESTIMATED_COST:BUDGET:COST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1331846266669935962)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(2188582490037988585)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'QUERY')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1312210356496489681)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1312135666877066891)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(214487306225956919)
,p_name=>'Refresh on Edit'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1312135666877066891)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(214487368375956920)
,p_event_id=>wwv_flow_imp.id(214487306225956919)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1312135666877066891)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Top N Queries'
,p_alias=>'TOP-N-QUERIES'
,p_step_title=>'Top N Queries'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312143981231093758)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312155883556175762)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>The following use cases highlights how to perform a TOP N query using Oracle Database 11g.  It uses an inline view with where clause to limit <strong>ROWNUM</strong> <= 10.  Expand the <strong>SQL Source</strong> to see an example.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2199367965938662850)
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
 p_id=>wwv_flow_imp.id(1312142376894093752)
,p_plug_name=>'Query'
,p_region_name=>'topn_report'
,p_parent_plug_id=>wwv_flow_imp.id(2199367965938662850)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * ',
'from (',
'select	',
'       PROJECT,',
'       TASK_NAME,',
'       START_DATE,',
'       END_DATE,',
'       STATUS,',
'       ASSIGNED_TO,',
'       COST,',
'       BUDGET',
'from EBA_DEMO_IR_PROJECTS',
'order by budget desc, project, task_name',
') x',
'where rownum <= 10'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1312142563814093753)
,p_name=>'Case Statements'
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
,p_internal_uid=>657287007766727343
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312142671519093753)
,p_db_column_name=>'PROJECT'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Project'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312142759207093753)
,p_db_column_name=>'TASK_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Task Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312142861947093753)
,p_db_column_name=>'START_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312142960016093753)
,p_db_column_name=>'END_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312143062779093753)
,p_db_column_name=>'STATUS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312143160633093753)
,p_db_column_name=>'ASSIGNED_TO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Assigned To'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312143273605093753)
,p_db_column_name=>'COST'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312143377839093754)
,p_db_column_name=>'BUDGET'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1312143559635093754)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6572881'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PROJECT:TASK_NAME:START_DATE:END_DATE:STATUS:ASSIGNED_TO:COST:BUDGET'
,p_sort_column_1=>'BUDGET'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1331834058586802988)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(2199367965938662850)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'topn_report')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1312402357870814839)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1312142376894093752)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:20,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_imp_page.create_page(
 p_id=>21
,p_name=>'Analytic Function Examples'
,p_alias=>'ANALYTIC-FUNCTION-EXAMPLES'
,p_step_title=>'Analytic Function Examples'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1597533340252430747)
,p_plug_name=>'Analytic Functions'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--desc-4ln:u-colors:t-Cards--3cols:t-Cards--basic:t-Cards--animColorFill'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_list_id=>wwv_flow_imp.id(1312351770702619820)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1597534157025431160)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_imp_page.create_page(
 p_id=>22
,p_tab_set=>'TS1'
,p_name=>'Inline Views'
,p_alias=>'INLINE-VIEWS'
,p_step_title=>'Inline Views'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312147057923101519)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312155378361174268)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This report highlights the use of inline views to collect additional data for a report. Three methods of creating an inline view are demonstrated. First, the total_sal inline view is created using the with clause prior to the initial select statem'
||'ent. This creates a view which can be referenced in the from clause(s) of the SQL query. Second, the dept_info inline view is created directly in the from clause through the use of parentheses. And third, the employees, dept_sal, avg_sal, and median_'
||'sal columns are populated by single-row, single column inline views which are created directly in the select clause.</p>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2188583305307988593)
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
 p_id=>wwv_flow_imp.id(1312145272542101516)
,p_plug_name=>'Inline Views'
,p_region_name=>'QUERY'
,p_parent_plug_id=>wwv_flow_imp.id(2188583305307988593)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with total_sal as (',
'    select sum(sal) tsal',
'    from EBA_DEMO_IR_EMP',
')',
'select dept_info.deptno,',
'    dept_info.dname,',
'    dept_info.loc,',
'    dept_info.employees,',
'    dept_info.dept_sal,',
'    dept_info.avg_sal,',
'    dept_info.median_sal,',
'    100*(dept_info.dept_sal/total_sal.tsal) pct_of_total',
'from (  select deptno,',
'            dname,',
'            loc,',
'            (   select count(*)',
'                from EBA_DEMO_IR_EMP e',
'                where e.deptno = d.deptno) employees,',
'            (   select sum(sal)',
'                from EBA_DEMO_IR_EMP e',
'                where e.deptno = d.deptno) dept_sal,',
'            (   select avg(sal)',
'                from EBA_DEMO_IR_EMP e',
'                where e.deptno = d.deptno) avg_sal,',
'            (   select median(sal)',
'                from EBA_DEMO_IR_EMP e',
'                where e.deptno = d.deptno) median_sal',
'        from eba_demo_ir_dept d) dept_info,',
'    total_sal'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1312145474973101517)
,p_name=>'Case Statements'
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
,p_internal_uid=>657289918925735107
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312322369956381124)
,p_db_column_name=>'DEPTNO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Department'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312322457406381125)
,p_db_column_name=>'DNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312322558012381125)
,p_db_column_name=>'LOC'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312322671817381126)
,p_db_column_name=>'EMPLOYEES'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Employees'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312322864004381126)
,p_db_column_name=>'AVG_SAL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Average Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312322971828381126)
,p_db_column_name=>'MEDIAN_SAL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Median Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312327566899428126)
,p_db_column_name=>'PCT_OF_TOTAL'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Pct of Total'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312327859998431275)
,p_db_column_name=>'DEPT_SAL'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Total Salary for Department'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1312146466194101519)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6572910'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DEPTNO:DNAME:LOC:EMPLOYEES:DEPT_SAL:AVG_SAL:MEDIAN_SAL:PCT_OF_TOTAL:'
,p_sort_column_1=>'DEPTNO'
,p_sort_direction_1=>'ASC'
,p_sum_columns_on_break=>'TOTAL_SALARIES'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1331847486929941756)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(2188583305307988593)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'QUERY')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1312323075045384460)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1312145272542101516)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:RP,22,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_imp_page.create_page(
 p_id=>23
,p_tab_set=>'TS1'
,p_name=>'Group By Clause'
,p_alias=>'GROUP-BY-CLAUSE'
,p_step_title=>'Group By Clause'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312151059376131069)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312155073859172994)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>A GROUP BY clause groups results into subsets that have matching values for one or more columns.  The GROUP BY clause allows a developer to use SQL aggregate functions (AVG, COUNT, MAX, MIN, STDDEV, SUM and VARIANCE).  With a GROUP BY, you can als'
||'o include the HAVING clause.  This applies a where clause after the aggregation.  The classic report below is grouped by Project and several aggregate functions are used.  There is a HAVING clause to display only those projects that are over budget ('
||'only those whose cost is greater than their budget.  The format mask "999G999G999G999G990D00PR" is used for the Delta to highlight the negative values because it returns negative values in <angle brackets>.  View the SQL Source for the group by detai'
||'ls.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1312443485322229595)
,p_name=>'Group By Clause'
,p_region_name=>'QUERY'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Region--noBorder:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PROJECT,',
'       count(*) tasks,',
'       min(START_DATE) first_task_starts,',
'       max(END_DATE) last_task_completes,',
'       count(distinct ASSIGNED_TO) assignees,',
'       sum(cost) total_cost,',
'       sum(budget) total_budget,',
'       sum(budget - cost) delta',
'from EBA_DEMO_IR_PROJECTS',
'group by project',
'having sum(budget - cost) < 0',
'order by 8 desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_imp.id(1312443778070229596)
,p_query_column_id=>1
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>1
,p_column_heading=>'Project'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312443869428229596)
,p_query_column_id=>2
,p_column_alias=>'TASKS'
,p_column_display_sequence=>2
,p_column_heading=>'Tasks'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312443976201229596)
,p_query_column_id=>3
,p_column_alias=>'FIRST_TASK_STARTS'
,p_column_display_sequence=>3
,p_column_heading=>'First Task Starts'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312444069720229596)
,p_query_column_id=>4
,p_column_alias=>'LAST_TASK_COMPLETES'
,p_column_display_sequence=>4
,p_column_heading=>'Last Task Completes'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312444170946229596)
,p_query_column_id=>5
,p_column_alias=>'ASSIGNEES'
,p_column_display_sequence=>5
,p_column_heading=>'Assignees'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312444260359229596)
,p_query_column_id=>6
,p_column_alias=>'TOTAL_COST'
,p_column_display_sequence=>6
,p_column_heading=>'Total Cost'
,p_column_format=>'999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312444382749229596)
,p_query_column_id=>7
,p_column_alias=>'TOTAL_BUDGET'
,p_column_display_sequence=>7
,p_column_heading=>'Total Budget'
,p_column_format=>'999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312444474427229596)
,p_query_column_id=>8
,p_column_alias=>'DELTA'
,p_column_display_sequence=>8
,p_column_heading=>'Delta'
,p_column_format=>'999G999G999G999G990D00PR'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1331853758186031081)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(1312443485322229595)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'QUERY')).to_clob
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_imp_page.create_page(
 p_id=>24
,p_tab_set=>'TS1'
,p_name=>'LEAD and LAG'
,p_alias=>'LEAD-AND-LAG'
,p_step_title=>'LEAD and LAG'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312159087923196253)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>The following query highlights LEAD and LAG functions.  Use LEAD function to return data from the next row.  Use LAG function to return data from a previous row.  Expand the <strong>SQL Source</strong> to see an example.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312159467075196253)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2199367415044662845)
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
 p_id=>wwv_flow_imp.id(1312157468876196249)
,p_plug_name=>'LEAD and LAG'
,p_region_name=>'QUERY'
,p_parent_plug_id=>wwv_flow_imp.id(2199367415044662845)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ename,',
'       sal,',
'       LEAD(sal, 1, 0) OVER (ORDER BY sal DESC NULLS LAST) next_lower_sal,',
'       LAG(sal, 1, 0) OVER (ORDER BY sal DESC NULLS LAST) prev_higher_sal',
'FROM eba_demo_ir_emp'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1312157669511196251)
,p_name=>'Case Statements'
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
,p_internal_uid=>657302113463829841
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312395068592791092)
,p_db_column_name=>'SAL'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312395172323791092)
,p_db_column_name=>'NEXT_LOWER_SAL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Next Lower Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312395256982791092)
,p_db_column_name=>'PREV_HIGHER_SAL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Prev Higher Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312401064446793874)
,p_db_column_name=>'ENAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1312158686223196252)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6573032'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'ENAME:SAL:NEXT_LOWER_SAL:PREV_HIGHER_SAL'
,p_sort_column_1=>'SAL'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1331854082758034952)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(2199367415044662845)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'QUERY')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1312349364207599023)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1312157468876196249)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:24,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_imp_page.create_page(
 p_id=>25
,p_tab_set=>'TS1'
,p_name=>'Pivot Syntax'
,p_alias=>'PIVOT-SYNTAX'
,p_step_title=>'Pivot Syntax'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>'.highlight {background-color: yellow;}'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1312160565500210567)
,p_name=>'Pivot Query Syntax'
,p_region_name=>'QUERY'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'    select project, status',
'    from eba_demo_ir_projects',
')',
'pivot',
'(',
'    count(status)',
'    for status in (''Open'' as "Open",''Closed'' as "Closed",''Pending'' as "Pending",''On-Hold'' as "On-Hold")',
')',
'order by project'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2188582760973988587)
,p_query_column_id=>1
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>1
,p_column_heading=>'Project'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2188582808064988588)
,p_query_column_id=>2
,p_column_alias=>'Open'
,p_column_display_sequence=>2
,p_column_heading=>'Open'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2188582879699988589)
,p_query_column_id=>3
,p_column_alias=>'Closed'
,p_column_display_sequence=>3
,p_column_heading=>'Closed'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2188583078275988590)
,p_query_column_id=>4
,p_column_alias=>'Pending'
,p_column_display_sequence=>4
,p_column_heading=>'Pending'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2188583114509988591)
,p_query_column_id=>5
,p_column_alias=>'On-Hold'
,p_column_display_sequence=>5
,p_column_heading=>'On-hold'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1331854773701039082)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(1312160565500210567)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'QUERY',
  'attribute_02', 'P25_OPERATOR')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312162168245210571)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This report highlights the use of the <a href="http://docs.oracle.com/cd/E11882_01/server.112/e25554/analysis.htm#BCFHHHHF" target="_blank"><strong>PIVOT operator</strong></a>.  This operator takes data in separate rows, aggregates it, and convert'
||'s it into columns.  Expand the <strong>SQL Source</strong> region to see the SQL syntax.</p>',
'<p>Note that in APEX 5.0, the <strong>PIVOT</strong> functionality was added to interactive reports.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312162757817210571)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1313431376678192446)
,p_name=>'P25_OPERATOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1312162168245210571)
,p_use_cache_before_default=>'NO'
,p_item_default=>'PIVOT'
,p_source=>'PIVOT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_imp_page.create_page(
 p_id=>26
,p_tab_set=>'TS1'
,p_name=>'Connect By'
,p_alias=>'CONNECT-BY'
,p_step_title=>'Connect By'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312213676747509821)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>If a table contains hierarchical data, you can use CONNECT BY PRIOR to access the details about the current row''s parents.  The Indented Hierarchy display in the classic report below is created using the pseudo column LEVEL.  That numerical repres'
||'entation is used to indent the employees using LPAD, producing a tree-like display.  Using SYS_CONNECT_BY_PATH, includes the full parent path (rather than just the immediate parent value).  The greater than sign is used as the separator and it is "LT'
||'RIM"ed so that it will not display before the president''s name.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312214080272509823)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1312418357506013402)
,p_name=>'Connect By'
,p_region_name=>'QUERY'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Region--noBorder:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       empno, ',
'       mgr,',
'       ename, ',
'       case when level > 1',
'            then lpad('' '',((level-1)*3)+1,'' . '')',
'            end || ename padded_ename,',
'       ltrim(sys_connect_by_path(ename,'' > ''),'' > '') manager_hierarchy',
'from eba_demo_ir_emp',
'connect by prior empno = mgr',
'start with mgr is null',
'order siblings by ename'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_imp.id(1312418666545013404)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Employee Number'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312418959107013406)
,p_query_column_id=>2
,p_column_alias=>'MGR'
,p_column_display_sequence=>2
,p_column_heading=>'Manager'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312418765453013406)
,p_query_column_id=>3
,p_column_alias=>'ENAME'
,p_column_display_sequence=>3
,p_column_heading=>'Employee Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312422986019042187)
,p_query_column_id=>4
,p_column_alias=>'PADDED_ENAME'
,p_column_display_sequence=>4
,p_column_heading=>'Indented Hierarchy'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312419460230013406)
,p_query_column_id=>5
,p_column_alias=>'MANAGER_HIERARCHY'
,p_column_display_sequence=>5
,p_column_heading=>'Full Path'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1332411868124269558)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(1312418357506013402)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'QUERY')).to_clob
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_imp_page.create_page(
 p_id=>27
,p_tab_set=>'TS1'
,p_name=>'String Functions'
,p_alias=>'STRING-FUNCTIONS'
,p_step_title=>'String Functions'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>'.highlight {background-color: yellow;}'
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312217163930526219)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>Click the function names on the left to see string function examples.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312217762446526223)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>100
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312267672688213526)
,p_plug_name=>'Function Selection'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>110
,p_plug_display_point=>'REGION_POSITION_02'
,p_list_id=>wwv_flow_imp.id(1312261657666199752)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>4072361143931175087
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1312358756204643986)
,p_name=>'Substr Query'
,p_region_name=>'substr_report'
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Region--noBorder:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    empno,',
'    ename,',
'    job,',
'    mgr,',
'    hiredate,',
'    sal,',
'    comm,',
'    deptno',
'from',
'    eba_demo_ir_emp',
'where',
'    substr(ename,1,1) = ''M''',
'order by',
'    2'))
,p_display_when_condition=>'P27_FUNCTION'
,p_display_when_cond2=>'SUBSTR'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
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
 p_id=>wwv_flow_imp.id(1312359070374643987)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'EMPNO'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312359162055643989)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'ENAME'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312359282018643989)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'JOB'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312359385381643989)
,p_query_column_id=>4
,p_column_alias=>'MGR'
,p_column_display_sequence=>4
,p_column_heading=>'MGR'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312359471902643989)
,p_query_column_id=>5
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>5
,p_column_heading=>'HIREDATE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312359570100643989)
,p_query_column_id=>6
,p_column_alias=>'SAL'
,p_column_display_sequence=>6
,p_column_heading=>'SAL'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312359668959643989)
,p_query_column_id=>7
,p_column_alias=>'COMM'
,p_column_display_sequence=>7
,p_column_heading=>'COMM'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312359787732643989)
,p_query_column_id=>8
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>8
,p_column_heading=>'DEPTNO'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1332455973643373405)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(1312358756204643986)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>270
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'substr_report',
  'attribute_02', 'P27_FUNCTION')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1312363777984697617)
,p_name=>'Instr Query'
,p_region_name=>'instr_report'
,p_template=>4072358936313175081
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Region--noBorder:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    empno,',
'    ename,',
'    job,',
'    mgr,',
'    hiredate,',
'    sal,',
'    comm,',
'    deptno',
'from',
'    eba_demo_ir_emp',
'where',
'    instr(job,''SALES'') > 0',
'order by',
'    2'))
,p_display_when_condition=>'P27_FUNCTION'
,p_display_when_cond2=>'INSTR'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
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
 p_id=>wwv_flow_imp.id(1312364076808697618)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'EMPNO'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312364156463697618)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'ENAME'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312364273920697618)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'JOB'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312364365460697620)
,p_query_column_id=>4
,p_column_alias=>'MGR'
,p_column_display_sequence=>4
,p_column_heading=>'MGR'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312364475843697620)
,p_query_column_id=>5
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>5
,p_column_heading=>'HIREDATE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312364584653697620)
,p_query_column_id=>6
,p_column_alias=>'SAL'
,p_column_display_sequence=>6
,p_column_heading=>'SAL'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312364661224697620)
,p_query_column_id=>7
,p_column_alias=>'COMM'
,p_column_display_sequence=>7
,p_column_heading=>'COMM'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312364759699697620)
,p_query_column_id=>8
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>8
,p_column_heading=>'DEPTNO'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1332456957469380856)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(1312363777984697617)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>280
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'instr_report',
  'attribute_02', 'P27_FUNCTION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312380077815735438)
,p_plug_name=>'Substr Title Text'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_source=>'<p>This query uses the <a href="http://docs.oracle.com/cd/E11882_01/server.112/e26088/functions181.htm#i87066" target="_blank"><strong>SUBSTR()</strong></a> function to limit the results to employees whose last name starts with the letter "M".</p>'
,p_list_template_id=>4072361143931175087
,p_plug_query_row_template=>2538654340625403440
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P27_FUNCTION'
,p_plug_display_when_cond2=>'SUBSTR'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312380356475738670)
,p_plug_name=>'Instr Title Text'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_plug_source=>'<p>This query uses the <a href="http://docs.oracle.com/cd/E11882_01/server.112/e26088/functions080.htm#i77598" target="_blank"><strong>INSTR()</strong></a> function to limit the results to employees with a job title that contains the word "SALES".</p'
||'>'
,p_list_template_id=>4072361143931175087
,p_plug_query_row_template=>2538654340625403440
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P27_FUNCTION'
,p_plug_display_when_cond2=>'INSTR'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312402685921822855)
,p_plug_name=>'Nvl Title Text'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>60
,p_plug_source=>'<p>This query uses the <a href="http://docs.oracle.com/cd/E11882_01/server.112/e26088/functions119.htm#i91798" target="_blank"><strong>NVL()</strong></a> function to display a "0" commission value (instead of null) for employees'' who do not receive a'
||' commission as part of their salary.</p>'
,p_list_template_id=>4072361143931175087
,p_plug_query_row_template=>2538654340625403440
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P27_FUNCTION'
,p_plug_display_when_cond2=>'NVL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1312402858347824389)
,p_name=>'Nvl Query'
,p_region_name=>'nvl_query'
,p_template=>4072358936313175081
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Region--noBorder:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    empno,',
'    ename,',
'    job,',
'    mgr,',
'    hiredate,',
'    sal,',
'    nvl(comm, 0) comm,',
'    deptno',
'from',
'    eba_demo_ir_emp',
'order by',
'    7'))
,p_display_when_condition=>'P27_FUNCTION'
,p_display_when_cond2=>'NVL'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
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
 p_id=>wwv_flow_imp.id(1312403060337824392)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'EMPNO'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312403184204824393)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'ENAME'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312403775692824394)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'JOB'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312403284560824393)
,p_query_column_id=>4
,p_column_alias=>'MGR'
,p_column_display_sequence=>4
,p_column_heading=>'MGR'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312403385575824393)
,p_query_column_id=>5
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>5
,p_column_heading=>'HIREDATE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312403480445824393)
,p_query_column_id=>6
,p_column_alias=>'SAL'
,p_column_display_sequence=>6
,p_column_heading=>'SAL'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312403587857824393)
,p_query_column_id=>7
,p_column_alias=>'COMM'
,p_column_display_sequence=>7
,p_column_heading=>'COMM'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312403677507824394)
,p_query_column_id=>8
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>8
,p_column_heading=>'DEPTNO'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1332457683336384135)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(1312402858347824389)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>290
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'nvl_query',
  'attribute_02', 'P27_FUNCTION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312413388101955997)
,p_plug_name=>'Nvl2 Title Text'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>80
,p_plug_source=>'<p>This query uses the <a href="http://docs.oracle.com/cd/E11882_01/server.112/e26088/functions120.htm#i91806" target="_blank"><strong>NVL2()</strong></a> function to display a "Commissioned" or "Non-Commissioned" as the commission value. Employees n'
||'ot receiving a commission, show up as "Non-Commissioned".</p>'
,p_list_template_id=>4072361143931175087
,p_plug_query_row_template=>2538654340625403440
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P27_FUNCTION'
,p_plug_display_when_cond2=>'NVL2'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1312413561567957803)
,p_name=>'Nvl2 Query'
,p_region_name=>'nvl2_query'
,p_template=>4072358936313175081
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Region--noBorder:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    empno,',
'    ename,',
'    job,',
'    mgr,',
'    hiredate,',
'    sal,',
'    nvl2(comm, ''Commissioned'', ''Non-Commissioned'') as comm,',
'    deptno',
'from',
'    eba_demo_ir_emp',
'order by',
'    7'))
,p_display_when_condition=>'P27_FUNCTION'
,p_display_when_cond2=>'NVL2'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
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
 p_id=>wwv_flow_imp.id(1312413786047957803)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'EMPNO'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312413861337957803)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'ENAME'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312414472823957803)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'JOB'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312413956336957803)
,p_query_column_id=>4
,p_column_alias=>'MGR'
,p_column_display_sequence=>4
,p_column_heading=>'MGR'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312414059797957803)
,p_query_column_id=>5
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>5
,p_column_heading=>'HIREDATE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312414166077957803)
,p_query_column_id=>6
,p_column_alias=>'SAL'
,p_column_display_sequence=>6
,p_column_heading=>'SAL'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312414282871957803)
,p_query_column_id=>7
,p_column_alias=>'COMM'
,p_column_display_sequence=>7
,p_column_heading=>'COMM'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312414380223957803)
,p_query_column_id=>8
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>8
,p_column_heading=>'DEPTNO'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1332458171259389735)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(1312413561567957803)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>300
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'nvl2_query',
  'attribute_02', 'P27_FUNCTION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312436072331187961)
,p_plug_name=>'Coalesce Title Text'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>100
,p_plug_source=>'<p>This query uses the <a href="http://docs.oracle.com/cd/E11882_01/server.112/e26088/functions030.htm#i1001341" target="_blank"><strong>COALESCE()</strong></a> function to display all employees whose commission is higher than their salary.</p>'
,p_list_template_id=>4072361143931175087
,p_plug_query_row_template=>2538654340625403440
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P27_FUNCTION'
,p_plug_display_when_cond2=>'COALESCE'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1312437082374190905)
,p_name=>'Coalesce Query'
,p_region_name=>'coalesce_report'
,p_template=>4072358936313175081
,p_display_sequence=>110
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Region--noBorder:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    empno,',
'    ename,',
'    job,',
'    mgr,',
'    hiredate,',
'    sal,',
'    comm,',
'    deptno',
'from',
'    eba_demo_ir_emp',
'where',
'    coalesce(comm, sal) > sal',
'order by',
'    7'))
,p_display_when_condition=>'P27_FUNCTION'
,p_display_when_cond2=>'COALESCE'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
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
 p_id=>wwv_flow_imp.id(1312437284869190906)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'EMPNO'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312437372324190906)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'ENAME'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312437963758190906)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'JOB'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312437476461190906)
,p_query_column_id=>4
,p_column_alias=>'MGR'
,p_column_display_sequence=>4
,p_column_heading=>'MGR'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312437563340190906)
,p_query_column_id=>5
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>5
,p_column_heading=>'HIREDATE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312437677990190906)
,p_query_column_id=>6
,p_column_alias=>'SAL'
,p_column_display_sequence=>6
,p_column_heading=>'SAL'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312437772318190906)
,p_query_column_id=>7
,p_column_alias=>'COMM'
,p_column_display_sequence=>7
,p_column_heading=>'COMM'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312437884454190906)
,p_query_column_id=>8
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>8
,p_column_heading=>'DEPTNO'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1332458657888395857)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(1312437082374190905)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>310
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'coalesce_report',
  'attribute_02', 'P27_FUNCTION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312452271049320106)
,p_plug_name=>'Replace Title Text'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>120
,p_plug_source=>'<p>This query uses the <a href="http://docs.oracle.com/cd/E11882_01/server.112/e26088/functions153.htm#i78608" target="_blank"><strong>REPLACE()</strong></a> function to display a job title of "SALESPERSON" (instead of the real value, "SALESMAN").</p'
||'>'
,p_list_template_id=>4072361143931175087
,p_plug_query_row_template=>2538654340625403440
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P27_FUNCTION'
,p_plug_display_when_cond2=>'REPLACE'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1312452987671324877)
,p_name=>'Replace Query'
,p_region_name=>'replace_report'
,p_template=>4072358936313175081
,p_display_sequence=>130
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Region--noBorder:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    empno,',
'    ename,',
'    replace(job,''SALESMAN'',''SALESPERSON'') as job,',
'    mgr,',
'    hiredate,',
'    sal,',
'    comm,',
'    deptno',
'from',
'    eba_demo_ir_emp',
'where',
'    job = ''SALESMAN''',
'order by',
'    3'))
,p_display_when_condition=>'P27_FUNCTION'
,p_display_when_cond2=>'REPLACE'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
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
 p_id=>wwv_flow_imp.id(1312453788067324878)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'EMPNO'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312453877187324878)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'ENAME'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312453665788324878)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'JOB'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312453177387324878)
,p_query_column_id=>4
,p_column_alias=>'MGR'
,p_column_display_sequence=>4
,p_column_heading=>'MGR'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312453288409324878)
,p_query_column_id=>5
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>5
,p_column_heading=>'HIREDATE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312453378864324878)
,p_query_column_id=>6
,p_column_alias=>'SAL'
,p_column_display_sequence=>6
,p_column_heading=>'SAL'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312453475864324878)
,p_query_column_id=>7
,p_column_alias=>'COMM'
,p_column_display_sequence=>7
,p_column_heading=>'COMM'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312453560955324878)
,p_query_column_id=>8
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>8
,p_column_heading=>'DEPTNO'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1332459380520400554)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(1312452987671324877)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>320
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'replace_report',
  'attribute_02', 'P27_FUNCTION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312478774538548236)
,p_plug_name=>'Trim Title Text'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>140
,p_plug_source=>'<p>Department numbers are stored in multiples of ten (10, 20, 30, etc...). This query uses the <a href="http://docs.oracle.com/cd/E11882_01/server.112/e26088/functions219.htm#i79689" target="_blank"><strong>TRIM()</strong></a> function to display the'
||' department numbers without trailing zeros.</p>'
,p_list_template_id=>4072361143931175087
,p_plug_query_row_template=>2538654340625403440
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P27_FUNCTION'
,p_plug_display_when_cond2=>'TRIM'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1312503970083575322)
,p_name=>'Trim Query'
,p_region_name=>'trim_report'
,p_template=>4072358936313175081
,p_display_sequence=>150
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Region--noBorder:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    empno,',
'    ename,',
'    job,',
'    mgr,',
'    hiredate,',
'    sal,',
'    comm,',
'    trim(trailing 0 from deptno) as deptno',
'from',
'    eba_demo_ir_emp',
'order by',
'    8 asc'))
,p_display_when_condition=>'P27_FUNCTION'
,p_display_when_cond2=>'TRIM'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
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
 p_id=>wwv_flow_imp.id(1312504768993575323)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'EMPNO'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312504873816575323)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'ENAME'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312504687133575323)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'JOB'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312504185805575323)
,p_query_column_id=>4
,p_column_alias=>'MGR'
,p_column_display_sequence=>4
,p_column_heading=>'MGR'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312504259289575323)
,p_query_column_id=>5
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>5
,p_column_heading=>'HIREDATE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312504359096575323)
,p_query_column_id=>6
,p_column_alias=>'SAL'
,p_column_display_sequence=>6
,p_column_heading=>'SAL'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312504480582575323)
,p_query_column_id=>7
,p_column_alias=>'COMM'
,p_column_display_sequence=>7
,p_column_heading=>'COMM'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312504583309575323)
,p_query_column_id=>8
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>8
,p_column_heading=>'DEPTNO'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1332459873187403955)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(1312503970083575322)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>330
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'trim_report',
  'attribute_02', 'P27_FUNCTION')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1312280272452227971)
,p_name=>'P27_FUNCTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1312217163930526219)
,p_item_default=>'SUBSTR'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_imp_page.create_page(
 p_id=>28
,p_tab_set=>'TS1'
,p_name=>'Regular Expressions'
,p_alias=>'REGULAR-EXPRESSIONS'
,p_step_title=>'Regular Expressions'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>'.highlight {background-color: yellow;}'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312220783574561233)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>Regular expressions enable you to search for patterns in string data by using standardized syntax conventions.  This example finds all projects or task names that include <strong>migrate|migration|migrated</strong> text and performs the comparison'
||'s with case insensitivity.  See the SQL below.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312221376354561234)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2188583223943988592)
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
 p_id=>wwv_flow_imp.id(1312219181372561229)
,p_plug_name=>'Query use regex functions'
,p_region_name=>'regex_report'
,p_parent_plug_id=>wwv_flow_imp.id(2188583223943988592)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	',
'    PROJECT,',
'    TASK_NAME,',
'    START_DATE,',
'    END_DATE,',
'    STATUS,',
'    ASSIGNED_TO,',
'    COST,',
'    BUDGET,',
'    budget - cost as available_budget',
'from',
'    EBA_DEMO_IR_PROJECTS',
'where regexp_like(project||task_name,''(migrate|migration|migrated)'',''i'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1312219373091561231)
,p_name=>'Case Statements'
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
,p_internal_uid=>657363817044194821
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312219486429561231)
,p_db_column_name=>'PROJECT'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Project'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312219557831561231)
,p_db_column_name=>'TASK_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Task Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312219661392561232)
,p_db_column_name=>'START_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312219788408561232)
,p_db_column_name=>'END_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312219875910561232)
,p_db_column_name=>'STATUS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312219974060561232)
,p_db_column_name=>'ASSIGNED_TO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Assigned To'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312220086360561232)
,p_db_column_name=>'COST'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312220162420561232)
,p_db_column_name=>'BUDGET'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312220268519561232)
,p_db_column_name=>'AVAILABLE_BUDGET'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Available Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1312220379791561232)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6573649'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'PROJECT:TASK_NAME:START_DATE:END_DATE:STATUS:ASSIGNED_TO:COST:BUDGET:AVAILABLE_BUDGET'
,p_sort_column_1=>'COST'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1332461458738410668)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(2188583223943988592)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'regex_report',
  'attribute_02', 'P28_FUNCTION')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1312381883965756095)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1312219181372561229)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:RP,28,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1332476158664501926)
,p_name=>'P28_FUNCTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1312220783574561233)
,p_use_cache_before_default=>'NO'
,p_item_default=>'REGEXP_LIKE'
,p_source=>'REGEXP_LIKE'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_imp_page.create_page(
 p_id=>29
,p_tab_set=>'TS1'
,p_name=>'Soundex'
,p_alias=>'SOUNDEX'
,p_step_title=>'Soundex'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>'.highlight {background-color: yellow;}'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312265959229206075)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>The following use case shows how to use the <a href="http://docs.oracle.com/cd/E11882_01/server.112/e26088/functions167.htm#i78853" target="_blank"><strong>SOUNDEX()</strong></a> function to compare words that are spelled differently, but sound al'
||'ike in English.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312266567497206077)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312281160445276162)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1312281486418283695)
,p_name=>'SOUNDEX Query'
,p_region_name=>'QUERY'
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Region--noBorder:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select empno,',
'    ename,',
'    job,',
'    hiredate,',
'    sal,',
'    (select dname from eba_demo_ir_dept d where d.deptno = e.deptno) Department,',
'    soundex(ename) sndex_of_ename',
'from eba_demo_ir_emp e',
'where soundex(ename) = soundex(:P29_NAME_SEARCH)',
'    or :P29_NAME_SEARCH is null',
'order by ename'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_imp.id(1312281758792283830)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Employee #'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312281869876283840)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312281984978283840)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'Job'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312282082110283841)
,p_query_column_id=>4
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>4
,p_column_heading=>'Hiredate'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312282182396283841)
,p_query_column_id=>5
,p_column_alias=>'SAL'
,p_column_display_sequence=>5
,p_column_heading=>'Salary'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1312305868928320788)
,p_query_column_id=>6
,p_column_alias=>'DEPARTMENT'
,p_column_display_sequence=>6
,p_column_heading=>'Department'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1313432978623449935)
,p_query_column_id=>7
,p_column_alias=>'SNDEX_OF_ENAME'
,p_column_display_sequence=>7
,p_column_heading=>'Soundex Of Ename'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1332467277057417436)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(1312281486418283695)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'QUERY',
  'attribute_02', 'P29_FUNCTION')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1312265563601206075)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1312281160445276162)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset Report'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:RP,29,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1312283457091295861)
,p_name=>'P29_NAME_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1312281160445276162)
,p_prompt=>'Name Search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1313429656566004341)
,p_name=>'P29_FUNCTION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1312281160445276162)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SOUNDEX'
,p_source=>'SOUNDEX'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_imp_page.create_page(
 p_id=>30
,p_tab_set=>'TS1'
,p_name=>'LISTAGG'
,p_alias=>'LISTAGG'
,p_step_title=>'LISTAGG'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312332270797481868)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This report highlights the use of the LISTAGG function.  Use LISTAGG to order data within each group specified in the ORDER BY clause and then concatenate the values of the column in a comma delimited list.  Expand the <strong>SQL Source</strong> '
||'to see an example.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312333256186492642)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2199367512369662846)
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
 p_id=>wwv_flow_imp.id(1312331081360481863)
,p_plug_name=>'LISTAGG Query Syntax'
,p_region_name=>'QUERY'
,p_parent_plug_id=>wwv_flow_imp.id(2199367512369662846)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d.dname department,',
'       listagg(e.ename, '', '') within group (order by e.ename) dept_employee_list',
'from eba_demo_ir_emp e,',
'     eba_demo_ir_dept d',
'where d.deptno = e.deptno',
'group by d.DNAME'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1312331267015481865)
,p_name=>'Case Statements'
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
,p_internal_uid=>657475710968115455
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312360279222650306)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312360374361650306)
,p_db_column_name=>'DEPT_EMPLOYEE_LIST'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee List'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1312331863242481867)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6574764'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DEPARTMENT:DEPT_EMPLOYEE_LIST'
,p_sort_column_1=>'PROJECT'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1332468058726425854)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(2199367512369662846)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'QUERY')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1312335057140511803)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1312331081360481863)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:30,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_imp_page.create_page(
 p_id=>31
,p_tab_set=>'TS1'
,p_name=>'RANK and DENSE_RANK'
,p_alias=>'RANK-AND-DENSE-RANK'
,p_step_title=>'RANK and DENSE_RANK'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312367479491704252)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>The following query highlights RANK and DENSE_RANK functions to provide rank to the records based on some column value or expression. In case of a tie of 2 records at position N, RANK declares 2 positions N and skips position N+1 and gives positio'
||'n N+2 to the next record. While DENSE_RANK declares 2 positions N but does not skip position N+1.  Expand the <strong>SQL Source</strong> to see an example.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312368065024704254)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2199367659301662847)
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
 p_id=>wwv_flow_imp.id(1312365679312704246)
,p_plug_name=>'RANK and DENSE_RANK'
,p_region_name=>'QUERY'
,p_parent_plug_id=>wwv_flow_imp.id(2199367659301662847)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ename,',
'       sal,',
'       RANK() OVER (ORDER BY sal DESC NULLS LAST) RANK,',
'       DENSE_RANK() OVER (ORDER BY sal DESC NULLS LAST) DENSE_RANK',
'FROM eba_demo_ir_emp'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1312365869255704249)
,p_name=>'Case Statements'
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
,p_internal_uid=>657510313208337839
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312412576818955324)
,p_db_column_name=>'ENAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312412676895955324)
,p_db_column_name=>'SAL'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312412779254955324)
,p_db_column_name=>'RANK'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Rank'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312412887103955324)
,p_db_column_name=>'DENSE_RANK'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Dense Rank'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1312366876272704250)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6575114'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'ENAME:SAL:RANK:DENSE_RANK'
,p_sort_column_1=>'RANK'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1332468782436430095)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(2199367659301662847)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'QUERY')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1312367057161704250)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1312365679312704246)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:31,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_imp_page.create_page(
 p_id=>32
,p_tab_set=>'TS1'
,p_name=>'ROW_NUMBER'
,p_alias=>'ROW-NUMBER'
,p_step_title=>'ROW_NUMBER'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312375182086723265)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>The following query highlights ROW_NUMBER function to assign an unique number to a partition of records. This is very useful in reporting, especially in places where different partitions have their own unique numbers.  Expand the <strong>SQL Sourc'
||'e</strong> to see an example.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312375764670723266)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2199367857205662849)
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
 p_id=>wwv_flow_imp.id(1312373357763723257)
,p_plug_name=>'ROW_NUMBER'
,p_region_name=>'QUERY'
,p_parent_plug_id=>wwv_flow_imp.id(2199367857205662849)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT e.ename,',
'       d.dname,',
'       e.hiredate,',
'       ROW_NUMBER( ) OVER (PARTITION BY d.deptno ORDER BY e.hiredate NULLS LAST) hiredate_rank_order',
'FROM eba_demo_ir_emp e, eba_demo_ir_dept d',
'WHERE e.deptno = d.deptno'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1312373587033723261)
,p_name=>'Case Statements'
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
,p_internal_uid=>657518030986356851
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312407980797888720)
,p_db_column_name=>'HIREDATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Hiredate'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312408474927895394)
,p_db_column_name=>'ENAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1331852360355014944)
,p_db_column_name=>'HIREDATE_RANK_ORDER'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Hiredate Rank Order'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1331859069782086478)
,p_db_column_name=>'DNAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Dname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1312374580942723263)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6575191'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'ENAME:DNAME:HIREDATE:HIREDATE_RANK_ORDER:'
,p_sort_column_1=>'DNAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'HIREDATE_RANK_ORDER'
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
 p_id=>wwv_flow_imp.id(1332469271653435132)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(2199367857205662849)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'QUERY')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1312374777378723263)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1312373357763723257)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:32,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_imp_page.create_page(
 p_id=>33
,p_tab_set=>'TS1'
,p_name=>'RATIO_TO_REPORT'
,p_alias=>'RATIO-TO-REPORT'
,p_step_title=>'RATIO_TO_REPORT'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312371175219711953)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>The following query highlights RATIO_TO_REPORT function to compare the current value against the sum of the other set of values. The following example shows the percentage of each employee''s salary when compared to the total of all employee''s sala'
||'ries.  Expand the <strong>SQL Source</strong> to see an example.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312371779635711953)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2199367726516662848)
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
 p_id=>wwv_flow_imp.id(1312369371311711949)
,p_plug_name=>'RATIO_TO_REPORT'
,p_region_name=>'QUERY'
,p_parent_plug_id=>wwv_flow_imp.id(2199367726516662848)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ename,',
'       sal, ',
'       round(ratio_to_report(sal) OVER ( ),2) sal_ratio',
'FROM eba_demo_ir_emp'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1312369580196711951)
,p_name=>'Case Statements'
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
,p_internal_uid=>657514024149345541
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312405474182835664)
,p_db_column_name=>'ENAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312405580548835664)
,p_db_column_name=>'SAL'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312410767354929349)
,p_db_column_name=>'SAL_RATIO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Salary Ratio'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1312370567861711951)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6575151'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'ENAME:SAL:SAL_RATIO'
,p_sort_column_1=>'SAL_RATIO'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1332469761086439981)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(2199367726516662848)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'QUERY')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1312370774233711951)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1312369371311711949)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:33,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_imp_page.create_page(
 p_id=>34
,p_name=>'Application Theme Style'
,p_alias=>'APPLICATION-THEME-STYLE'
,p_step_title=>'Application Theme Style'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(666200382997841844)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1874385348664750244)
,p_plug_name=>'Set User Interface Theme Style'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
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
 p_id=>wwv_flow_imp.id(1874386148918750245)
,p_plug_name=>'items'
,p_parent_plug_id=>wwv_flow_imp.id(1874385348664750244)
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
 p_id=>wwv_flow_imp.id(1874385746267750244)
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
 p_id=>wwv_flow_imp.id(1874389070137750250)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1874387250672750247)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1874389070137750250)
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
 p_id=>wwv_flow_imp.id(1874387617061750248)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1874389070137750250)
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
 p_id=>wwv_flow_imp.id(1874390119043750253)
,p_branch_action=>'f?p=&APP_ID.:settings:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(1874387617061750248)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1874386402172750245)
,p_name=>'P34_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1874386148918750245)
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
 p_id=>wwv_flow_imp.id(1874389668762750252)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Theme Style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P34_DESKTOP_THEME_STYLE_ID is not null then',
'    for c1 in (select theme_number',
'               from apex_application_themes',
'               where application_id = :app_id',
'               and ui_type_name   = ''DESKTOP''',
'               and is_current = ''Yes'')',
'    loop',
'        apex_theme.set_current_style (',
'            p_theme_number => c1.theme_number,',
'            p_id => :P34_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1874387617061750248)
,p_process_success_message=>'Theme Style Set for All Users.'
,p_internal_uid=>1861959558900044750
);
end;
/
prompt --application/pages/page_00035
begin
wwv_flow_imp_page.create_page(
 p_id=>35
,p_tab_set=>'TS1'
,p_name=>'Pipelined Functions'
,p_alias=>'PIPELINED-FUNCTIONS'
,p_step_title=>'Pipelined Functions'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312379156507734257)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The following use cases highlights PL/SQL Pipelined functions.',
'Pipelined functions are functions which, instead of returning a single value, return data in a tabular format. This allows them to be referenced like a table in the from clause of a SQL statement using the table(...) syntax. Because they are PL/SQL, '
||'it is possible to use pipelined functions to collect or generate data which would be difficult or impossible to collect through standard SQL.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312379568758734257)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2199367337593662844)
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
 p_id=>wwv_flow_imp.id(1312377256924734254)
,p_plug_name=>'Package Source'
,p_parent_plug_id=>wwv_flow_imp.id(2199367337593662844)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sys.htp.p(''<p><b>Specification:</b></p>'');',
'sys.htp.prn(''<pre>'');',
'sys.htp.p(''create or replace '');',
'for c1 in (',
'    select text',
'    from user_source',
'    where upper(name) = ''EBA_DEMO_IR_PKG''',
'        and type = ''PACKAGE''',
'    order by line',
'    ) loop',
'    sys.htp.prn(apex_escape.html(c1.text));',
'end loop;',
'sys.htp.prn(''</pre>'');',
'',
'sys.htp.p(''<p> </p>'');',
'sys.htp.p(''<p><b>Body:</b></p>'');',
'sys.htp.prn(''<pre>'');',
'sys.htp.p(''create or replace '');',
'for c1 in (',
'    select text',
'    from user_source',
'    where upper(name) = ''EBA_DEMO_IR_PKG''',
'        and type = ''PACKAGE BODY''',
'    order by line',
'    ) loop',
'    sys.htp.prn(apex_escape.html(c1.text));',
'end loop;',
'sys.htp.prn(''</pre>'');'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1312377466529734254)
,p_plug_name=>'Pipelined Functions'
,p_region_name=>'QUERY'
,p_parent_plug_id=>wwv_flow_imp.id(2199367337593662844)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select t.page_id,',
'    p.page_name page,',
'    t.list_link_count,',
'    t.branch_count,',
'    t.button_count,',
'    t.breadcrumb_count,',
'    t.reportcol_count+t.irepcol_count reportcol_count,',
'    t.ireplink_count,',
'    t.tab_count,',
'    t.total ',
'from table( eba_demo_ir_pkg.incomingPageRefsReport() ) t,',
'    apex_application_pages p',
'where p.application_id = :APP_ID',
'    and p.page_id = t.page_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1312377673804734254)
,p_name=>'Case Statements'
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
,p_internal_uid=>657522117757367844
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312459975001336044)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page No.'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312460069529336045)
,p_db_column_name=>'LIST_LINK_COUNT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'List References'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312460171768336045)
,p_db_column_name=>'BRANCH_COUNT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Incoming Branches'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312460272021336045)
,p_db_column_name=>'BUTTON_COUNT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Incoming Buttons'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312460363549336045)
,p_db_column_name=>'BREADCRUMB_COUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Breadcrumbs'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312460477126336045)
,p_db_column_name=>'REPORTCOL_COUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Incoming Report Columns'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312460688268336045)
,p_db_column_name=>'IREPLINK_COUNT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Incoming IR Links'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312460767393336045)
,p_db_column_name=>'TAB_COUNT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Tabs'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312460864265336046)
,p_db_column_name=>'TOTAL'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1312462770675353193)
,p_db_column_name=>'PAGE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Page'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1312378568801734256)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6575231'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'PAGE_ID:PAGE:LIST_LINK_COUNT:BRANCH_COUNT:BUTTON_COUNT:BREADCRUMB_COUNT:REPORTCOL_COUNT:IREPLINK_COUNT:TAB_COUNT:TOTAL:'
,p_sort_column_1=>'TOTAL'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'DEPTNO'
,p_sort_direction_2=>'ASC'
,p_sum_columns_on_break=>'TOTAL_SALARIES'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1332470979620446606)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(2199367337593662844)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'QUERY')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1312378770526734256)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1312377466529734254)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:RP,35,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00036
begin
wwv_flow_imp_page.create_page(
 p_id=>36
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
 p_id=>wwv_flow_imp.id(1874395306279766587)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1874397407100777485)
,p_plug_name=>'Administration'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(1874396445953777476)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
end;
/
prompt --application/pages/page_00037
begin
wwv_flow_imp_page.create_page(
 p_id=>37
,p_name=>'Linking to Interactive Grids'
,p_alias=>'LINKING-TO-INTERACTIVE-GRIDS'
,p_step_title=>'Linking to Interactive Grids'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2343512174751818872)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>60
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2343518760810849574)
,p_plug_name=>'Report Linking Examples'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(1043820299361618799)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>4072361143931175087
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2363702076531098779)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This page demonstrates how to create URLs that link to interactive grid pages.  Click on the example links below and note the URL syntax used.  Use <strong>RR</strong> to reset an interactive grid, use <strong>CR</strong> to clear an interactive g'
||'rid filter settings.  Use <strong>IG_&lt;your_report_column&gt;</strong> syntax to filter a report for an exact match.  Use <strong>IGC_&lt;your_report_column&gt;</strong> for a contains match, use <strong>IGGT_</strong> and <strong>IGLT_</strong> fo'
||'r greater than and less than filters.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3219974440888910973)
,p_plug_name=>'Container'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2343514989836824908)
,p_plug_name=>'Interactive Grid'
,p_region_name=>'IG_EXAMPLE'
,p_parent_plug_id=>wwv_flow_imp.id(3219974440888910973)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	',
'       PROJECT,',
'       TASK_NAME,',
'       START_DATE,',
'       END_DATE,',
'       STATUS,',
'       ASSIGNED_TO,',
'       COST,',
'       BUDGET,',
'       budget - cost available_budget',
'from EBA_DEMO_IR_PROJECTS'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Interactive Grid'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1042284871451423638)
,p_name=>'PROJECT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Project'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1042285001482423639)
,p_name=>'TASK_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Task Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1042285083454423640)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1042285125558423641)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'End Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1042285229365423642)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1042285338551423643)
,p_name=>'ASSIGNED_TO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ASSIGNED_TO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Assigned To'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1042285437025423644)
,p_name=>'COST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COST'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cost'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(1042285591245423645)
,p_name=>'BUDGET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BUDGET'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Budget'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(1042285640841423646)
,p_name=>'AVAILABLE_BUDGET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AVAILABLE_BUDGET'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Available Budget'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(1042284726308423637)
,p_internal_uid=>1029854616445718135
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
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
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(1043830484313633743)
,p_interactive_grid_id=>wwv_flow_imp.id(1042284726308423637)
,p_static_id=>'14145'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1043830547728633743)
,p_report_id=>wwv_flow_imp.id(1043830484313633743)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043831038619633746)
,p_view_id=>wwv_flow_imp.id(1043830547728633743)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1042284871451423638)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043831531362633748)
,p_view_id=>wwv_flow_imp.id(1043830547728633743)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1042285001482423639)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043832073723633750)
,p_view_id=>wwv_flow_imp.id(1043830547728633743)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1042285083454423640)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043832527966633751)
,p_view_id=>wwv_flow_imp.id(1043830547728633743)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1042285125558423641)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043833053317633753)
,p_view_id=>wwv_flow_imp.id(1043830547728633743)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1042285229365423642)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043833549761633754)
,p_view_id=>wwv_flow_imp.id(1043830547728633743)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1042285338551423643)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043834108361633756)
,p_view_id=>wwv_flow_imp.id(1043830547728633743)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1042285437025423644)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043834582406633757)
,p_view_id=>wwv_flow_imp.id(1043830547728633743)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1042285591245423645)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043835071971633759)
,p_view_id=>wwv_flow_imp.id(1043830547728633743)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1042285640841423646)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(1671170194985563440)
,p_interactive_grid_id=>wwv_flow_imp.id(1042284726308423637)
,p_name=>'Status'
,p_static_id=>'Status'
,p_type=>'ALTERNATIVE'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1671170258400563440)
,p_report_id=>wwv_flow_imp.id(1671170194985563440)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1671170749291563443)
,p_view_id=>wwv_flow_imp.id(1671170258400563440)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1042284871451423638)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1671171242034563445)
,p_view_id=>wwv_flow_imp.id(1671170258400563440)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1042285001482423639)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1671171784395563447)
,p_view_id=>wwv_flow_imp.id(1671170258400563440)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1042285083454423640)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1671172238638563448)
,p_view_id=>wwv_flow_imp.id(1671170258400563440)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1042285125558423641)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1671172763989563450)
,p_view_id=>wwv_flow_imp.id(1671170258400563440)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1042285229365423642)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>1
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1671173260433563451)
,p_view_id=>wwv_flow_imp.id(1671170258400563440)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1042285338551423643)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1671173819033563453)
,p_view_id=>wwv_flow_imp.id(1671170258400563440)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1042285437025423644)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1671174293078563454)
,p_view_id=>wwv_flow_imp.id(1671170258400563440)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1042285591245423645)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1671174782643563456)
,p_view_id=>wwv_flow_imp.id(1671170258400563440)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1042285640841423646)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2363237460086847352)
,p_plug_name=>'Developer Supplied Query'
,p_parent_plug_id=>wwv_flow_imp.id(3219974440888910973)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'IG_EXAMPLE')).to_clob
);
end;
/
prompt --application/pages/page_00038
begin
wwv_flow_imp_page.create_page(
 p_id=>38
,p_tab_set=>'TS1'
,p_name=>'Report from Collection'
,p_alias=>'REPORT-FROM-COLLECTION'
,p_step_title=>'Report from Collection'
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
 p_id=>wwv_flow_imp.id(1331071681887305199)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1331077974907325472)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This interactive report is based on a collection.  This page automatically creates an Oracle APEX collection if the collection does not exist.  If it does exist, the collection is recreated.  Collections are an Oracle APEX user session specific ut'
||'ility to manage an array of session state.  Since Oracle APEX is stateless, Oracle Temporary tables cannot be used to persist session state over page views.  Therefore, Oracle APEX applications need to use an Oracle APEX collections PL/SQL API to man'
||'age Oracle APEX collections.  Oracle APEX collections are used for complex reporting applications, to improve performance, as well as to allow a developer to gather information from multiple tables in multiple passes or by using PL/SQL.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2188582410351988584)
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
 p_id=>wwv_flow_imp.id(1331705258814902562)
,p_plug_name=>'Interactive Report on Collection'
,p_region_name=>'REPORT1'
,p_parent_plug_id=>wwv_flow_imp.id(2188582410351988584)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n001 id, c001 project, c002 task_name, d001 start_date, d002 end_date, c003 status, c004 assigned_to, n002 cost, n003 budget, n004 available_budget',
'  from apex_collections',
' where collection_name = ''PROJECTS_COLLECTION'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1331705380178902562)
,p_name=>'Interactive Report on Collection'
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
,p_owner=>'JOEL'
,p_internal_uid=>676849824131536152
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1331705575078902563)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1331705687384902565)
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
 p_id=>wwv_flow_imp.id(1331705757120902565)
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
 p_id=>wwv_flow_imp.id(1331705873266902565)
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
 p_id=>wwv_flow_imp.id(1331705984015902566)
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
 p_id=>wwv_flow_imp.id(1331706077083902566)
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
 p_id=>wwv_flow_imp.id(1331706156478902566)
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
 p_id=>wwv_flow_imp.id(1331706274860902566)
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
 p_id=>wwv_flow_imp.id(1331706382349902566)
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
 p_id=>wwv_flow_imp.id(1331706473827902566)
,p_db_column_name=>'AVAILABLE_BUDGET'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Available Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1331706560199902904)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6768511'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'PROJECT:TASK_NAME:START_DATE:END_DATE:STATUS:ASSIGNED_TO:COST:BUDGET:AVAILABLE_BUDGET'
,p_sort_column_1=>'BUDGET'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'START_DATE'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'PROJECT'
,p_sort_direction_3=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1331856078122045075)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(2188582410351988584)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'REPORT1')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1331856862108059369)
,p_plug_name=>'Before Header Page Process'
,p_parent_plug_id=>wwv_flow_imp.id(2188582410351988584)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (',
'select process_source',
'from apex_application_page_proc',
'where application_id = :APP_ID',
'and page_id = :APP_PAGE_ID)',
'loop',
'sys.htp.prn(''<pre>'');',
'sys.htp.prn(apex_escape.html(c1.process_source));',
'sys.htp.prn(''</pre>'');',
'end loop;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1331707879162927317)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1331071681887305199)
,p_button_name=>'RECREATE_COLLECTION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Recreate Collection'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1331848266076947052)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1331705258814902562)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:38,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1331695176326746744)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--',
'-- While apex_util.create_collection_from_query_b could be used to quickly create the collection, ',
'-- we''re doing this manually so the column values are mapped to the appropriately typed member',
'-- attributes.',
'--',
'apex_collection.create_or_truncate_collection( p_collection_name => ''PROJECTS_COLLECTION'' );',
'',
'for c1 in (select id, project, task_name, start_date, end_date, status, assigned_to, cost, budget, budget-cost available_budget from eba_demo_ir_projects) loop',
'    apex_collection.add_member(',
'        p_collection_name => ''PROJECTS_COLLECTION'',',
'        p_c001 => c1.project,',
'        p_c002 => c1.task_name,',
'        p_c003 => c1.status,',
'        p_c004 => c1.assigned_to,',
'        p_n001 => c1.id,',
'        p_n002 => c1.cost,',
'        p_n003 => c1.budget,',
'        p_n004 => c1.available_budget,',
'        p_d001 => c1.start_date,',
'        p_d002 => c1.end_date );',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'apex_collection.collection_exists( p_collection_name => ''PROJECTS_COLLECTION'') = FALSE or :REQUEST = ''RECREATE_COLLECTION'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>1319265066464041242
);
end;
/
prompt --application/pages/page_00039
begin
wwv_flow_imp_page.create_page(
 p_id=>39
,p_tab_set=>'TS1'
,p_name=>'SQL Examples'
,p_alias=>'SQL-EXAMPLES'
,p_step_title=>'SQL Examples'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1332414758891310136)
,p_plug_name=>'SQL Syntax Examples'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--desc-4ln:u-colors:t-Cards--3cols:t-Cards--basic:t-Cards--animColorFill'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_list_id=>wwv_flow_imp.id(1312129274749012415)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1332416570595310149)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
end;
/
prompt --application/pages/page_00040
begin
wwv_flow_imp_page.create_page(
 p_id=>40
,p_name=>'Drill Down IG'
,p_alias=>'DRILL-DOWN-IG'
,p_step_title=>'Drill Down IG'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2343434762795411035)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This interactive grid was created using the create page wizard.  The SQL used to create the report is displayed in the show/hide region at the bottom of the page. Many columns of this report provide drill down capabilities.  To make a report colum'
||'n "hot" you edit the Column <strong>Link</strong> attributes which are on the <strong>Columns</strong> tab of the interactive grid region.  You can link report columns to other pages in the Oracle APEX application and control the session state to be '
||'passed.  You can also link to custom URLs.  Your column link can access any of the values of a given report row using the <strong>&amp;MY_COLUMN.</strong> syntax.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3220003425186452630)
,p_plug_name=>'Container'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2363257572805291089)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(3220003425186452630)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'projects_report')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3710049080317130454)
,p_plug_name=>'Projects'
,p_region_name=>'projects_report'
,p_parent_plug_id=>wwv_flow_imp.id(3220003425186452630)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'       PROJECT,',
'       count(*) tasks,',
'       min(START_DATE) first_start_date,',
'       max(END_DATE) last_end_date,',
'       sum(decode(STATUS,''Open'',1,0)) open,',
'       sum(decode(STATUS,''Closed'',1,0)) closed,',
'       sum(decode(STATUS,''Pending'',1,0)) pending,',
'       sum(decode(STATUS,''On-Hold'',1,0)) on_hold,   ',
'       count(distinct ASSIGNED_TO) assignees,',
'       sum(COST) total_cost,',
'       sum(BUDGET) total_budget,',
'       sum(BUDGET) - sum(COST) cost_vs_budget',
'from EBA_DEMO_IR_PROJECTS',
'group by project'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Projects'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1042285891985423648)
,p_name=>'PROJECT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Project'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_link_target=>'f?p=&APP_ID.:17:&SESSION.:IG[projects_report]_Costings:&DEBUG.:CR,:IG_PROJECT:&PROJECT.'
,p_link_text=>'&PROJECT.'
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
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1042285994438423649)
,p_name=>'TASKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASKS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Tasks'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:17:&SESSION.:IG[projects_report]_Costings:&DEBUG.:CR,:IG_PROJECT:&PROJECT.'
,p_link_text=>'&TASKS.'
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
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1042286016787423650)
,p_name=>'FIRST_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FIRST_START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'First Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1042286150618423651)
,p_name=>'LAST_END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Last End Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1042286255404423652)
,p_name=>'OPEN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPEN'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Open'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:17:&SESSION.:IG[projects_report]_Costings:&DEBUG.:CR,:IG_PROJECT:&PROJECT.'
,p_link_text=>'&OPEN.'
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
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1043859709928174603)
,p_name=>'CLOSED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLOSED'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Closed'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:17:&SESSION.:IG[projects_report]_Costings:&DEBUG.:CR,:IG_PROJECT:&PROJECT.'
,p_link_text=>'&CLOSED.'
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
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1043859877410174604)
,p_name=>'PENDING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PENDING'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Pending'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:17:&SESSION.:IG[projects_report]_Costings:&DEBUG.:CR,:IG_PROJECT:&PROJECT.'
,p_link_text=>'&PENDING.'
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
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1043859925965174605)
,p_name=>'ON_HOLD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ON_HOLD'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'On Hold'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_link_target=>'f?p=&APP_ID.:17:&SESSION.:IG[projects_report]_Costings:&DEBUG.:CR,:IG_PROJECT:&PROJECT.'
,p_link_text=>'&ON_HOLD.'
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
 p_id=>wwv_flow_imp.id(1043860080788174606)
,p_name=>'ASSIGNEES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ASSIGNEES'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Assignees'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:17:&SESSION.:IG[projects_report]_Costings:&DEBUG.:CR,:IG_PROJECT:&PROJECT.'
,p_link_text=>'&ASSIGNEES.'
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
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1043860167837174607)
,p_name=>'TOTAL_COST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_COST'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total Cost'
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
 p_id=>wwv_flow_imp.id(1043860210373174608)
,p_name=>'TOTAL_BUDGET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_BUDGET'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total Budget'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(1043860358439174609)
,p_name=>'COST_VS_BUDGET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COST_VS_BUDGET'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cost Vs Budget'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(1042285711962423647)
,p_internal_uid=>1029855602099718145
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
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
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(1043865992297175744)
,p_interactive_grid_id=>wwv_flow_imp.id(1042285711962423647)
,p_static_id=>'14149'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1043866088435175745)
,p_report_id=>wwv_flow_imp.id(1043865992297175744)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043866566241175746)
,p_view_id=>wwv_flow_imp.id(1043866088435175745)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1042285891985423648)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043867075132175747)
,p_view_id=>wwv_flow_imp.id(1043866088435175745)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1042285994438423649)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043867587711175749)
,p_view_id=>wwv_flow_imp.id(1043866088435175745)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1042286016787423650)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043868099108175752)
,p_view_id=>wwv_flow_imp.id(1043866088435175745)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1042286150618423651)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043868585361175753)
,p_view_id=>wwv_flow_imp.id(1043866088435175745)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1042286255404423652)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043869030391175755)
,p_view_id=>wwv_flow_imp.id(1043866088435175745)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1043859709928174603)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043869590066175756)
,p_view_id=>wwv_flow_imp.id(1043866088435175745)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1043859877410174604)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043870096129175758)
,p_view_id=>wwv_flow_imp.id(1043866088435175745)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1043859925965174605)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043870596150175759)
,p_view_id=>wwv_flow_imp.id(1043866088435175745)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1043860080788174606)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043871045064175761)
,p_view_id=>wwv_flow_imp.id(1043866088435175745)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1043860167837174607)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043871582303175762)
,p_view_id=>wwv_flow_imp.id(1043866088435175745)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1043860210373174608)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043872029100175763)
,p_view_id=>wwv_flow_imp.id(1043866088435175745)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(1043860358439174609)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3709917473236091109)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1043858898958169576)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3710049080317130454)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:RP,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00041
begin
wwv_flow_imp_page.create_page(
 p_id=>41
,p_name=>'Cards'
,p_alias=>'CARDS'
,p_step_title=>'Cards'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(615294893977903513)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(615295462187903517)
,p_plug_name=>'Cards'
,p_region_name=>'cards_report'
,p_region_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       ID,',
'       ROW_VERSION_NUMBER,',
'       PROJECT,',
'       TASK_NAME,',
'       START_DATE,',
'       END_DATE,',
'       STATUS,',
'       ASSIGNED_TO,',
'       to_char( COST, ''FML999G999G999G999G990D00'' ) COST,',
'       to_char( BUDGET, ''FML999G999G999G999G990D00'' ) BUDGET',
'  from EBA_DEMO_IR_PROJECTS'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>true
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(615295949453903518)
,p_region_id=>wwv_flow_imp.id(615295462187903517)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'PROJECT'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'TASK_NAME'
,p_body_adv_formatting=>true
,p_body_html_expr=>'Assigned: &ASSIGNED_TO.'
,p_second_body_adv_formatting=>true
,p_second_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Started: &START_DATE. Ended: &END_DATE.<br />',
'Budget: &BUDGET. Cost:&COST.'))
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-calendar-user'
,p_icon_position=>'START'
,p_badge_column_name=>'STATUS'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(613582580989831007)
,p_card_id=>wwv_flow_imp.id(615295949453903518)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>10
,p_label=>'Maintain Project'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2:P2_ROWID:&ROWID.'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-edit'
,p_action_css_classes=>'fa-lg'
,p_is_hot=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1956286633291662152)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This cards region is a standard report region created using the Create Page Wizard.  Cards are useful for presenting a variety of information in small blocks.  As Cards usually provide entry to more detailed information, you can include number of '
||'actions declaratively.  You can easily scan for relevant and actionable information using cards. </p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(214486477027956911)
,p_name=>'Refresh on Edit'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(615295462187903517)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(214486557803956912)
,p_event_id=>wwv_flow_imp.id(214486477027956911)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(615295462187903517)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00042
begin
wwv_flow_imp_page.create_page(
 p_id=>42
,p_name=>'Faceted Search'
,p_alias=>'FACETED-SEARCH'
,p_step_title=>'Faceted Search'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'22'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(615300217836968379)
,p_name=>'Search Results'
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'EBA_DEMO_IR_PROJECTS'
,p_include_rowid_column=>true
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(613582347536831005)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(615304137437968618)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(615304584638968620)
,p_query_column_id=>3
,p_column_alias=>'ROW_VERSION_NUMBER'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(615304994266968627)
,p_query_column_id=>4
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>22
,p_column_heading=>'Project'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(615305310890968627)
,p_query_column_id=>5
,p_column_alias=>'TASK_NAME'
,p_column_display_sequence=>32
,p_column_heading=>'Task Name'
,p_column_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2:P2_ROWID:#ROWID#'
,p_column_linktext=>'#TASK_NAME#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(615305751054968627)
,p_query_column_id=>6
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>42
,p_column_heading=>'Start Date'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(615306162650968627)
,p_query_column_id=>7
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>52
,p_column_heading=>'End Date'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(615306567187968628)
,p_query_column_id=>8
,p_column_alias=>'STATUS'
,p_column_display_sequence=>62
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(615306987226968628)
,p_query_column_id=>9
,p_column_alias=>'ASSIGNED_TO'
,p_column_display_sequence=>72
,p_column_heading=>'Assigned To'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(615307360593968628)
,p_query_column_id=>10
,p_column_alias=>'COST'
,p_column_display_sequence=>82
,p_column_heading=>'Cost'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(615307776612968628)
,p_query_column_id=>11
,p_column_alias=>'BUDGET'
,p_column_display_sequence=>92
,p_column_heading=>'Budget'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(615300381623968379)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(615300217836968379)
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
 p_id=>wwv_flow_imp.id(615303141190968392)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_source=>'<div id="active_facets"></div>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2016113145353787127)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This is faceted search page created using the Create Page Wizard.  The end user can set filters using Facets on the left. A facet shows possible values together with the occurrence count within the result set. After the end user changed a facet, r'
||'esults, dependent facets and occurrence counts refresh immediately.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6929130239246230152)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6284507407406162482)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(615303676524968393)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(615303141190968392)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:RR,42::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(615300831941968383)
,p_name=>'P42_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(615300381623968379)
,p_prompt=>'Search'
,p_source=>'PROJECT,TASK_NAME,STATUS,ASSIGNED_TO'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(615301288918968387)
,p_name=>'P42_PROJECT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(615300381623968379)
,p_prompt=>'Project'
,p_source=>'PROJECT'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_fc_show_label=>true
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(615301641369968387)
,p_name=>'P42_ASSIGNED_TO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(615300381623968379)
,p_prompt=>'Assigned To'
,p_source=>'ASSIGNED_TO'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_fc_show_label=>true
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(615302010110968387)
,p_name=>'P42_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(615300381623968379)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_fc_show_label=>true
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(615302477037968389)
,p_name=>'P42_COST'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(615300381623968379)
,p_prompt=>'Cost'
,p_source=>'COST'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>'STATIC2:<100;|100,100 - 200;100|200,200 - 1#G#000;200|1000,>=1#G#000;1000|'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>100
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(615302873124968390)
,p_name=>'P42_BUDGET'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(615300381623968379)
,p_prompt=>'Budget'
,p_source=>'BUDGET'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>'STATIC2:<200;|200,200 - 300;200|300,300 - 1#G#000;300|1000,1#G#000 - 2#G#000;1000|2000,>=2#G#000;2000|'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>100
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(214487109031956917)
,p_name=>'Refresh on Edit'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(615300217836968379)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(214487179419956918)
,p_event_id=>wwv_flow_imp.id(214487109031956917)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(615300217836968379)
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
 p_id=>wwv_flow_imp.id(6284506603362162476)
,p_plug_name=>'Sample Reporting'
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
 p_id=>wwv_flow_imp.id(3137943356687776596)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6284506603362162476)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6284506715965162480)
,p_name=>'P101_USERNAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6284506603362162476)
,p_prompt=>'Username'
,p_placeholder=>'username'
,p_post_element_text=>'<span class="t-Login-iconValidation a-Icon icon-check"></span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>100
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6284506815691162480)
,p_name=>'P101_PASSWORD'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6284506603362162476)
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
 p_id=>wwv_flow_imp.id(3256318862583873414)
,p_name=>'Set Focus'
,p_event_sequence=>10
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'( $v( "P101_USERNAME" ) === "" )'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3256319165096873416)
,p_event_id=>wwv_flow_imp.id(3256318862583873414)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_USERNAME'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3256319376634873416)
,p_event_id=>wwv_flow_imp.id(3256318862583873414)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_PASSWORD'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6284507090877162482)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6272076981014456980
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6284506997781162481)
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
,p_internal_uid=>6272076887918456979
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6284507292701162482)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6272077182838456980
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6284507188383162482)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>6272077078520456980
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(2560973657885788682)
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
' where table_name like ''EBA_DEMO_IR_%'''))
,p_deinstall_success_message=>'Deinstallation complete.'
,p_deinstall_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DROP TRIGGER "BIU_EBA_DEMO_IR_PROJECTS";',
'',
'DROP TABLE  "EBA_DEMO_IR_PROJECTS";',
'',
'DROP PROCEDURE "EBA_DEMO_IR_DATA";',
'',
'drop table eba_demo_ir_dept;',
'',
'drop table eba_demo_ir_emp;',
'',
'drop package EBA_DEMO_IR_PKG;',
'',
'-- Remove Images',
'',
'begin',
'    wwv_flow_api.create_or_remove_file( ',
'        p_location => ''APPLICATION'',',
'        p_name     => ''reports_ir.png'',',
'        p_mode     => ''REMOVE'',',
'        p_type     => ''IMAGE'');',
'end;',
'/',
'',
'begin',
'    wwv_flow_api.create_or_remove_file( ',
'        p_location => ''APPLICATION'',',
'        p_name     => ''reports_classic.png'',',
'        p_mode     => ''REMOVE'',',
'        p_type     => ''IMAGE'');',
'end;',
'/',
'',
'begin',
'    wwv_flow_api.create_or_remove_file( ',
'        p_location => ''APPLICATION'',',
'        p_name     => ''reports_drilldown.png'',',
'        p_mode     => ''REMOVE'',',
'        p_type     => ''IMAGE'');',
'end;',
'/',
'',
'begin',
'    wwv_flow_api.create_or_remove_file( ',
'        p_location => ''APPLICATION'',',
'        p_name     => ''reports_filter.png'',',
'        p_mode     => ''REMOVE'',',
'        p_type     => ''IMAGE'');',
'end;',
'/',
'',
'begin',
'    wwv_flow_api.create_or_remove_file( ',
'        p_location => ''APPLICATION'',',
'        p_name     => ''reports_usecases.jpg'',',
'        p_mode     => ''REMOVE'',',
'        p_type     => ''IMAGE'');',
'end;',
'/',
'    ',
'begin',
'    wwv_flow_api.create_or_remove_file( ',
'        p_location => ''APPLICATION'',',
'        p_name     => ''fs-sprite.png'',',
'        p_mode     => ''REMOVE'',',
'        p_type     => ''IMAGE'');',
'end;',
'/',
''))
,p_required_free_kb=>100
,p_required_sys_privs=>'CREATE PROCEDURE:CREATE TABLE:CREATE TRIGGER:CREATE TYPE :CREATE VIEW'
,p_required_names_available=>'EBA_DEMO_IR_PKG:EBA_DEMO_IR_EMP:EBA_DEMO_IR_DEPT:EBA_DEMO_IR_DATA:EBA_DEMO_IR_PROJECTS'
);
end;
/
prompt --application/deployment/install/upgrade_create_dept_table
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(1312235288253716472)
,p_install_id=>wwv_flow_imp.id(2560973657885788682)
,p_name=>'Create Dept Table'
,p_sequence=>10
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select table_name',
'from user_tables',
'where table_name = ''EBA_DEMO_IR_DEPT'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_demo_ir_dept (',
'    deptno  NUMBER(2) not null',
'                        constraint eba_demo_ir_dept_pk',
'                        primary key,',
'    dname   VARCHAR2(14),',
'    loc     VARCHAR2(13)',
')',
'/',
'insert into eba_demo_ir_dept (DEPTNO,DNAME,LOC) values (10,''ACCOUNTING'',''NEW YORK'');',
'insert into eba_demo_ir_dept (DEPTNO,DNAME,LOC) values (20,''RESEARCH'',''DALLAS'');',
'insert into eba_demo_ir_dept (DEPTNO,DNAME,LOC) values (30,''SALES'',''CHICAGO'');',
'insert into eba_demo_ir_dept (DEPTNO,DNAME,LOC) values (40,''OPERATIONS'',''BOSTON'');',
'',
'commit;',
'',
''))
);
end;
/
prompt --application/deployment/install/install_set_plscope_settings
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(3354696888305577526)
,p_install_id=>wwv_flow_imp.id(2560973657885788682)
,p_name=>'Set plscope_settings'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>'ALTER SESSION SET PLSCOPE_SETTINGS = ''IDENTIFIERS:NONE'';'
);
end;
/
prompt --application/deployment/install/upgrade_create_emp_table
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(1312234068859710870)
,p_install_id=>wwv_flow_imp.id(2560973657885788682)
,p_name=>'Create Emp Table'
,p_sequence=>20
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select table_name',
'from user_tables',
'where table_name = ''EBA_DEMO_IR_EMP'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_demo_ir_emp (',
'    empno     NUMBER(4) not null',
'                          constraint eba_demo_ir_emp_pk',
'                          primary key,',
'    ename     VARCHAR2(10),',
'    job       VARCHAR2(9),',
'    mgr       NUMBER(4),',
'    hiredate  DATE,',
'    sal       NUMBER(7),',
'    comm      NUMBER(7),',
'    deptno    NUMBER(2)',
')',
'/',
'',
'alter table eba_demo_ir_emp add foreign key (MGR) references eba_demo_ir_emp (EMPNO) ENABLE',
'/',
'',
'create index eba_demo_ir_emp_1 ON eba_demo_ir_emp (MGR)',
'/',
'    ',
'create index eba_demo_ir_emp_2 ON eba_demo_ir_emp (DEPTNO)',
'/',
'',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7839,''KING'',''PRESIDENT'',null,to_date(''17-11-81'',''DD-MM-RR''),5000,null,10);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7698,''BLAKE'',''MANAGER'',7839,to_date(''01-05-81'',''DD-MM-RR''),2850,null,30);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7782,''CLARK'',''MANAGER'',7839,to_date(''09-06-81'',''DD-MM-RR''),2450,null,10);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7566,''JONES'',''MANAGER'',7839,to_date(''02-04-81'',''DD-MM-RR''),2975,null,20);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7788,''SCOTT'',''ANALYST'',7566,to_date(''09-12-82'',''DD-MM-RR''),3000,null,20);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7902,''FORD'',''ANALYST'',7566,to_date(''03-12-81'',''DD-MM-RR''),3000,null,20);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7369,''SMITH'',''CLERK'',7902,to_date(''17-12-80'',''DD-MM-RR''),800,null,20);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7499,''ALLEN'',''SALESMAN'',7698,to_date(''20-02-81'',''DD-MM-RR''),1600,300,30);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7521,''WARD'',''SALESMAN'',7698,to_date(''22-02-81'',''DD-MM-RR''),1250,500,30);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7654,''MARTIN'',''SALESMAN'',7698,to_date(''28-09-81'',''DD-MM-RR''),1250,1400,30);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7844,''TURNER'',''SALESMAN'',7698,to_date(''08-09-81'',''DD-MM-RR''),1500,0,30);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7876,''ADAMS'',''CLERK'',7788,to_date(''12-01-83'',''DD-MM-RR''),1100,null,20);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7900,''JAMES'',''CLERK'',7698,to_date(''03-12-81'',''DD-MM-RR''),950,null,30);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7934,''MILLER'',''CLERK'',7782,to_date(''23-01-82'',''DD-MM-RR''),1300,null,10);',
'',
'commit;'))
);
end;
/
prompt --application/deployment/install/install_create_table
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(2581271280513130317)
,p_install_id=>wwv_flow_imp.id(2560973657885788682)
,p_name=>'Create Table'
,p_sequence=>30
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE TABLE "EBA_DEMO_IR_PROJECTS"',
'   ("ID" NUMBER, ',
'    "ROW_VERSION_NUMBER" NUMBER,',
'    "PROJECT" VARCHAR2(30), ',
'    "TASK_NAME" VARCHAR2(255), ',
'    "START_DATE" DATE, ',
'    "END_DATE" DATE, ',
'    "STATUS" VARCHAR2(30), ',
'    "ASSIGNED_TO" VARCHAR2(30), ',
'    "COST" NUMBER, ',
'    "BUDGET" NUMBER ',
'   ) ;',
'',
'CREATE UNIQUE INDEX "EBA_DEMO_IR_PROJECTS_PK" ON "EBA_DEMO_IR_PROJECTS" ("ID");',
'',
'',
'create or replace TRIGGER "BIU_EBA_DEMO_IR_PROJECTS"',
'BEFORE INSERT OR UPDATE ON EBA_DEMO_IR_PROJECTS',
'FOR EACH ROW',
'BEGIN',
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
'END;',
'/',
''))
);
end;
/
prompt --application/deployment/install/upgrade_update_data_script
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(1312280073165223145)
,p_install_id=>wwv_flow_imp.id(2560973657885788682)
,p_name=>'Update Data Script'
,p_sequence=>30
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace procedure EBA_DEMO_IR_DATA',
'as',
'begin',
'delete from EBA_DEMO_IR_PROJECTS;',
'',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Identify server requirements'',to_date(''12/20/2015'',''MM/DD/YYYY''),to_date(''12/21/2015'',''MM/DD/YYYY''),''C'
||'losed'',''John Watson'',''200'',''500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Determine Web listener configuration(s)'',to_date(''12/22/2015'',''MM/DD/YYYY''),to_date(''12/22/2015'',''MM/D'
||'D/YYYY''),''Closed'',''James Cassidy'',''600'',''500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Run installation'',to_date(''12/25/2015'',''MM/DD/YYYY''),to_date(''12/25/2015'',''MM/DD/YYYY''),''Closed'',''Jame'
||'s Cassidy'',''200'',''200'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Create pilot workspace'',to_date(''12/27/2015'',''MM/DD/YYYY''),to_date(''12/27/2015'',''MM/DD/YYYY''),''Closed'''
||',''John Watson'',''100'',''100'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Specify security authentication scheme(s)'',to_date(''01/01/2015'',''MM/DD/YYYY''),to_date(''01/01/2015'',''MM'
||'/DD/YYYY''),''Open'',''John Watson'',''200'',''300'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Configure Workspace provisioning'',to_date(''01/02/2015'',''MM/DD/YYYY''),to_date(''01/02/2015'',''MM/DD/YYYY'''
||'),''Open'',''John Watson'',''200'',''100'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Select servers for Development, Test, Production'',to_date(''01/05/2015'',''MM/DD/YYYY''),to_date(''01/07/20'
||'15'',''MM/DD/YYYY''),''Open'',''James Cassidy'',''200'',''600'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Bug Tracker'',''Document quality assurance procedures'',to_date(''11/05/2015'',''MM/DD/YYYY''),to_date(''11/08/2015'',''MM/DD/YYYY''),''Closed'',''My'
||'ra Sutcliff'',''3000'',''2000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Bug Tracker'',''Review automated testing tools'',to_date(''11/09/2015'',''MM/DD/YYYY''),to_date(''11/11/2015'',''MM/DD/YYYY''),''Closed'',''Myra Sutc'
||'liff'',''750'',''1500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Bug Tracker'',''Implement bug tracking software'',to_date(''11/24/2015'',''MM/DD/YYYY''),to_date(''11/24/2015'',''MM/DD/YYYY''),''Closed'',''Myra Sut'
||'cliff'',''100'',''100'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Bug Tracker'',''Train developers on tracking bugs'',to_date(''12/01/2015'',''MM/DD/YYYY''),to_date(''12/06/2015'',''MM/DD/YYYY''),''On-Hold'',''Myra '
||'Sutcliff'',''1000'',''2000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Bug Tracker'',''Measure effectiveness of improved QA'',to_date(''12/13/2015'',''MM/DD/YYYY''),to_date(''12/13/2015'',''MM/DD/YYYY''),''Pending'',''My'
||'ra Sutcliff'',''0'',''500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Convert Spreadsheets'',''Collect mission-critical spreadsheets'',to_date(''12/19/2015'',''MM/DD/YYYY''),to_date(''12/20/2015'',''MM/DD/YYYY''),''Cl'
||'osed'',''Pam King'',''2500'',''4000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Convert Spreadsheets'',''Lock spreadsheets'',to_date(''12/22/2015'',''MM/DD/YYYY''),to_date(''12/22/2015'',''MM/DD/YYYY''),''Closed'',''Pam King'',''30'
||'0'',''800'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Convert Spreadsheets'',''Create ACME Web Express applications from spreadsheets'',to_date(''12/30/2015'',''MM/DD/YYYY''),to_date(''01/03/2016'','
||'''MM/DD/YYYY''),''Open'',''Pam King'',''6000'',''10000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Convert Spreadsheets'',''Send links to previous spreadsheet owners'',to_date(''01/05/2016'',''MM/DD/YYYY''),to_date(''01/05/2016'',''MM/DD/YYYY'')'
||',''Pending'',''Pam King'',''0'',''500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Discussion Forum'',''Identify owners'',to_date(''11/25/2015'',''MM/DD/YYYY''),to_date(''11/25/2015'',''MM/DD/YYYY''),''Closed'',''Hank Davis'',''250'','''
||'300'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Discussion Forum'',''Install ACME Web Express application on internet server'',to_date(''12/01/2015'',''MM/DD/YYYY''),to_date(''12/01/2015'',''MM'
||'/DD/YYYY''),''Closed'',''Hank Davis'',''100'',''100'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Discussion Forum'',''Monitor participation'',to_date(''12/31/2015'',''MM/DD/YYYY''),to_date(''01/01/2016'',''MM/DD/YYYY''),''Open'',''Hank Davis'',''45'
||'0'',''500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Email Integration'',''Complete plan'',to_date(''12/12/2015'',''MM/DD/YYYY''),to_date(''12/13/2015'',''MM/DD/YYYY''),''Closed'',''Bob Nile'',''3000'',''15'
||'00'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Email Integration'',''Check software licenses'',to_date(''12/15/2015'',''MM/DD/YYYY''),to_date(''12/15/2015'',''MM/DD/YYYY''),''Closed'',''Bob Nile'','
||'''200'',''200'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Email Integration'',''Get RFPs for new server'',to_date(''12/29/2015'',''MM/DD/YYYY''),to_date(''12/30/2015'',''MM/DD/YYYY''),''Closed'',''Bob Nile'','
||'''2000'',''1000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Email Integration'',''Purchase backup server'',to_date(''01/15/2016'',''MM/DD/YYYY''),to_date(''01/17/2016'',''MM/DD/YYYY''),''Pending'',''Bob Nile'','
||'''0'',''3000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Employee Satisfaction Survey'',''Complete questionnaire'',to_date(''12/05/2015'',''MM/DD/YYYY''),to_date(''12/06/2015'',''MM/DD/YYYY''),''Closed'','''
||'Irene Jones'',''1200'',''800'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Employee Satisfaction Survey'',''Review with legal'',to_date(''12/07/2015'',''MM/DD/YYYY''),to_date(''12/07/2015'',''MM/DD/YYYY''),''On-Hold'',''Iren'
||'e Jones'',''200'',''400'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Employee Satisfaction Survey'',''Plan rollout schedule'',to_date(''12/08/2015'',''MM/DD/YYYY''),to_date(''12/08/2015'',''MM/DD/YYYY''),''On-Hold'','''
||'Irene Jones'',''0'',''750'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Identify pilot Client Server applications'',to_date(''12/17/2015'',''MM/DD/YYYY''),to_date(''12/17/2015'',''MM/DD/YY'
||'YY''),''Closed'',''Scott Spencer'',''200'',''200'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Migrate pilot Client Server to ACME Web Express'',to_date(''12/19/2015'',''MM/DD/YYYY''),to_date(''12/22/2015'',''MM'
||'/DD/YYYY''),''Closed'',''Scott Spencer'',''4500'',''5000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Post-migration review'',to_date(''12/23/2015'',''MM/DD/YYYY''),to_date(''12/23/2015'',''MM/DD/YYYY''),''Closed'',''Pam K'
||'ing'',''500'',''300'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Plan migration schedule'',to_date(''12/26/2015'',''MM/DD/YYYY''),to_date(''12/26/2015'',''MM/DD/YYYY''),''Closed'',''Pam'
||' King'',''1000'',''1000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Migrate Client Server applications'',to_date(''12/31/2015'',''MM/DD/YYYY''),to_date(''01/03/2016'',''MM/DD/YYYY''),''O'
||'pen'',''Pam King'',''300'',''12000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Test migrated applications'',to_date(''01/05/2016'',''MM/DD/YYYY''),to_date(''01/06/2016'',''MM/DD/YYYY''),''Pending'','
||'''Russ Saunders'',''0'',''6000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''User acceptance testing'',to_date(''01/09/2016'',''MM/DD/YYYY''),to_date(''01/11/2016'',''MM/DD/YYYY''),''Pending'',''Ru'
||'ss Saunders'',''0'',''2500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''End-user Training'',to_date(''01/15/2016'',''MM/DD/YYYY''),to_date(''01/15/2016'',''MM/DD/YYYY''),''Pending'',''Myra Sut'
||'cliff'',''0'',''2500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Rollout migrated Client Server in ACME Web Express'',to_date(''01/16/2016'',''MM/DD/YYYY''),to_date(''01/16/2016'','
||'''MM/DD/YYYY''),''Pending'',''Pam King'',''0'',''200'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Load Packaged Apps'',''Identify point solutions required'',to_date(''12/19/2015'',''MM/DD/YYYY''),to_date(''12/19/2015'',''MM/DD/YYYY''),''Closed'','
||'''John Watson'',''200'',''300'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Load Packaged Apps'',''Install in development'',to_date(''12/20/2015'',''MM/DD/YYYY''),to_date(''12/20/2015'',''MM/DD/YYYY''),''Closed'',''John Watso'
||'n'',''100'',''100'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Load Packaged Apps'',''Customize solutions'',to_date(''12/23/2015'',''MM/DD/YYYY''),to_date(''12/25/2015'',''MM/DD/YYYY''),''Open'',''John Watson'',''1'
||'500'',''4000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Load Packaged Apps'',''Implement in Production'',to_date(''12/26/2015'',''MM/DD/YYYY''),to_date(''12/26/2015'',''MM/DD/YYYY''),''On-Hold'',''John Wat'
||'son'',''200'',''1500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Load Packaged Apps'',''Train Administrators of Packaged Apps'',to_date(''12/28/2015'',''MM/DD/YYYY''),to_date(''12/28/2015'',''MM/DD/YYYY''),''Pend'
||'ing'',''John Watson'',''0'',''1000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Maintain Support Systems'',''HR software upgrades'',to_date(''11/28/2015'',''MM/DD/YYYY''),to_date(''12/01/2015'',''MM/DD/YYYY''),''Closed'',''Pam Ki'
||'ng'',''8000'',''7000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Maintain Support Systems'',''Apply Billing System updates'',to_date(''12/02/2015'',''MM/DD/YYYY''),to_date(''12/04/2015'',''MM/DD/YYYY''),''Closed'''
||',''Russ Saunders'',''9500'',''7000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Maintain Support Systems'',''Arrange for vacation coverage'',to_date(''12/06/2015'',''MM/DD/YYYY''),to_date(''12/06/2015'',''MM/DD/YYYY''),''Open'','
||'''Al Bines'',''300'',''500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Maintain Support Systems'',''Investigate new Virus Protection software'',to_date(''01/15/2016'',''MM/DD/YYYY''),to_date(''01/16/2016'',''MM/DD/YY'
||'YY''),''Open'',''Pam King'',''1700'',''1500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''Identify pilot desktop applications'',to_date(''12/10/2015'',''MM/DD/YYYY''),to_date(''12/10/2015'',''MM/DD/YYYY'''
||'),''Closed'',''Bob Nile'',''300'',''500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''Migrate pilot applications to ACME Web Express'',to_date(''12/12/2015'',''MM/DD/YYYY''),to_date(''12/13/2015'','''
||'MM/DD/YYYY''),''Closed'',''Bob Nile'',''1250'',''1500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''Plan migration schedule'',to_date(''12/16/2015'',''MM/DD/YYYY''),to_date(''12/16/2015'',''MM/DD/YYYY''),''Closed'','''
||'Bob Nile'',''600'',''200'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''Migrate desktop applications'',to_date(''01/08/2016'',''MM/DD/YYYY''),to_date(''01/12/2016'',''MM/DD/YYYY''),''Open'
||''',''Bob Nile'',''1000'',''8000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''User acceptance testing'',to_date(''01/14/2016'',''MM/DD/YYYY''),to_date(''01/15/2016'',''MM/DD/YYYY''),''Open'',''Bo'
||'b Nile'',''1500'',''6000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''End-user Training'',to_date(''01/18/2016'',''MM/DD/YYYY''),to_date(''01/19/2016'',''MM/DD/YYYY''),''Open'',''John Wat'
||'son'',''0'',''2000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''Post-migration review'',to_date(''02/01/2016'',''MM/DD/YYYY''),to_date(''02/02/2016'',''MM/DD/YYYY''),''Pending'',''B'
||'ob Nile'',''100'',''100'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Obtain Legacy Server credentials'',to_date(''01/20/2016'',''MM/DD/YYYY''),to_date(''01/20/2016'',''MM/DD/YYYY''),''P'
||'ending'',''James Cassidy'',''0'',''500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Map data usage'',to_date(''01/22/2016'',''MM/DD/YYYY''),to_date(''01/24/2016'',''MM/DD/YYYY''),''Pending'',''Bob Nile'''
||',''0'',''8000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Identify integration points'',to_date(''01/25/2016'',''MM/DD/YYYY''),to_date(''01/26/2016'',''MM/DD/YYYY''),''Pendin'
||'g'',''Bob Nile'',''0'',''2000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Create DB Connection to new server'',to_date(''01/25/2016'',''MM/DD/YYYY''),to_date(''01/25/2016'',''MM/DD/YYYY''),'
||'''Pending'',''Scott Spencer'',''0'',''100'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Migrate table structures'',to_date(''01/19/2016'',''MM/DD/YYYY''),to_date(''01/20/2016'',''MM/DD/YYYY''),''Pending'','
||'''John Watson'',''0'',''2500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Import data'',to_date(''01/31/2016'',''MM/DD/YYYY''),to_date(''02/01/2016'',''MM/DD/YYYY''),''Pending'',''John Watson'''
||',''0'',''1000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Convert processes'',to_date(''01/31/2016'',''MM/DD/YYYY''),to_date(''02/02/2016'',''MM/DD/YYYY''),''Pending'',''Pam Ki'
||'ng'',''0'',''3000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Notify users'',to_date(''02/05/2016'',''MM/DD/YYYY''),to_date(''02/05/2016'',''MM/DD/YYYY''),''Pending'',''Bob Nile'','''
||'0'',''200'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Cut over to new database'',to_date(''02/06/2016'',''MM/DD/YYYY''),to_date(''02/06/2016'',''MM/DD/YYYY''),''Pending'','
||'''Bob Nile'',''0'',''1500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Decommission Legacy Server'',to_date(''02/20/2016'',''MM/DD/YYYY''),to_date(''02/20/2016'',''MM/DD/YYYY''),''Pending'
||''',''Al Bines'',''0'',''500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Public Website'',''Determine host server'',to_date(''12/05/2015'',''MM/DD/YYYY''),to_date(''12/05/2015'',''MM/DD/YYYY''),''Closed'',''Tiger Scott'',''2'
||'00'',''200'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Public Website'',''Check software licenses'',to_date(''12/05/2015'',''MM/DD/YYYY''),to_date(''12/05/2015'',''MM/DD/YYYY''),''Closed'',''Tom Suess'',''1'
||'00'',''100'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Public Website'',''Purchase additional software licenses, if needed'',to_date(''12/06/2015'',''MM/DD/YYYY''),to_date(''12/07/2015'',''MM/DD/YYYY'''
||'),''On-Hold'',''Al Bines'',''300'',''1000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Public Website'',''Develop web pages'',to_date(''01/01/2016'',''MM/DD/YYYY''),to_date(''01/02/2016'',''MM/DD/YYYY''),''Open'',''Tiger Scott'',''0'',''200'
||'0'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Public Website'',''Plan rollout schedule'',to_date(''01/03/2016'',''MM/DD/YYYY''),to_date(''01/03/2016'',''MM/DD/YYYY''),''Open'',''Tom Suess'',''0'',''1'
||'00'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Software Project Tracking'',''Conduct project kickoff meeting'',to_date(''12/28/2015'',''MM/DD/YYYY''),to_date(''12/28/2015'',''MM/DD/YYYY''),''Clo'
||'sed'',''Pam King'',''100'',''100'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Software Project Tracking'',''Customize Software Projects software'',to_date(''12/31/2015'',''MM/DD/YYYY''),to_date(''01/01/2016'',''MM/DD/YYYY'')'
||',''Open'',''Tom Suess'',''600'',''1000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Software Project Tracking'',''Enter base data (Projects, Milestones, etc.)'',to_date(''01/02/2016'',''MM/DD/YYYY''),to_date(''01/02/2016'',''MM/D'
||'D/YYYY''),''Open'',''Tom Suess'',''200'',''200'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Software Project Tracking'',''Load current tasks and enhancements'',to_date(''01/04/2016'',''MM/DD/YYYY''),to_date(''01/04/2016'',''MM/DD/YYYY''),'
||'''Open'',''Tom Suess'',''400'',''500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Training for ACME Web Express'',''Create training workspace'',to_date(''12/17/2015'',''MM/DD/YYYY''),to_date(''12/18/2015'',''MM/DD/YYYY''),''Close'
||'d'',''James Cassidy'',''500'',''700'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Training for ACME Web Express'',''Publish links to self-study courses'',to_date(''12/19/2015'',''MM/DD/YYYY''),to_date(''12/19/2015'',''MM/DD/YYY'
||'Y''),''Closed'',''John Watson'',''100'',''100'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Training for ACME Web Express'',''Publish development standards'',to_date(''12/19/2015'',''MM/DD/YYYY''),to_date(''12/20/2015'',''MM/DD/YYYY''),''O'
||'n-Hold'',''John Watson'',''1000'',''2000'');',
'',
'update eba_demo_ir_projects',
'set start_date = start_date + (SYSDATE - TO_DATE(''01012012'',''MMDDYYYY''))',
',   end_date = end_date + (SYSDATE - TO_DATE(''01012012'',''MMDDYYYY''));',
'',
'delete from eba_demo_ir_dept;',
'',
'insert into eba_demo_ir_dept (DEPTNO,DNAME,LOC) values (10,''ACCOUNTING'',''NEW YORK'');',
'insert into eba_demo_ir_dept (DEPTNO,DNAME,LOC) values (20,''RESEARCH'',''DALLAS'');',
'insert into eba_demo_ir_dept (DEPTNO,DNAME,LOC) values (30,''SALES'',''CHICAGO'');',
'insert into eba_demo_ir_dept (DEPTNO,DNAME,LOC) values (40,''OPERATIONS'',''BOSTON'');',
'',
'delete from eba_demo_ir_emp;',
'',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7839,''KING'',''PRESIDENT'',null,to_date(''17-11-81'',''DD-MM-RR''),5000,null,10);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7698,''BLAKE'',''MANAGER'',7839,to_date(''01-05-81'',''DD-MM-RR''),2850,null,30);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7782,''CLARK'',''MANAGER'',7839,to_date(''09-06-81'',''DD-MM-RR''),2450,null,10);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7566,''JONES'',''MANAGER'',7839,to_date(''02-04-81'',''DD-MM-RR''),2975,null,20);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7788,''SCOTT'',''ANALYST'',7566,to_date(''09-12-82'',''DD-MM-RR''),3000,null,20);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7902,''FORD'',''ANALYST'',7566,to_date(''03-12-81'',''DD-MM-RR''),3000,null,20);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7369,''SMITH'',''CLERK'',7902,to_date(''17-12-80'',''DD-MM-RR''),800,null,20);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7499,''ALLEN'',''SALESMAN'',7698,to_date(''20-02-81'',''DD-MM-RR''),1600,300,30);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7521,''WARD'',''SALESMAN'',7698,to_date(''22-02-81'',''DD-MM-RR''),1250,500,30);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7654,''MARTIN'',''SALESMAN'',7698,to_date(''28-09-81'',''DD-MM-RR''),1250,1400,30);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7844,''TURNER'',''SALESMAN'',7698,to_date(''08-09-81'',''DD-MM-RR''),1500,0,30);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7876,''ADAMS'',''CLERK'',7788,to_date(''12-01-83'',''DD-MM-RR''),1100,null,20);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7900,''JAMES'',''CLERK'',7698,to_date(''03-12-81'',''DD-MM-RR''),950,null,30);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7934,''MILLER'',''CLERK'',7782,to_date(''23-01-82'',''DD-MM-RR''),1300,null,10);',
'',
'end;',
'/',
'show errors'))
);
end;
/
prompt --application/deployment/install/upgrade_refresh_data
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(2581388060456139625)
,p_install_id=>wwv_flow_imp.id(2560973657885788682)
,p_name=>'Refresh Data'
,p_sequence=>40
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'EBA_DEMO_IR_DATA;',
'commit;',
'end;',
'/',
'',
''))
);
end;
/
prompt --application/deployment/install/install_emp_and_dept_tables
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(1312232256739707447)
,p_install_id=>wwv_flow_imp.id(2560973657885788682)
,p_name=>'EMP and DEPT tables'
,p_sequence=>50
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_demo_ir_dept (',
'    deptno  NUMBER(2) not null',
'                        constraint eba_demo_ir_dept_pk',
'                        primary key,',
'    dname   VARCHAR2(14),',
'    loc     VARCHAR2(13)',
')',
'/',
'',
'create table eba_demo_ir_emp (',
'    empno     NUMBER(4) not null',
'                          constraint eba_demo_ir_emp_pk',
'                          primary key,',
'    ename     VARCHAR2(10),',
'    job       VARCHAR2(9),',
'    mgr       NUMBER(4),',
'    hiredate  DATE,',
'    sal       NUMBER(7),',
'    comm      NUMBER(7),',
'    deptno    NUMBER(2)',
')',
'/',
'',
'alter table eba_demo_ir_emp add foreign key (MGR) references eba_demo_ir_emp (EMPNO) ENABLE',
'/',
'',
'create index eba_demo_ir_emp_1 ON eba_demo_ir_emp (MGR)',
'/',
'    ',
'create index eba_demo_ir_emp_2 ON eba_demo_ir_emp (DEPTNO)',
'/',
''))
);
end;
/
prompt --application/deployment/install/upgrade_pipelined_function_package
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(1312479465796564582)
,p_install_id=>wwv_flow_imp.id(2560973657885788682)
,p_name=>'Pipelined Function Package'
,p_sequence=>50
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package eba_demo_ir_pkg as',
'    -------------------------------------------------------------------------',
'    -- This package is used to demonstrate the power of PL/SQL pipelined',
'    -- funcitons. While functional, it is not complete.',
'    -- DEMONSTRATION PURPOSES ONLY',
'    -------------------------------------------------------------------------',
'',
'    -------------------------------------------------------------------------',
'    -- Helper functions for parsing links out of breadcrumbs',
'    -------------------------------------------------------------------------',
'    type page_refs_t is record( source_page_id number, source_id number, target_page_id number );',
'    type page_refs_tbl is table of page_refs_t;',
'    function getPageIDNum ( p_app_id in number, p_link in varchar2 ) return number;',
'    -- Breadcrumb references need to be accessed through hierarchical SQL; creating a',
'    -- separate function helps with performance.',
'    function getBreadPageRefsTable ( p_app_id in number ) return page_refs_tbl PIPELINED;',
'',
'    -------------------------------------------------------------------------',
'    -- The row definition for the piped result set.',
'    -------------------------------------------------------------------------',
'    type page_refs_rep_t is record(',
'        page_id number,',
'        list_link_count number,',
'        branch_count number,',
'        button_count number,',
'        breadcrumb_count number,',
'        reportcol_count number,',
'        irepcol_count number,',
'        ireplink_count number,',
'        tab_count number,',
'        total number',
'        );',
'    -- The table definition for the piped result set.',
'    type page_refs_rep_tbl is table of page_refs_rep_t;',
'',
'    -------------------------------------------------------------------------',
'    -- The pipelined function itself; returns a table of the pages within',
'    -- the current application and counts of the various ways those pages',
'    -- can be accessed from other pages.',
'    -------------------------------------------------------------------------',
'    function incomingPageRefsReport return page_refs_rep_tbl PIPELINED;',
'end eba_demo_ir_pkg;',
'/',
'',
'create or replace package body eba_demo_ir_pkg as',
'    -------------------------------------------------------------------------',
'    -- This package is used to demonstrate the power of PL/SQL pipelined',
'    -- funcitons. While functional, it is not complete.',
'    -- DEMONSTRATION PURPOSES ONLY',
'    -------------------------------------------------------------------------',
'',
'    -------------------------------------------------------------------------',
'    -- Function: getPageID',
'    -- Helper function to get the page number or alias out of a link.',
'    -------------------------------------------------------------------------',
'    function getPageID ( p_app_id in number, p_link in varchar2 ) return varchar2 is',
'        PREFIX constant varchar2(20) := ''F?P=#APP_ID#:'';',
'        l_link varchar2(32767) := upper(p_link);',
'        l_start binary_integer;',
'    begin',
'        ------------------------------------------------------------------------',
'        -- APEX generates different versions for a page link...',
'        ------------------------------------------------------------------------',
'        l_link  := replace(l_link, '' '',  ''''); -- if link like ''f?p=''||:APP_ID||...',
'        l_link  := replace(l_link, '''''''', '''');',
'        l_link  := replace(l_link, ''|'',  '''');',
'        l_link  := replace(l_link, chr(38)||''FLOW_ID.'',      ''#APP_ID#''  );',
'        l_link  := replace(l_link, chr(38)||''APP_ID.'',       ''#APP_ID#''  );',
'        l_link  := replace(l_link, '':APP_ID'',                ''#APP_ID#''  );',
'        l_link  := replace(l_link, ''=''||p_app_id||'':'',      ''=#APP_ID#:'');',
'        --',
'        l_start := INSTR(l_link, PREFIX);',
'        ------------------------------------------------------------------------',
'        -- Try to extract the page id, if it fails because a substitution',
'        -- variables is used for page id we will get a VALUE_ERROR => dynamic call.',
'        ------------------------------------------------------------------------',
'        if l_start > 0 then',
'            return substr(l_link, l_start+13, instr(l_link, '':'', l_start+13)-l_start-13);',
'        else',
'            return null;',
'        end if;',
'    exception when value_error then',
'        return null;',
'    end getPageID;',
' ',
'    -------------------------------------------------------------------------',
'    -- Function: getPageIDNum',
'    -- Helper function to get the page number out of a link, even if the link',
'    --  uses the page alias.',
'    -------------------------------------------------------------------------',
'    function getPageIDNum( p_app_id in number, p_link in varchar2 ) return number is',
'        l_page varchar2(255) := getPageID( p_app_id, p_link );',
'        l_pageid number;',
'    begin',
'        select page_id into l_pageid',
'        from apex_application_pages',
'        where application_id = p_app_id',
'            and (to_char(page_id) = l_page',
'                or upper(page_alias) = upper(l_page));',
'        return l_pageid;',
'    end getPageIDNum;',
' ',
'    -------------------------------------------------------------------------',
'    -- Function: getBreadRefsTable',
'    -- Pipelined function to get all breadcrumbs in an application, the page(s)',
'    --  they''re visible on, and the page they link to.',
'    -------------------------------------------------------------------------',
'    function getBreadPageRefsTable( p_app_id in number ) return page_refs_tbl PIPELINED is',
'        cursor bc_csr is',
'            with data as (  select breadcrumb_id, parent_breadcrumb_id, breadcrumb_entry_id, defined_for_page',
'                            from apex_application_bc_entries',
'                            where application_id = p_app_id )',
'            select defined_for_page,',
'                breadcrumb_entry_id,',
'                substr(sys_connect_by_path(defined_for_page,'':''),1,instr(sys_connect_by_path(defined_for_page,'':''),'':'',-1)-1) parent_pages',
'            from data',
'            start with parent_breadcrumb_id = 0',
'            connect by prior breadcrumb_id = breadcrumb_id',
'                and prior breadcrumb_entry_id = parent_breadcrumb_id;',
' ',
'        bc_rec bc_csr%ROWTYPE;',
'        l_pages APEX_APPLICATION_GLOBAL.VC_ARR2;',
'        l_pageref page_refs_t;',
'        type ref_tbl_t is table of number index by binary_integer;',
'        l_bc ref_tbl_t;',
'    begin',
'        for bc_rec in bc_csr loop',
'            l_pages := APEX_UTIL.STRING_TO_TABLE( bc_rec.parent_pages );',
'            for x in 1..l_pages.count loop',
'                if l_pages(x) is not null then',
'                    select bc_rec.defined_for_page, bc_rec.breadcrumb_entry_id, pg.page_id into l_pageref',
'                    from apex_application_pages pg',
'                    where pg.application_id = p_app_id',
'                        and ( to_char(pg.page_id) = l_pages(x) or pg.page_alias = l_pages(x) );',
'                    pipe row (l_pageref);',
'                end if;',
'            end loop;',
'        end loop;',
'    end getBreadPageRefsTable;',
' ',
'    -------------------------------------------------------------------------',
'    -- Function: incomingPageRefsReport',
'    -- Pipelined function to get all pages in an application and a count of',
'    --  the different ways each page is linked to from other pages.',
'    -------------------------------------------------------------------------',
'    function incomingPageRefsReport return page_refs_rep_tbl PIPELINED is',
'        l_app constant number := v(''APP_ID'');',
'',
'        l_report page_refs_rep_t;',
'        --',
'        cursor pg_csr is',
'            select page_id,',
'                nvl2(page_alias,''(''||to_char(page_id)||''|''||page_alias||'')'',to_char(page_id)) page_alias,',
'                page_name',
'            from apex_application_pages',
'            where application_id = l_app',
'            order by page_id;',
'        pg_rec pg_csr%ROWTYPE;',
'        l_regexp varchar2(2000);',
'        --',
'        cursor bc_csr is',
'            select target_page_id, count(*) c',
'            from table(getBreadPageRefsTable( l_app )) refs',
'            group by target_page_id;',
'        bc_rec bc_csr%ROWTYPE;',
'        l_bc_arr apex_application_global.vc_arr2;',
'        type ref_tbl_t is table of number index by binary_integer;',
'        l_bc ref_tbl_t;',
'    begin',
'        for bc_rec in bc_csr loop',
'            l_bc(bc_rec.target_page_id) := bc_rec.c;',
'        end loop;',
'        --',
'        for pg_rec in pg_csr loop',
'            l_regexp := ''f?p=(''||l_app||''|[&]APP_ID.):''||pg_rec.page_alias||''(:|$)'';',
'            l_report.page_id := pg_rec.page_id;',
'            -- List Entries',
'            select count(*) into l_report.list_link_count',
'            from apex_application_list_entries lst',
'            where lst.application_id = l_app',
'                and regexp_like(lst.entry_target, l_regexp);',
'            -- Branches',
'            select count(*) into l_report.branch_count',
'            from apex_application_page_branches brn',
'            where brn.application_id = l_app',
'                and brn.page_id <> pg_rec.page_id',
'                and regexp_like(brn.branch_action, l_regexp);',
'            -- Buttons',
'            select count(*) into l_report.button_count',
'            from apex_application_page_buttons btn',
'            where btn.application_id = l_app',
'                and btn.page_id <> pg_rec.page_id',
'                and regexp_like(btn.redirect_url, l_regexp);',
'            -- Breadcrumbs',
'            if l_bc.EXISTS( pg_rec.page_id ) then',
'                l_report.breadcrumb_count := l_bc(pg_rec.page_id);',
'            else',
'                l_report.breadcrumb_count := 0;',
'            end if;',
'            -- Report Columns (standard)',
'            select count(*) into l_report.reportcol_count',
'            from apex_application_page_rpt_cols rc',
'            where rc.application_id = l_app',
'                and rc.page_id <> pg_rec.page_id',
'                and regexp_like(rc.column_link_url, l_regexp);',
'            -- Report Columns (interactive)',
'            select count(*) into l_report.irepcol_count',
'            from apex_application_page_ir_col rc',
'            where rc.application_id = l_app',
'                and rc.page_id <> pg_rec.page_id',
'                and regexp_like(rc.column_link, l_regexp);',
'            -- Interactive Report detail links',
'            select count(*) into l_report.ireplink_count',
'            from apex_application_page_ir api',
'            where api.application_id = l_app',
'                and api.page_id <> pg_rec.page_id',
'                and pg_rec.page_id = getPageIDNum( api.application_id, api.detail_link_target );',
'            -- Tabs',
'            select count(*) into l_report.tab_count',
'            from apex_application_tabs tb',
'            where tb.application_id = l_app',
'                and tb.tab_page = pg_rec.page_id;',
'            --',
'            l_report.total := l_report.list_link_count',
'                + l_report.branch_count',
'                + l_report.button_count',
'                + l_report.breadcrumb_count',
'                + l_report.reportcol_count',
'                + l_report.irepcol_count',
'                + l_report.ireplink_count',
'                + l_report.tab_count',
'                ;',
'            pipe row( l_report );',
'        end loop;',
'    end incomingPageRefsReport;',
'',
'end eba_demo_ir_pkg;',
'/'))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(1674799153069372254)
,p_script_id=>wwv_flow_imp.id(1312479465796564582)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'EBA_DEMO_IR_PKG'
);
end;
/
prompt --application/deployment/install/upgrade_drop_old_objects
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(169447234623876962)
,p_install_id=>wwv_flow_imp.id(2560973657885788682)
,p_name=>'Drop old objects'
,p_sequence=>59
,p_script_type=>'UPGRADE'
,p_condition_type=>'EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select object_name',
'from user_objects',
'where object_type = ''PACKAGE''',
'    and object_name in ( ''EBA_DEMO_IR_FILTER_FW'', ''EBA_DEMO_IR_FILTER2_FW'' )',
'union all',
'select object_name',
'from user_objects',
'where object_type = ''TYPE''',
'    and object_name in ( ''EBA_DEMO_IR_ACTIVE_FILTERS_TBL'', ''EBA_DEMO_IR_FILTER_COL_TBL'',',
'                        ''EBA_DEMO_IR_FILTER_COLUMN_T'', ''EBA_DEMO_IR_ACTIVE_FILTERS_T'' )'))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- remove old packages',
'begin',
'    for c1 in ( select object_name',
'                from user_objects',
'                where object_type = ''PACKAGE''',
'                    and object_name in ( ''EBA_DEMO_IR_FILTER_FW'', ''EBA_DEMO_IR_FILTER2_FW'' ) )',
'    loop',
'        execute immediate ''drop package ''||c1.object_name;',
'    end loop;',
'exception',
'    -- Hide the error if the package cannot be dropped due to bug #21770724',
'    when others then null;',
'end;',
'/',
'',
'-- remove old types',
'begin',
'    for c1 in ( select object_name',
'                from user_objects',
'                where object_type = ''TYPE''',
'                    and object_name in (''EBA_DEMO_IR_ACTIVE_FILTERS_TBL'', ''EBA_DEMO_IR_FILTER_COL_TBL'') )',
'    loop',
'        execute immediate ''drop type ''||c1.object_name;',
'    end loop;',
'exception',
'    -- Hide the error if the package cannot be dropped due to bug #21770724',
'    when others then null;',
'end;',
'/',
'',
'-- remove old types',
'begin',
'    for c1 in ( select object_name',
'                from user_objects',
'                where object_type = ''TYPE''',
'                    and object_name in (''EBA_DEMO_IR_FILTER_COLUMN_T'', ''EBA_DEMO_IR_ACTIVE_FILTERS_T'') )',
'    loop',
'        execute immediate ''drop type ''||c1.object_name;',
'    end loop;',
'exception',
'    -- Hide the error if the package cannot be dropped due to bug #21770724',
'    when others then null;',
'end;',
'/',
''))
);
end;
/
prompt --application/deployment/install/install_pipelined_function_package
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(1312479256793562034)
,p_install_id=>wwv_flow_imp.id(2560973657885788682)
,p_name=>'Pipelined Function Package'
,p_sequence=>60
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package eba_demo_ir_pkg as',
'    -------------------------------------------------------------------------',
'    -- This package is used to demonstrate the power of PL/SQL pipelined',
'    -- funcitons. While functional, it is not complete.',
'    -- DEMONSTRATION PURPOSES ONLY',
'    -------------------------------------------------------------------------',
'',
'    -------------------------------------------------------------------------',
'    -- Helper functions for parsing links out of breadcrumbs',
'    -------------------------------------------------------------------------',
'    type page_refs_t is record( source_page_id number, source_id number, target_page_id number );',
'    type page_refs_tbl is table of page_refs_t;',
'    function getPageIDNum ( p_app_id in number, p_link in varchar2 ) return number;',
'    -- Breadcrumb references need to be accessed through hierarchical SQL; creating a',
'    -- separate function helps with performance.',
'    function getBreadPageRefsTable ( p_app_id in number ) return page_refs_tbl PIPELINED;',
'',
'    -------------------------------------------------------------------------',
'    -- The row definition for the piped result set.',
'    -------------------------------------------------------------------------',
'    type page_refs_rep_t is record(',
'        page_id number,',
'        list_link_count number,',
'        branch_count number,',
'        button_count number,',
'        breadcrumb_count number,',
'        reportcol_count number,',
'        irepcol_count number,',
'        ireplink_count number,',
'        tab_count number,',
'        total number',
'        );',
'    -- The table definition for the piped result set.',
'    type page_refs_rep_tbl is table of page_refs_rep_t;',
'',
'    -------------------------------------------------------------------------',
'    -- The pipelined function itself; returns a table of the pages within',
'    -- the current application and counts of the various ways those pages',
'    -- can be accessed from other pages.',
'    -------------------------------------------------------------------------',
'    function incomingPageRefsReport return page_refs_rep_tbl PIPELINED;',
'end eba_demo_ir_pkg;',
'/',
'',
'create or replace package body eba_demo_ir_pkg as',
'    -------------------------------------------------------------------------',
'    -- This package is used to demonstrate the power of PL/SQL pipelined',
'    -- funcitons. While functional, it is not complete.',
'    -- DEMONSTRATION PURPOSES ONLY',
'    -------------------------------------------------------------------------',
'',
'    -------------------------------------------------------------------------',
'    -- Function: getPageID',
'    -- Helper function to get the page number or alias out of a link.',
'    -------------------------------------------------------------------------',
'    function getPageID ( p_app_id in number, p_link in varchar2 ) return varchar2 is',
'        PREFIX constant varchar2(20) := ''F?P=#APP_ID#:'';',
'        l_link varchar2(32767) := upper(p_link);',
'        l_start binary_integer;',
'    begin',
'        ------------------------------------------------------------------------',
'        -- APEX generates different versions for a page link...',
'        ------------------------------------------------------------------------',
'        l_link  := replace(l_link, '' '',  ''''); -- if link like ''f?p=''||:APP_ID||...',
'        l_link  := replace(l_link, '''''''', '''');',
'        l_link  := replace(l_link, ''|'',  '''');',
'        l_link  := replace(l_link, chr(38)||''FLOW_ID.'',      ''#APP_ID#''  );',
'        l_link  := replace(l_link, chr(38)||''APP_ID.'',       ''#APP_ID#''  );',
'        l_link  := replace(l_link, '':APP_ID'',                ''#APP_ID#''  );',
'        l_link  := replace(l_link, ''=''||p_app_id||'':'',      ''=#APP_ID#:'');',
'        --',
'        l_start := INSTR(l_link, PREFIX);',
'        ------------------------------------------------------------------------',
'        -- Try to extract the page id, if it fails because a substitution',
'        -- variables is used for page id we will get a VALUE_ERROR => dynamic call.',
'        ------------------------------------------------------------------------',
'        if l_start > 0 then',
'            return substr(l_link, l_start+13, instr(l_link, '':'', l_start+13)-l_start-13);',
'        else',
'            return null;',
'        end if;',
'    exception when value_error then',
'        return null;',
'    end getPageID;',
' ',
'    -------------------------------------------------------------------------',
'    -- Function: getPageIDNum',
'    -- Helper function to get the page number out of a link, even if the link',
'    --  uses the page alias.',
'    -------------------------------------------------------------------------',
'    function getPageIDNum( p_app_id in number, p_link in varchar2 ) return number is',
'        l_page varchar2(255) := getPageID( p_app_id, p_link );',
'        l_pageid number;',
'    begin',
'        select page_id into l_pageid',
'        from apex_application_pages',
'        where application_id = p_app_id',
'            and (to_char(page_id) = l_page',
'                or upper(page_alias) = upper(l_page));',
'        return l_pageid;',
'    end getPageIDNum;',
' ',
'    -------------------------------------------------------------------------',
'    -- Function: getBreadRefsTable',
'    -- Pipelined function to get all breadcrumbs in an application, the page(s)',
'    --  they''re visible on, and the page they link to.',
'    -------------------------------------------------------------------------',
'    function getBreadPageRefsTable( p_app_id in number ) return page_refs_tbl PIPELINED is',
'        cursor bc_csr is',
'            with data as (  select breadcrumb_id, parent_breadcrumb_id, breadcrumb_entry_id, defined_for_page',
'                            from apex_application_bc_entries',
'                            where application_id = p_app_id )',
'            select defined_for_page,',
'                breadcrumb_entry_id,',
'                substr(sys_connect_by_path(defined_for_page,'':''),1,instr(sys_connect_by_path(defined_for_page,'':''),'':'',-1)-1) parent_pages',
'            from data',
'            start with parent_breadcrumb_id = 0',
'            connect by prior breadcrumb_id = breadcrumb_id',
'                and prior breadcrumb_entry_id = parent_breadcrumb_id;',
' ',
'        bc_rec bc_csr%ROWTYPE;',
'        l_pages APEX_APPLICATION_GLOBAL.VC_ARR2;',
'        l_pageref page_refs_t;',
'        type ref_tbl_t is table of number index by binary_integer;',
'        l_bc ref_tbl_t;',
'    begin',
'        for bc_rec in bc_csr loop',
'            l_pages := APEX_UTIL.STRING_TO_TABLE( bc_rec.parent_pages );',
'            for x in 1..l_pages.count loop',
'                if l_pages(x) is not null then',
'                    select bc_rec.defined_for_page, bc_rec.breadcrumb_entry_id, pg.page_id into l_pageref',
'                    from apex_application_pages pg',
'                    where pg.application_id = p_app_id',
'                        and ( to_char(pg.page_id) = l_pages(x) or pg.page_alias = l_pages(x) );',
'                    pipe row (l_pageref);',
'                end if;',
'            end loop;',
'        end loop;',
'    end getBreadPageRefsTable;',
' ',
'    -------------------------------------------------------------------------',
'    -- Function: incomingPageRefsReport',
'    -- Pipelined function to get all pages in an application and a count of',
'    --  the different ways each page is linked to from other pages.',
'    -------------------------------------------------------------------------',
'    function incomingPageRefsReport return page_refs_rep_tbl PIPELINED is',
'        l_app constant number := v(''APP_ID'');',
'',
'        l_report page_refs_rep_t;',
'        --',
'        cursor pg_csr is',
'            select page_id,',
'                nvl2(page_alias,''(''||to_char(page_id)||''|''||page_alias||'')'',to_char(page_id)) page_alias,',
'                page_name',
'            from apex_application_pages',
'            where application_id = l_app',
'            order by page_id;',
'        pg_rec pg_csr%ROWTYPE;',
'        l_regexp varchar2(2000);',
'        --',
'        cursor bc_csr is',
'            select target_page_id, count(*) c',
'            from table(getBreadPageRefsTable( l_app )) refs',
'            group by target_page_id;',
'        bc_rec bc_csr%ROWTYPE;',
'        l_bc_arr apex_application_global.vc_arr2;',
'        type ref_tbl_t is table of number index by binary_integer;',
'        l_bc ref_tbl_t;',
'    begin',
'        for bc_rec in bc_csr loop',
'            l_bc(bc_rec.target_page_id) := bc_rec.c;',
'        end loop;',
'        --',
'        for pg_rec in pg_csr loop',
'            l_regexp := ''f?p=(''||l_app||''|[&]APP_ID.):''||pg_rec.page_alias||''(:|$)'';',
'            l_report.page_id := pg_rec.page_id;',
'            -- List Entries',
'            select count(*) into l_report.list_link_count',
'            from apex_application_list_entries lst',
'            where lst.application_id = l_app',
'                and regexp_like(lst.entry_target, l_regexp);',
'            -- Branches',
'            select count(*) into l_report.branch_count',
'            from apex_application_page_branches brn',
'            where brn.application_id = l_app',
'                and brn.page_id <> pg_rec.page_id',
'                and regexp_like(brn.branch_action, l_regexp);',
'            -- Buttons',
'            select count(*) into l_report.button_count',
'            from apex_application_page_buttons btn',
'            where btn.application_id = l_app',
'                and btn.page_id <> pg_rec.page_id',
'                and regexp_like(btn.redirect_url, l_regexp);',
'            -- Breadcrumbs',
'            if l_bc.EXISTS( pg_rec.page_id ) then',
'                l_report.breadcrumb_count := l_bc(pg_rec.page_id);',
'            else',
'                l_report.breadcrumb_count := 0;',
'            end if;',
'            -- Report Columns (standard)',
'            select count(*) into l_report.reportcol_count',
'            from apex_application_page_rpt_cols rc',
'            where rc.application_id = l_app',
'                and rc.page_id <> pg_rec.page_id',
'                and regexp_like(rc.column_link_url, l_regexp);',
'            -- Report Columns (interactive)',
'            select count(*) into l_report.irepcol_count',
'            from apex_application_page_ir_col rc',
'            where rc.application_id = l_app',
'                and rc.page_id <> pg_rec.page_id',
'                and regexp_like(rc.column_link, l_regexp);',
'            -- Interactive Report detail links',
'            select count(*) into l_report.ireplink_count',
'            from apex_application_page_ir api',
'            where api.application_id = l_app',
'                and api.page_id <> pg_rec.page_id',
'                and pg_rec.page_id = getPageIDNum( api.application_id, api.detail_link_target );',
'            -- Tabs',
'            select count(*) into l_report.tab_count',
'            from apex_application_tabs tb',
'            where tb.application_id = l_app',
'                and tb.tab_page = pg_rec.page_id;',
'            --',
'            l_report.total := l_report.list_link_count',
'                + l_report.branch_count',
'                + l_report.button_count',
'                + l_report.breadcrumb_count',
'                + l_report.reportcol_count',
'                + l_report.irepcol_count',
'                + l_report.ireplink_count',
'                + l_report.tab_count',
'                ;',
'            pipe row( l_report );',
'        end loop;',
'    end incomingPageRefsReport;',
'',
'end eba_demo_ir_pkg;',
'/'))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(1674799254269372254)
,p_script_id=>wwv_flow_imp.id(1312479256793562034)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'EBA_DEMO_IR_PKG'
);
end;
/
prompt --application/deployment/install/install_load_data
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(2581298275768132528)
,p_install_id=>wwv_flow_imp.id(2560973657885788682)
,p_name=>'Load Data'
,p_sequence=>80
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace procedure EBA_DEMO_IR_DATA',
'as',
'begin',
'delete from EBA_DEMO_IR_PROJECTS;',
'',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Identify server requirements'',to_date(''12/20/2015'',''MM/DD/YYYY''),to_date(''12/21/2015'',''MM/DD/YYYY''),''C'
||'losed'',''John Watson'',''200'',''500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Determine Web listener configuration(s)'',to_date(''12/22/2015'',''MM/DD/YYYY''),to_date(''12/22/2015'',''MM/D'
||'D/YYYY''),''Closed'',''James Cassidy'',''600'',''500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Run installation'',to_date(''12/25/2015'',''MM/DD/YYYY''),to_date(''12/25/2015'',''MM/DD/YYYY''),''Closed'',''Jame'
||'s Cassidy'',''200'',''200'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Create pilot workspace'',to_date(''12/27/2015'',''MM/DD/YYYY''),to_date(''12/27/2015'',''MM/DD/YYYY''),''Closed'''
||',''John Watson'',''100'',''100'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Specify security authentication scheme(s)'',to_date(''01/01/2016'',''MM/DD/YYYY''),to_date(''01/01/2016'',''MM'
||'/DD/YYYY''),''Open'',''John Watson'',''200'',''300'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Configure Workspace provisioning'',to_date(''01/02/2016'',''MM/DD/YYYY''),to_date(''01/02/2016'',''MM/DD/YYYY'''
||'),''Open'',''John Watson'',''200'',''100'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Select servers for Development, Test, Production'',to_date(''01/05/2016'',''MM/DD/YYYY''),to_date(''01/07/20'
||'16'',''MM/DD/YYYY''),''Open'',''James Cassidy'',''200'',''600'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Bug Tracker'',''Document quality assurance procedures'',to_date(''11/05/2015'',''MM/DD/YYYY''),to_date(''11/08/2015'',''MM/DD/YYYY''),''Closed'',''My'
||'ra Sutcliff'',''3000'',''2000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Bug Tracker'',''Review automated testing tools'',to_date(''11/09/2015'',''MM/DD/YYYY''),to_date(''11/11/2015'',''MM/DD/YYYY''),''Closed'',''Myra Sutc'
||'liff'',''750'',''1500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Bug Tracker'',''Implement bug tracking software'',to_date(''11/24/2015'',''MM/DD/YYYY''),to_date(''11/24/2015'',''MM/DD/YYYY''),''Closed'',''Myra Sut'
||'cliff'',''100'',''100'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Bug Tracker'',''Train developers on tracking bugs'',to_date(''12/01/2015'',''MM/DD/YYYY''),to_date(''12/06/2015'',''MM/DD/YYYY''),''On-Hold'',''Myra '
||'Sutcliff'',''1000'',''2000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Bug Tracker'',''Measure effectiveness of improved QA'',to_date(''12/13/2015'',''MM/DD/YYYY''),to_date(''12/13/2015'',''MM/DD/YYYY''),''Pending'',''My'
||'ra Sutcliff'',''0'',''500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Convert Spreadsheets'',''Collect mission-critical spreadsheets'',to_date(''12/19/2015'',''MM/DD/YYYY''),to_date(''12/20/2015'',''MM/DD/YYYY''),''Cl'
||'osed'',''Pam King'',''2500'',''4000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Convert Spreadsheets'',''Lock spreadsheets'',to_date(''12/22/2015'',''MM/DD/YYYY''),to_date(''12/22/2015'',''MM/DD/YYYY''),''Closed'',''Pam King'',''30'
||'0'',''800'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Convert Spreadsheets'',''Create ACME Web Express applications from spreadsheets'',to_date(''12/30/2015'',''MM/DD/YYYY''),to_date(''01/03/2016'','
||'''MM/DD/YYYY''),''Open'',''Pam King'',''6000'',''10000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Convert Spreadsheets'',''Send links to previous spreadsheet owners'',to_date(''01/05/2016'',''MM/DD/YYYY''),to_date(''01/05/2016'',''MM/DD/YYYY'')'
||',''Pending'',''Pam King'',''0'',''500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Discussion Forum'',''Identify owners'',to_date(''11/25/2015'',''MM/DD/YYYY''),to_date(''11/25/2015'',''MM/DD/YYYY''),''Closed'',''Hank Davis'',''250'','''
||'300'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Discussion Forum'',''Install ACME Web Express application on internet server'',to_date(''12/01/2015'',''MM/DD/YYYY''),to_date(''12/01/2015'',''MM'
||'/DD/YYYY''),''Closed'',''Hank Davis'',''100'',''100'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Discussion Forum'',''Monitor participation'',to_date(''12/31/2015'',''MM/DD/YYYY''),to_date(''01/01/2016'',''MM/DD/YYYY''),''Open'',''Hank Davis'',''45'
||'0'',''500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Email Integration'',''Complete plan'',to_date(''12/12/2015'',''MM/DD/YYYY''),to_date(''12/13/2015'',''MM/DD/YYYY''),''Closed'',''Bob Nile'',''3000'',''15'
||'00'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Email Integration'',''Check software licenses'',to_date(''12/15/2015'',''MM/DD/YYYY''),to_date(''12/15/2015'',''MM/DD/YYYY''),''Closed'',''Bob Nile'','
||'''200'',''200'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Email Integration'',''Get RFPs for new server'',to_date(''12/29/2015'',''MM/DD/YYYY''),to_date(''12/30/2015'',''MM/DD/YYYY''),''Closed'',''Bob Nile'','
||'''2000'',''1000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Email Integration'',''Purchase backup server'',to_date(''01/15/2016'',''MM/DD/YYYY''),to_date(''01/17/2016'',''MM/DD/YYYY''),''Pending'',''Bob Nile'','
||'''0'',''3000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Employee Satisfaction Survey'',''Complete questionnaire'',to_date(''12/05/2015'',''MM/DD/YYYY''),to_date(''12/06/2015'',''MM/DD/YYYY''),''Closed'','''
||'Irene Jones'',''1200'',''800'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Employee Satisfaction Survey'',''Review with legal'',to_date(''12/07/2015'',''MM/DD/YYYY''),to_date(''12/07/2015'',''MM/DD/YYYY''),''On-Hold'',''Iren'
||'e Jones'',''200'',''400'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Employee Satisfaction Survey'',''Plan rollout schedule'',to_date(''12/08/2015'',''MM/DD/YYYY''),to_date(''12/08/2015'',''MM/DD/YYYY''),''On-Hold'','''
||'Irene Jones'',''0'',''750'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Identify pilot Client Server applications'',to_date(''12/17/2015'',''MM/DD/YYYY''),to_date(''12/17/2015'',''MM/DD/YY'
||'YY''),''Closed'',''Scott Spencer'',''200'',''200'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Migrate pilot Client Server to ACME Web Express'',to_date(''12/19/2015'',''MM/DD/YYYY''),to_date(''12/22/2015'',''MM'
||'/DD/YYYY''),''Closed'',''Scott Spencer'',''4500'',''5000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Post-migration review'',to_date(''12/23/2015'',''MM/DD/YYYY''),to_date(''12/23/2015'',''MM/DD/YYYY''),''Closed'',''Pam K'
||'ing'',''500'',''300'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Plan migration schedule'',to_date(''12/26/2015'',''MM/DD/YYYY''),to_date(''12/26/2015'',''MM/DD/YYYY''),''Closed'',''Pam'
||' King'',''1000'',''1000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Migrate Client Server applications'',to_date(''12/31/2015'',''MM/DD/YYYY''),to_date(''01/03/2016'',''MM/DD/YYYY''),''O'
||'pen'',''Pam King'',''300'',''12000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Test migrated applications'',to_date(''01/05/2016'',''MM/DD/YYYY''),to_date(''01/06/2016'',''MM/DD/YYYY''),''Pending'','
||'''Russ Saunders'',''0'',''6000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''User acceptance testing'',to_date(''01/09/2016'',''MM/DD/YYYY''),to_date(''01/11/2016'',''MM/DD/YYYY''),''Pending'',''Ru'
||'ss Saunders'',''0'',''2500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''End-user Training'',to_date(''01/15/2016'',''MM/DD/YYYY''),to_date(''01/15/2016'',''MM/DD/YYYY''),''Pending'',''Myra Sut'
||'cliff'',''0'',''2500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Rollout migrated Client Server in ACME Web Express'',to_date(''01/16/2016'',''MM/DD/YYYY''),to_date(''01/16/2016'','
||'''MM/DD/YYYY''),''Pending'',''Pam King'',''0'',''200'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Load Packaged Apps'',''Identify point solutions required'',to_date(''12/19/2015'',''MM/DD/YYYY''),to_date(''12/19/2015'',''MM/DD/YYYY''),''Closed'','
||'''John Watson'',''200'',''300'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Load Packaged Apps'',''Install in development'',to_date(''12/20/2015'',''MM/DD/YYYY''),to_date(''12/20/2015'',''MM/DD/YYYY''),''Closed'',''John Watso'
||'n'',''100'',''100'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Load Packaged Apps'',''Customize solutions'',to_date(''12/23/2015'',''MM/DD/YYYY''),to_date(''12/25/2015'',''MM/DD/YYYY''),''Open'',''John Watson'',''1'
||'500'',''4000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Load Packaged Apps'',''Implement in Production'',to_date(''12/26/2015'',''MM/DD/YYYY''),to_date(''12/26/2015'',''MM/DD/YYYY''),''On-Hold'',''John Wat'
||'son'',''200'',''1500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Load Packaged Apps'',''Train Administrators of Packaged Apps'',to_date(''12/28/2015'',''MM/DD/YYYY''),to_date(''12/28/2015'',''MM/DD/YYYY''),''Pend'
||'ing'',''John Watson'',''0'',''1000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Maintain Support Systems'',''HR software upgrades'',to_date(''11/28/2015'',''MM/DD/YYYY''),to_date(''12/01/2015'',''MM/DD/YYYY''),''Closed'',''Pam Ki'
||'ng'',''8000'',''7000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Maintain Support Systems'',''Apply Billing System updates'',to_date(''12/02/2015'',''MM/DD/YYYY''),to_date(''12/04/2015'',''MM/DD/YYYY''),''Closed'''
||',''Russ Saunders'',''9500'',''7000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Maintain Support Systems'',''Arrange for vacation coverage'',to_date(''12/06/2015'',''MM/DD/YYYY''),to_date(''12/06/2015'',''MM/DD/YYYY''),''Open'','
||'''Al Bines'',''300'',''500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Maintain Support Systems'',''Investigate new Virus Protection software'',to_date(''01/15/2016'',''MM/DD/YYYY''),to_date(''01/16/2016'',''MM/DD/YY'
||'YY''),''Open'',''Pam King'',''1700'',''1500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''Identify pilot desktop applications'',to_date(''12/10/2015'',''MM/DD/YYYY''),to_date(''12/10/2015'',''MM/DD/YYYY'''
||'),''Closed'',''Bob Nile'',''300'',''500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''Migrate pilot applications to ACME Web Express'',to_date(''12/12/2015'',''MM/DD/YYYY''),to_date(''12/13/2015'','''
||'MM/DD/YYYY''),''Closed'',''Bob Nile'',''1250'',''1500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''Plan migration schedule'',to_date(''12/16/2015'',''MM/DD/YYYY''),to_date(''12/16/2015'',''MM/DD/YYYY''),''Closed'','''
||'Bob Nile'',''600'',''200'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''Migrate desktop applications'',to_date(''01/08/2016'',''MM/DD/YYYY''),to_date(''01/12/2016'',''MM/DD/YYYY''),''Open'
||''',''Bob Nile'',''1000'',''8000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''User acceptance testing'',to_date(''01/14/2016'',''MM/DD/YYYY''),to_date(''01/15/2016'',''MM/DD/YYYY''),''Open'',''Bo'
||'b Nile'',''1500'',''6000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''End-user Training'',to_date(''01/18/2016'',''MM/DD/YYYY''),to_date(''01/19/2016'',''MM/DD/YYYY''),''Open'',''John Wat'
||'son'',''0'',''2000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''Post-migration review'',to_date(''02/01/2016'',''MM/DD/YYYY''),to_date(''02/02/2016'',''MM/DD/YYYY''),''Pending'',''B'
||'ob Nile'',''100'',''100'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Obtain Legacy Server credentials'',to_date(''01/20/2016'',''MM/DD/YYYY''),to_date(''01/20/2016'',''MM/DD/YYYY''),''P'
||'ending'',''James Cassidy'',''0'',''500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Map data usage'',to_date(''01/22/2016'',''MM/DD/YYYY''),to_date(''01/24/2016'',''MM/DD/YYYY''),''Pending'',''Bob Nile'''
||',''0'',''8000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Identify integration points'',to_date(''01/25/2016'',''MM/DD/YYYY''),to_date(''01/26/2016'',''MM/DD/YYYY''),''Pendin'
||'g'',''Bob Nile'',''0'',''2000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Create DB Connection to new server'',to_date(''01/25/2016'',''MM/DD/YYYY''),to_date(''01/25/2016'',''MM/DD/YYYY''),'
||'''Pending'',''Scott Spencer'',''0'',''100'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Migrate table structures'',to_date(''01/19/2016'',''MM/DD/YYYY''),to_date(''01/20/2016'',''MM/DD/YYYY''),''Pending'','
||'''John Watson'',''0'',''2500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Import data'',to_date(''01/31/2016'',''MM/DD/YYYY''),to_date(''02/01/2016'',''MM/DD/YYYY''),''Pending'',''John Watson'''
||',''0'',''1000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Convert processes'',to_date(''01/31/2016'',''MM/DD/YYYY''),to_date(''02/02/2016'',''MM/DD/YYYY''),''Pending'',''Pam Ki'
||'ng'',''0'',''3000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Notify users'',to_date(''02/05/2016'',''MM/DD/YYYY''),to_date(''02/05/2016'',''MM/DD/YYYY''),''Pending'',''Bob Nile'','''
||'0'',''200'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Cut over to new database'',to_date(''02/06/2016'',''MM/DD/YYYY''),to_date(''02/06/2016'',''MM/DD/YYYY''),''Pending'','
||'''Bob Nile'',''0'',''1500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Decommission Legacy Server'',to_date(''02/20/2016'',''MM/DD/YYYY''),to_date(''02/20/2016'',''MM/DD/YYYY''),''Pending'
||''',''Al Bines'',''0'',''500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Public Website'',''Determine host server'',to_date(''12/05/2015'',''MM/DD/YYYY''),to_date(''12/05/2015'',''MM/DD/YYYY''),''Closed'',''Tiger Scott'',''2'
||'00'',''200'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Public Website'',''Check software licenses'',to_date(''12/05/2015'',''MM/DD/YYYY''),to_date(''12/05/2015'',''MM/DD/YYYY''),''Closed'',''Tom Suess'',''1'
||'00'',''100'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Public Website'',''Purchase additional software licenses, if needed'',to_date(''12/06/2015'',''MM/DD/YYYY''),to_date(''12/07/2015'',''MM/DD/YYYY'''
||'),''On-Hold'',''Al Bines'',''300'',''1000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Public Website'',''Develop web pages'',to_date(''01/01/2016'',''MM/DD/YYYY''),to_date(''01/02/2016'',''MM/DD/YYYY''),''Open'',''Tiger Scott'',''0'',''200'
||'0'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Public Website'',''Plan rollout schedule'',to_date(''01/03/2016'',''MM/DD/YYYY''),to_date(''01/03/2016'',''MM/DD/YYYY''),''Open'',''Tom Suess'',''0'',''1'
||'00'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Software Project Tracking'',''Conduct project kickoff meeting'',to_date(''12/28/2015'',''MM/DD/YYYY''),to_date(''12/28/2015'',''MM/DD/YYYY''),''Clo'
||'sed'',''Pam King'',''100'',''100'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Software Project Tracking'',''Customize Software Projects software'',to_date(''12/31/2015'',''MM/DD/YYYY''),to_date(''01/01/2016'',''MM/DD/YYYY'')'
||',''Open'',''Tom Suess'',''600'',''1000'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Software Project Tracking'',''Enter base data (Projects, Milestones, etc.)'',to_date(''01/02/2016'',''MM/DD/YYYY''),to_date(''01/02/2016'',''MM/D'
||'D/YYYY''),''Open'',''Tom Suess'',''200'',''200'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Software Project Tracking'',''Load current tasks and enhancements'',to_date(''01/04/2016'',''MM/DD/YYYY''),to_date(''01/04/2016'',''MM/DD/YYYY''),'
||'''Open'',''Tom Suess'',''400'',''500'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Training for ACME Web Express'',''Create training workspace'',to_date(''12/17/2015'',''MM/DD/YYYY''),to_date(''12/18/2015'',''MM/DD/YYYY''),''Close'
||'d'',''James Cassidy'',''500'',''700'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Training for ACME Web Express'',''Publish links to self-study courses'',to_date(''12/19/2015'',''MM/DD/YYYY''),to_date(''12/19/2015'',''MM/DD/YYY'
||'Y''),''Closed'',''John Watson'',''100'',''100'');',
'  insert into eba_demo_ir_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Training for ACME Web Express'',''Publish development standards'',to_date(''12/19/2015'',''MM/DD/YYYY''),to_date(''12/20/2015'',''MM/DD/YYYY''),''O'
||'n-Hold'',''John Watson'',''1000'',''2000'');',
'',
'update eba_demo_ir_projects',
'set start_date = start_date + (SYSDATE - TO_DATE(''01012016'',''MMDDYYYY''))',
',   end_date = end_date + (SYSDATE - TO_DATE(''01012016'',''MMDDYYYY''));',
'',
'delete from eba_demo_ir_dept;',
'',
'insert into eba_demo_ir_dept (DEPTNO,DNAME,LOC) values (10,''ACCOUNTING'',''NEW YORK'');',
'insert into eba_demo_ir_dept (DEPTNO,DNAME,LOC) values (20,''RESEARCH'',''DALLAS'');',
'insert into eba_demo_ir_dept (DEPTNO,DNAME,LOC) values (30,''SALES'',''CHICAGO'');',
'insert into eba_demo_ir_dept (DEPTNO,DNAME,LOC) values (40,''OPERATIONS'',''BOSTON'');',
'',
'delete from eba_demo_ir_emp;',
'',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7839,''KING'',''PRESIDENT'',null,to_date(''17-11-81'',''DD-MM-RR''),5000,null,10);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7698,''BLAKE'',''MANAGER'',7839,to_date(''01-05-81'',''DD-MM-RR''),2850,null,30);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7782,''CLARK'',''MANAGER'',7839,to_date(''09-06-81'',''DD-MM-RR''),2450,null,10);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7566,''JONES'',''MANAGER'',7839,to_date(''02-04-81'',''DD-MM-RR''),2975,null,20);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7788,''SCOTT'',''ANALYST'',7566,to_date(''09-12-82'',''DD-MM-RR''),3000,null,20);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7902,''FORD'',''ANALYST'',7566,to_date(''03-12-81'',''DD-MM-RR''),3000,null,20);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7369,''SMITH'',''CLERK'',7902,to_date(''17-12-80'',''DD-MM-RR''),800,null,20);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7499,''ALLEN'',''SALESMAN'',7698,to_date(''20-02-81'',''DD-MM-RR''),1600,300,30);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7521,''WARD'',''SALESMAN'',7698,to_date(''22-02-81'',''DD-MM-RR''),1250,500,30);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7654,''MARTIN'',''SALESMAN'',7698,to_date(''28-09-81'',''DD-MM-RR''),1250,1400,30);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7844,''TURNER'',''SALESMAN'',7698,to_date(''08-09-81'',''DD-MM-RR''),1500,0,30);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7876,''ADAMS'',''CLERK'',7788,to_date(''12-01-83'',''DD-MM-RR''),1100,null,20);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7900,''JAMES'',''CLERK'',7698,to_date(''03-12-81'',''DD-MM-RR''),950,null,30);',
'insert into eba_demo_ir_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7934,''MILLER'',''CLERK'',7782,to_date(''23-01-82'',''DD-MM-RR''),1300,null,10);',
'',
'end;',
'/',
'show errors',
'    ',
'begin',
'EBA_DEMO_IR_DATA;',
'commit;',
'end;',
'/',
'',
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
